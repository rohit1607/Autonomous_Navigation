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

# Utility rule file for gazebo_typhoon_h480_ide.

# Include the progress variables for this target.
include platforms/posix/CMakeFiles/gazebo_typhoon_h480_ide.dir/progress.make

platforms/posix/CMakeFiles/gazebo_typhoon_h480_ide:
	cd /home/rohit/catkin_ws/build/px4/tmp && /home/rohit/catkin_ws/src/Firmware/Tools/sitl_run.sh /home/rohit/catkin_ws/devel/.private/px4/lib/px4/px4 ide gazebo typhoon_h480 /home/rohit/catkin_ws/src/Firmware /home/rohit/catkin_ws/build/px4

gazebo_typhoon_h480_ide: platforms/posix/CMakeFiles/gazebo_typhoon_h480_ide
gazebo_typhoon_h480_ide: platforms/posix/CMakeFiles/gazebo_typhoon_h480_ide.dir/build.make

.PHONY : gazebo_typhoon_h480_ide

# Rule to build all files generated by this target.
platforms/posix/CMakeFiles/gazebo_typhoon_h480_ide.dir/build: gazebo_typhoon_h480_ide

.PHONY : platforms/posix/CMakeFiles/gazebo_typhoon_h480_ide.dir/build

platforms/posix/CMakeFiles/gazebo_typhoon_h480_ide.dir/clean:
	cd /home/rohit/catkin_ws/build/px4/platforms/posix && $(CMAKE_COMMAND) -P CMakeFiles/gazebo_typhoon_h480_ide.dir/cmake_clean.cmake
.PHONY : platforms/posix/CMakeFiles/gazebo_typhoon_h480_ide.dir/clean

platforms/posix/CMakeFiles/gazebo_typhoon_h480_ide.dir/depend:
	cd /home/rohit/catkin_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rohit/catkin_ws/src/Firmware /home/rohit/catkin_ws/src/Firmware/platforms/posix /home/rohit/catkin_ws/build/px4 /home/rohit/catkin_ws/build/px4/platforms/posix /home/rohit/catkin_ws/build/px4/platforms/posix/CMakeFiles/gazebo_typhoon_h480_ide.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/posix/CMakeFiles/gazebo_typhoon_h480_ide.dir/depend

