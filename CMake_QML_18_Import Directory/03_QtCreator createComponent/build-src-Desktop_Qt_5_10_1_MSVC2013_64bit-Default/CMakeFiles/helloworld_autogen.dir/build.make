# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles JOM" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\cn_pengs\Desktop\CMake_QML\CMake_QML_18_Import Directory\03_QtCreator createComponent\src"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\cn_pengs\Desktop\CMake_QML\CMake_QML_18_Import Directory\03_QtCreator createComponent\build-src-Desktop_Qt_5_10_1_MSVC2013_64bit-Default"

# Utility rule file for helloworld_autogen.

# Include the progress variables for this target.
include CMakeFiles\helloworld_autogen.dir\progress.make

CMakeFiles\helloworld_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="C:\Users\cn_pengs\Desktop\CMake_QML\CMake_QML_18_Import Directory\03_QtCreator createComponent\build-src-Desktop_Qt_5_10_1_MSVC2013_64bit-Default\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target helloworld"
	echo >nul && "C:\Program Files (x86)\CMake\bin\cmake.exe" -E cmake_autogen "C:/Users/cn_pengs/Desktop/CMake_QML/CMake_QML_18_Import Directory/03_QtCreator createComponent/build-src-Desktop_Qt_5_10_1_MSVC2013_64bit-Default/CMakeFiles/helloworld_autogen.dir/AutogenInfo.cmake" Debug

helloworld_autogen: CMakeFiles\helloworld_autogen
helloworld_autogen: CMakeFiles\helloworld_autogen.dir\build.make

.PHONY : helloworld_autogen

# Rule to build all files generated by this target.
CMakeFiles\helloworld_autogen.dir\build: helloworld_autogen

.PHONY : CMakeFiles\helloworld_autogen.dir\build

CMakeFiles\helloworld_autogen.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\helloworld_autogen.dir\cmake_clean.cmake
.PHONY : CMakeFiles\helloworld_autogen.dir\clean

CMakeFiles\helloworld_autogen.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles JOM" "C:\Users\cn_pengs\Desktop\CMake_QML\CMake_QML_18_Import Directory\03_QtCreator createComponent\src" "C:\Users\cn_pengs\Desktop\CMake_QML\CMake_QML_18_Import Directory\03_QtCreator createComponent\src" "C:\Users\cn_pengs\Desktop\CMake_QML\CMake_QML_18_Import Directory\03_QtCreator createComponent\build-src-Desktop_Qt_5_10_1_MSVC2013_64bit-Default" "C:\Users\cn_pengs\Desktop\CMake_QML\CMake_QML_18_Import Directory\03_QtCreator createComponent\build-src-Desktop_Qt_5_10_1_MSVC2013_64bit-Default" "C:\Users\cn_pengs\Desktop\CMake_QML\CMake_QML_18_Import Directory\03_QtCreator createComponent\build-src-Desktop_Qt_5_10_1_MSVC2013_64bit-Default\CMakeFiles\helloworld_autogen.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles\helloworld_autogen.dir\depend

