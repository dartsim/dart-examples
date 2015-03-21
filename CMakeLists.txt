cmake_minimum_required(VERSION 2.8.6)
project(dart-examples)

# Find DART
find_package(DART 4.3.4 QUIET)
if (DART_FOUND)
  message (STATUS "Looking for DART - found")
  set (HAVE_DART TRUE)
else()
  message (STATUS "Looking for DART - not found")
  BUILD_WARNING ("DART not found, for dart physics engine option, please install libdart4-dev.")
  set (HAVE_DART FALSE)
endif()

include_directories(${DART_INCLUDE_DIRS})
link_directories(${DART_LIBRARY_DIRS})

add_subdirectory(HelloWorld)

