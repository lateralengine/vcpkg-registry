vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO lateralengine/le-cpp-utils
    REF "${VERSION}"
    SHA512 b5838d69361b13892eacc2d94983392cf37a58f5d3344c09a815007688c24e13df8d952579fb3c7465cd2dfc894bced2afc9d8f72d3e7698f615cad1332c7ee7
    HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
# vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")