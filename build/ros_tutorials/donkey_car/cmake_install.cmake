# Install script for directory: /home/por/catkin_ws/src/ros_tutorials/donkey_car

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/por/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/donkey_car/msg" TYPE FILE FILES
    "/home/por/catkin_ws/src/ros_tutorials/donkey_car/msg/Position.msg"
    "/home/por/catkin_ws/src/ros_tutorials/donkey_car/msg/PositionArray.msg"
    "/home/por/catkin_ws/src/ros_tutorials/donkey_car/msg/Servo.msg"
    "/home/por/catkin_ws/src/ros_tutorials/donkey_car/msg/ServoArray.msg"
    "/home/por/catkin_ws/src/ros_tutorials/donkey_car/msg/ServoConfig.msg"
    "/home/por/catkin_ws/src/ros_tutorials/donkey_car/msg/ServoConfigArray.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/donkey_car/srv" TYPE FILE FILES
    "/home/por/catkin_ws/src/ros_tutorials/donkey_car/srv/DriveMode.srv"
    "/home/por/catkin_ws/src/ros_tutorials/donkey_car/srv/IntValue.srv"
    "/home/por/catkin_ws/src/ros_tutorials/donkey_car/srv/ServosConfig.srv"
    "/home/por/catkin_ws/src/ros_tutorials/donkey_car/srv/StopServos.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/donkey_car/cmake" TYPE FILE FILES "/home/por/catkin_ws/build/ros_tutorials/donkey_car/catkin_generated/installspace/donkey_car-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/por/catkin_ws/devel/include/donkey_car")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/por/catkin_ws/devel/share/roseus/ros/donkey_car")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/por/catkin_ws/devel/share/common-lisp/ros/donkey_car")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/por/catkin_ws/devel/share/gennodejs/ros/donkey_car")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/por/catkin_ws/devel/lib/python3/dist-packages/donkey_car")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/por/catkin_ws/devel/lib/python3/dist-packages/donkey_car")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/por/catkin_ws/build/ros_tutorials/donkey_car/catkin_generated/installspace/donkey_car.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/donkey_car/cmake" TYPE FILE FILES "/home/por/catkin_ws/build/ros_tutorials/donkey_car/catkin_generated/installspace/donkey_car-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/donkey_car/cmake" TYPE FILE FILES
    "/home/por/catkin_ws/build/ros_tutorials/donkey_car/catkin_generated/installspace/donkey_carConfig.cmake"
    "/home/por/catkin_ws/build/ros_tutorials/donkey_car/catkin_generated/installspace/donkey_carConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/donkey_car" TYPE FILE FILES "/home/por/catkin_ws/src/ros_tutorials/donkey_car/package.xml")
endif()

