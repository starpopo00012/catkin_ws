# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(ku_arm_belt_driver_CONFIG_INCLUDED)
  return()
endif()
set(ku_arm_belt_driver_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(ku_arm_belt_driver_SOURCE_PREFIX /home/por/catkin_ws/src/ku_belt_arm_driver)
  set(ku_arm_belt_driver_DEVEL_PREFIX /home/por/catkin_ws/devel)
  set(ku_arm_belt_driver_INSTALL_PREFIX "")
  set(ku_arm_belt_driver_PREFIX ${ku_arm_belt_driver_DEVEL_PREFIX})
else()
  set(ku_arm_belt_driver_SOURCE_PREFIX "")
  set(ku_arm_belt_driver_DEVEL_PREFIX "")
  set(ku_arm_belt_driver_INSTALL_PREFIX /home/por/catkin_ws/install)
  set(ku_arm_belt_driver_PREFIX ${ku_arm_belt_driver_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'ku_arm_belt_driver' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(ku_arm_belt_driver_FOUND_CATKIN_PROJECT TRUE)

if(NOT "include " STREQUAL " ")
  set(ku_arm_belt_driver_INCLUDE_DIRS "")
  set(_include_dirs "include")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT " " STREQUAL " ")
    set(_report "Check the website '' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'pat <pat@todo.todo>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${ku_arm_belt_driver_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'ku_arm_belt_driver' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'ku_arm_belt_driver' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '\${prefix}/${idir}'.  ${_report}")
    endif()
    _list_append_unique(ku_arm_belt_driver_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND ku_arm_belt_driver_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND ku_arm_belt_driver_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT ku_arm_belt_driver_NUM_DUMMY_TARGETS)
      set(ku_arm_belt_driver_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::ku_arm_belt_driver::wrapped-linker-option${ku_arm_belt_driver_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR ku_arm_belt_driver_NUM_DUMMY_TARGETS "${ku_arm_belt_driver_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::ku_arm_belt_driver::wrapped-linker-option${ku_arm_belt_driver_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND ku_arm_belt_driver_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND ku_arm_belt_driver_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND ku_arm_belt_driver_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/por/catkin_ws/install/lib;/home/por/ws_moveit/devel/lib;/home/por/catkin_ws/devel/lib;/home/por/ros_workshop_ws/devel/lib;/home/por/tutorial_ws/devel/lib;/opt/ros/noetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(ku_arm_belt_driver_LIBRARY_DIRS ${lib_path})
      list(APPEND ku_arm_belt_driver_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'ku_arm_belt_driver'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND ku_arm_belt_driver_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(ku_arm_belt_driver_EXPORTED_TARGETS "ku_arm_belt_driver_generate_messages_cpp;ku_arm_belt_driver_generate_messages_eus;ku_arm_belt_driver_generate_messages_lisp;ku_arm_belt_driver_generate_messages_nodejs;ku_arm_belt_driver_generate_messages_py")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${ku_arm_belt_driver_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "message_runtime;roscpp;rospy;sensor_msgs;std_msgs;std_srvs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 ku_arm_belt_driver_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${ku_arm_belt_driver_dep}_FOUND)
      find_package(${ku_arm_belt_driver_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${ku_arm_belt_driver_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(ku_arm_belt_driver_INCLUDE_DIRS ${${ku_arm_belt_driver_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(ku_arm_belt_driver_LIBRARIES ${ku_arm_belt_driver_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${ku_arm_belt_driver_dep}_LIBRARIES})
  _list_append_deduplicate(ku_arm_belt_driver_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(ku_arm_belt_driver_LIBRARIES ${ku_arm_belt_driver_LIBRARIES})

  _list_append_unique(ku_arm_belt_driver_LIBRARY_DIRS ${${ku_arm_belt_driver_dep}_LIBRARY_DIRS})
  _list_append_deduplicate(ku_arm_belt_driver_EXPORTED_TARGETS ${${ku_arm_belt_driver_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "ku_arm_belt_driver-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${ku_arm_belt_driver_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
