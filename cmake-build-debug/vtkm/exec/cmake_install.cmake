# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/exec/internal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/exec/arg/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/exec" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/AtomicArrayExecutionObject.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/BoundaryState.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/CellDerivative.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/CellEdge.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/CellFace.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/CellInside.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/CellInterpolate.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/CellLocator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/CellLocatorBoundingIntervalHierarchyExec.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/CellLocatorRectilinearGrid.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/CellLocatorUniformGrid.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/CellMeasure.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/ColorTable.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/ConnectivityExplicit.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/ConnectivityExtrude.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/ConnectivityPermuted.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/ConnectivityStructured.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/ExecutionWholeArray.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/FieldNeighborhood.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/FunctorBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/ParametricCoordinates.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/PointLocator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/PointLocatorUniformGrid.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/TaskBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/ColorTable.hxx"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/exec/serial/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/exec/tbb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/exec/openmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/exec/cuda/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/exec/kokkos/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/exec/testing/cmake_install.cmake")
endif()

