# SPDX-License-Identifier: Apache-2.0
"""Small format/filesystem tests; real device extraction is exercised separately."""

import hashlib
from importlib.machinery import SourceFileLoader
from importlib.util import module_from_spec, spec_from_loader
from pathlib import Path
import struct
import tempfile
import unittest
import zipfile
import zlib


loader = SourceFileLoader("make_reflib", str(Path(__file__).resolve().parents[1] / "make_reflib"))
spec = spec_from_loader(loader.name, loader)
generator = module_from_spec(spec)
loader.exec_module(generator)


def minimal_dex(descriptor):
    """A DEX containing one public class with no superclass, members or annotations."""
    encoded = descriptor.encode("utf-8")
    if len(encoded) >= 128:
        raise ValueError("fixture expects a short ASCII descriptor")
    strings_offset, types_offset, classes_offset, data_offset = 112, 116, 120, 152
    data = bytearray(data_offset)
    data.extend(bytes([len(descriptor)]) + encoded + b"\0")
    data.extend(b"\0" * (-len(data) % 4))
    map_offset = len(data)
    sections = [(0x0000, 1, 0), (0x0001, 1, strings_offset),
                (0x0002, 1, types_offset), (0x0006, 1, classes_offset),
                (0x2002, 1, data_offset), (0x1000, 1, map_offset)]
    data.extend(struct.pack("<I", len(sections)))
    for kind, count, offset in sections:
        data.extend(struct.pack("<HHII", kind, 0, count, offset))
    data[:8] = b"dex\n039\0"
    struct.pack_into("<III", data, 32, len(data), 112, 0x12345678)
    struct.pack_into("<I", data, 52, map_offset)
    struct.pack_into("<IIII", data, 56, 1, strings_offset, 1, types_offset)
    struct.pack_into("<IIII", data, 96, 1, classes_offset, len(data) - data_offset, data_offset)
    struct.pack_into("<I", data, strings_offset, data_offset)
    struct.pack_into("<IIIIIIII", data, classes_offset, 0, 1, 0xffffffff, 0, 0xffffffff, 0, 0, 0)
    data[12:32] = hashlib.sha1(data[32:]).digest()
    struct.pack_into("<I", data, 8, zlib.adler32(data[12:]) & 0xffffffff)
    return bytes(data)


