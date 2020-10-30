# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm" TYPE FILE FILES "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/include/vtkm/Version.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Algorithms.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Assert.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Atomic.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/BinaryPredicates.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/BinaryOperators.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Bitset.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Bounds.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/CellClassification.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/CellShape.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/CellTraits.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Deprecated.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/ErrorCode.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Flags.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Geometry.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Half.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Hash.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/ImplicitFunction.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/List.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/ListTag.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Math.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Matrix.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/NewtonsMethod.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Pair.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/TypesHalf.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Range.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/RangeId.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/RangeId2.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/RangeId3.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/StaticAssert.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Swap.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/TopologyElementTag.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Transform3D.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Tuple.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/TypeList.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/TypeListTag.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Types.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/TypesHalf.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/TypeTraits.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/VecAxisAlignedPointCoordinates.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/VecFromPortal.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/VecFromPortalPermute.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/VecFromVirtPortal.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/VectorAnalysis.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/VecTraits.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/VecVariable.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/VirtualObjectBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/UnaryPredicates.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/Geometry.hxx"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/diy/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/lodepng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/loguru/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/optionparser/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/lcl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/testing/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/internal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/cont/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/exec/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/filter/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/rendering/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/interop/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/io/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/source/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/random/cmake_install.cmake")
endif()

