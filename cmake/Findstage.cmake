# - Setting variables for Stage custom installation
# using the environment variable in the installation instructions
# https://github.com/rtv/Stage/blob/master/INSTALL.txt
#
# Once done this will define:
# - STAGE_INCLUDE_DIRS
# - STAGE_LIBRARIES

if (DEFINED ENV${STG} AND EXISTS "$ENV{STG}/include/Stage-4.3")
  set(STAGE_INCLUDE_DIRS "$ENV{STG}/include/Stage-4.3"
  "/usr/lib/fltk;/usr/include"
  "/usr/include")
  list(REMOVE_DUPLICATES STAGE_INCLUDE_DIRS)
  set(STAGE_LIBRARIES
  "$ENV{STG}/lib/libstage.so.4.3.0"
  "fltk_images;fltk_forms;fltk_gl;/usr/lib/x86_64-linux-gnu/libGL.so;fltk;/usr/lib/x86_64-linux-gnu/libSM.so;/usr/lib/x86_64-linux-gnu/libICE.so;/usr/lib/x86_64-linux-gnu/libX11.so;/usr/lib/x86_64-linux-gnu/libXext.so;/usr/lib/x86_64-linux-gnu/libm.so"

else()
  message(FATAL_ERROR "$ENV{STG} not existing")
endif()
