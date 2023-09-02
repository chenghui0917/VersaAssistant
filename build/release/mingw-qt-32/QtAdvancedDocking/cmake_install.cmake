# Install script for directory: E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/VersaDebugAssistantProject")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "D:/SoftwareTools/Qt/Qt5.14.2/Tools/mingw730_32/bin/objdump.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/qtadvanceddocking" TYPE FILE FILES
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/AutoHideDockContainer.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/AutoHideSideBar.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/AutoHideTab.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/DockAreaTabBar.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/DockAreaTitleBar.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/DockAreaTitleBar_p.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/DockAreaWidget.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/DockComponentsFactory.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/DockContainerWidget.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/DockFocusController.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/DockManager.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/DockOverlay.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/DockSplitter.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/DockWidget.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/DockWidgetTab.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/DockingStateReader.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/ElidingLabel.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/FloatingDockContainer.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/FloatingDragPreview.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/IconProvider.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/PushButton.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/ResizeHandle.h"
    "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/ads_globals.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "E:/projects/VersaDebug Assistant/VersaDebugAssistant/build/release/mingw-qt-32/x86/lib/libqtadvanceddocking.dll.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "E:/projects/VersaDebug Assistant/VersaDebugAssistant/build/release/mingw-qt-32/x86/bin/libqtadvanceddocking.dll")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libqtadvanceddocking.dll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libqtadvanceddocking.dll")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "D:/SoftwareTools/Qt/Qt5.14.2/Tools/mingw730_32/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libqtadvanceddocking.dll")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/qtadvanceddocking/adsTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/qtadvanceddocking/adsTargets.cmake"
         "E:/projects/VersaDebug Assistant/VersaDebugAssistant/build/release/mingw-qt-32/QtAdvancedDocking/CMakeFiles/Export/lib/cmake/qtadvanceddocking/adsTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/qtadvanceddocking/adsTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/qtadvanceddocking/adsTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/qtadvanceddocking" TYPE FILE FILES "E:/projects/VersaDebug Assistant/VersaDebugAssistant/build/release/mingw-qt-32/QtAdvancedDocking/CMakeFiles/Export/lib/cmake/qtadvanceddocking/adsTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/qtadvanceddocking" TYPE FILE FILES "E:/projects/VersaDebug Assistant/VersaDebugAssistant/build/release/mingw-qt-32/QtAdvancedDocking/CMakeFiles/Export/lib/cmake/qtadvanceddocking/adsTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/qtadvanceddocking" TYPE FILE RENAME "qtadvanceddockingConfig.cmake" FILES "E:/projects/VersaDebug Assistant/VersaDebugAssistant/QtAdvancedDocking/qtadvanceddockingConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/qtadvanceddocking" TYPE FILE FILES "E:/projects/VersaDebug Assistant/VersaDebugAssistant/build/release/mingw-qt-32/QtAdvancedDocking/qtadvanceddockingConfigVersion.cmake")
endif()

