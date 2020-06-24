// Copyright (c) 2020 [Your Name]. All rights reserved.

#ifndef FINALPROJECT_INCLUDE_SOUND_NODE_H_
#define FINALPROJECT_INCLUDE_SOUND_NODE_H_

#include "cinder/audio/audio.h"

namespace myapp {

using namespace cinder;

class SoundNode {
 public:
  SoundNode();
  void SetVolume(float volume);
  float GetVolume();
  audio::NodeRef GetNodeRef();
  audio::MonitorNodeRef GetMonitorNode();

  /**
   * Applies filter to NodeRef and sets necessary values.
   * @param filter_type type of filter to apply
   * @param frequency the filter should be set to
   */
  void AddFilter(int filter_type, float frequency);

  /**
   * Returns integer representing the filter type that has been selected.
   * @return filter type
   */
  int GetFilterTypeSelection();

  float GetFilterFrequency();

  /**
 * Multiplies the main wave by the other_node's wave.
 * @param other_node other sound to be multiplied by
 * @return a new audio node with the multiplied wave
   */
  audio::NodeRef MultiplyWave(audio::NodeRef other_node);

  /**
   * Divides the main wave by the other_node's wave.
   * @param other_node other sound to be divided by
   * @return a new audio node with the divided wave
   */
  audio::NodeRef DivideWave(audio::NodeRef other_node);

  /**
   * Adds the main wave by the other_node's wave.
   * @param other_node other sound to be added to
   * @return a new audio node with the added wave
   */
  audio::NodeRef AddWave(audio::NodeRef other_node);

  /**
   * Subtracts the main wave by the other_node's wave.
   * @param other_node other sound to be subtracted from
   * @return a new audio node with the subtracted wave
   */
  audio::NodeRef SubtractWave(audio::NodeRef other_node);

  /**
   * Plays the sound node specified in the signature.
   * @param sound that is played
   */
  void PlaySound(audio::NodeRef sound);

  /**
   * Stops the current sound being played.
   */
  void StopSound();
 protected:
  // these must all be accessible by descendents, so protected (not private)

  // sound node that the object contains
  audio::NodeRef self_node;

  // master audio object
  audio::Context* context = audio::Context::master();

  // controls volume
  audio::GainNodeRef gain;

  // output node that allows audio to be played
  audio::OutputNodeRef output = context->getOutput();

  // controlls audio for wave illustration
  audio::MonitorNodeRef monitor;

  audio::FilterLowPassNodeRef low_pass =
      context->makeNode(new audio::FilterLowPassNode);
  audio::FilterHighPassNodeRef high_pass =
      context->makeNode(new audio::FilterHighPassNode);
  audio::FilterBandPassNodeRef band_pass =
      context->makeNode(new audio::FilterBandPassNode);

 private:
  int filter_selection = 0;
  float filter_freq = 0;
};

}

#endif  // FINALPROJECT_INCLUDE_SOUND_NODE_H_
