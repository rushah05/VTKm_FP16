# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/cont" TYPE FILE FILES "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/include/vtkm/cont/DefaultTypes.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/cont" TYPE FILE FILES "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/include/vtkm/cont/vtkm_cont_export.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtkm-1.5/vtkm/cont" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/Algorithm.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayCopy.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayGetValues.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandle.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleBasic.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleBitField.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleCartesianProduct.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleCast.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleCompositeVector.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleConcatenate.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleConstant.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleCounting.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleDecorator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleDiscard.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleExtractComponent.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleExtrudeCoords.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleExtrudeField.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleGroupVec.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleGroupVecVariable.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleImplicit.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleIndex.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleMultiplexer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandlePermutation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleReverse.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleRandomStandardNormal.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleRandomUniformBits.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleRandomUniformReal.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleSOA.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleSwizzle.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleTransform.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleUniformPointCoordinates.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleUniformPointCoordinatesFP16.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleView.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleZip.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayPortal.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayPortalToIterators.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayRangeCompute.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/AssignerPartitionedDataSet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/AtomicArray.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/BitField.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/BoundsCompute.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/BoundsGlobalCompute.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CastAndCall.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellLocator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellLocatorBoundingIntervalHierarchy.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellLocatorGeneral.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellLocatorRectilinearGrid.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellLocatorUniformBins.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellLocatorUniformGrid.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellSet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellSetExplicit.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellSetExtrude.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellSetList.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellSetListTag.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellSetPermutation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellSetSingleType.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellSetStructured.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ColorTable.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ColorTableMap.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ColorTableSamples.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CoordinateSystem.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CoordinateSystemFP16.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/DataSet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/DataSetBuilderExplicit.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/DataSetBuilderRectilinear.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/DataSetBuilderUniform.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/DataSetFieldAdd.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/DeviceAdapter.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/DeviceAdapterAlgorithm.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/DeviceAdapterList.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/DeviceAdapterListTag.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/DeviceAdapterTag.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/DynamicCellSet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/EnvironmentTracker.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/Error.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ErrorBadAllocation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ErrorBadDevice.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ErrorBadType.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ErrorBadValue.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ErrorExecution.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ErrorFilterExecution.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ErrorInternal.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ExecutionAndControlObjectBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ExecutionObjectBase.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/Field.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/FieldRangeCompute.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/FieldRangeGlobalCompute.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ImplicitFunctionHandle.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/Initialize.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/Invoker.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/Logging.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ParticleArrayCopy.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/PartitionedDataSet.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/PointLocator.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/PointLocatorUniformGrid.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/RuntimeDeviceInformation.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/RuntimeDeviceTracker.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/Serialization.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/Storage.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/StorageExtrude.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/StorageImplicit.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/StorageList.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/StorageListTag.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/Timer.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/Token.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/TryExecute.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/SerializableTypeString.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/UncertainArrayHandle.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/UnknownArrayHandle.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/VariantArrayHandle.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/VirtualObjectHandle.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleVirtual.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleVirtualCoordinates.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/StorageVirtual.h"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandle.hxx"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayRangeCompute.hxx"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellSetExplicit.hxx"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellSetExtrude.hxx"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/CellSetStructured.hxx"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/FieldRangeCompute.hxx"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/FieldRangeGlobalCompute.hxx"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ParticleArrayCopy.hxx"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/VirtualObjectHandle.hxx"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/ArrayHandleVirtual.hxx"
    "/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/cont/StorageVirtual.hxx"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/libvtkm_cont-1.5.a")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/cont/internal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/cont/arg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/cont/serial/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/cont/tbb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/cont/openmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/cont/cuda/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/cont/kokkos/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/cont/testing/cmake_install.cmake")
endif()

