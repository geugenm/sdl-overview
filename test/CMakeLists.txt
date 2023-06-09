add_executable(Test_Static_Compilation sdl_compilation.cxx)

target_link_libraries(Test_Static_Compilation PRIVATE GTest::GTest SDL3::SDL3-static)


add_executable(Test_Shared_Compilation sdl_compilation.cxx)

target_link_libraries(Test_Shared_Compilation PRIVATE GTest::GTest SDL3::SDL3-shared)


set(SHARED_LIB_PATH ${CMAKE_CURRENT_LIST_DIR}/dll)

option(USE_CUSTOM_SHARED_LIB_PATH "Use a custom shared library search path" OFF)

if (USE_CUSTOM_SHARED_LIB_PATH AND SHARED_LIB_PATH)
    add_executable(Test_Custom_Dynamic_API sdl_compilation.cxx)
    target_link_libraries(Test_Custom_Dynamic_API PRIVATE GTest::GTest SDL3::SDL3-shared)

    add_custom_command(TARGET Test_Custom_Dynamic_API POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E env SDL3_DYNAMIC_API=${SHARED_LIB_PATH}/libSDL2.so ${CMAKE_BINARY_DIR}/test/./Test_Custom_Dynamic_API
            )
endif()

option(USE_CUSTOM_SDL_SHARED_LIB "Use custom SDL shared libraries. NOTE: Will fail if something was injected" OFF)

if (USE_CUSTOM_SDL_SHARED_LIB AND SHARED_LIB_PATH)
    add_executable(Test_DLL_Injection sdl_compilation.cxx)
    target_link_libraries(Test_DLL_Injection PRIVATE GTest::GTest SDL3::SDL3-shared)

    add_custom_command(TARGET Test_DLL_Injection POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E env LD_PRELOAD=${SHARED_LIB_PATH}/libSDL2.so ${CMAKE_BINARY_DIR}/test/./Test_DLL_Injection
            )
endif()