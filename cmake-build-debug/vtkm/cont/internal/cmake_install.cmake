# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/cont/internal" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/ArrayHandleExecutionManager.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/ArrayManagerExecution.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/ArrayManagerExecutionShareWithControl.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/ArrayPortalCheck.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/ArrayPortalFromIterators.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/ArrayTransfer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/AtomicInterfaceControl.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/AtomicInterfaceExecution.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/Buffer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/CastInvalidValue.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/ConnectivityExplicitInternals.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/DeviceAdapterAlgorithmGeneral.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/DeviceAdapterMemoryManager.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/DeviceAdapterMemoryManagerShared.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/DeviceAdapterListHelpers.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/FunctorsGeneral.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/IteratorFromArrayPortal.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/KXSort.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/OptionParser.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/ParallelRadixSort.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/ParallelRadixSortInterface.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/ReverseConnectivityBuilder.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/StorageError.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/TransferInfo.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/VirtualObjectTransfer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/VirtualObjectTransferInstantiate.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/internal/VirtualObjectTransferShareWithControl.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/cont/internal/testing/cmake_install.cmake")
endif()

