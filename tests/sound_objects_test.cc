// Copyright (c) 2020 CS126SP20. All rights reserved.

#define CATCH_CONFIG_MAIN

#include <catch2/catch.hpp>
#include <cinder/Rand.h>

#include "sound_wave.h"
#include "sine.h"
#include "traingle.h"
#include "file_player.h"

// SoundWaves
myapp::SoundWave sine = myapp::Sine(440);
myapp::SoundWave triangle = myapp::Triangle(440);

// FilePlayers
myapp::FilePlayer ofortuna = myapp::FilePlayer("ofortuna.wav");
myapp::FilePlayer ducktales = myapp::FilePlayer("ducktales.wav");

TEST_CASE("Setting volume works properly", "[volume]") {
  SECTION("Possible through GUI") {
    sine.SetVolume(1.0);
    REQUIRE(sine.GetVolume() == 1.0);

    triangle.SetVolume(0.25);
    REQUIRE(triangle.GetVolume() == 0.25);

    ofortuna.SetVolume(0.12);
    REQUIRE(ofortuna.GetVolume() == 0.12f);

    ducktales.SetVolume(0.998);
    REQUIRE(ducktales.GetVolume() == 0.998f);
  }

  SECTION("Impossible through GUI") {
    sine.SetVolume(-1.0);
    REQUIRE(sine.GetVolume() == -1.0);

    sine.SetVolume(-3);
    REQUIRE(sine.GetVolume() == -3);

    triangle.SetVolume(500.0);
    REQUIRE(triangle.GetVolume() == 500.0);

    triangle.SetVolume(2);
    REQUIRE(triangle.GetVolume() == 2);

    ofortuna.SetVolume(-0.1);
    REQUIRE(ofortuna.GetVolume() == -0.1f);

    ducktales.SetVolume(8);
    REQUIRE(ducktales.GetVolume() == 8);
  }
}

TEST_CASE("AddFilter works properly", "[filter]") {
  SECTION("No filter") {
    sine.AddFilter(0, 0);
    triangle.AddFilter(0, 440);
    ofortuna.AddFilter(0, -1);
    ducktales.AddFilter(0, 100000);

    REQUIRE(sine.GetFilterTypeSelection() == 0);
    REQUIRE(triangle.GetFilterTypeSelection() == 0);
    REQUIRE(ofortuna.GetFilterTypeSelection() == 0);
    REQUIRE(ducktales.GetFilterTypeSelection() == 0);

    REQUIRE(sine.GetFilterFrequency() == 0);
    // frequency is useless and shouldn't be saved
    REQUIRE(triangle.GetFilterFrequency() == 0);
    REQUIRE(ofortuna.GetFilterFrequency() == 0);
    REQUIRE(ducktales.GetFilterFrequency() == 0);
  }

  SECTION("Low Pass filter") {
    sine.AddFilter(1, 3);
    triangle.AddFilter(1, 440);
    ofortuna.AddFilter(1, -200);
    ducktales.AddFilter(1, 100000);

    REQUIRE(sine.GetFilterTypeSelection() == 1);
    REQUIRE(triangle.GetFilterTypeSelection() == 1);
    REQUIRE(ofortuna.GetFilterTypeSelection() == 1);
    REQUIRE(ducktales.GetFilterTypeSelection() == 1);

    REQUIRE(sine.GetFilterFrequency() == 3);
    REQUIRE(triangle.GetFilterFrequency() == 440);
    REQUIRE(ofortuna.GetFilterFrequency() == -200);
    REQUIRE(ducktales.GetFilterFrequency() == 100000);
  }

  SECTION("High Pass filter") {
    sine.AddFilter(2, 440);
    triangle.AddFilter(2, 10000);
    ofortuna.AddFilter(2, 1);
    ducktales.AddFilter(2, -30);

    REQUIRE(sine.GetFilterTypeSelection() == 2);
    REQUIRE(triangle.GetFilterTypeSelection() == 2);
    REQUIRE(ofortuna.GetFilterTypeSelection() == 2);
    REQUIRE(ducktales.GetFilterTypeSelection() == 2);

    REQUIRE(sine.GetFilterFrequency() == 440);
    REQUIRE(triangle.GetFilterFrequency() == 10000);
    REQUIRE(ofortuna.GetFilterFrequency() == 1);
    REQUIRE(ducktales.GetFilterFrequency() == -30);
  }

  SECTION("Band Pass filter") {
    sine.AddFilter(3, 600);
    triangle.AddFilter(3, 550);
    ofortuna.AddFilter(3, 444);
    ducktales.AddFilter(3, 0);

    REQUIRE(sine.GetFilterTypeSelection() == 3);
    REQUIRE(triangle.GetFilterTypeSelection() == 3);
    REQUIRE(ofortuna.GetFilterTypeSelection() == 3);
    REQUIRE(ducktales.GetFilterTypeSelection() == 3);

    REQUIRE(sine.GetFilterFrequency() == 600);
    REQUIRE(triangle.GetFilterFrequency() == 550);
    REQUIRE(ofortuna.GetFilterFrequency() == 444);
    REQUIRE(ducktales.GetFilterFrequency() == 0);
  }
}

