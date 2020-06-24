if(NOT EXISTS "/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/_deps/cycfi-build/q_io/external/portaudio/install_manifest.txt")
  message(FATAL_ERROR "Cannot find install manifest: /Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/_deps/cycfi-build/q_io/external/portaudio/install_manifest.txt")
endif(NOT EXISTS "/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/_deps/cycfi-build/q_io/external/portaudio/install_manifest.txt")

file(READ "/Users/beth/cinder_0.9.2_mac/my-projects/final-project-efineberg19/cmake-build-debug/_deps/cycfi-build/q_io/external/portaudio/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach(file ${files})
  message(STATUS "Uninstalling $ENV{DESTDIR}${file}")
  if(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
    exec_program(
      "/private/var/folders/8h/x9pfmm0n3pn4kl4t00gc_ww80000gn/T/AppTranslocation/DBEC2272-46CA-43B0-9A17-6A69EE8425AF/d/CLion.app/Contents/bin/cmake/mac/bin/cmake" ARGS "-E remove \"$ENV{DESTDIR}${file}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
      )
    if(NOT "${rm_retval}" STREQUAL 0)
      message(FATAL_ERROR "Problem when removing $ENV{DESTDIR}${file}")
    endif(NOT "${rm_retval}" STREQUAL 0)
  else(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
    message(STATUS "File $ENV{DESTDIR}${file} does not exist.")
  endif(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
endforeach(file)