class GeneratorTests(unittest.TestCase):
    def test_numeric_multidex_order_not_zip_or_lexical_order(self):
        with tempfile.TemporaryDirectory() as temporary:
            path = Path(temporary) / "boot.jar"
            expected = ["classes.dex"] + [f"classes{index}.dex" for index in range(2, 13)]
            with zipfile.ZipFile(path, "w") as archive:
                for index, name in reversed(list(enumerate(expected))):
                    archive.writestr(name, minimal_dex(f"Ltest/Class{index};"))
                archive.writestr("META-INF/MANIFEST.MF", "Manifest-Version: 1.0\n")
            with zipfile.ZipFile(path) as archive:
                self.assertEqual(expected, generator.dex_entries(archive.namelist()))
                dex = Path(temporary) / "classes.dex"
                dex.write_bytes(archive.read("classes.dex"))
                launcher = Path(__file__).resolve().parents[1] / "build/install/framework-tools/bin/framework-tools"
                self.assertEqual({"Ltest/Class0;"}, generator.dex_classes(dex, launcher))

    def test_missing_or_ambiguous_multidex_is_rejected(self):
        for names in ([], ["classes2.dex"], ["classes.dex", "classes3.dex"],
                      ["classes.dex", "classes.dex"], ["classes.dex", "classes01.dex"],
                      ["classes.dex", "nested/classes.dex"]):
            with self.subTest(names=names), self.assertRaises(generator.ExtractionError):
                generator.dex_entries(names)

    def test_unsupported_or_truncated_dex_is_rejected(self):
        valid = minimal_dex("Ltest/One;")
        launcher = Path(__file__).resolve().parents[1] / "build/install/framework-tools/bin/framework-tools"
        with tempfile.TemporaryDirectory() as temporary:
            path = Path(temporary) / "classes.dex"
            for data in (b"cdex001\0" + valid[8:], b"dex\n041\0" + valid[8:], valid[:100]):
                path.write_bytes(data)
                with self.subTest(magic=data[:8]), self.assertRaises(generator.ExtractionError):
                    generator.dex_classes(path, launcher)

    def test_first_definition_wins_with_source_and_hash_mapping(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            destination = root / "out"
            destination.mkdir()
            winners, classes, shadowed = {}, [], []
            first = root / "first.smali"
            second = root / "second.smali"
            first.write_text(".class public Ltest/Same;\n.super Ljava/lang/Object;\n# first\n", encoding="utf-8")
            second.write_text(".class public Ltest/Same;\n.super Ljava/lang/Object;\n# second\n", encoding="utf-8")
            first_bytes = first.read_bytes()
            generator.merge_classes({"Ltest/Same;": first}, destination, "dex/00-first/classes.dex", "a" * 64, winners, classes, shadowed)
            generator.merge_classes({"Ltest/Same;": second}, destination, "dex/01-second/classes2.dex", "b" * 64, winners, classes, shadowed)
            self.assertEqual(first_bytes, (destination / "smali/test/Same.smali").read_bytes())
            self.assertEqual([("Ltest/Same;", "smali/test/Same.smali", "dex/00-first/classes.dex", "a" * 64,
                               hashlib.sha256(first_bytes).hexdigest())], classes)
            self.assertEqual([("Ltest/Same;", "dex/01-second/classes2.dex", "b" * 64,
                               "dex/00-first/classes.dex", "a" * 64)], shadowed)
            self.assertTrue(second.exists())

    def test_disassembly_must_include_exact_dex_class_set(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            source = root / "unrelated-filename.smali"
            source.write_text(".class public Ltest/One;\n.super Ljava/lang/Object;\n", encoding="utf-8")
            self.assertEqual({"Ltest/One;": source}, generator.disassembled_classes(root, {"Ltest/One;"}))
            for expected in ({"Ltest/One;", "Ltest/Missing;"}, set()):
                with self.subTest(expected=expected), self.assertRaises(generator.ExtractionError):
                    generator.disassembled_classes(root, expected)
            (root / "duplicate.smali").write_bytes(source.read_bytes())
            with self.assertRaises(generator.ExtractionError):
                generator.disassembled_classes(root, {"Ltest/One;"})

    def test_existing_output_is_untouched_before_population(self):
        with tempfile.TemporaryDirectory() as temporary:
            output = Path(temporary) / "android-25"
            output.mkdir()
            corpus = output / "original.smali"
            corpus.write_bytes(b"existing corpus\n")
            def must_not_populate(stage):
                self.fail("existing output must be refused before population")
            with self.assertRaisesRegex(generator.ExtractionError, "already exists"):
                generator.publish_output(output, must_not_populate)
            self.assertEqual(b"existing corpus\n", corpus.read_bytes())
            self.assertEqual([output], list(Path(temporary).iterdir()))

    def test_failed_population_is_not_published(self):
        with tempfile.TemporaryDirectory() as temporary:
            output = Path(temporary) / "android-36"
            def fail_after_writing(stage):
                (stage / "partial.smali").write_bytes(b"partial")
                raise generator.ExtractionError("incomplete disassembly")
            with self.assertRaisesRegex(generator.ExtractionError, "incomplete disassembly"):
                generator.publish_output(output, fail_after_writing)
            self.assertEqual([], list(Path(temporary).iterdir()))

    def test_output_created_during_population_is_not_replaced(self):
        with tempfile.TemporaryDirectory() as temporary:
            output = Path(temporary) / "android-36"
            def populate(stage):
                (stage / "new.smali").write_bytes(b"new")
                output.mkdir()
            with self.assertRaisesRegex(generator.ExtractionError, "appeared during extraction"):
                generator.publish_output(output, populate)
            self.assertEqual([], list(output.iterdir()))
            self.assertEqual([output], list(Path(temporary).iterdir()))

    def test_successful_population_publishes_complete_directory(self):
        with tempfile.TemporaryDirectory() as temporary:
            output = Path(temporary) / "android-36"
            def populate(stage):
                (stage / "classes.tsv").write_bytes(b"complete\n")
            generator.publish_output(output, populate)
            self.assertEqual(b"complete\n", (output / "classes.tsv").read_bytes())
            self.assertEqual([output], list(Path(temporary).iterdir()))

    def test_unsafe_class_paths_are_rejected(self):
        for descriptor in ("L../Bad;", "L/Absolute;", "Ltest/../Bad;", "Ltest//Bad;", "Ltest/Bad\nName;", "I"):
            with self.subTest(descriptor=descriptor), self.assertRaises(generator.ExtractionError):
                generator.class_path(descriptor)


if __name__ == "__main__":
    unittest.main()
