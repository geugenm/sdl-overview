add_executable(my_test main.cxx)

target_link_libraries(my_test PRIVATE GTest::GTest)