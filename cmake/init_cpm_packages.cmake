include(module/cpm-cmake/cmake/CPM.cmake)

CPMAddPackage(
        NAME SDL
        GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
        GIT_TAG main
)
