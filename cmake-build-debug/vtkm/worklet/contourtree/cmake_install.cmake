# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet/contourtree" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/ActiveEdgeTransferrer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/ChainDoubler.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/ChainGraph.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/ContourTree.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/CopyJoinSplit.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/CopyNeighbors.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/CopySupernodes.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/DegreeDelta.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/DegreeSubrangeOffset.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/EdgePeakComparator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/FillSupernodes.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/FindLeaves.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/GoverningSaddleFinder.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/JoinArcConnector.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/JoinSuperArcFinder.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/JoinTreeTransferrer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/LinkComponentCaseTable2D.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/LinkComponentCaseTable3D.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/MergeTree.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/Mesh2D_DEM_SaddleStarter.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/Mesh2D_DEM_Triangulation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/Mesh2D_DEM_Triangulation_Macros.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/Mesh2D_DEM_VertexOutdegreeStarter.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/Mesh2D_DEM_VertexStarter.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/Mesh3D_DEM_SaddleStarter.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/Mesh3D_DEM_Triangulation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/Mesh3D_DEM_Triangulation_Macros.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/Mesh3D_DEM_VertexOutdegreeStarter.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/Mesh3D_DEM_VertexStarter.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/PrintVectors.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/RegularPointTransferrer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/RegularToCandidate.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/RegularToCriticalDown.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/RegularToCriticalUp.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/ResetDegrees.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/SaddleAscentFunctor.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/SaddleAscentTransferrer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/SetJoinAndSplitArcs.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/SetSupernodeInward.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/SkipVertex.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/SubrangeOffset.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/TrunkBuilder.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/Types.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/UpdateOutbound.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/VertexDegreeUpdater.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/VertexMergeComparator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/contourtree/VertexValueComparator.h"
    )
endif()

