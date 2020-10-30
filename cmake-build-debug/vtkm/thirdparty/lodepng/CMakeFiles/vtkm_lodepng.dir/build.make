# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/129/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/129/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ruchi/fp16_vtkm_new/vtk-m

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug

# Include any dependencies generated for this target.
include vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/depend.make

# Include the progress variables for this target.
include vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/progress.make

# Include the compile flags for this target's objects.
include vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/flags.make

vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/vtkmlodepng/lodepng.cpp.o: vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/flags.make
vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/vtkmlodepng/lodepng.cpp.o: ../vtkm/thirdparty/lodepng/vtkmlodepng/lodepng.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/vtkmlodepng/lodepng.cpp.o"
	cd /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/lodepng && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vtkm_lodepng.dir/vtkmlodepng/lodepng.cpp.o -c /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/thirdparty/lodepng/vtkmlodepng/lodepng.cpp

vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/vtkmlodepng/lodepng.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtkm_lodepng.dir/vtkmlodepng/lodepng.cpp.i"
	cd /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/lodepng && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/thirdparty/lodepng/vtkmlodepng/lodepng.cpp > CMakeFiles/vtkm_lodepng.dir/vtkmlodepng/lodepng.cpp.i

vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/vtkmlodepng/lodepng.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtkm_lodepng.dir/vtkmlodepng/lodepng.cpp.s"
	cd /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/lodepng && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/thirdparty/lodepng/vtkmlodepng/lodepng.cpp -o CMakeFiles/vtkm_lodepng.dir/vtkmlodepng/lodepng.cpp.s

# Object files for target vtkm_lodepng
vtkm_lodepng_OBJECTS = \
"CMakeFiles/vtkm_lodepng.dir/vtkmlodepng/lodepng.cpp.o"

# External object files for target vtkm_lodepng
vtkm_lodepng_EXTERNAL_OBJECTS =

lib/libvtkm_lodepng-1.5.a: vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/vtkmlodepng/lodepng.cpp.o
lib/libvtkm_lodepng-1.5.a: vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/build.make
lib/libvtkm_lodepng-1.5.a: vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../lib/libvtkm_lodepng-1.5.a"
	cd /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/lodepng && $(CMAKE_COMMAND) -P CMakeFiles/vtkm_lodepng.dir/cmake_clean_target.cmake
	cd /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/lodepng && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vtkm_lodepng.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/build: lib/libvtkm_lodepng-1.5.a

.PHONY : vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/build

vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/clean:
	cd /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/lodepng && $(CMAKE_COMMAND) -P CMakeFiles/vtkm_lodepng.dir/cmake_clean.cmake
.PHONY : vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/clean

vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/depend:
	cd /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruchi/fp16_vtkm_new/vtk-m /home/ruchi/fp16_vtkm_new/vtk-m/vtkm/thirdparty/lodepng /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/lodepng /home/ruchi/fp16_vtkm_new/vtk-m/cmake-build-debug/vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vtkm/thirdparty/lodepng/CMakeFiles/vtkm_lodepng.dir/depend

