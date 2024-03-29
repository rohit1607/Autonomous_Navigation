# Install script for directory: /home/rohit/catkin_ws/src/Firmware/src/lib/FlightTasks/tasks

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/rohit/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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
  # Include the install script for each subdirectory.
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/FlightTask/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Utility/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Manual/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Auto/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/AutoMapper/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/AutoMapper2/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/ManualAltitude/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/ManualAltitudeSmooth/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/ManualAltitudeSmoothVel/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/ManualPosition/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/ManualPositionSmooth/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/ManualPositionSmoothVel/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Sport/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/AutoLine/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/AutoLineSmoothVel/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/AutoFollowMe/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Offboard/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Failsafe/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Transition/cmake_install.cmake")
  include("/home/rohit/catkin_ws/build/px4/src/lib/FlightTasks/tasks/Orbit/cmake_install.cmake")

endif()

