#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "vtkmdiympi_nompi" for configuration "Debug"
set_property(TARGET vtkmdiympi_nompi APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkmdiympi_nompi PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libvtkmdiympi_nompi.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkmdiympi_nompi )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkmdiympi_nompi "${_IMPORT_PREFIX}/lib/libvtkmdiympi_nompi.a" )

# Import target "vtkm_lodepng" for configuration "Debug"
set_property(TARGET vtkm_lodepng APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_lodepng PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libvtkm_lodepng-1.5.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkm_lodepng )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkm_lodepng "${_IMPORT_PREFIX}/lib/libvtkm_lodepng-1.5.a" )

# Import target "vtkm_cont" for configuration "Debug"
set_property(TARGET vtkm_cont APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_cont PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA;CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libvtkm_cont-1.5.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkm_cont )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkm_cont "${_IMPORT_PREFIX}/lib/libvtkm_cont-1.5.a" )

# Import target "vtkm_worklet" for configuration "Debug"
set_property(TARGET vtkm_worklet APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_worklet PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libvtkm_worklet-1.5.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkm_worklet )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkm_worklet "${_IMPORT_PREFIX}/lib/libvtkm_worklet-1.5.a" )

# Import target "vtkm_filter_common" for configuration "Debug"
set_property(TARGET vtkm_filter_common APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_filter_common PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libvtkm_filter_common-1.5.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkm_filter_common )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkm_filter_common "${_IMPORT_PREFIX}/lib/libvtkm_filter_common-1.5.a" )

# Import target "vtkm_filter_extra" for configuration "Debug"
set_property(TARGET vtkm_filter_extra APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_filter_extra PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libvtkm_filter_extra-1.5.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkm_filter_extra )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkm_filter_extra "${_IMPORT_PREFIX}/lib/libvtkm_filter_extra-1.5.a" )

# Import target "vtkm_filter_contour" for configuration "Debug"
set_property(TARGET vtkm_filter_contour APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_filter_contour PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libvtkm_filter_contour-1.5.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkm_filter_contour )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkm_filter_contour "${_IMPORT_PREFIX}/lib/libvtkm_filter_contour-1.5.a" )

# Import target "vtkm_filter_gradient" for configuration "Debug"
set_property(TARGET vtkm_filter_gradient APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_filter_gradient PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libvtkm_filter_gradient-1.5.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkm_filter_gradient )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkm_filter_gradient "${_IMPORT_PREFIX}/lib/libvtkm_filter_gradient-1.5.a" )

# Import target "vtkm_rendering" for configuration "Debug"
set_property(TARGET vtkm_rendering APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_rendering PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA;CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libvtkm_rendering-1.5.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkm_rendering )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkm_rendering "${_IMPORT_PREFIX}/lib/libvtkm_rendering-1.5.a" )

# Import target "vtkm_io" for configuration "Debug"
set_property(TARGET vtkm_io APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_io PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA;CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libvtkm_io-1.5.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkm_io )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkm_io "${_IMPORT_PREFIX}/lib/libvtkm_io-1.5.a" )

# Import target "vtkm_source" for configuration "Debug"
set_property(TARGET vtkm_source APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_source PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libvtkm_source-1.5.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS vtkm_source )
list(APPEND _IMPORT_CHECK_FILES_FOR_vtkm_source "${_IMPORT_PREFIX}/lib/libvtkm_source-1.5.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
