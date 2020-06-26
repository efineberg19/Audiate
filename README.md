# CS 126 Final Project

[![license](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![docs](https://img.shields.io/badge/docs-yes-brightgreen)](docs/README.md)

![Image](assets/final_project_pic.png?raw=true)

This project uses Cinder to manipulate audio and demonstrate basic DSP concepts.

Read [this document](https://cliutils.gitlab.io/modern-cmake/chapters/basics/structure.html) to understand the project
layout.

**Author**: Beth Fineberg - [`erf3@illinois.edu`](mailto:example@illinois.edu)

## Set Up
<h3>Installation</h3>
Install Cinder and fork this repository. Pull your fork into a new projects 
folder in your Cinder folder.

Next, fork and pull a copy of the Cinder-ImGui Cinder Block into your folder for 
Cinder Blocks. Find the repository [here](https://github.com/simongeilfus/Cinder-ImGui).

For more information on installation and set up, click 
[here](https://courses.grainger.illinois.edu/cs126/sp2020/assignments/snake/).

<h3>Building the Project</h3>
Note: This project has not been tested on Windows or with IDEs other than CLion.

If you're using CLion on Mac, open the project and try to run cinder-myapp. It 
will probably not work, so go to Edit Configurations and for your Executable, select: 
```my-projects/Audiate/cmake-build-debug/Debug/cinder-myapp/Contents/MacOS/cinder-myapp ```

The project should now be all set to run.

## Using the App
<h3>Main Sound Controls</h3>
These controls affect the main sound played by the App. This can be a Sine Wave,
Triangle Wave, or a File Player. Each of these sounds are manipulated by the 
other controls in the app, and the resulting sound wave is illustrated below the 
GUI controls.

File Source for the FilePlayer can be selected from the second menu. This app
comes pre-installed with a selection of songs for you to play with. More can be
added by putting wav files in the assets folder, and in ```my_app.cc```, 1) increasing
the value of ```kNumFileChoices```, 2) adding the file path to ```kFilePaths```, and 3) 
adding the name of the song to ```songs```.

If Sine Wave or Triangle Wave are chosen, frequency allows you to select which 
frequency/pitch they will be played at.

Volume will allow you to make whatever sounds are being played quieter or louder.

<h3>Filter Controls</h3>
Filter controls allows you to apply a filter to the sound you are playing. The
three options for filters are Low Pass, High Pass, and Band Pass. Please see 
these links to understand each different type of filter:
[Low Pass](https://en.wikipedia.org/wiki/Low-pass_filter),
[High Pass](https://en.wikipedia.org/wiki/High-pass_filter),
[Band Pass](https://en.wikipedia.org/wiki/Band-pass_filter).

Selecting frequency allows you to filter out specific frequencies using the
filter that you've selected. Play around with these and see what you like the
sound of!

<h3>Math</h3>
This app allows you to carry out simple wave math operations. You can select the
desired operation from the Operation Type dropdown menu. Next you can decide 
what type of wave you'll be applying this operation to with the main sound and 
at what frequency this wave should be. Keep in mind, division should look kind
of all over the place, because of division by zero.

<h2>Fun Things to Try with the App</h2>
<h3>Beating</h3>
If you add two similar frequencies (generally within >10 Hz) they will cause a
cool phenomenon called beating. Beating is when you can hear the difference 
between the two sound waves. It sounds like pulsing. When using this function 
with the app, use a high pass filter that is set to the lower multiple of 10 that is closest to the 
two frequencies that you're playing. This will ensure that no crackling sounds
occur. For example, if you're playing 406 Hz and 410 Hz, set your High Pass 
Filter to 400 Hz.

For more information about beating, read more here: 
[Beating](https://en.wikipedia.org/wiki/Beat_(acoustics)).

<h3>Making Songs Sound Demonic</h3>
If you multiply a song from the file player by a Sine or Triangle Wave, they end
up sounding very crazy. It's fun to play around with this and see what you can
make. I recommend playing O Fortuna with a Triangle Wave set at 440 Hz.

If you're reading this far, thank you and I hope you have a great summer!
