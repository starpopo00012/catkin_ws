# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "your_smach: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(your_smach_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/por/catkin_ws/src/your_smach/srv/GoToPosition.srv" NAME_WE)
add_custom_target(_your_smach_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "your_smach" "/home/por/catkin_ws/src/your_smach/srv/GoToPosition.srv" ""
)

get_filename_component(_filename "/home/por/catkin_ws/src/your_smach/srv/trigger.srv" NAME_WE)
add_custom_target(_your_smach_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "your_smach" "/home/por/catkin_ws/src/your_smach/srv/trigger.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(your_smach
  "/home/por/catkin_ws/src/your_smach/srv/GoToPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/your_smach
)
_generate_srv_cpp(your_smach
  "/home/por/catkin_ws/src/your_smach/srv/trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/your_smach
)

### Generating Module File
_generate_module_cpp(your_smach
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/your_smach
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(your_smach_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(your_smach_generate_messages your_smach_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/por/catkin_ws/src/your_smach/srv/GoToPosition.srv" NAME_WE)
add_dependencies(your_smach_generate_messages_cpp _your_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/por/catkin_ws/src/your_smach/srv/trigger.srv" NAME_WE)
add_dependencies(your_smach_generate_messages_cpp _your_smach_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(your_smach_gencpp)
add_dependencies(your_smach_gencpp your_smach_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS your_smach_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(your_smach
  "/home/por/catkin_ws/src/your_smach/srv/GoToPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/your_smach
)
_generate_srv_eus(your_smach
  "/home/por/catkin_ws/src/your_smach/srv/trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/your_smach
)

### Generating Module File
_generate_module_eus(your_smach
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/your_smach
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(your_smach_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(your_smach_generate_messages your_smach_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/por/catkin_ws/src/your_smach/srv/GoToPosition.srv" NAME_WE)
add_dependencies(your_smach_generate_messages_eus _your_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/por/catkin_ws/src/your_smach/srv/trigger.srv" NAME_WE)
add_dependencies(your_smach_generate_messages_eus _your_smach_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(your_smach_geneus)
add_dependencies(your_smach_geneus your_smach_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS your_smach_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(your_smach
  "/home/por/catkin_ws/src/your_smach/srv/GoToPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/your_smach
)
_generate_srv_lisp(your_smach
  "/home/por/catkin_ws/src/your_smach/srv/trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/your_smach
)

### Generating Module File
_generate_module_lisp(your_smach
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/your_smach
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(your_smach_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(your_smach_generate_messages your_smach_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/por/catkin_ws/src/your_smach/srv/GoToPosition.srv" NAME_WE)
add_dependencies(your_smach_generate_messages_lisp _your_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/por/catkin_ws/src/your_smach/srv/trigger.srv" NAME_WE)
add_dependencies(your_smach_generate_messages_lisp _your_smach_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(your_smach_genlisp)
add_dependencies(your_smach_genlisp your_smach_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS your_smach_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(your_smach
  "/home/por/catkin_ws/src/your_smach/srv/GoToPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/your_smach
)
_generate_srv_nodejs(your_smach
  "/home/por/catkin_ws/src/your_smach/srv/trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/your_smach
)

### Generating Module File
_generate_module_nodejs(your_smach
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/your_smach
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(your_smach_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(your_smach_generate_messages your_smach_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/por/catkin_ws/src/your_smach/srv/GoToPosition.srv" NAME_WE)
add_dependencies(your_smach_generate_messages_nodejs _your_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/por/catkin_ws/src/your_smach/srv/trigger.srv" NAME_WE)
add_dependencies(your_smach_generate_messages_nodejs _your_smach_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(your_smach_gennodejs)
add_dependencies(your_smach_gennodejs your_smach_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS your_smach_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(your_smach
  "/home/por/catkin_ws/src/your_smach/srv/GoToPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/your_smach
)
_generate_srv_py(your_smach
  "/home/por/catkin_ws/src/your_smach/srv/trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/your_smach
)

### Generating Module File
_generate_module_py(your_smach
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/your_smach
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(your_smach_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(your_smach_generate_messages your_smach_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/por/catkin_ws/src/your_smach/srv/GoToPosition.srv" NAME_WE)
add_dependencies(your_smach_generate_messages_py _your_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/por/catkin_ws/src/your_smach/srv/trigger.srv" NAME_WE)
add_dependencies(your_smach_generate_messages_py _your_smach_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(your_smach_genpy)
add_dependencies(your_smach_genpy your_smach_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS your_smach_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/your_smach)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/your_smach
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(your_smach_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/your_smach)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/your_smach
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(your_smach_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/your_smach)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/your_smach
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(your_smach_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/your_smach)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/your_smach
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(your_smach_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/your_smach)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/your_smach\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/your_smach
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(your_smach_generate_messages_py std_msgs_generate_messages_py)
endif()
