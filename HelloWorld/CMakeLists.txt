cmake_minimum_required(VERSION 2.8.12 FATAL_ERROR)

project(dart-examples)

find_package(DART 6.1.1 REQUIRED)

add_executable(HelloDART Main.cpp)
target_include_directories(HelloDART PUBLIC ${DART_INCLUDE_DIRS})
target_link_libraries(HelloDART PUBLIC ${DART_LIBRARIES})
