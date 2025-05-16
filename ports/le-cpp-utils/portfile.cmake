vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO lateralengine/le-cpp-utils
    REF "${VERSION}"
    SHA512 fa8b8943c27a82f0678f3729b5f3f4a1546519d1b4ed05deda5e6640868d5c1b625cf99a22a7021efd8d66b11bff7bdf782c1efff24c13e57d9f8a61cf9f3341
    HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")