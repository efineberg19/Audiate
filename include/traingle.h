// Copyright (c) 2020 [Your Name]. All rights reserved.

#ifndef FINALPROJECT_APPS_TRIANGLE_H_
#define FINALPROJECT_APPS_TRIANGLE_H_

#include "cinder/audio/audio.h"
#include "sound_wave.h"

namespace myapp {

class Triangle : public myapp::SoundWave {
 public:
  /**
   * Creates a sine wave that can be manipulated and played
   * @param frequency that the triangle wave is initialized to
   */
  Triangle(float frequency);
};

}

#endif  // FINALPROJECT_APPS_SINE_H_
