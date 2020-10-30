# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented

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
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/contourtree_augmented/data_set_mesh/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/contourtree_augmented/meshtypes/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/contourtree_augmented/meshextrema/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/contourtree_augmented/activegraph/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/contourtree_augmented/contourtreemaker/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/contourtree_augmented/processcontourtree/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet/contourtree_augmented" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/ArrayTransforms.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/ActiveGraph.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/ContourTree.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/ContourTreeMaker.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/DataSetMesh.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/MergeTree.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/MeshExtrema.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/PointerDoubling.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/PrintVectors.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/ProcessContourTree.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/Types.h"
    )
endif()

