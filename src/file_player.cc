// Copyright (c) 2020 [Your Name]. All rights reserved.

#include "file_player.h"

namespace myapp {

FilePlayer::FilePlayer(std::string file_name) : SoundNode() {
  try {
    auto audio_source = cinder::audio::load(cinder::app::loadAsset(file_name));

    self_node = context->makeNode(new cinder::audio::FilePlayerNode(audio_source));

    self_node->enable();
    context->enable();
  } catch (cinder::app::AssetLoadExc error) {
    // does nothing, but necessary to not mess up future file players if
    // provided file_name is invalid
    self_node = context->makeNode(new cinder::audio::GenSineNode);
    self_node->enable();
    context->enable();
  }
}

}