# Install script for directory: E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial

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
  set(CMAKE_OBJDUMP "D:/SoftwareTools/Qt/Qt5.14.2/Tools/mingw730_64/bin/objdump.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/qtmaterial" TYPE FILE FILES
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/lib/qtmaterialcheckable.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/lib/qtmaterialcheckable_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/lib/qtmaterialcheckable_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/lib/qtmaterialoverlaywidget.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/lib/qtmaterialripple.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/lib/qtmaterialrippleoverlay.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/lib/qtmaterialstatetransition.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/lib/qtmaterialstatetransitionevent.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/lib/qtmaterialstyle.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/lib/qtmaterialstyle_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/lib/qtmaterialtheme.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/lib/qtmaterialtheme_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialappbar.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialappbar_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialautocomplete.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialautocomplete_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialautocomplete_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialavatar.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialavatar_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialbadge.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialbadge_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialcheckbox.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialcheckbox_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialcircularprogress.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialcircularprogress_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialcircularprogress_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialdialog.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialdialog_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialdialog_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialdrawer.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialdrawer_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialdrawer_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialfab.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialfab_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialflatbutton.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialflatbutton_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialflatbutton_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialiconbutton.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialiconbutton_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmateriallist.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmateriallist_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmateriallistitem.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmateriallistitem_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialmenu.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialmenu_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialmenu_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialpaper.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialpaper_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialprogress.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialprogress_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialprogress_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialradiobutton.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialradiobutton_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialraisedbutton.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialraisedbutton_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialscrollbar.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialscrollbar_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialscrollbar_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialslider.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialslider_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialslider_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialsnackbar.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialsnackbar_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialsnackbar_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialtable.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialtable_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialtabs.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialtabs_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialtabs_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialtextfield.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialtextfield_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialtextfield_p.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialtoggle.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialtoggle_internal.h"
    "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtmaterialtoggle_p.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/build/release/mingw-qt-64/x64/lib/libqtmaterial.dll.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/build/release/mingw-qt-64/x64/bin/libqtmaterial.dll")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libqtmaterial.dll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libqtmaterial.dll")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "D:/SoftwareTools/Qt/Qt5.14.2/Tools/mingw730_64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libqtmaterial.dll")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/qtmaterial/materialTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/qtmaterial/materialTargets.cmake"
         "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/build/release/mingw-qt-64/QtMaterial/CMakeFiles/Export/lib/cmake/qtmaterial/materialTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/qtmaterial/materialTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/qtmaterial/materialTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/qtmaterial" TYPE FILE FILES "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/build/release/mingw-qt-64/QtMaterial/CMakeFiles/Export/lib/cmake/qtmaterial/materialTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/qtmaterial" TYPE FILE FILES "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/build/release/mingw-qt-64/QtMaterial/CMakeFiles/Export/lib/cmake/qtmaterial/materialTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/qtmaterial" TYPE FILE RENAME "qtmaterialConfig.cmake" FILES "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/QtMaterial/qtMaterialConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/qtmaterial" TYPE FILE FILES "E:/projects/VersaDebug Assistant/Cmake/VersaDebugAssistant/build/release/mingw-qt-64/QtMaterial/qtmaterialConfigVersion.cmake")
endif()

