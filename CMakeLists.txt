cmake_minimum_required (VERSION 2.8)

add_definitions(-std=c++11)

project (test_server)

include_directories(/usr/local/include/)

include_directories(./public/)

link_directories("/usr/local/lib/")
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/public/)

aux_source_directory(./test_server DIR_SRCS)

add_subdirectory(./public)

add_executable(testServer ${DIR_SRCS})

target_link_libraries(testServer public boost_system boost_thread pthread)
