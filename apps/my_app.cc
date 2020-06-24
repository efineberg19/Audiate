// Copyright (c) 2020 [Your Name]. All rights reserved.

#include "my_app.h"

namespace myapp {

using cinder::app::KeyEvent;
using namespace cinder;

const int kDefaultSelection = 0;
const int kInputMaxLength = 6;
const int kNumWaveTypes = 3;
const int kNumOperationTypes = 5;
const int kNumFilterTypes = 4;
const int kNumFileChoices = 7;

const int kX1 = 600;
const int kY1 = 500;
const int kX2 = 200;
const int kY2 = 600;

const float kDefaultVolume = 0.5f;

//first item is O Fortuna by default if None chosen
const std::string kFilePaths[] = {"ofortuna.wav", "ofortuna.wav",
                                  "ducktales.wav", "minecraft.wav",
                                  "animalcrossingtitle.wav", "kkbossa.wav",
                                  "bbking.wav"};

MyApp::MyApp() { }

void MyApp::setup() {
  ImGui::initialize();
}

void MyApp::update() { }

void MyApp::draw() {
  /*
   * Note: all my variables that take information from the UI must be static
   * and in this function. When I tried to define them elsewhere, the program
   * broke.
   */
  gl::clear();

  ImGui::Begin("Control Panel");

  /*
   * GUI Controls for Main Sound
   */
  ImGui::Text("Main Sound Controls:");

  static int sound_type_selection = kDefaultSelection;
  // must set height to number of items so weird items don't appear
  // call also doesn't work if I try to pull out the strings into constants
  const char* waves[] = {"Sine Wave", "Triangle Wave", "File Player"};
  ImGui::Combo("Sound Type", &sound_type_selection, waves, kNumWaveTypes);

  static int file_selection = kDefaultSelection;
  const char* songs[] = {"None", "O Fortuna", "Duck Tales", "Minecraft",
                         "Animal Crossing", "K.K. Bossa", "BB King"};
  ImGui::Combo("File Source", &file_selection, songs, kNumFileChoices);

  static char main_sound_frequency_input[kInputMaxLength] = {};
  ImGui::InputText("Frequency", main_sound_frequency_input, IM_ARRAYSIZE
  (main_sound_frequency_input));
  // std::atof handles if input isn't a valid float, so I don't have to test it
  float main_sound_frequency = std::atof(main_sound_frequency_input);

  static float volume_slider = kDefaultVolume;
  ImGui::SliderFloat("Volume", &volume_slider, 0.0f, 1.0f);

  /*
   * GUI Controls for Filters
   */
  ImGui::Text("Filter:");

  static int filter_type_selection = kDefaultSelection;

  const char* filters[] = {"None", "Low Pass", "High Pass", "Band Pass"};
  ImGui::Combo("Filter Type", &filter_type_selection,
      filters, kNumFilterTypes);

  static char filter_frequency_input[kInputMaxLength] = {};
  // needed to add spaces to label so that this input box wouldn't affect
  // other frequency input boxes
  ImGui::InputText("Frequency  ", filter_frequency_input, IM_ARRAYSIZE
  (filter_frequency_input));
  float filter_frequency = std::atof(filter_frequency_input);

  /*
   * GUI Controls for Wave Math Operations
   */
  ImGui::Text("Math:");

  static int operation_type_selection = kDefaultSelection;
  const char* operations[] = {"None", "Add", "Subtract", "Multiply", "Divide"};
  ImGui::Combo("Operation Type", &operation_type_selection,
      operations, kNumOperationTypes);

  static int other_wave_type_selection = kDefaultSelection;
  ImGui::Combo("Other Sound Type", &other_wave_type_selection,
      waves, kNumWaveTypes - 1);

  //needs space after frequency or else it's broken
  static char other_sound_frequency_input[kInputMaxLength] = {};
  ImGui::InputText("Frequency ", other_sound_frequency_input, IM_ARRAYSIZE
  (other_sound_frequency_input));
  float other_sound_frequency = std::atof(other_sound_frequency_input);


  if (ImGui::Button("Play Sound")) {
    sound.MakeSound(sound_type_selection, other_wave_type_selection,
        volume_slider, main_sound_frequency, other_sound_frequency,
        filter_type_selection, filter_frequency, operation_type_selection,
        kFilePaths[file_selection]);
  }

  ImGui::SameLine();

  if (ImGui::Button("Stop Sound")) {
    sound.StopSound();
  }

  // Derived from Cinder sample NodeAdvanced
  // This makes the calls that causes the wave itself to be drawn
  auto mMonitor = sound.GetMonitorNode();
  if(mMonitor && mMonitor->getNumConnectedInputs()) {
    Rectf scopeRect(getWindowWidth() - kX1, kY1,
        getWindowWidth() - kX2, kY2);
    drawAudioBuffer(mMonitor->getBuffer(), scopeRect, true);
  }

  ImGui::End();
}

void MyApp::keyDown(KeyEvent event) { }

}  // namespace myapp
