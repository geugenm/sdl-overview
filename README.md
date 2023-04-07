<h1 align="center">SDL 3.0.0 Overview</h1>

<div align="center" style="text-align: center;">
  <div>
    <a href="https://github.com/geugenm/advanced-hello-world/issues">
      <img src="https://img.shields.io/github/issues-raw/geugenm/advanced-hello-world?style=for-the-badge" alt="GitHub Issues">
    </a>
    <img src="https://img.shields.io/badge/platform-linux%20-informational?style=for-the-badge&amp;logo=manjaro" alt="Platforms">
    <a href="https://en.cppreference.com/w/cpp/23">
      <img src="https://img.shields.io/badge/cpp-23-informational?style=for-the-badge&amp;logo=cplusplus" alt="CPP version">
    </a>
  </div>
   <img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/geugenm/sdl-overview/build_ubuntu_latest.yml?style=for-the-badge">
</div>



This repository provides an overview of how to connect and configure SDL 3.0.0.

## Installation

1. Clone the repository
2. Install the required dependencies:
    - `cmake 3.25.0+`
    - `cpp compiler with cpp 23 support`
    - `ninja`
3. Compile
    - `cmake --preset=Release .`

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