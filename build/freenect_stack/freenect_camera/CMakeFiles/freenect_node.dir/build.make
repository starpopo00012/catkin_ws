# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/por/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/por/catkin_ws/build

# Include any dependencies generated for this target.
include freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/depend.make

# Include the progress variables for this target.
include freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/progress.make

# Include the compile flags for this target's objects.
include freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/flags.make

freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/src/nodes/freenect_node.cpp.o: freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/flags.make
freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/src/nodes/freenect_node.cpp.o: /home/por/catkin_ws/src/freenect_stack/freenect_camera/src/nodes/freenect_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/por/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/src/nodes/freenect_node.cpp.o"
	cd /home/por/catkin_ws/build/freenect_stack/freenect_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/freenect_node.dir/src/nodes/freenect_node.cpp.o -c /home/por/catkin_ws/src/freenect_stack/freenect_camera/src/nodes/freenect_node.cpp

freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/src/nodes/freenect_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/freenect_node.dir/src/nodes/freenect_node.cpp.i"
	cd /home/por/catkin_ws/build/freenect_stack/freenect_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/por/catkin_ws/src/freenect_stack/freenect_camera/src/nodes/freenect_node.cpp > CMakeFiles/freenect_node.dir/src/nodes/freenect_node.cpp.i

freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/src/nodes/freenect_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/freenect_node.dir/src/nodes/freenect_node.cpp.s"
	cd /home/por/catkin_ws/build/freenect_stack/freenect_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/por/catkin_ws/src/freenect_stack/freenect_camera/src/nodes/freenect_node.cpp -o CMakeFiles/freenect_node.dir/src/nodes/freenect_node.cpp.s

# Object files for target freenect_node
freenect_node_OBJECTS = \
"CMakeFiles/freenect_node.dir/src/nodes/freenect_node.cpp.o"

# External object files for target freenect_node
freenect_node_EXTERNAL_OBJECTS =

/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/src/nodes/freenect_node.cpp.o
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/build.make
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libcamera_info_manager.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libcamera_calibration_parsers.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libdiagnostic_updater.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libimage_transport.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libmessage_filters.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libnodeletlib.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libbondcpp.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libroscpp.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libclass_loader.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libdl.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/librosconsole.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/librostime.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libcpp_common.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/libroslib.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /opt/ros/noetic/lib/librospack.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: /usr/local/lib/libfreenect.so
/home/por/catkin_ws/devel/lib/freenect_camera/freenect_node: freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/por/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/por/catkin_ws/devel/lib/freenect_camera/freenect_node"
	cd /home/por/catkin_ws/build/freenect_stack/freenect_camera && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/freenect_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/build: /home/por/catkin_ws/devel/lib/freenect_camera/freenect_node

.PHONY : freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/build

freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/clean:
	cd /home/por/catkin_ws/build/freenect_stack/freenect_camera && $(CMAKE_COMMAND) -P CMakeFiles/freenect_node.dir/cmake_clean.cmake
.PHONY : freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/clean

freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/depend:
	cd /home/por/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/por/catkin_ws/src /home/por/catkin_ws/src/freenect_stack/freenect_camera /home/por/catkin_ws/build /home/por/catkin_ws/build/freenect_stack/freenect_camera /home/por/catkin_ws/build/freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : freenect_stack/freenect_camera/CMakeFiles/freenect_node.dir/depend

