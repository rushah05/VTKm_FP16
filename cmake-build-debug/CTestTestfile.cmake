# CMake generated Testfile for 
# Source directory: /home/ruchi/fp16_vtkm_new/vtk-m
# Build directory: /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(SystemInformation "/snap/clion/129/bin/cmake/linux/bin/cmake" "-DVTKm_SOURCE_DIR=/home/ruchi/fp16_vtkm_new/vtk-m" "-DVTKm_BINARY_DIR=/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug" "-P" "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/testing/VTKmSystemInformation.cmake")
set_tests_properties(SystemInformation PROPERTIES  _BACKTRACE_TRIPLES "/home/ruchi/fp16_vtkm_new/vtk-m/CMakeLists.txt;338;add_test;/home/ruchi/fp16_vtkm_new/vtk-m/CMakeLists.txt;0;")
add_test(CopyrightStatement "/snap/clion/129/bin/cmake/linux/bin/cmake" "-DVTKm_SOURCE_DIR=/home/ruchi/fp16_vtkm_new/vtk-m" "-P" "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/VTKmCheckCopyright.cmake")
set_tests_properties(CopyrightStatement PROPERTIES  TIMEOUT "300" _BACKTRACE_TRIPLES "/home/ruchi/fp16_vtkm_new/vtk-m/CMakeLists.txt;341;add_test;/home/ruchi/fp16_vtkm_new/vtk-m/CMakeLists.txt;0;")
add_test(TestInstallSetup "/snap/clion/129/bin/cmake/linux/bin/cmake" "-DMODE=INSTALL" "-DVTKm_SOURCE_DIR=/home/ruchi/fp16_vtkm_new/vtk-m" "-DVTKm_BINARY_DIR=/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug" "-DVTKm_INSTALL_INCLUDE_DIR=include/vtkm-1.5" "-DVTKm_ENABLE_RENDERING=ON" "-DVTKm_ENABLE_LOGGING=ON" "-P" "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/testing/VTKmCheckSourceInInstall.cmake")
set_tests_properties(TestInstallSetup PROPERTIES  FIXTURES_SETUP "vtkm_installed" _BACKTRACE_TRIPLES "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/testing/VTKmTestInstall.cmake;24;add_test;/home/ruchi/fp16_vtkm_new/vtk-m/CMakeLists.txt;350;vtkm_test_install;/home/ruchi/fp16_vtkm_new/vtk-m/CMakeLists.txt;0;")
add_test(SourceInInstall "/snap/clion/129/bin/cmake/linux/bin/cmake" "-DMODE=VERIFY" "-DVTKm_SOURCE_DIR=/home/ruchi/fp16_vtkm_new/vtk-m" "-DVTKm_BINARY_DIR=/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug" "-DVTKm_INSTALL_INCLUDE_DIR=include/vtkm-1.5" "-DVTKm_ENABLE_RENDERING=ON" "-DVTKm_ENABLE_LOGGING=ON" "-P" "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/testing/VTKmCheckSourceInInstall.cmake")
set_tests_properties(SourceInInstall PROPERTIES  FIXTURES_REQUIRED "vtkm_installed" LABELS "TEST_INSTALL" _BACKTRACE_TRIPLES "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/testing/VTKmTestInstall.cmake;31;add_test;/home/ruchi/fp16_vtkm_new/vtk-m/CMakeLists.txt;350;vtkm_test_install;/home/ruchi/fp16_vtkm_new/vtk-m/CMakeLists.txt;0;")
add_test(TestInstallCleanup "/snap/clion/129/bin/cmake/linux/bin/cmake" "-DMODE=CLEANUP" "-DVTKm_SOURCE_DIR=/home/ruchi/fp16_vtkm_new/vtk-m" "-DVTKm_BINARY_DIR=/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug" "-DVTKm_INSTALL_INCLUDE_DIR=include/vtkm-1.5" "-DVTKm_ENABLE_RENDERING=ON" "-DVTKm_ENABLE_LOGGING=ON" "-P" "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/testing/VTKmCheckSourceInInstall.cmake")
set_tests_properties(TestInstallCleanup PROPERTIES  FIXTURES_CLEANUP "vtkm_installed" _BACKTRACE_TRIPLES "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/testing/VTKmTestInstall.cmake;38;add_test;/home/ruchi/fp16_vtkm_new/vtk-m/CMakeLists.txt;350;vtkm_test_install;/home/ruchi/fp16_vtkm_new/vtk-m/CMakeLists.txt;0;")
subdirs("vtkmstd")
subdirs("vtkm")
subdirs("examples")
