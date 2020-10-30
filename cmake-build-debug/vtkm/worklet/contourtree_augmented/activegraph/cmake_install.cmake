# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet/contourtree_augmented/activegraph" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/BuildChainsWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/BuildTrunkWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/CompactActiveEdgesComputeNewVertexOutdegree.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/CompactActiveEdgesTransferActiveEdges.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/EdgePeakComparator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/FindGoverningSaddlesWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/FindSuperAndHyperNodesWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/HyperArcSuperNodeComparator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/InitializeActiveEdges.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/InitializeActiveGraphVertices.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/InitializeEdgeFarFromActiveIndices.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/InitializeHyperarcsFromActiveIndices.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/InitializeNeighbourhoodMasksAndOutDegrees.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/SetArcsConnectNodes.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/SetArcsSlideVertices.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/SetArcsSetSuperAndHypernodeArcs.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/SetHyperArcsWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/SetSuperArcsSetTreeHyperparents.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/SetSuperArcsSetTreeSuperarcs.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/SuperArcNodeComparator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/TransferRegularPointsWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/TransferSaddleStartsResetEdgeFar.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/TransferSaddleStartsSetNewOutdegreeForSaddles.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/activegraph/TransferSaddleStartsUpdateEdgeSorter.h"
    )
endif()

