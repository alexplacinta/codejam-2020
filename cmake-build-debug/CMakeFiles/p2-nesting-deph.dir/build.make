# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /home/alex/Programs/CLion-2019.3.3/clion-2019.3.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/alex/Programs/CLion-2019.3.3/clion-2019.3.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alex/Workspace/codejam

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alex/Workspace/codejam/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/p2-nesting-deph.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/p2-nesting-deph.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/p2-nesting-deph.dir/flags.make

CMakeFiles/p2-nesting-deph.dir/qual/p2-nesting-depth.cpp.o: CMakeFiles/p2-nesting-deph.dir/flags.make
CMakeFiles/p2-nesting-deph.dir/qual/p2-nesting-depth.cpp.o: ../qual/p2-nesting-depth.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alex/Workspace/codejam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/p2-nesting-deph.dir/qual/p2-nesting-depth.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/p2-nesting-deph.dir/qual/p2-nesting-depth.cpp.o -c /home/alex/Workspace/codejam/qual/p2-nesting-depth.cpp

CMakeFiles/p2-nesting-deph.dir/qual/p2-nesting-depth.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/p2-nesting-deph.dir/qual/p2-nesting-depth.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alex/Workspace/codejam/qual/p2-nesting-depth.cpp > CMakeFiles/p2-nesting-deph.dir/qual/p2-nesting-depth.cpp.i

CMakeFiles/p2-nesting-deph.dir/qual/p2-nesting-depth.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/p2-nesting-deph.dir/qual/p2-nesting-depth.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alex/Workspace/codejam/qual/p2-nesting-depth.cpp -o CMakeFiles/p2-nesting-deph.dir/qual/p2-nesting-depth.cpp.s

# Object files for target p2-nesting-deph
p2__nesting__deph_OBJECTS = \
"CMakeFiles/p2-nesting-deph.dir/qual/p2-nesting-depth.cpp.o"

# External object files for target p2-nesting-deph
p2__nesting__deph_EXTERNAL_OBJECTS =

p2-nesting-deph: CMakeFiles/p2-nesting-deph.dir/qual/p2-nesting-depth.cpp.o
p2-nesting-deph: CMakeFiles/p2-nesting-deph.dir/build.make
p2-nesting-deph: CMakeFiles/p2-nesting-deph.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alex/Workspace/codejam/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable p2-nesting-deph"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/p2-nesting-deph.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/p2-nesting-deph.dir/build: p2-nesting-deph

.PHONY : CMakeFiles/p2-nesting-deph.dir/build

CMakeFiles/p2-nesting-deph.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/p2-nesting-deph.dir/cmake_clean.cmake
.PHONY : CMakeFiles/p2-nesting-deph.dir/clean

CMakeFiles/p2-nesting-deph.dir/depend:
	cd /home/alex/Workspace/codejam/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alex/Workspace/codejam /home/alex/Workspace/codejam /home/alex/Workspace/codejam/cmake-build-debug /home/alex/Workspace/codejam/cmake-build-debug /home/alex/Workspace/codejam/cmake-build-debug/CMakeFiles/p2-nesting-deph.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/p2-nesting-deph.dir/depend

