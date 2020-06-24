// Copyright (c) 2020 [Your Name]. All rights reserved.

#ifndef FINALPROJECT_APPS_SOUND_WAVE_H_
#define FINALPROJECT_APPS_SOUND_WAVE_H_

#include "cinder/audio/audio.h"
#include "sound_node.h"

namespace myapp {

using namespace cinder;

class SoundWave : public myapp::SoundNode {
 public:
  /**
   * Initialized a sine wave with the specified frequency.
   * @param frequency pitch of sound
   */
  SoundWave(float frequency);

  void SetFrequency(float frequency);

  float GetFrequency();

  /**
   * Overrides equals operator so that you can set sound waves equal to each
   * other.
   */
  SoundWave& operator=(const SoundWave& other_sound);

 protected:
  audio::GenNodeRef self_wave;
};

}

#endif  // FINALPROJECT_APPS_SOUND_WAVE_H_
