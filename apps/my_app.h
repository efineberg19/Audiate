// Copyright (c) 2020 CS126SP20. All rights reserved.

#ifndef FINALPROJECT_APPS_MYAPP_H_
#define FINALPROJECT_APPS_MYAPP_H_

#include <cinder/app/App.h>
#include <cinder/gl/scoped.h>
#include <cinder/gl/wrapper.h>

#include "../../../samples/_audio/common/AudioDrawUtils.h"
#include "CinderImGui.h"
#include "sound_engine.h"

namespace myapp {

class MyApp : public cinder::app::App {
 public:
  MyApp();
  void setup() override;
  void update() override;
  void draw() override;
  void keyDown(cinder::app::KeyEvent) override;
 private:
  /**
   * SoundEngine object used to control sound/wave drawing in the program.
   */
  myapp::SoundEngine sound;
};

}  // namespace myapp

#endif  // FINALPROJECT_APPS_MYAPP_H_
