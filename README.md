# AndroidFrameworkSmali
This contains Android frameworks as Smali files. These are used as a reference library in [Simplify](https://github.com/CalebFenton/simplify).

## Prerequisites

1. Connect an Android device or emulator running desired API version
2. Ensure [`baksmali`](https://github.com/JesusFreke/smali) is on your path

## Usage

Once you've satisfied the prerequisites, run this `make_reflib`:

```
./make_reflib
```

This performs the following tasks:

1. Pull framework files off the device (/system/framework)
2. Disassemble all `ODEX` and `OAT` files
3. Combine disassembly output files into single folder with the name `android-<version>`
