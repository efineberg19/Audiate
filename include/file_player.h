// Copyright (c) 2020 [Your Name]. All rights reserved.

#ifndef FINALPROJECT_SRC_FILE_PLAYER_H_
#define FINALPROJECT_SRC_FILE_PLAYER_H_

#include "cinder/app/App.h"
#include "cinder/audio/audio.h"
#include "sound_wave.h"

namespace myapp {

class FilePlayer : public myapp::SoundNode {
 public:
  /**
   * Constructs a file player which loads a file specified through file_name
   * @param file_name path to file that can be played
   */
  FilePlayer(std::string file_name);
};

}

#endif  // FINALPROJECT_SRC_FILE_PLAYER_H_
