cmake_minimum_required(VERSION 3.17)
project(MyOpenGLProject)

add_executable(MyOpenGLProject main.cpp)

add_library(glad STATIC /src/glad.c
)
target_include_directories(glad PUBLIC /include)
find_package(OpenGL REQUIRED)
target_link_libraries(MyOpenGLProject OpenGL::GL)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
