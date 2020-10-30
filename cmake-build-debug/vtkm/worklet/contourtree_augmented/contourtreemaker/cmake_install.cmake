# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet/contourtree_augmented/contourtreemaker" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/AugmentMergeTrees_InitNewJoinSplitIDAndSuperparents.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/AugmentMergeTrees_SetAugmentedMergeArcs.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/CompressTrees_Step.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/ComputeHyperAndSuperStructure_HypernodesSetFirstSuperchild.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/ComputeHyperAndSuperStructure_PermuteArcs.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/ComputeHyperAndSuperStructure_ResetHyperparentsId.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/ComputeHyperAndSuperStructure_SetNewHypernodesAndArcs.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/ComputeHyperAndSuperStructure_SetFirstSupernodePerIterationWorklet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/ComputeRegularStructure_LocateSuperarcs.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/ComputeRegularStructure_SetArcs.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/ContourTreeSuperNodeComparator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/ContourTreeNodeComparator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/FindDegrees_SubtractLHE.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/FindDegrees_FindRHE.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/FindDegrees_ResetUpAndDowndegree.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/TransferLeafChains_CollapsePastRegular.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/TransferLeafChains_InitInAndOutbound.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/TransferLeafChains_TransferToContourTree.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree_augmented/contourtreemaker/WasNotTransferred.h"
    )
endif()

