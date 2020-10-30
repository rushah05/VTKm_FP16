# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet/cellmetrics" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellAspectFrobeniusMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellAspectGammaMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellAspectRatioMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellConditionMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellDiagonalRatioMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellDimensionMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellEdgeRatioMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellJacobianMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellMaxAngleMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellMaxAspectFrobeniusMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellMaxDiagonalMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellMinAngleMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellMinDiagonalMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellOddyMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellRelativeSizeSquaredMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellScaledJacobianMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellShapeMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellShapeAndSizeMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellShearMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellSkewMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellStretchMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellTaperMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/CellWarpageMetric.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/TypeOfCellHexahedral.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/TypeOfCellQuadrilateral.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/TypeOfCellTetrahedral.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cellmetrics/TypeOfCellTriangle.h"
    )
endif()

