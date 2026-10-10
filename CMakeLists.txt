cmake_minimum_required(VERSION 3.20)
project(aws_devops_demo VERSION 1.0.0 LANGUAGES CXX)

include(CTest)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_library(app_core src/app.cpp)
target_include_directories(app_core PUBLIC src)

add_executable(devops-demo src/main.cpp)
target_link_libraries(devops-demo PRIVATE app_core)

if(BUILD_TESTING)
    add_executable(unit-tests tests/test_main.cpp)
    target_link_libraries(unit-tests PRIVATE app_core)
    add_test(NAME unit-tests COMMAND unit-tests)
endif()

install(TARGETS devops-demo RUNTIME DESTINATION bin)
