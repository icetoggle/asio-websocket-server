# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running interactive CMake command-line interface..."
	/usr/bin/cmake -i .
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ice/asio-websocket-server/CMakeFiles /home/ice/asio-websocket-server/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ice/asio-websocket-server/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named testServer

# Build rule for target.
testServer: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 testServer
.PHONY : testServer

# fast build rule for target.
testServer/fast:
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/build
.PHONY : testServer/fast

#=============================================================================
# Target rules for targets named public

# Build rule for target.
public: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 public
.PHONY : public

# fast build rule for target.
public/fast:
	$(MAKE) -f public/CMakeFiles/public.dir/build.make public/CMakeFiles/public.dir/build
.PHONY : public/fast

test_server/RequestParser.o: test_server/RequestParser.cpp.o
.PHONY : test_server/RequestParser.o

# target to build an object file
test_server/RequestParser.cpp.o:
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/RequestParser.cpp.o
.PHONY : test_server/RequestParser.cpp.o

test_server/RequestParser.i: test_server/RequestParser.cpp.i
.PHONY : test_server/RequestParser.i

# target to preprocess a source file
test_server/RequestParser.cpp.i:
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/RequestParser.cpp.i
.PHONY : test_server/RequestParser.cpp.i

test_server/RequestParser.s: test_server/RequestParser.cpp.s
.PHONY : test_server/RequestParser.s

# target to generate assembly for a file
test_server/RequestParser.cpp.s:
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/RequestParser.cpp.s
.PHONY : test_server/RequestParser.cpp.s

test_server/Server.o: test_server/Server.cpp.o
.PHONY : test_server/Server.o

# target to build an object file
test_server/Server.cpp.o:
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/Server.cpp.o
.PHONY : test_server/Server.cpp.o

test_server/Server.i: test_server/Server.cpp.i
.PHONY : test_server/Server.i

# target to preprocess a source file
test_server/Server.cpp.i:
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/Server.cpp.i
.PHONY : test_server/Server.cpp.i

test_server/Server.s: test_server/Server.cpp.s
.PHONY : test_server/Server.s

# target to generate assembly for a file
test_server/Server.cpp.s:
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/Server.cpp.s
.PHONY : test_server/Server.cpp.s

test_server/Session.o: test_server/Session.cpp.o
.PHONY : test_server/Session.o

# target to build an object file
test_server/Session.cpp.o:
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/Session.cpp.o
.PHONY : test_server/Session.cpp.o

test_server/Session.i: test_server/Session.cpp.i
.PHONY : test_server/Session.i

# target to preprocess a source file
test_server/Session.cpp.i:
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/Session.cpp.i
.PHONY : test_server/Session.cpp.i

test_server/Session.s: test_server/Session.cpp.s
.PHONY : test_server/Session.s

# target to generate assembly for a file
test_server/Session.cpp.s:
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/Session.cpp.s
.PHONY : test_server/Session.cpp.s

test_server/main.o: test_server/main.cpp.o
.PHONY : test_server/main.o

# target to build an object file
test_server/main.cpp.o:
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/main.cpp.o
.PHONY : test_server/main.cpp.o

test_server/main.i: test_server/main.cpp.i
.PHONY : test_server/main.i

# target to preprocess a source file
test_server/main.cpp.i:
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/main.cpp.i
.PHONY : test_server/main.cpp.i

test_server/main.s: test_server/main.cpp.s
.PHONY : test_server/main.s

# target to generate assembly for a file
test_server/main.cpp.s:
	$(MAKE) -f CMakeFiles/testServer.dir/build.make CMakeFiles/testServer.dir/test_server/main.cpp.s
.PHONY : test_server/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... testServer"
	@echo "... public"
	@echo "... test_server/RequestParser.o"
	@echo "... test_server/RequestParser.i"
	@echo "... test_server/RequestParser.s"
	@echo "... test_server/Server.o"
	@echo "... test_server/Server.i"
	@echo "... test_server/Server.s"
	@echo "... test_server/Session.o"
	@echo "... test_server/Session.i"
	@echo "... test_server/Session.s"
	@echo "... test_server/main.o"
	@echo "... test_server/main.i"
	@echo "... test_server/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

