cmake_minimum_required(VERSION 3.25)
project(sdl_overview VERSION 1.0.0 LANGUAGES CXX C)

set(CMAKE_CXX_STANDARD 20)

add_executable(sdl_overview main.cpp)

include(cmake/packages/sdl.cmake)

target_link_libraries(sdl_overview SDL3::SDL3)