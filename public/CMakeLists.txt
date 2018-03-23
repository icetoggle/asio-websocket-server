cmake_minimum_required (VERSION 2.8)

add_definitions(-std=c++11)

aux_source_directory(. DIR_LIB_SRCS)

add_library(public ${DIR_LIB_SRCS})