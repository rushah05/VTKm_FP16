# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet/contour" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/CommonState.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/FieldPropagation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/FlyingEdges.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/FlyingEdgesHelpers.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/FlyingEdgesPass1.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/FlyingEdgesPass2.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/FlyingEdgesPass4.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/FlyingEdgesPass4Common.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/FlyingEdgesPass4X.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/FlyingEdgesPass4XWithNormals.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/FlyingEdgesPass4Y.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/FlyingEdgesTables.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/MarchingCellTables.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contour/MarchingCells.h"
    )
endif()

