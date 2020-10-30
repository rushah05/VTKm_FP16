# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet/contourtree_distributed/bract_maker" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/BoundaryVerticesPerSuperArcWorklets.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/PropagateBoundaryCountsSubtractDependentCountsWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/PropagateBoundaryCountsTransferDependentCountsWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/PropagateBoundaryCountsTransferCumulativeCountsWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/PropagateBoundaryCountsComputeGroupTotalsWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/FindNecessaryInteriorSupernodesFindNodesWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/FindNecessaryInteriorSetSuperparentNecessaryWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/AugmentBoundaryWithNecessaryInteriorSupernodesUnsetBoundarySupernodesWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/AugmentBoundaryWithNecessaryInteriorSupernodesAppendNecessarySupernodesWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/FindBractSuperarcsSuperarcToWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/SetUpAndDownNeighboursWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/IdentifyRegularisedSupernodesStepOneWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/IdentifyRegularisedSupernodesStepTwoWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/AddTerminalFlagsToUpDownNeighboursWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/PointerDoubleUpDownNeighboursWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/CompressRegularisedNodesCopyNecessaryRegularNodesWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/CompressRegularisedNodesFindNewSuperarcsWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/CompressRegularisedNodesResolveRootWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/CompressRegularisedNodesTransferVerticesWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/CompressRegularisedNodesFillBractSuperarcsWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/ArraySumFunctor.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/NoSuchElementFunctor.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/SelectRangeFunctor.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/HyperarcComparator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/ContourTreeNodeHyperArcComparator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_distributed/bract_maker/BRACTNodeComparator.h"
    )
endif()

