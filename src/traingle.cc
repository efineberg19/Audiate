// Copyright (c) 2020 [Your Name]. All rights reserved.

#include "traingle.h"

namespace myapp {

Triangle::Triangle(float frequency) : SoundWave(frequency) {
  self_wave = context->makeNode(new cinder::audio::GenTriangleNode);
  self_wave->setFreq(frequency);
  self_wave->enable();
  context->enable();

  self_node = self_wave;
  self_node->enable();
}

}
