# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ku_arm_belt_driver: 0 messages, 2 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ku_arm_belt_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/SaveArmPose.srv" NAME_WE)
add_custom_target(_ku_arm_belt_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ku_arm_belt_driver" "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/SaveArmPose.srv" ""
)

get_filename_component(_filename "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/GoToArmPose.srv" NAME_WE)
add_custom_target(_ku_arm_belt_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ku_arm_belt_driver" "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/GoToArmPose.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(ku_arm_belt_driver
  "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/SaveArmPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ku_arm_belt_driver
)
_generate_srv_cpp(ku_arm_belt_driver
  "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/GoToArmPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ku_arm_belt_driver
)

### Generating Module File
_generate_module_cpp(ku_arm_belt_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ku_arm_belt_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ku_arm_belt_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ku_arm_belt_driver_generate_messages ku_arm_belt_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/SaveArmPose.srv" NAME_WE)
add_dependencies(ku_arm_belt_driver_generate_messages_cpp _ku_arm_belt_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/GoToArmPose.srv" NAME_WE)
add_dependencies(ku_arm_belt_driver_generate_messages_cpp _ku_arm_belt_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ku_arm_belt_driver_gencpp)
add_dependencies(ku_arm_belt_driver_gencpp ku_arm_belt_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ku_arm_belt_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(ku_arm_belt_driver
  "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/SaveArmPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ku_arm_belt_driver
)
_generate_srv_eus(ku_arm_belt_driver
  "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/GoToArmPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ku_arm_belt_driver
)

### Generating Module File
_generate_module_eus(ku_arm_belt_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ku_arm_belt_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ku_arm_belt_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ku_arm_belt_driver_generate_messages ku_arm_belt_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/SaveArmPose.srv" NAME_WE)
add_dependencies(ku_arm_belt_driver_generate_messages_eus _ku_arm_belt_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/GoToArmPose.srv" NAME_WE)
add_dependencies(ku_arm_belt_driver_generate_messages_eus _ku_arm_belt_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ku_arm_belt_driver_geneus)
add_dependencies(ku_arm_belt_driver_geneus ku_arm_belt_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ku_arm_belt_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(ku_arm_belt_driver
  "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/SaveArmPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ku_arm_belt_driver
)
_generate_srv_lisp(ku_arm_belt_driver
  "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/GoToArmPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ku_arm_belt_driver
)

### Generating Module File
_generate_module_lisp(ku_arm_belt_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ku_arm_belt_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ku_arm_belt_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ku_arm_belt_driver_generate_messages ku_arm_belt_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/SaveArmPose.srv" NAME_WE)
add_dependencies(ku_arm_belt_driver_generate_messages_lisp _ku_arm_belt_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/GoToArmPose.srv" NAME_WE)
add_dependencies(ku_arm_belt_driver_generate_messages_lisp _ku_arm_belt_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ku_arm_belt_driver_genlisp)
add_dependencies(ku_arm_belt_driver_genlisp ku_arm_belt_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ku_arm_belt_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(ku_arm_belt_driver
  "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/SaveArmPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ku_arm_belt_driver
)
_generate_srv_nodejs(ku_arm_belt_driver
  "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/GoToArmPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ku_arm_belt_driver
)

### Generating Module File
_generate_module_nodejs(ku_arm_belt_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ku_arm_belt_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ku_arm_belt_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ku_arm_belt_driver_generate_messages ku_arm_belt_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/SaveArmPose.srv" NAME_WE)
add_dependencies(ku_arm_belt_driver_generate_messages_nodejs _ku_arm_belt_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/GoToArmPose.srv" NAME_WE)
add_dependencies(ku_arm_belt_driver_generate_messages_nodejs _ku_arm_belt_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ku_arm_belt_driver_gennodejs)
add_dependencies(ku_arm_belt_driver_gennodejs ku_arm_belt_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ku_arm_belt_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(ku_arm_belt_driver
  "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/SaveArmPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ku_arm_belt_driver
)
_generate_srv_py(ku_arm_belt_driver
  "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/GoToArmPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ku_arm_belt_driver
)

### Generating Module File
_generate_module_py(ku_arm_belt_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ku_arm_belt_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ku_arm_belt_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ku_arm_belt_driver_generate_messages ku_arm_belt_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/SaveArmPose.srv" NAME_WE)
add_dependencies(ku_arm_belt_driver_generate_messages_py _ku_arm_belt_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/por/catkin_ws/src/ku_belt_arm_driver/srv/GoToArmPose.srv" NAME_WE)
add_dependencies(ku_arm_belt_driver_generate_messages_py _ku_arm_belt_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ku_arm_belt_driver_genpy)
add_dependencies(ku_arm_belt_driver_genpy ku_arm_belt_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ku_arm_belt_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ku_arm_belt_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ku_arm_belt_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(ku_arm_belt_driver_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ku_arm_belt_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ku_arm_belt_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ku_arm_belt_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(ku_arm_belt_driver_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ku_arm_belt_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ku_arm_belt_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ku_arm_belt_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(ku_arm_belt_driver_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ku_arm_belt_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ku_arm_belt_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ku_arm_belt_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(ku_arm_belt_driver_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ku_arm_belt_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ku_arm_belt_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ku_arm_belt_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ku_arm_belt_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(ku_arm_belt_driver_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ku_arm_belt_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
