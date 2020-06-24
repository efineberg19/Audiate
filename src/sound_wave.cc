// Copyright (c) 2020 [Your Name]. All rights reserved.

#include "sound_wave.h"

namespace myapp {

using namespace cinder;

SoundWave::SoundWave(float frequency) : SoundNode() {
  self_wave = context->makeNode(new audio::GenSineNode);
  self_wave->setFreq(frequency);
  self_wave->enable();

  self_node = self_wave;
}

void SoundWave::SetFrequency(float frequency) {
  // avoids negative frequencies
  self_wave->setFreq(frequency);
}

float SoundWave::GetFrequency() {
  return self_wave->getFreq();
}

myapp::SoundWave& SoundWave::operator=(const myapp::SoundWave& other_sound) {
  audio::GenNodeRef other_wave = other_sound.self_wave;
  self_wave = other_wave;
  self_node = self_wave;

  return *this;
}

}