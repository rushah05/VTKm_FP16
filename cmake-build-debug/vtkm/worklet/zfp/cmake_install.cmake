# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet/zfp" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPBlockReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPBlockWriter.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPCodec.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPDecode.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPDecode1.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPDecode2.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPDecode3.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPEncode.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPEncode1.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPEncode2.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPEncode3.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPFunctions.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPStructs.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPTools.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/zfp/ZFPTypeInfo.h"
    )
endif()

