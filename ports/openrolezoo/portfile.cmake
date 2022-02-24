vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO zhouqime/OpenRoleZoo
  REF fdc3865e4b4e2ad439eb5c526d81658b47ab4f77
  SHA512 f6b4a5c8a9d5cc2f93ffe80798397259c0c0d2a8e0fe017b32cebc913a777385546fd58bb7b56c826bab7fcd2c44d0166fedc40542cb5e3d08b6cf6c20dc52e5
  HEAD_REF master
  PATCHES "pot.patch"
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_config_fixup_cmake()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)