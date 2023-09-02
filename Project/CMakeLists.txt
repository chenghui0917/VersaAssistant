# -------------------------------------- Cmake版本 --------------------------------------
cmake_minimum_required(VERSION 3.5)
# --------------------------------------- 工程名称 ---------------------------------------
project(VersaAssistant LANGUAGES CXX VERSION ${VERSION_SHORT})
# --------------------------------------- 加载Qt库 ---------------------------------------
if (${QT_VERSION_MAJOR})
  message(STATUS "Forced to use Qt version ${QT_VERSION_MAJOR}")
  find_package(QT NAMES Qt${QT_VERSION_MAJOR} COMPONENTS Core REQUIRED)
else()
  find_package(QT NAMES Qt6 Qt5 COMPONENTS Core REQUIRED)
endif()
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Gui Widgets Quick QuickWidgets REQUIRED)

if (UNIX AND NOT APPLE)
    include_directories(${Qt${QT_VERSION_MAJOR}Gui_PRIVATE_INCLUDE_DIRS})
endif()


if(WIN32 AND QT_VERSION_MAJOR LESS 6)
    find_package(Qt${QT_VERSION_MAJOR} COMPONENTS AxContainer REQUIRED)
endif()

set(CMAKE_INCLUDE_CURRENT_DIR ON)

# --------------------------------------- 编码格式 ---------------------------------------
add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")
#-------------------------------------- -添加项目- --------------------------------------
FILE(GLOB PROJECT_HEADER_FILES
        ${CMAKE_CURRENT_SOURCE_DIR}/*.h*)
FILE(GLOB PROJECT_SOURCE_FILES
        ${CMAKE_CURRENT_SOURCE_DIR}/*.c*
        ../icon/MingCute.qrc
        ../icon/IconPark.qrc
        )


if(ANDROID)
    add_library(${VersaAssistantName} SHARED
                ${PROJECT_HEADER_FILES}
                ${PROJECT_SOURCE_FILES})
else()
    add_executable(${VersaAssistantName}
                ${PROJECT_HEADER_FILES}
                ${PROJECT_SOURCE_FILES})
endif()

target_include_directories(${VersaAssistantName} PRIVATE
        "${CMAKE_CURRENT_SOURCE_DIR}/../QtMaterial"
        # "${CMAKE_CURRENT_SOURCE_DIR}/../QtAdvancedDocking"
        )

target_link_libraries(${VersaAssistantName} PUBLIC
                        Qt${QT_VERSION_MAJOR}::Core 
                        Qt${QT_VERSION_MAJOR}::Gui 
                        Qt${QT_VERSION_MAJOR}::Widgets
                        Qt${QT_VERSION_MAJOR}::Quick
                        Qt${QT_VERSION_MAJOR}::QuickWidgets)
if(WIN32 AND QT_VERSION_MAJOR LESS 6)
    target_link_libraries(${VersaAssistantName} PUBLIC
                        Qt${QT_VERSION_MAJOR}::AxContainer)
endif()

target_link_libraries(${VersaAssistantName} PRIVATE 
                      ${LIB_NAME_ADS}
                      ${LIB_NAME_MATERIAL})

set_target_properties(${VersaAssistantName} PROPERTIES
    AUTOMOC ON
    AUTORCC ON
    AUTOUIC ON
    CXX_STANDARD 14
    CXX_STANDARD_REQUIRED ON
    CXX_EXTENSIONS OFF
    VERSION ${VERSION_SHORT}
    EXPORT_NAME "${VersaAssistantName}"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/${PlatformDir}/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/${PlatformDir}/lib"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/${PlatformDir}/bin"
)



