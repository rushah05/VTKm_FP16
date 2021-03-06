# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

if(CMAKE_VERSION VERSION_LESS 3.0.0)
  message(FATAL_ERROR "This file relies on consumers using CMake 3.0.0 or greater.")
endif()

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget vtkm::cuda vtkm_vectorization_flags vtkm_compiler_flags vtkm_developer_flags vtkmdiympi_nompi vtkmdiy diy_developer_flags vtkm_diy vtkm_lodepng vtkm_loguru vtkm_optionparser vtkm_lcl vtkm_cont vtkm_worklet vtkm_filter_common vtkm_filter_extra vtkm_filter_contour vtkm_filter_gradient vtkm_filter vtkm_rendering vtkm_rendering_gl_context vtkm_io vtkm_source)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target vtkm::cuda
add_library(vtkm::cuda INTERFACE IMPORTED)

set_target_properties(vtkm::cuda PROPERTIES
  INTERFACE_COMPILE_OPTIONS "\$<\$<COMPILE_LANGUAGE:CUDA>:--expt-relaxed-constexpr>"
)

# Create imported target vtkm_vectorization_flags
add_library(vtkm_vectorization_flags INTERFACE IMPORTED)

set_target_properties(vtkm_vectorization_flags PROPERTIES
  INTERFACE_COMPILE_OPTIONS "\$<\$<COMPILE_LANGUAGE:CXX>:>"
)

# Create imported target vtkm_compiler_flags
add_library(vtkm_compiler_flags INTERFACE IMPORTED)

set_target_properties(vtkm_compiler_flags PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_COMPILE_OPTIONS "\$<\$<COMPILE_LANGUAGE:CXX>:-ffunction-sections>;\$<\$<COMPILE_LANGUAGE:CUDA>:-Xcompiler=-ffunction-sections>"
  INTERFACE_INCLUDE_DIRECTORIES "/home/ruchi/fp16_vtkm_new/vtk-m;/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/include"
  INTERFACE_LINK_LIBRARIES "vtkm_vectorization_flags"
)

# Create imported target vtkm_developer_flags
add_library(vtkm_developer_flags INTERFACE IMPORTED)

set_target_properties(vtkm_developer_flags PROPERTIES
  INTERFACE_COMPILE_OPTIONS "\$<\$<COMPILE_LANGUAGE:CXX>:-Wall;-Wcast-align;-Wchar-subscripts;-Wextra;-Wpointer-arith;-Wformat;-Wformat-security;-Wshadow;-Wunused;-fno-common;-Wno-unused-function;-Wfloat-conversion;-Wodr>;\$<\$<COMPILE_LANGUAGE:CUDA>:-Xcompiler=-Wall,-Wcast-align,-Wchar-subscripts,-Wpointer-arith,-Wformat,-Wformat-security,-Wshadow,-fno-common,-Wunused,-Wno-unknown-pragmas,-Wno-unused-local-typedefs,-Wno-unused-function,-Wfloat-conversion,-Wodr>;\$<\$<COMPILE_LANGUAGE:CUDA>:-Xcudafe=--display_error_number>"
)

# Create imported target vtkmdiympi_nompi
add_library(vtkmdiympi_nompi STATIC IMPORTED)

set_target_properties(vtkmdiympi_nompi PROPERTIES
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:diy_developer_flags>"
)

# Create imported target vtkmdiy
add_library(vtkmdiy INTERFACE IMPORTED)

set_target_properties(vtkmdiy PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "VTKMDIY_DEBUG;VTKMDIY_NO_THREADS;VTKMDIY_MPI_AS_LIB;VTKMDIY_MPI_STATIC_BUILD"
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_INCLUDE_DIRECTORIES "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/thirdparty/diy/vtkmdiy/include;/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/diy/vtkmdiy/include/vtkmdiy/mpi"
  INTERFACE_LINK_LIBRARIES "vtkmdiympi_nompi"
)

# Create imported target diy_developer_flags
add_library(diy_developer_flags INTERFACE IMPORTED)

set_target_properties(diy_developer_flags PROPERTIES
  INTERFACE_COMPILE_OPTIONS "\$<\$<COMPILE_LANGUAGE:CXX>:-Wall;-Wcast-align;-Wchar-subscripts;-Wextra;-Wpointer-arith;-Wformat;-Wformat-security;-Wshadow;-Wunused;-fno-common;-Wfloat-conversion;-Wno-sign-conversion;-Wno-sign-compare;-Wno-cast-align;-Wodr>"
)

# Create imported target vtkm_diy
add_library(vtkm_diy INTERFACE IMPORTED)

set_target_properties(vtkm_diy PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/thirdparty/diy"
  INTERFACE_LINK_LIBRARIES "vtkmdiy;vtkmdiympi_nompi"
)

# Create imported target vtkm_lodepng
add_library(vtkm_lodepng STATIC IMPORTED)

set_target_properties(vtkm_lodepng PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/thirdparty/lodepng"
)

# Create imported target vtkm_loguru
add_library(vtkm_loguru INTERFACE IMPORTED)

set_target_properties(vtkm_loguru PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_INCLUDE_DIRECTORIES "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/thirdparty/loguru"
  INTERFACE_LINK_LIBRARIES "dl;Threads::Threads"
)

# Create imported target vtkm_optionparser
add_library(vtkm_optionparser INTERFACE IMPORTED)

set_target_properties(vtkm_optionparser PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/thirdparty/optionparser"
)

# Create imported target vtkm_lcl
add_library(vtkm_lcl INTERFACE IMPORTED)

set_target_properties(vtkm_lcl PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_INCLUDE_DIRECTORIES "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/thirdparty/lcl/vtkmlcl"
)

