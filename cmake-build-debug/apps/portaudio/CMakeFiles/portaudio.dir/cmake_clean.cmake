file(REMOVE_RECURSE
  "libportaudio.dylib"
  "libportaudio.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/portaudio.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
