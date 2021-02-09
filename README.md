# GBDK Template
GBDK Template aims to help users easily use and automate the entire Gameboy development process using [GBDK-2020](https://github.com/Zal0/gbdk-2020), [Premake5](https://premake.github.io/), and the [BGB Emulator](https://bgb.bircd.org/).

# Cloning
- Cloning this project is simple.
  - `git clone https://github.com/BttrDrgn/GBDK_Template.git` 

# Usage
- You WILL need GBDK setup wherever you want. Default path is `C:\\gbdk\\`.
  - [GDBK-2020 current release](https://github.com/Zal0/gbdk-2020/releases/)
- For non-default GBDK path, you will need to edit `\premake.lua` and `\src\global.h`
- `\tools\build.bat` contains path variables for input, output, and the GBDK object files. These are not nessesary to edit.
- The default `\generate.bat` is setup for Visual Studio 2017 but is fairly simple to switch to other build tools.
  - Refer to the [Premake5 modules](https://github.com/premake/premake-core/tree/master/modules) or the [wiki](https://github.com/premake/premake-core/wiki) for more information
- Initiating a build will automatically launch the BGB emulator with the latest build of the ROM file in `/build/ROMS`
  - [BGB Emulator](https://bgb.bircd.org/)
  - Default path for BGB: `C:\\bgb\\bgb.exe`
  - To edit which ROM to launch or the path of BGB, edit the postbuildcommands in `\premake.lua`

# Building
- Building should be rather simple since it uses its own binaries to compile and does not rely on your current operating system or build tools.
  - However, the default `\tools\build.bat` is Windows only, but the same concept applies to other operating systems' script files.
- To specify which build tools/IDE you are using, refer to the [Premake5 modules](https://github.com/premake/premake-core/tree/master/modules) or the [wiki](https://github.com/premake/premake-core/wiki)

# Contributing
- Setting up automated building per operating system, IDE, or build tools is much appreciated!
