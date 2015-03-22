cmake_minimum_required(VERSION 2.8.6)
project(dart-examples)

#===============================================================================
# Compiler flags
#===============================================================================
if(MSVC)
  # Visual Studio enables c++11 support by default
  if(NOT MSVC12)
    message(FATAL_ERROR "${PROJECT_NAME} requires VS 2013 or greater.")
  endif()
elseif(CMAKE_COMPILER_IS_GNUCXX)
  execute_process(
    COMMAND ${CMAKE_CXX_COMPILER} -dumpversion OUTPUT_VARIABLE GCC_VERSION)
  set(CXX_COMPILER_VERSION ${GCC_VERSION})
  if(GCC_VERSION VERSION_LESS 4.8)
    message(FATAL_ERROR "The installed g++ version is ${GCC_VERSION}. ${PROJECT_NAME} requires g++ 4.8 or greater.")
  else()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
  endif()
elseif("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
  execute_process(
    COMMAND ${CMAKE_CXX_COMPILER} -dumpversion OUTPUT_VARIABLE CLANG_VERSION)
  set(CXX_COMPILER_VERSION ${CLANG_VERSION})
  if(CLANG_VERSION VERSION_LESS 3.3)
    message(FATAL_ERROR "The installed Clang version is ${CLANG_VERSION}. ${PROJECT_NAME} requires clang 3.3 or greater.")
  else()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
  endif()
  if("${CMAKE_SYSTEM_NAME}" MATCHES "Darwin")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
  endif()
else()
  message(SEND_ERROR "Compiler[${CMAKE_CXX_COMPILER_ID}] not supported.")
endif()

# Find DARTCore
find_package(DARTCore 4.3.4 QUIET)
if(DARTCore_FOUND)
  message(STATUS "Looking for DARTCore - found")
  set (HAVE_DARTCore TRUE)
else()
  message(STATUS "Looking for DARTCore - not found")
  set(HAVE_DARTCore FALSE)
endif()

include_directories(${DARTCore_INCLUDE_DIRS})
link_directories(${DARTCore_LIBRARY_DIRS})

add_subdirectory(HelloWorld)
