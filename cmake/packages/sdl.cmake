include(cmake/CPM.cmake)

CPMAddPackage(
        NAME SDL3
        GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
        GIT_TAG main
)