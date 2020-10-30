# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/internal" TYPE FILE FILES "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/include/vtkm/internal/Configure.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/internal" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/ArrayPortalBasic.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/ArrayPortalHelpers.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/ArrayPortalUniformPointCoordinates.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/ArrayPortalValueReference.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/ArrayPortalVirtual.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/Assume.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/brigand.hpp"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/ConfigureFor32.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/ConfigureFor64.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/ConnectivityStructuredInternals.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/DecayHelpers.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/ExportMacros.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/FunctionInterface.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/FunctionInterfaceDetailPost.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/FunctionInterfaceDetailPre.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/IndexTag.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/IndicesExtrude.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/Invocation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/Unreachable.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/Variant.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/VariantDetail.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/VecOperators.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/internal/Windows.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/internal/testing/cmake_install.cmake")
endif()

