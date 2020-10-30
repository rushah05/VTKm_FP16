# CMake generated Testfile for 
# Source directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/random/testing
# Build directory: /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/random/testing
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(UnitTestPhiloxRNGSERIAL "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/bin/UnitTests_vtkm_random_testing" "UnitTestPhiloxRNG" "--device=serial" "-v" "INFO" "--data-dir=/home/ruchi/fp16_vtkm_new/vtk-m/data/data" "--baseline-dir=/home/ruchi/fp16_vtkm_new/vtk-m/data/baseline")
set_tests_properties(UnitTestPhiloxRNGSERIAL PROPERTIES  FAIL_REGULAR_EXPRESSION "runtime error" LABELS "SERIAL;" RUN_SERIAL "FALSE" TIMEOUT "180" _BACKTRACE_TRIPLES "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/testing/VTKmTestWrappers.cmake;263;add_test;/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/random/testing/CMakeLists.txt;14;vtkm_unit_tests;/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/random/testing/CMakeLists.txt;0;")
add_test(UnitTestPhiloxRNGCUDA "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/bin/UnitTests_vtkm_random_testing" "UnitTestPhiloxRNG" "--device=cuda" "-v" "INFO" "--data-dir=/home/ruchi/fp16_vtkm_new/vtk-m/data/data" "--baseline-dir=/home/ruchi/fp16_vtkm_new/vtk-m/data/baseline")
set_tests_properties(UnitTestPhiloxRNGCUDA PROPERTIES  FAIL_REGULAR_EXPRESSION "runtime error" LABELS "CUDA;" RUN_SERIAL "FALSE" TIMEOUT "1500" _BACKTRACE_TRIPLES "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/testing/VTKmTestWrappers.cmake;263;add_test;/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/random/testing/CMakeLists.txt;14;vtkm_unit_tests;/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/random/testing/CMakeLists.txt;0;")
