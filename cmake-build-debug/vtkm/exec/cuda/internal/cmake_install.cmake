# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/cuda/internal

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/exec/cuda/internal" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/cuda/internal/ArrayPortalBasicCuda.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/cuda/internal/ArrayPortalFromThrust.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/cuda/internal/ExecutionPolicy.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/cuda/internal/IteratorFromArrayPortal.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/cuda/internal/TaskStrided.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/cuda/internal/ThrustPatches.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/cuda/internal/WrappedOperators.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/exec/cuda/internal/testing/cmake_install.cmake")
endif()

