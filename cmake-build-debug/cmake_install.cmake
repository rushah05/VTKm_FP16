# Install script for directory: /home/ruchi/fp16_vtkm_new/vtk-m

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
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkmstd/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vtkm-1.5" TYPE FILE RENAME "VTKmREADME.md" FILES "/home/ruchi/fp16_vtkm_new/vtk-m/README.md")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vtkm-1.5" TYPE FILE RENAME "VTKmLICENSE.txt" FILES "/home/ruchi/fp16_vtkm_new/vtk-m/LICENSE.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtkm-1.5" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/cmake/vtkm-1.5/VTKmConfig.cmake"
    "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/lib/cmake/vtkm-1.5/VTKmConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vtkm-1.5/cmake" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/VTKmCMakeBackports.cmake"
    "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/FindTBB.cmake"
    "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/patches/3.15/FindMPI.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vtkm-1.5/cmake" TYPE FILE FILES
    "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/VTKmCPUVectorization.cmake"
    "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/VTKmDetectCUDAVersion.cu"
    "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/VTKmDeviceAdapters.cmake"
    "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/VTKmDIYUtils.cmake"
    "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/VTKmExportHeaderTemplate.h.in"
    "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/VTKmRenderingContexts.cmake"
    "/home/ruchi/fp16_vtkm_new/vtk-m/CMake/VTKmWrappers.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtkm-1.5/VTKmTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtkm-1.5/VTKmTargets.cmake"
         "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/CMakeFiles/Export/lib/cmake/vtkm-1.5/VTKmTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtkm-1.5/VTKmTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtkm-1.5/VTKmTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtkm-1.5" TYPE FILE FILES "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/CMakeFiles/Export/lib/cmake/vtkm-1.5/VTKmTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtkm-1.5" TYPE FILE FILES "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/CMakeFiles/Export/lib/cmake/vtkm-1.5/VTKmTargets-debug.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/examples/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
