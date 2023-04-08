<h1 align="center">SDL 3.0.0 Overview</h1>

<div align="center" style="text-align: center;">
  <div>
    <a href="https://github.com/geugenm/sdl-overview/issues">
      <img src="https://img.shields.io/github/issues-raw/geugenm/sdl-overview?style=for-the-badge" alt="GitHub Issues">
    </a>
       <img src="https://img.shields.io/badge/platform-linux%20-informational?style=for-the-badge&amp;logo=appveyor" alt="Platforms">    
    <a href="https://en.cppreference.com/w/cpp/23">
      <img src="https://img.shields.io/badge/cpp-23-informational?style=for-the-badge&amp;logo=cplusplus" alt="CPP version">
    </a>
  </div>
   <img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/geugenm/sdl-overview/build_ubuntu_latest.yml?style=for-the-badge&amp;logo=ubuntu">
</div>



This repository provides an overview of how to connect and configure SDL 3.0.0.

## Installation

1. Clone the repository
2. Install the required dependencies:
    - `cmake 3.25.0+`
    - `cpp compiler with cpp 23 support`
    - `ninja`
3. Compile:
```bash
cmake --preset=Release .
cd build/release
cmake --build . --config Release
```
For more build configurations see [CMakePresets.json](https://github.com/geugenm/sdl-overview/blob/master/CMakePresets.json)

Also,
you can use an automized [build.sh](https://github.com/geugenm/sdl-overview/blob/master/scripts/build.sh) in `scripts` folder

## Documentation

All you need is to install doxygen and run these commands:
```bash
doxygen .doxygen
cd scripts
sh view_docs.sh
```
It will open your default app for viewing html files

## Contributing

If you would like to contribute to this project, feel free to fork the repository and submit a pull request with your
changes. Contributions are always welcome, whether it's an improvement to the existing program or a new program in a
different language.

## License

This project is licensed under the AGPL-3.0 License — see the `LICENSE` file for details.

## Acknowledgments

Thanks to the developers of CMake and CTest for providing the tools necessary to build and test this program. Also,
thanks to the open-source community for providing resources and support for C++ development.