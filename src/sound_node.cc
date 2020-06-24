// Copyright (c) 2020 [Your Name]. All rights reserved.

#include "sound_node.h"

namespace myapp {

const int kLowPass = 1;
const int kHighPass = 2;
const int kBandPass = 3;

using namespace cinder;

SoundNode::SoundNode() {
  self_node = context->makeNode(new audio::GenTableNode);
  self_node->enable();
}

void SoundNode::SetVolume(float volume) {
  gain = context->makeNode(new audio::GainNode);
  gain->setValue(volume);
}

float SoundNode::GetVolume() {
  return gain->getValue();
}

audio::NodeRef SoundNode::GetNodeRef() { return self_node; }

audio::MonitorNodeRef SoundNode::GetMonitorNode() { return monitor; }

void SoundNode::AddFilter(int filter_type, float frequency) {
  // Removes all previously created filters
  low_pass->disconnectAll();
  high_pass->disconnectAll();
  band_pass->disconnectAll();

  filter_freq = frequency;

  switch (filter_type) {
    case kLowPass:
      filter_selection = 1;

      low_pass->setFreq(frequency);
      low_pass->enable();

      break;
    case kHighPass:
      filter_selection = 2;

      high_pass->setFreq(frequency);
      high_pass->enable();
      break;
    case kBandPass:
      filter_selection = 3;

      band_pass->setFreq(frequency);
      band_pass->enable();

      break;
    default:
      filter_selection = 0;

      break;
  }
}

int SoundNode::GetFilterTypeSelection() {
  return filter_selection;
}

float SoundNode::GetFilterFrequency() {
  switch (filter_selection) {
    case kLowPass:
      return low_pass->getFreq();
    case kHighPass:
      return high_pass->getFreq();
    case kBandPass:
      return band_pass->getFreq();
    default:
      return 0;
  }
}

audio::NodeRef SoundNode::MultiplyWave(audio::NodeRef other_node) {
  other_node->enable();
  auto multiplyNode = context->makeNode(new audio::MultiplyNode);
  self_node >> multiplyNode;
  multiplyNode->getParam()->setProcessor(other_node);

  return multiplyNode;
}

audio::NodeRef SoundNode::DivideWave(audio::NodeRef other_node) {
  other_node->enable();
  auto divideNode = context->makeNode(new audio::DivideNode);
  self_node >> divideNode;
  divideNode->getParam()->setProcessor(other_node);

  return divideNode;
}

audio::NodeRef SoundNode::AddWave(audio::NodeRef other_node) {
  other_node->enable();
  auto addNode = context->makeNode(new audio::AddNode);
  self_node >> addNode;
  addNode->getParam()->setProcessor(other_node);

  return addNode;
}

audio::NodeRef SoundNode::SubtractWave(audio::NodeRef other_node) {
  other_node->enable();
  auto subtractNode = context->makeNode(new audio::SubtractNode);
  self_node >> subtractNode;
  subtractNode->getParam()->setProcessor(other_node);

  return subtractNode;
}

void SoundNode::PlaySound(audio::NodeRef sound) {
  // calls in case previous sound wasn't stopped
  StopSound();

  sound->enable();
  output->enable();

  // This object makes the illustration possible
  monitor = context->makeNode(new audio::MonitorNode);

  switch (filter_selection) {
    case kLowPass:
      low_pass->setFreq(filter_freq);
      sound >> low_pass >> gain >> context->getOutput();

      break;
    case kHighPass:
      high_pass->setFreq(filter_freq);
      sound >> high_pass >> gain >> context->getOutput();

      break;
    case kBandPass:
      band_pass->setFreq(filter_freq);
      sound >> band_pass >> gain >> context->getOutput();

      break;
    default:
      sound >> gain >> context->getOutput();

      break;
  }

  gain >> monitor;
  context->enable();
}

void SoundNode::StopSound() {
  output->disable();
  output->disconnectAll();
}

}