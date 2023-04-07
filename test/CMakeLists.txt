add_executable(Test_Static_Compilation sdl_compilation.cxx)

target_link_libraries(Test_Static_Compilation PRIVATE GTest::GTest SDL3::SDL3-static)


add_executable(Test_Shared_Compilation sdl_compilation.cxx)

target_link_libraries(Test_Shared_Compilation PRIVATE GTest::GTest SDL3::SDL3-shared)