# AndroidFrameworkSmali
This contains Android frameworks as Smali files to be used as a reference library in projects like [Simplify](https://github.com/CalebFenton/simplify).

## Building
The building process is simple.

1. Pull framework files off of device (e.g. /system/framework)
2. Disassemble all the `ODEX` files
3. Combine disassembly output files into single folder

### Prerequisites

1. Connect an Android device or emulator running desired API version
2. Ensure [`baksmali`](https://github.com/JesusFreke/smali) is on your path

### Instructions
Once you've satisfied the prerequisites, run this:
```
./make_framework
```

This will create a folder with the name `android-<version>`.
