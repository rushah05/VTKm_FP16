# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/rendering/raytracing" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/BoundingVolumeHierarchy.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/BVHTraverser.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/Camera.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/CellIntersector.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/CellSampler.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/CellTables.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/ChannelBuffer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/ChannelBufferOperations.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/ConnectivityTracer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/CylinderExtractor.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/CylinderIntersector.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/Logger.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/MeshConnectivityBuilder.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/MeshConnectivityContainers.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/MeshConnectivityBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/MortonCodes.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/PartialComposite.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/QuadExtractor.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/QuadIntersector.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/Ray.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/RayOperations.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/RayTracer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/RayTracingTypeDefs.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/Sampler.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/ScalarRenderer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/ShapeIntersector.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/SphereExtractor.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/SphereIntersector.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/TriangleExtractor.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/TriangleIntersections.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/TriangleIntersector.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/VolumeRendererStructured.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/rendering/raytracing/Worklets.h"
    )
endif()

