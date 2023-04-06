include(cmake/package_manager.cmake)

CPMAddPackage(
        NAME GTest
        GIT_REPOSITORY https://github.com/google/googletest.git
        GIT_TAG main
)

if(GTest_ADDED)
    add_library(GTest::GTest ALIAS gtest)
endif()