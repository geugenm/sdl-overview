include(cmake/package_manager.cmake)

CPMAddPackage(
        NAME GTest
        GIT_REPOSITORY https://github.com/google/googletest.git
        GIT_TAG main
)