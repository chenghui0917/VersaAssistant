#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Material::qtmaterial" for configuration "Release"
set_property(TARGET Material::qtmaterial APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Material::qtmaterial PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libqtmaterial.dll.a"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libqtmaterial.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Material::qtmaterial )
list(APPEND _IMPORT_CHECK_FILES_FOR_Material::qtmaterial "${_IMPORT_PREFIX}/lib/libqtmaterial.dll.a" "${_IMPORT_PREFIX}/bin/libqtmaterial.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
