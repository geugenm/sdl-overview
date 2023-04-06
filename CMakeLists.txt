cmake_minimum_required(VERSION 3.25)
project(sdl_overview VERSION 1.0.0 LANGUAGES CXX C)

set(CMAKE_CXX_STANDARD 23)

include_directories(${PROJECT_NAME} src/)
add_executable(${PROJECT_NAME} src/main.cxx)

include(cmake/packages/sdl.cmake)

target_link_libraries(${PROJECT_NAME} SDL3::SDL3)
