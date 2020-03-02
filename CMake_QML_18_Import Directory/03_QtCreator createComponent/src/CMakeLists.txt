cmake_minimum_required(VERSION 3.1.0)
project(testSln)

# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# Instruct CMake to run moc automatically when needed
set(CMAKE_AUTOMOC ON)
# Create code from a list of Qt designer ui files
set(CMAKE_AUTOUIC ON)
#handle rcc automatically( handle qrc file )
set(CMAKE_AUTORCC ON)

# Find the QtWidgets library
find_package( Qt5 REQUIRED 
    COMPONENTS Core Gui Widgets Qml Quick 
)

include_directories(
    Qt5::Core
    Qt5::Gui
    Qt5::Widgets
    Qt5::Qml
    Qt5::Quick
)

# Populate a CMake variable with the sources
FILE(GLOB helloworld_sources
    mainwindow.cpp
    main.cpp
)

FILE(GLOB helloworld_headers
    *.h
)

SET(helloworld_resources 
    mainwindow.ui
    main.qrc
    main.qml
    ./Printer/PrinterDialog.qml
)

SOURCE_GROUP("Source Files" FILES ${helloworld_sources})
SOURCE_GROUP("Header Files" FILES ${helloworld_headers})
SOURCE_GROUP("Resource Files" FILES ${helloworld_resources})

# Message Sln Path
MESSAGE(STATUS "This is BINARY dir " ${testSln_BINARY_DIR})
MESSAGE(STATUS "This is SOURCE dir " ${testSln_SOURCE_DIR})
# Message Qt Path
MESSAGE(STATUS "Qt5Widgets_INCLUDE_DIRS: " ${Qt5Widgets_INCLUDE_DIRS})
MESSAGE(STATUS "Qt5Widgets_LIBRARIES: " ${Qt5Widgets_LIBRARIES})
MESSAGE(STATUS "Qt5Qml_INCLUDE_DIRS: " ${Qt5Qml_INCLUDE_DIRS})
# Message CMake
MESSAGE(STATUS "CMAKE_CURRENT_BINARY_DIR:  " ${CMAKE_CURRENT_BINARY_DIR} )
MESSAGE(STATUS "PROJECT_NAME: " ${PROJECT_NAME})

# Tell CMake to create the helloworld executable
add_executable( helloworld WIN32 ${helloworld_sources} ${helloworld_headers} ${helloworld_resources})

# Output Path
# set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/../bin)
# MESSAGE(STATUS "EXECUTABLE_OUTPUT_PATH: " ${EXECUTABLE_OUTPUT_PATH} )
# set_target_properties(target1 target2 ...PROPERTIES prop1 value1 prop2 value2 ...)
# Output Path
set_target_properties( helloworld
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../lib
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../lib
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin
)
# Output Name
SET_TARGET_PROPERTIES( helloworld PROPERTIES OUTPUT_NAME "posconfig")

# Must After add_executable
target_link_libraries( helloworld
	${Qt5Core_LIBRARIES}
	${Qt5Gui_LIBRARIES}
	${Qt5Widgets_LIBRARIES}
	${Qt5Qml_LIBRARIES}
	${Qt5Quick_LIBRARIES}
)
