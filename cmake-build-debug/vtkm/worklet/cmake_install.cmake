# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/internal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/cellmetrics/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/clip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/colorconversion/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/connectivities/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/contour/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/contourtree/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/contourtree_augmented/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/contourtree_distributed/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/cosmotools/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/gradient/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/histogram/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/lcs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/moments/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/splatkernels/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/spatialstructure/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/tetrahedralize/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/triangulate/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/wavelets/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/particleadvection/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/zfp/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet" TYPE FILE FILES "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/include/vtkm/worklet/vtkm_worklet_export.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/worklet" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/AverageByKey.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/BoundaryTypes.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/CellAverage.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/CellDeepCopy.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/CellMeasure.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/Clip.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ContourTreeUniform.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ContourTreeUniformAugmented.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/CoordinateSystemTransform.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/CosmoTools.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/CrossProduct.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/DispatcherMapField.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/DispatcherMapTopology.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/DispatcherCellNeighborhood.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/DispatcherPointNeighborhood.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/DispatcherReduceByKey.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/DotProduct.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ExternalFaces.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ExtractGeometry.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ExtractPoints.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ExtractStructured.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/FieldEntropy.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/FieldHistogram.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/FieldStatistics.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/Gradient.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/KdTree3D.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/KernelSplatter.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/Keys.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/LagrangianStructures.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/Magnitude.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/Contour.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/Mask.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/MaskIndices.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/MaskNone.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/MaskPoints.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/MaskSelect.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/MeshQuality.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/NDimsEntropy.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/NDimsHistMarginalization.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/NDimsHistogram.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/Normalize.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/OrientCellNormals.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/OrientNormals.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/OrientPointNormals.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/OrientPointAndCellNormals.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/OscillatorSource.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ParticleAdvection.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/PointAverage.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/PointElevation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/PointMerge.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/PointTransform.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/Probe.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/RemoveDegenerateCells.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/RemoveUnusedPoints.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ScalarsToColors.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ScatterCounting.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ScatterIdentity.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ScatterPermutation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ScatterUniform.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/SplitSharpEdges.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/StableSortIndices.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/DescriptiveStatistics.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/StreamLineUniformGrid.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/StreamSurface.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/SurfaceNormals.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/Tetrahedralize.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/Threshold.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ThresholdPoints.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/TriangleWinding.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/Triangulate.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/Tube.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/VertexClustering.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/WarpScalar.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/WarpVector.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/WaveletCompressor.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/WorkletMapField.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/WorkletMapTopology.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/WorkletNeighborhood.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/WorkletCellNeighborhood.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/WorkletPointNeighborhood.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/WorkletReduceByKey.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ZFPCompressor.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ZFPDecompress.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ZFP1DCompressor.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ZFP1DDecompress.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ZFP2DCompressor.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ZFP2DDecompress.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/ScalarsToColors.hxx"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/Keys.hxx"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_worklet-1.5.a")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/testing/cmake_install.cmake")
endif()

