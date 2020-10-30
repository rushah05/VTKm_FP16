# CMake generated Testfile for 
# Source directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/internal/testing
# Build directory: /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/worklet/internal/testing
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(UnitTestDispatcherBase "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/bin/UnitTests_vtkm_worklet_internal_testing" "UnitTestDispatcherBase" "-v" "INFO" "--data-dir=/home/ruchi/fp16_vtkm_new/vtk-m/data/data" "--baseline-dir=/home/ruchi/fp16_vtkm_new/vtk-m/data/baseline")
set_tests_properties(UnitTestDispatcherBase PROPERTIES  FAIL_REGULAR_EXPRESSION "runtime error" LABELS ";" RUN_SERIAL "FALSE" TIMEOUT "180" _BACKTRACE_TRIPLES "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/testing/VTKmTestWrappers.cmake;263;add_test;/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/internal/testing/CMakeLists.txt;15;vtkm_unit_tests;/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/worklet/internal/testing/CMakeLists.txt;0;")
