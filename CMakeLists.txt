cmake_minimum_required (VERSION 2.8)

add_definitions(-std=c++11)

project (test_server)

include_directories(../boost_lib/include/)

include_directories(./public/)

link_directories(../boost_lib/lib/)

aux_source_directory(./test_server DIR_SRCS)

add_subdirectory(./public)

add_executable(test_server ${DIR_SRCS})