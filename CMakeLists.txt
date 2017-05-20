cmake_minimum_required(VERSION 2.8.6)
project(dart-examples)

# Find DART
find_package(DART 6.2 REQUIRED
  COMPONENTS utils utils-urdf gui gui-osg optimizer-nlopt
)

add_subdirectory(HelloWorld)
add_subdirectory(tutorials)

