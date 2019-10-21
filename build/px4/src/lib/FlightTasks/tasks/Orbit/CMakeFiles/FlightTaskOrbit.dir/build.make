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
include src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/depend.make

# Include the progress variables for this target.
include src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/progress.make

# Include the compile flags for this target's objects.
include src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/flags.make

src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o: src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/flags.make
src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o: /home/rohit/catkin_ws/src/Firmware/src/lib/FlightTasks/tasks/Orbit/FlightTaskOrbit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rohit/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o"
	cd /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Orbit && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o -c /home/rohit/catkin_ws/src/Firmware/src/lib/FlightTasks/tasks/Orbit/FlightTaskOrbit.cpp

src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.i"
	cd /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Orbit && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rohit/catkin_ws/src/Firmware/src/lib/FlightTasks/tasks/Orbit/FlightTaskOrbit.cpp > CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.i

src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.s"
	cd /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Orbit && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rohit/catkin_ws/src/Firmware/src/lib/FlightTasks/tasks/Orbit/FlightTaskOrbit.cpp -o CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.s

src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o.requires:

.PHONY : src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o.requires

src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o.provides: src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o.requires
	$(MAKE) -f src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/build.make src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o.provides.build
.PHONY : src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o.provides

src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o.provides.build: src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o


# Object files for target FlightTaskOrbit
FlightTaskOrbit_OBJECTS = \
"CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o"

# External object files for target FlightTaskOrbit
FlightTaskOrbit_EXTERNAL_OBJECTS =

/home/rohit/catkin_ws/devel/.private/px4/lib/libFlightTaskOrbit.a: src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o
/home/rohit/catkin_ws/devel/.private/px4/lib/libFlightTaskOrbit.a: src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/build.make
/home/rohit/catkin_ws/devel/.private/px4/lib/libFlightTaskOrbit.a: src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rohit/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/rohit/catkin_ws/devel/.private/px4/lib/libFlightTaskOrbit.a"
	cd /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Orbit && $(CMAKE_COMMAND) -P CMakeFiles/FlightTaskOrbit.dir/cmake_clean_target.cmake
	cd /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Orbit && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FlightTaskOrbit.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/build: /home/rohit/catkin_ws/devel/.private/px4/lib/libFlightTaskOrbit.a

.PHONY : src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/build

src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/requires: src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/FlightTaskOrbit.cpp.o.requires

.PHONY : src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/requires

src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/clean:
	cd /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Orbit && $(CMAKE_COMMAND) -P CMakeFiles/FlightTaskOrbit.dir/cmake_clean.cmake
.PHONY : src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/clean

src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/depend:
	cd /home/rohit/catkin_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rohit/catkin_ws/src/Firmware /home/rohit/catkin_ws/src/Firmware/src/lib/FlightTasks/tasks/Orbit /home/rohit/catkin_ws/build/px4 /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Orbit /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lib/FlightTasks/tasks/Orbit/CMakeFiles/FlightTaskOrbit.dir/depend

