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
include src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/depend.make

# Include the progress variables for this target.
include src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/progress.make

# Include the compile flags for this target's objects.
include src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/flags.make

src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o: src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/flags.make
src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o: /home/rohit/catkin_ws/src/Firmware/src/lib/FlightTasks/tasks/AutoMapper2/FlightTaskAutoMapper2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rohit/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o"
	cd /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/AutoMapper2 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o -c /home/rohit/catkin_ws/src/Firmware/src/lib/FlightTasks/tasks/AutoMapper2/FlightTaskAutoMapper2.cpp

src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.i"
	cd /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/AutoMapper2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rohit/catkin_ws/src/Firmware/src/lib/FlightTasks/tasks/AutoMapper2/FlightTaskAutoMapper2.cpp > CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.i

src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.s"
	cd /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/AutoMapper2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rohit/catkin_ws/src/Firmware/src/lib/FlightTasks/tasks/AutoMapper2/FlightTaskAutoMapper2.cpp -o CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.s

src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o.requires:

.PHONY : src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o.requires

src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o.provides: src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o.requires
	$(MAKE) -f src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/build.make src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o.provides.build
.PHONY : src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o.provides

src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o.provides.build: src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o


# Object files for target FlightTaskAutoMapper2
FlightTaskAutoMapper2_OBJECTS = \
"CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o"

# External object files for target FlightTaskAutoMapper2
FlightTaskAutoMapper2_EXTERNAL_OBJECTS =

/home/rohit/catkin_ws/devel/.private/px4/lib/libFlightTaskAutoMapper2.a: src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o
/home/rohit/catkin_ws/devel/.private/px4/lib/libFlightTaskAutoMapper2.a: src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/build.make
/home/rohit/catkin_ws/devel/.private/px4/lib/libFlightTaskAutoMapper2.a: src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rohit/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/rohit/catkin_ws/devel/.private/px4/lib/libFlightTaskAutoMapper2.a"
	cd /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/AutoMapper2 && $(CMAKE_COMMAND) -P CMakeFiles/FlightTaskAutoMapper2.dir/cmake_clean_target.cmake
	cd /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/AutoMapper2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FlightTaskAutoMapper2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/build: /home/rohit/catkin_ws/devel/.private/px4/lib/libFlightTaskAutoMapper2.a

.PHONY : src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/build

src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/requires: src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/FlightTaskAutoMapper2.cpp.o.requires

.PHONY : src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/requires

src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/clean:
	cd /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/AutoMapper2 && $(CMAKE_COMMAND) -P CMakeFiles/FlightTaskAutoMapper2.dir/cmake_clean.cmake
.PHONY : src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/clean

src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/depend:
	cd /home/rohit/catkin_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rohit/catkin_ws/src/Firmware /home/rohit/catkin_ws/src/Firmware/src/lib/FlightTasks/tasks/AutoMapper2 /home/rohit/catkin_ws/build/px4 /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/AutoMapper2 /home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lib/FlightTasks/tasks/AutoMapper2/CMakeFiles/FlightTaskAutoMapper2.dir/depend
