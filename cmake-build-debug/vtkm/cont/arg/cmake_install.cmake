# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/cont/arg" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/ControlSignatureTagBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/Transport.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagArrayIn.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagArrayInOut.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagArrayOut.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagAtomicArray.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagBitField.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagCellSetIn.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagExecObject.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagKeyedValuesIn.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagKeyedValuesInOut.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagKeyedValuesOut.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagKeysIn.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagTopologyFieldIn.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagWholeArrayIn.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagWholeArrayInOut.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TransportTagWholeArrayOut.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TypeCheck.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TypeCheckTagArrayIn.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TypeCheckTagArrayInOut.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TypeCheckTagArrayOut.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TypeCheckTagAtomicArray.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TypeCheckTagBitField.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TypeCheckTagCellSet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TypeCheckTagCellSetStructured.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TypeCheckTagExecObject.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/arg/TypeCheckTagKeys.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/cont/arg/testing/cmake_install.cmake")
endif()

