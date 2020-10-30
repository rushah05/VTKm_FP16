# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet/cosmotools" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/CosmoTools.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/CosmoToolsCenterFinder.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/CosmoToolsHaloFinder.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/ComputeBins.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/ComputeBinIndices.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/ComputeBinRange.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/ComputeNeighborBins.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/ComputePotential.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/ComputePotentialBin.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/ComputePotentialNeighbors.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/ComputePotentialNxN.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/ComputePotentialMxN.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/ComputePotentialOnCandidates.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/EqualsMinimumPotential.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/GraftParticles.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/IsStar.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/MarkActiveNeighbors.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/PointerJump.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/SetCandidateParticles.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/TagTypes.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/cosmotools/ValidHalo.h"
    )
endif()

