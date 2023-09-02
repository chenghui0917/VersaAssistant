cmake_minimum_required(VERSION 3.5)

set(APP_VERSION 3.8.1)

# 设置软件版本，同步git版本
if(NOT APP_VERSION)
    set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules ${CMAKE_MODULE_PATH})
    include(GetGitRevisionDescription)
    git_describe(GitTagVersion --tags)
    # 正则替换，提取版本号
    string(REGEX REPLACE "^([0-9]+)\\..*" "\\1" VERSION_MAJOR "${GitTagVersion}")
    string(REGEX REPLACE "^[0-9]+\\.([0-9]+).*" "\\1" VERSION_MINOR "${GitTagVersion}")
    string(REGEX REPLACE "^[0-9]+\\.[0-9]+\\.([0-9]+).*" "\\1" VERSION_PATCH "${GitTagVersion}")
    set(VERSION_SHORT "${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH}")
else()
    string(REGEX MATCHALL "[\.]" VERSION_DOT_MATCHES ${APP_VERSION})
    list(LENGTH VERSION_DOT_MATCHES VERSION_DOT_COUNT)
    if(VERSION_DOT_COUNT EQUAL 2)
        set(VERSION_SHORT ${APP_VERSION})
    else()
        message(FATAL_ERROR "APP_VERSION must be in major.minor.patch format, e.g. 3.8.1. Got ${APP_VERSION}")
    endif()
endif()

set(APP_CMAKE_SUB_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(AppOutputDir "build_out")
set(LIB_NAME_MATERIAL "qt${QT_VERSION_MAJOR}material")
set(LIB_NAME_ADS "qt${QT_VERSION_MAJOR}advanceddocking")
set(VersaAssistantName "VersaAssistant-${VERSION_SHORT}")

# 应用名称
project(VersaDebugAssistantProject LANGUAGES CXX VERSION ${VERSION_SHORT})

option(BUILD_STATIC "Build the static library" OFF)
option(BUILD_EXAMPLES "Build the examples" ON)

if ("${CMAKE_SIZEOF_VOID_P}" STREQUAL "4")
   set(PlatformDir "x86")
else ()
   set(PlatformDir "x64")
endif ()

add_subdirectory(QtMaterial)
add_subdirectory(QtAdvancedDocking)

add_subdirectory(Project)

