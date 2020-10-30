# CMake generated Testfile for 
# Source directory: /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/cuda/internal/testing
# Build directory: /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/exec/cuda/internal/testing
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(UnitTestTextureMemorySupport "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/bin/UnitTests_vtkm_exec_cuda_internal_testing" "UnitTestTextureMemorySupport" "-v" "INFO" "--data-dir=/home/ruchi/fp16_vtkm_new/vtk-m/data/data" "--baseline-dir=/home/ruchi/fp16_vtkm_new/vtk-m/data/baseline")
set_tests_properties(UnitTestTextureMemorySupport PROPERTIES  FAIL_REGULAR_EXPRESSION "runtime error" LABELS ";CUDA" RUN_SERIAL "FALSE" TIMEOUT "180" _BACKTRACE_TRIPLES "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/testing/VTKmTestWrappers.cmake;263;add_test;/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/cuda/internal/testing/CMakeLists.txt;15;vtkm_unit_tests;/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/cuda/internal/testing/CMakeLists.txt;0;")
add_test(UnitTestTaskStrided "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/bin/UnitTests_vtkm_exec_cuda_internal_testing" "UnitTestTaskStrided" "-v" "INFO" "--data-dir=/home/ruchi/fp16_vtkm_new/vtk-m/data/data" "--baseline-dir=/home/ruchi/fp16_vtkm_new/vtk-m/data/baseline")
set_tests_properties(UnitTestTaskStrided PROPERTIES  FAIL_REGULAR_EXPRESSION "runtime error" LABELS ";CUDA" RUN_SERIAL "FALSE" TIMEOUT "180" _BACKTRACE_TRIPLES "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/testing/VTKmTestWrappers.cmake;263;add_test;/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/cuda/internal/testing/CMakeLists.txt;15;vtkm_unit_tests;/home/ruchi/fp16_vtkm_new/vtk-m/vtkm/exec/cuda/internal/testing/CMakeLists.txt;0;")
