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
)

#Message Sln Path
MESSAGE(STATUS "This is BINARY dir " ${testSln_BINARY_DIR})
MESSAGE(STATUS "This is SOURCE dir " ${testSln_SOURCE_DIR})
#Message Qt Path
MESSAGE(STATUS "This is Qt5Widgets_INCLUDE_DIRS " ${Qt5Widgets_INCLUDE_DIRS})
MESSAGE(STATUS "This is Qt5Widgets_LIBRARIES " ${Qt5Widgets_LIBRARIES})
MESSAGE(STATUS "This is Qt5Qml_INCLUDE_DIRS " ${Qt5Qml_INCLUDE_DIRS})

# Tell CMake to create the helloworld executable
add_executable(helloworld WIN32 ${helloworld_sources} ${helloworld_headers} ${helloworld_resources})
# Must After add_executable
target_link_libraries( helloworld
	${Qt5Core_LIBRARIES}
	${Qt5Gui_LIBRARIES}
	${Qt5Widgets_LIBRARIES}
	${Qt5Qml_LIBRARIES}
	${Qt5Quick_LIBRARIES}
)
