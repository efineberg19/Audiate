file(REMOVE_RECURSE
  "libportaudio_static.a"
  "libportaudio_static.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/portaudio_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