// note: wave math and playing sounds is not testable, because those are handled
// by Cinder functions and objects which are not provided with necessary
// variables/functions in order to be testable

/*
 * SoundWave Exclusive
 */

TEST_CASE("SetFrequency works properly", "[SoundWave][set_frequency]") {
  SECTION("Possible through GUI") {
    sine.SetFrequency(10);
    REQUIRE(sine.GetFrequency() == 10);

    triangle.SetFrequency(50000);
    REQUIRE(triangle.GetFrequency() == 50000);

    triangle.SetFrequency(440);
    REQUIRE(triangle.GetFrequency() == 440);
  }

  SECTION("Impossible through GUI") {
    // GUI handles negative inputs and makes them positive
    sine.SetFrequency(-100);
    REQUIRE(sine.GetFrequency() == -100);

    // I set a character limit and this exceeds it
    sine.SetFrequency(400000000000);
    REQUIRE(sine.GetFrequency() == 400000000000);

    triangle.SetFrequency(-300);
    REQUIRE(triangle.GetFrequency() == -300);

    triangle.SetFrequency(20000000000000);
    REQUIRE(triangle.GetFrequency() == 20000000000000);
  }
}

TEST_CASE("SoundWave Equals operation works properly", "[SoundWave][equals]") {
  myapp::SoundWave sine_one = myapp::Sine(440);
  myapp::SoundWave triangle_one = myapp::Triangle(440);

  sine_one.SetFrequency(500);
  sine_one.SetVolume(0.5);
  sine_one.AddFilter(1, 440);

  triangle_one.SetFrequency(600);
  triangle_one.SetVolume(0.75);
  triangle_one.AddFilter(2, 30);

  myapp::SoundWave sine_two = sine_one;
  myapp::SoundWave triangle_two = triangle_one;

  SECTION("Testing Sine") {
    REQUIRE(sine_one.GetFrequency() == sine_two.GetFrequency());
    REQUIRE(sine_one.GetVolume() == sine_two.GetVolume());
    REQUIRE(sine_one.GetNodeRef() == sine_two.GetNodeRef());
    REQUIRE(sine_one.GetFilterTypeSelection() == sine_two
    .GetFilterTypeSelection());
    REQUIRE(sine_one.GetFilterFrequency() == sine_two.GetFilterFrequency());
    REQUIRE(sine_one.GetMonitorNode() == sine_two.GetMonitorNode());
  }

  SECTION("Testing Triangle") {
    REQUIRE(triangle_one.GetFrequency() == triangle_two.GetFrequency());
    REQUIRE(triangle_one.GetVolume() == triangle_two.GetVolume());
    REQUIRE(triangle_one.GetNodeRef() == triangle_two.GetNodeRef());
    REQUIRE(triangle_one.GetFilterTypeSelection() ==
    triangle_two.GetFilterTypeSelection());
    REQUIRE(triangle_one.GetFilterFrequency() ==
    triangle_two.GetFilterFrequency());
    REQUIRE(triangle_one.GetMonitorNode() == triangle_two.GetMonitorNode());
  }
}

/*
 * FilePlayer Exclusive
 */
TEST_CASE("FilePlayer Constructor Handles Invalid file path",
    "[FilePlayer][constructor]") {
  myapp::FilePlayer invalid = myapp::FilePlayer("invalid.wav");

  invalid.SetVolume(0.1);
  // basically shows that it runs without errors and can handle basic functions
  REQUIRE(invalid.GetVolume() == 0.1f);
}