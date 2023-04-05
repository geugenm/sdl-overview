include(cmake/CPM.cmake)

CPMAddPackage(
        NAME SDL3
        GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
        GIT_TAG main
        CMAKE_ARGS
        -DSDL_SHARED=OFF
        -DSDL_STATIC=ON
        -DSDL_ATOMIC=ON
        -DSDL_AUDIO=ON
        -DSDL_FILE=ON
        -DSDL_VIDEO=ON
        -DSDL_RENDER=ON
        -DSDL_EVENTS=ON
        -DSDL_JOYSTICK=ON
        -DSDL_HAPTIC=ON
        -DSDL_POWER=ON
        -DSDL_THREADS=ON
        -DSDL_TIMERS=ON
)