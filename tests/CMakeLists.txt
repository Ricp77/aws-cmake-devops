cmake_minimum_required(VERSION 3.20)

project(aws_devops_demo
    VERSION 1.0.0
    LANGUAGES CXX
)

include(CTest)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_library(app_core src/main.cpp)
