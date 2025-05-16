vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO lateralengine/le-cpp-utils
    REF "${VERSION}"
    SHA512 34b949f6ebfa5cc68e2772237da294dd50c79dca774da366978167f7d080f794078cfc3dd6261bb4d00b56af1ab883d3ff746f67c9c62cb31663722ff6ee2b63
    HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")