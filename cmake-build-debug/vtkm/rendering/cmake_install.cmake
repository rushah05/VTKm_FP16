# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/rendering" TYPE FILE FILES "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/include/vtkm/rendering/vtkm_rendering_export.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/rendering" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/Actor.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/AxisAnnotation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/AxisAnnotation2D.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/AxisAnnotation3D.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/BitmapFont.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/BitmapFontFactory.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/BoundingBoxAnnotation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/Camera.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/Canvas.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/CanvasRayTracer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/Color.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/ColorBarAnnotation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/ColorLegendAnnotation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/ConnectivityProxy.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/Cylinderizer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/DecodePNG.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/EncodePNG.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/LineRenderer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/MatrixHelpers.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/Scene.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/Mapper.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/MapperCylinder.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/MapperPoint.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/MapperQuad.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/MapperRayTracer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/MapperVolume.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/MapperConnectivity.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/MapperWireframer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/Quadralizer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/ScalarRenderer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/TextAnnotation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/TextAnnotationBillboard.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/TextAnnotationScreen.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/TextRenderer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/Texture2D.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/Triangulator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/View.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/View1D.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/View2D.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/View3D.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/Wireframer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/WorldAnnotator.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_rendering-1.5.a")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/rendering/internal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/rendering/raytracing/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/rendering/testing/cmake_install.cmake")
endif()

