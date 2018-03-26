
cmake_minimum_required( VERSION 3.0)
project( imShow )
set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -Wextra" )
set( CMAKE_BUILD_TYPE Debug)

find_package( Boost REQUIRED COMPONENTS filesystem system )
find_package( PkgConfig REQUIRED )
pkg_check_modules ( PKG REQUIRED gtkmm-204 libvlc )
include_directories( ${PKG_INCLUDE_DIRS} src)


add_executable( play_video_gui.out
	src/play_video_gui/play_video_gui.cpp
	src/play_video_gui/PlayerWindow.cpp
	src/play_video/Filesystem.cpp
)

target_link_libraries( play_video_gui.out ${PKG_LIBRARIES} ${Boost_LIBRARIES} )
