# AndroidFrameworkSmali

Android framework Smali reference data for [Simplify](https://github.com/CalebFenton/simplify), plus a standalone extractor for modern AOSP emulator images.

## Tracked captures

- `android-36/` contains the verified Android 16 boot classpath: 60,225 classes, 45 original JARs, 49 DEX files, source hashes, image metadata and four original notice files. Its Smali sources are under `android-36/smali/`; it uses the output layout described below.
- `android-25/` retains the historical Smali corpus in its original layout.

Consumers select a capture explicitly. A recursive checkout includes both; no emulator or generator build is required to use the tracked data.

The API 36 tree contains case-distinct names such as `AudioAttributes.smali` and `Audioattributes.smali`. Check it out on a case-sensitive filesystem (Linux, or case-sensitive APFS on macOS); a default case-insensitive filesystem cannot preserve both definitions.

The tracked `android-25/` corpus is retained unchanged, including all existing packages. Its original image identity, image revision, extraction inputs, and complete licensing provenance are not recorded here. The new extractor does not retroactively establish those facts. Generating a newer corpus does **not** replace `android-25/` or change which framework Simplify loads.

## Setup

Use a Unix-like host with:

- A JDK supported by Gradle 9.7.0 (Java 17 or newer).
- Python 3.11 or newer; the extractor uses only the standard library.
- Android SDK `adb`, or Docker with `adb` available inside the emulator container.
- A booted AOSP emulator with readable boot-classpath JARs containing full DEX files. Choose an image whose acquisition and intended use you are authorized to perform; no emulator image is included here.

From this repository's root:

```sh
./gradlew installDist
```

The pinned Gradle wrapper verifies the distribution SHA-256 and downloads dependencies from Google Maven and Maven Central. The standalone `framework-tools` application uses `com.android.tools.smali:smali-baksmali:3.0.10`, with entry point `com.android.tools.smali.baksmali.Main`. Its launcher is `build/install/framework-tools/bin/framework-tools`. `installDist` keeps dependency JARs separate under `lib/`, retaining their embedded notices rather than merging them into a fat JAR. This repository needs neither a parent Simplify checkout nor Simplify V2 to build or run.

After building the launcher, run the focused generator checks with
`python3 -m unittest discover -s tests -v`. Real extraction additionally requires the booted image below.

## Generate a local reference corpus

Start the emulator separately and let it finish booting. Extraction requires `sys.boot_completed=1`; it does not boot, root, or modify the device.

```sh
# Local emulator: uses adb -e; defaults to generated/android-<device API>.
./make_reflib

# Select a particular local ADB device instead of adb -e.
./make_reflib --serial emulator-5554

# Use adb inside an already running Docker emulator container.
./make_reflib --container my-aosp-emulator

# Both transport selection and an explicit, new output directory are supported.
./make_reflib --container my-aosp-emulator --serial emulator-5554 \
  --output generated/api36-reference

# Override the host-side baksmali launcher when needed.
./make_reflib --baksmali build/install/framework-tools/bin/framework-tools \
  --output generated/another-reference
```

`--serial` selects `adb -s SERIAL`, including inside a container; without it the transport uses `adb -e`. Baksmali runs on the host, not inside the container. The output directory must not already exist. Extraction stages beside the destination on the same filesystem and publishes it only after successful completion; it never removes or overwrites an existing corpus. Pick a different output path for each run.

`--baksmali` must point to an `installDist`-style `bin/` launcher with a sibling `lib/` directory containing the original baksmali and dependency JARs. Opaque wrapper commands are rejected because their artifact identity cannot be recorded. The default launcher and default `generated/` directory are resolved relative to this checkout.

### Supported inputs and ordering

The extractor reads the running device's `BOOTCLASSPATH` in its original order. It pulls every listed JAR and extracts the contiguous `classes.dex`, `classes2.dex`, ... sequence from each one. A JAR without `classes.dex`, or with a gap before a later numbered DEX entry, is an error. Supported inputs are classic DEX versions 035 and 037–040. DEX 041 containers, compact DEX, OAT/ODEX-only images, and legacy deodexing are not supported; there is no fallback that silently drops their classes.

Android API and DEX format versions are different. Baksmali selects each input's opcode table from
its DEX header, not the device API number. When reassembling Smali, select the assembler's API for
the source DEX format; the verified API 36 image uses DEX 039, for which dexlib2 selects assembler API 29.

Verified with `system-images;android-36;default;x86_64` revision 2, fingerprint
`Android/sdk_phone64_x86_64/emu64x:16/BE2A.250530.026.D1/13818094:userdebug/test-keys`.
That image yielded 45 boot JARs, 49 DEX files, 60,225 class definitions and four original notice files.
Two captures matched across every JAR, DEX, Smali file, notice and class/source manifest.

Classes are disassembled without namespace rewriting. The first definition wins across boot JARs and DEX files, matching boot-class-loader order; later definitions are recorded rather than overwriting earlier ones. Disassembly failure or missing expected class output aborts extraction.

### Output and provenance

Each completed output directory contains:

| Path | Contents |
| --- | --- |
| `smali/` | The selected first definition of each class. |
| `jars/` | Original boot-classpath JAR bytes. |
| `dex/` | Raw DEX entries in boot-classpath and multidex order. |
| `boot-dex.tsv` | `jar_order`, `jar`, `jar_sha256`, `dex`, `dex_sha256`. `jar` is the device path; `dex` is an output-relative path. |
| `classes.tsv` | `descriptor`, `smali`, `dex`, `dex_sha256`, `smali_sha256`: selected definitions and their output-relative paths and hashes. |
| `shadowed-classes.tsv` | `descriptor`, `dex`, `dex_sha256`, `winner_dex`, `winner_dex_sha256`: later definitions and their selected first definition. |
| `provenance.json` | Format 1 metadata: Android API, build fingerprint, build ID, security patch, ABI, ordered boot classpath, tool identity/hashes, available source-image metadata, and notice inventory. |
| `notices/` | Original accessible system and active boot-classpath APEX notice files, with source paths and hashes recorded in provenance. |

Raw DEX is retained deliberately: Smali is a reference representation, not an exact binary or hidden-API metadata preservation format. The JARs and DEX files let a consumer inspect the actual extraction inputs.

Recorded content excludes current extraction timestamps, staging paths, container names, and host-specific source paths. Tool artifacts are identified by basenames and hashes. Differences in device inputs, tool versions, or available image metadata can still produce different output; reproducibility is not a claim that unrelated images are interchangeable.

The device's build properties identify what it reports, not an independently authenticated upstream release. Container transport records Docker image identity, available repository digests, and platform; it also records SDK system-image rows and a hash from `/opt/sdk-manifest.txt` when present. Local ADB transport marks host-image identity unavailable. Missing metadata is not inferred.

Notice discovery searches `/system`, `/system_ext`, `/product`, `/vendor`, `/odm`, and each active boot-classpath APEX root for notice-named files. Original bytes are mirrored under `notices/`; provenance records searched roots, missing roots or empty searches, source paths, and file hashes. Permission or read failures abort extraction. If access requires root, enable it separately on an emulator you control before extraction; the generator never does so automatically.

`generated/`, `build/`, and `.gradle/` are ignored. Keep trial captures there. To publish a verified capture, move its **entire** output directory to a new `android-<API>/` directory and commit it, including the source inputs, manifests and notices. Never overwrite an existing capture or copy only its Smali files. Updating a consumer's submodule pin does not by itself select a different runtime framework; that requires explicit integration and compatibility checks.

## Licensing boundaries

The project-owned generator, build configuration, and accompanying documentation are licensed under Apache License 2.0; see [LICENSE](LICENSE). That license does **not** relicense `android-25/`, newly extracted Android code, third-party code, dependency JARs, notices, or emulator images. Those materials remain subject to their original terms, which may differ by component.

See [THIRD_PARTY_NOTICES](THIRD_PARTY_NOTICES) for upstream tooling sources and the historical corpus's provenance limits. Preserve the applicable original licenses, notices and source-availability obligations when redistributing third-party material.
