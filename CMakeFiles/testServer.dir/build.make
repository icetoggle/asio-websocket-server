# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ice/asio-websocket-server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ice/asio-websocket-server

# Include any dependencies generated for this target.
include CMakeFiles/testServer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testServer.dir/flags.make

CMakeFiles/testServer.dir/test_server/Session.cpp.o: CMakeFiles/testServer.dir/flags.make
CMakeFiles/testServer.dir/test_server/Session.cpp.o: test_server/Session.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ice/asio-websocket-server/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/testServer.dir/test_server/Session.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/testServer.dir/test_server/Session.cpp.o -c /home/ice/asio-websocket-server/test_server/Session.cpp

CMakeFiles/testServer.dir/test_server/Session.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testServer.dir/test_server/Session.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ice/asio-websocket-server/test_server/Session.cpp > CMakeFiles/testServer.dir/test_server/Session.cpp.i

CMakeFiles/testServer.dir/test_server/Session.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testServer.dir/test_server/Session.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ice/asio-websocket-server/test_server/Session.cpp -o CMakeFiles/testServer.dir/test_server/Session.cpp.s

CMakeFiles/testServer.dir/test_server/Session.cpp.o.requires:
.PHONY : CMakeFiles/testServer.dir/test_server/Session.cpp.o.requires

CMakeFiles/testServer.dir/test_server/Session.cpp.o.provides: CMakeFiles/testServer.dir/test_server/Session.cpp.o.requires
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/Session.cpp.o.provides.build
.PHONY : CMakeFiles/testServer.dir/test_server/Session.cpp.o.provides

CMakeFiles/testServer.dir/test_server/Session.cpp.o.provides.build: CMakeFiles/testServer.dir/test_server/Session.cpp.o

CMakeFiles/testServer.dir/test_server/Server.cpp.o: CMakeFiles/testServer.dir/flags.make
CMakeFiles/testServer.dir/test_server/Server.cpp.o: test_server/Server.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ice/asio-websocket-server/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/testServer.dir/test_server/Server.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/testServer.dir/test_server/Server.cpp.o -c /home/ice/asio-websocket-server/test_server/Server.cpp

CMakeFiles/testServer.dir/test_server/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testServer.dir/test_server/Server.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ice/asio-websocket-server/test_server/Server.cpp > CMakeFiles/testServer.dir/test_server/Server.cpp.i

CMakeFiles/testServer.dir/test_server/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testServer.dir/test_server/Server.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ice/asio-websocket-server/test_server/Server.cpp -o CMakeFiles/testServer.dir/test_server/Server.cpp.s

CMakeFiles/testServer.dir/test_server/Server.cpp.o.requires:
.PHONY : CMakeFiles/testServer.dir/test_server/Server.cpp.o.requires

CMakeFiles/testServer.dir/test_server/Server.cpp.o.provides: CMakeFiles/testServer.dir/test_server/Server.cpp.o.requires
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/Server.cpp.o.provides.build
.PHONY : CMakeFiles/testServer.dir/test_server/Server.cpp.o.provides

CMakeFiles/testServer.dir/test_server/Server.cpp.o.provides.build: CMakeFiles/testServer.dir/test_server/Server.cpp.o

CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o: CMakeFiles/testServer.dir/flags.make
CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o: test_server/RequestParser.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ice/asio-websocket-server/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o -c /home/ice/asio-websocket-server/test_server/RequestParser.cpp

CMakeFiles/testServer.dir/test_server/RequestParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testServer.dir/test_server/RequestParser.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ice/asio-websocket-server/test_server/RequestParser.cpp > CMakeFiles/testServer.dir/test_server/RequestParser.cpp.i

CMakeFiles/testServer.dir/test_server/RequestParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testServer.dir/test_server/RequestParser.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ice/asio-websocket-server/test_server/RequestParser.cpp -o CMakeFiles/testServer.dir/test_server/RequestParser.cpp.s

CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o.requires:
.PHONY : CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o.requires

CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o.provides: CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o.requires
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o.provides.build
.PHONY : CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o.provides

CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o.provides.build: CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o

CMakeFiles/testServer.dir/test_server/main.cpp.o: CMakeFiles/testServer.dir/flags.make
CMakeFiles/testServer.dir/test_server/main.cpp.o: test_server/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ice/asio-websocket-server/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/testServer.dir/test_server/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/testServer.dir/test_server/main.cpp.o -c /home/ice/asio-websocket-server/test_server/main.cpp

CMakeFiles/testServer.dir/test_server/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testServer.dir/test_server/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ice/asio-websocket-server/test_server/main.cpp > CMakeFiles/testServer.dir/test_server/main.cpp.i

CMakeFiles/testServer.dir/test_server/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testServer.dir/test_server/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ice/asio-websocket-server/test_server/main.cpp -o CMakeFiles/testServer.dir/test_server/main.cpp.s

CMakeFiles/testServer.dir/test_server/main.cpp.o.requires:
.PHONY : CMakeFiles/testServer.dir/test_server/main.cpp.o.requires

CMakeFiles/testServer.dir/test_server/main.cpp.o.provides: CMakeFiles/testServer.dir/test_server/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/main.cpp.o.provides.build
.PHONY : CMakeFiles/testServer.dir/test_server/main.cpp.o.provides

CMakeFiles/testServer.dir/test_server/main.cpp.o.provides.build: CMakeFiles/testServer.dir/test_server/main.cpp.o

# Object files for target testServer
testServer_OBJECTS = \
"CMakeFiles/testServer.dir/test_server/Session.cpp.o" \
"CMakeFiles/testServer.dir/test_server/Server.cpp.o" \
"CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o" \
"CMakeFiles/testServer.dir/test_server/main.cpp.o"

# External object files for target testServer
testServer_EXTERNAL_OBJECTS =

testServer: CMakeFiles/testServer.dir/test_server/Session.cpp.o
testServer: CMakeFiles/testServer.dir/test_server/Server.cpp.o
testServer: CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o
testServer: CMakeFiles/testServer.dir/test_server/main.cpp.o
testServer: CMakeFiles/testServer.dir/build.make
testServer: public/libpublic.a
testServer: CMakeFiles/testServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable testServer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testServer.dir/build: testServer
.PHONY : CMakeFiles/testServer.dir/build

CMakeFiles/testServer.dir/requires: CMakeFiles/testServer.dir/test_server/Session.cpp.o.requires
CMakeFiles/testServer.dir/requires: CMakeFiles/testServer.dir/test_server/Server.cpp.o.requires
CMakeFiles/testServer.dir/requires: CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o.requires
CMakeFiles/testServer.dir/requires: CMakeFiles/testServer.dir/test_server/main.cpp.o.requires
.PHONY : CMakeFiles/testServer.dir/requires

CMakeFiles/testServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testServer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testServer.dir/clean

CMakeFiles/testServer.dir/depend:
	cd /home/ice/asio-websocket-server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ice/asio-websocket-server /home/ice/asio-websocket-server /home/ice/asio-websocket-server /home/ice/asio-websocket-server /home/ice/asio-websocket-server/CMakeFiles/testServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testServer.dir/depend