# Create imported target vtkm_cont
add_library(vtkm_cont STATIC IMPORTED)

set_target_properties(vtkm_cont PROPERTIES
  INTERFACE_LINK_LIBRARIES "vtkm_developer_flags;vtkm_compiler_flags;vtkm::cuda;Threads::Threads;vtkm_optionparser;vtkm_diy;vtkm_lcl;\$<LINK_ONLY:vtkm_loguru>"
)

# Create imported target vtkm_worklet
add_library(vtkm_worklet STATIC IMPORTED)

set_target_properties(vtkm_worklet PROPERTIES
  INTERFACE_LINK_LIBRARIES "vtkm_developer_flags;vtkm_cont"
)

# Create imported target vtkm_filter_common
add_library(vtkm_filter_common STATIC IMPORTED)

set_target_properties(vtkm_filter_common PROPERTIES
  INTERFACE_LINK_LIBRARIES "vtkm_developer_flags;vtkm_worklet"
)

# Create imported target vtkm_filter_extra
add_library(vtkm_filter_extra STATIC IMPORTED)

set_target_properties(vtkm_filter_extra PROPERTIES
  INTERFACE_LINK_LIBRARIES "vtkm_developer_flags;vtkm_filter_common"
)

# Create imported target vtkm_filter_contour
add_library(vtkm_filter_contour STATIC IMPORTED)

set_target_properties(vtkm_filter_contour PROPERTIES
  INTERFACE_LINK_LIBRARIES "vtkm_developer_flags;vtkm_filter_common"
)

# Create imported target vtkm_filter_gradient
add_library(vtkm_filter_gradient STATIC IMPORTED)

set_target_properties(vtkm_filter_gradient PROPERTIES
  INTERFACE_LINK_LIBRARIES "vtkm_developer_flags;vtkm_filter_common"
)

# Create imported target vtkm_filter
add_library(vtkm_filter INTERFACE IMPORTED)

set_target_properties(vtkm_filter PROPERTIES
  INTERFACE_LINK_LIBRARIES "vtkm_filter_extra;vtkm_filter_contour;vtkm_filter_gradient;vtkm_filter_common"
)

# Create imported target vtkm_rendering
add_library(vtkm_rendering STATIC IMPORTED)

set_target_properties(vtkm_rendering PROPERTIES
  INTERFACE_LINK_LIBRARIES "vtkm_developer_flags;vtkm_filter;vtkm_io;\$<LINK_ONLY:rt>;vtkm_rendering_gl_context"
)

# Create imported target vtkm_rendering_gl_context
add_library(vtkm_rendering_gl_context INTERFACE IMPORTED)

# Create imported target vtkm_io
add_library(vtkm_io STATIC IMPORTED)

set_target_properties(vtkm_io PROPERTIES
  INTERFACE_LINK_LIBRARIES "vtkm_developer_flags;vtkm_cont;\$<LINK_ONLY:vtkm_lodepng>"
)

# Create imported target vtkm_source
add_library(vtkm_source STATIC IMPORTED)

set_target_properties(vtkm_source PROPERTIES
  INTERFACE_LINK_LIBRARIES "vtkm_developer_flags;vtkm_cont"
)

# Import target "vtkmdiympi_nompi" for configuration "Debug"
set_property(TARGET vtkmdiympi_nompi APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkmdiympi_nompi PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkmdiympi_nompi.a"
  )

# Import target "vtkm_lodepng" for configuration "Debug"
set_property(TARGET vtkm_lodepng APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_lodepng PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_lodepng-1.5.a"
  )

# Import target "vtkm_cont" for configuration "Debug"
set_property(TARGET vtkm_cont APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_cont PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA;CXX"
  IMPORTED_LOCATION_DEBUG "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_cont-1.5.a"
  )

# Import target "vtkm_worklet" for configuration "Debug"
set_property(TARGET vtkm_worklet APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_worklet PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA"
  IMPORTED_LOCATION_DEBUG "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_worklet-1.5.a"
  )

# Import target "vtkm_filter_common" for configuration "Debug"
set_property(TARGET vtkm_filter_common APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_filter_common PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA"
  IMPORTED_LOCATION_DEBUG "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_filter_common-1.5.a"
  )

# Import target "vtkm_filter_extra" for configuration "Debug"
set_property(TARGET vtkm_filter_extra APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_filter_extra PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA"
  IMPORTED_LOCATION_DEBUG "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_filter_extra-1.5.a"
  )

# Import target "vtkm_filter_contour" for configuration "Debug"
set_property(TARGET vtkm_filter_contour APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_filter_contour PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA"
  IMPORTED_LOCATION_DEBUG "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_filter_contour-1.5.a"
  )

# Import target "vtkm_filter_gradient" for configuration "Debug"
set_property(TARGET vtkm_filter_gradient APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_filter_gradient PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA"
  IMPORTED_LOCATION_DEBUG "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_filter_gradient-1.5.a"
  )

# Import target "vtkm_rendering" for configuration "Debug"
set_property(TARGET vtkm_rendering APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_rendering PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA;CXX"
  IMPORTED_LOCATION_DEBUG "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_rendering-1.5.a"
  )

# Import target "vtkm_io" for configuration "Debug"
set_property(TARGET vtkm_io APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_io PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA;CXX"
  IMPORTED_LOCATION_DEBUG "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_io-1.5.a"
  )

# Import target "vtkm_source" for configuration "Debug"
set_property(TARGET vtkm_source APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vtkm_source PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA"
  IMPORTED_LOCATION_DEBUG "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_source-1.5.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
