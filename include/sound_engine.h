// Copyright (c) 2020 [Your Name]. All rights reserved.

#ifndef FINALPROJECT_APPS_SOUND_ENGINE_H_
#define FINALPROJECT_APPS_SOUND_ENGINE_H_

#include "cinder/audio/audio.h"

#include "sine.h"
#include "traingle.h"
#include "file_player.h"

namespace myapp {

using namespace cinder;

class SoundEngine {
 public:
  /**
   * Handles initializing the sound wave and playing it.
   * @param main_sound_type type of main sound (sine, triangle, or fileplayer)
   * @param other_sound_type type of main sound (sine or triangle)
   * @param volume of sound
   * @param main_frequency frequency of main sound (Hz)
   * @param other_frequency frequency of other sound (Hz)
   * @param filter_type type of filter chosen (low/high/band pass)
   * @param filter_frequency frequency of filter (Hz)
   * @param math_operation type of math operation chosen
   * @param file_name file path for file to play
   */
  void MakeSound(int main_sound_type, int other_sound_type, float
  volume, float main_frequency, float other_frequency, int filter_type, float
                 filter_frequency, int math_operation, std::string file_name);

  /**
   * Handles logic of stopping the sound and resetting SoundNodes for when
   * they will be played again.
   */
  void StopSound();

  /**
   * Returns the monitor node which stores the information that allows the
   * sound to be drawn.
   * @return the monitor node belonging to the sound object being played
   */
  audio::MonitorNodeRef GetMonitorNode();

  /**
   * Handles initializing the main_sound object with the given information
   * based upon which type of sound it is.
   * @param sound_type type of sound (sine, triangle, fileplayer)
   * @param volume of sound
   * @param frequency of sound (does nothing if fileplayer)
   * @param file_name file path to be played (does nothing if not fileplayer)
   */
  void InitializeMainSound(int sound_type, float volume, float
  frequency, std::string file_name);

  /**
   * Handles initializing the other_sound object with the given information
   * based upon which type of sound it is.
   * @param sound_type type of sound (sine or triangle)
   * @param volume of sound
   * @param frequency of sound
   */
  void InitializeOtherSound(int sound_type, float volume, float
  frequency);

  /**
   * Determines which math function should be called and calls helper functions
   * which handle the logic to do them.
   * @param operation_type math operation chosen (add/subtract/multiply/divide)
   * @return a reference to the cinder audio node that stores the wave
   * resulting from the math operation
   */
  audio::NodeRef HandleWaveMath(int operation_type);
 private:
  /**
   * Main sound that is played and manipulated by program.
   */
  myapp::SoundNode main_sound = SoundNode();

  /**
   * Sound that is used as the second sound for math operations.
   */
  myapp::SoundWave other_sound = SoundWave(0);
};

}

#endif  // FINALPROJECT_APPS_SOUND_ENGINE_H_
