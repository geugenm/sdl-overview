include(cmake/package_manager.cmake)

CPMAddPackage(
        NAME ccache
        GITHUB_REPOSITORY TheLartians/Ccache.cmake
        VERSION 1.2
)

set(DUSE_CCACHE YES)
set(DCCACHE_OPTIONS "CCACHE_CPP2=true;CCACHE_SLOPPINESS=clang_index_store")