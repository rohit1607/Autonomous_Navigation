execute_process(COMMAND "/home/rohit/catkin_ws/build/mavros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/rohit/catkin_ws/build/mavros/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
