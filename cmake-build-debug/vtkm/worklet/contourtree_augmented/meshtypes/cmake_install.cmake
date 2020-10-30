# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/meshtypes

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
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/contourtree_augmented/meshtypes/contourtreemesh/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/contourtree_augmented/meshtypes/mesh_boundary/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet/contourtree_augmented/meshtypes" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/meshtypes/DataSetMeshTriangulation2DFreudenthal.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/meshtypes/DataSetMeshTriangulation3DFreudenthal.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/meshtypes/DataSetMeshTriangulation3DMarchingCubes.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/meshtypes/ContourTreeMesh.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/meshtypes/MeshStructureFreudenthal2D.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/meshtypes/MeshStructureFreudenthal3D.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/meshtypes/MeshStructureMarchingCubes.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/meshtypes/MeshStructureContourTreeMesh.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet/contourtree_augmented/meshtypes/freudenthal_2D" TYPE FILE FILES "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/meshtypes/freudenthal_2D/Types.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet/contourtree_augmented/meshtypes/freudenthal_3D" TYPE FILE FILES "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/meshtypes/freudenthal_3D/Types.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet/contourtree_augmented/meshtypes/marchingcubes_3D" TYPE FILE FILES "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/meshtypes/marchingcubes_3D/Types.h")
endif()

