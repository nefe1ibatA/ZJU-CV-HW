cmake_minimum_required(VERSION 3.15)
set(CMAKE_CXX_STANDARD 14)
project(hw2)

find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )

set(SOURCE_FILES hw2.cpp)
add_executable(hw2 ${SOURCE_FILES})
target_link_libraries (hw2 ${OpenCV_LIBS})