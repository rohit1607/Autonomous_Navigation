# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rohit/catkin_ws/src/Firmware

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rohit/catkin_ws/build/px4

# Include any dependencies generated for this target.
include src/lib/landing_slope/CMakeFiles/landing_slope.dir/depend.make

# Include the progress variables for this target.
include src/lib/landing_slope/CMakeFiles/landing_slope.dir/progress.make

# Include the compile flags for this target's objects.
include src/lib/landing_slope/CMakeFiles/landing_slope.dir/flags.make

src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.o: src/lib/landing_slope/CMakeFiles/landing_slope.dir/flags.make
src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.o: /home/rohit/catkin_ws/src/Firmware/src/lib/landing_slope/Landingslope.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rohit/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.o"
	cd /home/rohit/catkin_ws/build/px4/src/lib/landing_slope && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/landing_slope.dir/Landingslope.cpp.o -c /home/rohit/catkin_ws/src/Firmware/src/lib/landing_slope/Landingslope.cpp

src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/landing_slope.dir/Landingslope.cpp.i"
	cd /home/rohit/catkin_ws/build/px4/src/lib/landing_slope && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rohit/catkin_ws/src/Firmware/src/lib/landing_slope/Landingslope.cpp > CMakeFiles/landing_slope.dir/Landingslope.cpp.i

src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/landing_slope.dir/Landingslope.cpp.s"
	cd /home/rohit/catkin_ws/build/px4/src/lib/landing_slope && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rohit/catkin_ws/src/Firmware/src/lib/landing_slope/Landingslope.cpp -o CMakeFiles/landing_slope.dir/Landingslope.cpp.s

src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.o.requires:

.PHONY : src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.o.requires

src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.o.provides: src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.o.requires
	$(MAKE) -f src/lib/landing_slope/CMakeFiles/landing_slope.dir/build.make src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.o.provides.build
.PHONY : src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.o.provides

src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.o.provides.build: src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.o


# Object files for target landing_slope
landing_slope_OBJECTS = \
"CMakeFiles/landing_slope.dir/Landingslope.cpp.o"

# External object files for target landing_slope
landing_slope_EXTERNAL_OBJECTS =

/home/rohit/catkin_ws/devel/.private/px4/lib/liblanding_slope.a: src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.o
/home/rohit/catkin_ws/devel/.private/px4/lib/liblanding_slope.a: src/lib/landing_slope/CMakeFiles/landing_slope.dir/build.make
/home/rohit/catkin_ws/devel/.private/px4/lib/liblanding_slope.a: src/lib/landing_slope/CMakeFiles/landing_slope.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rohit/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/rohit/catkin_ws/devel/.private/px4/lib/liblanding_slope.a"
	cd /home/rohit/catkin_ws/build/px4/src/lib/landing_slope && $(CMAKE_COMMAND) -P CMakeFiles/landing_slope.dir/cmake_clean_target.cmake
	cd /home/rohit/catkin_ws/build/px4/src/lib/landing_slope && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/landing_slope.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lib/landing_slope/CMakeFiles/landing_slope.dir/build: /home/rohit/catkin_ws/devel/.private/px4/lib/liblanding_slope.a

.PHONY : src/lib/landing_slope/CMakeFiles/landing_slope.dir/build

src/lib/landing_slope/CMakeFiles/landing_slope.dir/requires: src/lib/landing_slope/CMakeFiles/landing_slope.dir/Landingslope.cpp.o.requires

.PHONY : src/lib/landing_slope/CMakeFiles/landing_slope.dir/requires

src/lib/landing_slope/CMakeFiles/landing_slope.dir/clean:
	cd /home/rohit/catkin_ws/build/px4/src/lib/landing_slope && $(CMAKE_COMMAND) -P CMakeFiles/landing_slope.dir/cmake_clean.cmake
.PHONY : src/lib/landing_slope/CMakeFiles/landing_slope.dir/clean

src/lib/landing_slope/CMakeFiles/landing_slope.dir/depend:
	cd /home/rohit/catkin_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rohit/catkin_ws/src/Firmware /home/rohit/catkin_ws/src/Firmware/src/lib/landing_slope /home/rohit/catkin_ws/build/px4 /home/rohit/catkin_ws/build/px4/src/lib/landing_slope /home/rohit/catkin_ws/build/px4/src/lib/landing_slope/CMakeFiles/landing_slope.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lib/landing_slope/CMakeFiles/landing_slope.dir/depend
