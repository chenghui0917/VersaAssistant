# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "Project\\CMakeFiles\\VersaAssistant-3.8.1_autogen.dir\\AutogenUsed.txt"
  "Project\\CMakeFiles\\VersaAssistant-3.8.1_autogen.dir\\ParseCache.txt"
  "Project\\VersaAssistant-3.8.1_autogen"
  "QtAdvancedDocking\\CMakeFiles\\qtadvanceddocking_autogen.dir\\AutogenUsed.txt"
  "QtAdvancedDocking\\CMakeFiles\\qtadvanceddocking_autogen.dir\\ParseCache.txt"
  "QtAdvancedDocking\\qtadvanceddocking_autogen"
  "QtMaterial\\CMakeFiles\\qtmaterial_autogen.dir\\AutogenUsed.txt"
  "QtMaterial\\CMakeFiles\\qtmaterial_autogen.dir\\ParseCache.txt"
  "QtMaterial\\qtmaterial_autogen"
  )
endif()
