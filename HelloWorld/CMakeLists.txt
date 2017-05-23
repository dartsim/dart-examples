cmake_minimum_required(VERSION 2.8.12)

project(HelloWorld)

find_package(DART 6.1.1 REQUIRED COMPONENTS utils-urdf gui)

add_compile_options(-std=c++11)

file(GLOB ${PROJECT_NAME}_srcs "*.cpp")
file(GLOB ${PROJECT_NAME}_hdrs "*.h")
add_executable(${PROJECT_NAME} ${${PROJECT_NAME}_srcs} ${${PROJECT_NAME}_hdrs})
target_link_libraries(${PROJECT_NAME} ${DART_LIBRARIES})
