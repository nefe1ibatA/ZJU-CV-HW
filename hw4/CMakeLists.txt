cmake_minimum_required(VERSION 3.15)
set(CMAKE_CXX_STANDARD 14)
project(hw4)

find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )

set(SOURCE_FILES hw4.cpp example_18-01.cpp example_18-01_from_disk.cpp example_19-01.cpp hw4.h)
add_executable(hw4 ${SOURCE_FILES})
target_link_libraries (hw4 ${OpenCV_LIBS})