// Copyright (c) 2020 [Your Name]. All rights reserved.

#include "sound_engine.h"

namespace myapp {

const int kSine = 0;
const int kTriangle = 1;
const int kFilePlayer = 2;

const int kLowPass = 1;
const int kHighPass = 2;
const int kBandPass = 3;

const int kAdd = 1;
const int kSubtract = 2;
const int kMultiply = 3;
const int kDivide = 4;

const int kDefaultFrequency = 0;

void SoundEngine::MakeSound(int main_sound_type, int other_sound_type, float
volume, float main_frequency, float other_frequency, int filter_type, float
filter_frequency, int math_operation, std::string file_name) {
  // calls in case previous sound wasn't stopped
  StopSound();

  InitializeMainSound(main_sound_type, volume, main_frequency, file_name);
  InitializeOtherSound(other_sound_type, volume, other_frequency);

  audio::NodeRef sound_after_operation = HandleWaveMath(math_operation);

  main_sound.AddFilter(filter_type, filter_frequency);

  main_sound.PlaySound(sound_after_operation);
}

void SoundEngine::InitializeMainSound(int sound_type, float volume, float
frequency, std::string file_name) {
  myapp::Sine sine(frequency);
  myapp::Triangle triangle(frequency);
  myapp::FilePlayer file_player(file_name);

  switch (sound_type) {
    case kSine:
      main_sound = sine;
      break;
    case kTriangle:
      main_sound = triangle;
      break;
    case kFilePlayer:
      main_sound = file_player;
      break;
    default:
      main_sound = sine;
      break;
  }

  main_sound.SetVolume(volume);
}

void SoundEngine::InitializeOtherSound(int sound_type, float volume, float
frequency) {
  myapp::Sine sine(kDefaultFrequency);
  myapp::Triangle triangle(kDefaultFrequency);

  switch (sound_type) {
    case kSine:
      other_sound = sine;
      break;
    case kTriangle:
      other_sound = triangle;
      break;
    default:
      other_sound = sine;
      break;
  }

  other_sound.SetFrequency(frequency);
  other_sound.SetVolume(volume);
}

void SoundEngine::StopSound() {
  main_sound.StopSound();

  //resets self_node
  main_sound = SoundNode();
}

cinder::audio::MonitorNodeRef SoundEngine::GetMonitorNode() {
  return main_sound.GetMonitorNode();
}

audio::NodeRef SoundEngine::HandleWaveMath(int operation_type) {
  auto other_ref = other_sound.GetNodeRef();

  switch (operation_type) {
    case kAdd:
      return main_sound.AddWave(other_ref);
    case kSubtract:
      return main_sound.SubtractWave(other_ref);;
    case kMultiply:
      return main_sound.MultiplyWave(other_ref);
    case kDivide:
      return main_sound.DivideWave(other_ref);
    default:
      return main_sound.GetNodeRef();
  }
}

}