// Copyright (c) 2020 [Your Name]. All rights reserved.

#include "sine.h"

namespace myapp {

Sine::Sine(float frequency) : SoundWave(frequency) {
  self_wave = context->makeNode(new cinder::audio::GenSineNode);
  self_wave->setFreq(frequency);
  self_wave->enable();
  context->enable();

  self_node = self_wave;
  self_node->enable();
}

}
