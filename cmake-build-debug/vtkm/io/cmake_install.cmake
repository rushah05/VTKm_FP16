# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/io" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/BOVDataSetReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ErrorIO.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/DecodePNG.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/EncodePNG.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ImageReaderBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ImageReaderPNG.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ImageReaderPNM.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ImageWriterBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ImageWriterPNG.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ImageWriterPNM.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/PixelTypes.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKDataSetReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKDataSetReaderBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKDataSetWriter.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKPolyDataReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKRectilinearGridReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKStructuredGridReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKStructuredPointsReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKUnstructuredGridReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/PixelTypes.hxx"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/io" TYPE FILE FILES "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/include/vtkm/io/vtkm_io_export.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/io" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/BOVDataSetReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ErrorIO.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/DecodePNG.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/EncodePNG.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ImageReaderBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ImageReaderPNG.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ImageReaderPNM.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ImageWriterBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ImageWriterPNG.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/ImageWriterPNM.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/PixelTypes.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKDataSetReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKDataSetReaderBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKDataSetWriter.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKPolyDataReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKRectilinearGridReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKStructuredGridReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKStructuredPointsReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/VTKUnstructuredGridReader.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/io/PixelTypes.hxx"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_io-1.5.a")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/io/internal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/io/reader/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/io/writer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/io/testing/cmake_install.cmake")
endif()

