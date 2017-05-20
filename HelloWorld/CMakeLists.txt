cmake_minimum_required(VERSION 2.8.12)

project(tutorialBiped-Finished)

find_package(DART 6.1.1 REQUIRED COMPONENTS utils-urdf gui)

add_compile_options(-std=c++11)

set(EXAMPLE_NAME HelloWorld)
file(GLOB ${EXAMPLE_NAME}_srcs "*.cpp")
file(GLOB ${EXAMPLE_NAME}_hdrs "*.h")
add_executable(${EXAMPLE_NAME} ${${EXAMPLE_NAME}_srcs} ${${EXAMPLE_NAME}_hdrs})
target_link_libraries(${EXAMPLE_NAME} ${DART_LIBRARIES})

