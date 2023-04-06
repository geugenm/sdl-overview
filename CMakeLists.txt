cmake_minimum_required(VERSION 3.25)

project(sdl_overview VERSION 1.0.0 LANGUAGES CXX C)

set(CMAKE_CXX_STANDARD 23)

set(SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)

add_executable(${PROJECT_NAME} ${SRC_DIR}/main.cxx)

target_include_directories(${PROJECT_NAME} PRIVATE ${SRC_DIR})


include(cmake/package_manager.cmake)

include(${CPM_PACKAGES}/ccache.cmake)


include(${CPM_PACKAGES}/sdl.cmake)

target_link_libraries(${PROJECT_NAME} PRIVATE SDL3::SDL3)


option(BUILD_TESTS "Build tests" ON)
if (BUILD_TESTS)
    include(${CPM_PACKAGES}/google_test.cmake)
    add_subdirectory(test)
endif ()