cmake_minimum_required(VERSION 3.25)
project(sdl_overview VERSION 1.0.0 LANGUAGES CXX C)

set(CMAKE_CXX_STANDARD 23)


include_directories(${PROJECT_NAME} src/)
add_executable(${PROJECT_NAME} src/main.cxx)


include(cmake/package_manager.cmake)


find_package(SDL3 QUIET)

if (SDL3_FOUND)
    message(STATUS "SDL library found.")
else ()
    message(STATUS "Installed SDL library not found. Downloading...")
    include(${CPM_PACKAGES}/sdl.cmake)
endif ()

target_link_libraries(${PROJECT_NAME} SDL3::SDL3)


find_package(GTest QUIET)

if (NOT GTest_FOUND)
    message(STATUS "Google Test library not found. Downloading...")
    include(${CPM_PACKAGES}/google_test.cmake)
endif ()

add_executable(my_test test/main.cxx)
target_link_libraries(my_test PRIVATE GTest::GTest GTest::Main)
