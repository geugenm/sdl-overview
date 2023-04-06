include(cmake/package_manager.cmake)

CPMAddPackage(
        NAME SDL3
        GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
        GIT_TAG main
        OPTIONS
            "SDL_ATOMIC OFF"
            "SDL_STATIC ON"
            "SDL_SHARED OFF"
            "SDL_VIRTUAL_JOYSTICK OFF"
            "SDL_HIDAPI_JOYSTICK OFF"
            "SDL_HAPTIC OFF"
            "SDL_JOYSTICK OFF"
            "SDL_CCACHE ON"
)