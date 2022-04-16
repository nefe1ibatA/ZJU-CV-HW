cmake_minimum_required(VERSION 3.15)
set(CMAKE_CXX_STANDARD 14)
project(train)

find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )

set(SOURCE_FILES train.cpp)
add_executable(train ${SOURCE_FILES})
target_link_libraries (train ${OpenCV_LIBS})