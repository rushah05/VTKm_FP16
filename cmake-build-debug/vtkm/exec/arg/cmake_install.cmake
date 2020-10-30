# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/exec/arg" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/AspectTagDefault.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/BasicArg.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/Boundary.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/CellShape.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/ExecutionSignatureTagBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/Fetch.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/FetchExtrude.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/FetchTagArrayDirectIn.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/FetchTagArrayDirectInOut.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/FetchTagArrayDirectOut.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/FetchTagArrayNeighborhoodIn.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/FetchTagArrayTopologyMapIn.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/FetchTagExecObject.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/FetchTagCellSetIn.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/FetchTagKeysIn.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/FetchTagWholeCellSetIn.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/IncidentElementCount.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/IncidentElementIndices.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/InputIndex.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/OutputIndex.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/ThreadIndices.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/ThreadIndicesBasic.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/ThreadIndicesBasic3D.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/ThreadIndicesExtrude.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/ThreadIndicesNeighborhood.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/ThreadIndicesCellNeighborhood.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/ThreadIndicesPointNeighborhood.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/ThreadIndicesReduceByKey.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/ThreadIndicesTopologyMap.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/ValueCount.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/VisitIndex.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/arg/WorkIndex.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/exec/arg/testing/cmake_install.cmake")
endif()

