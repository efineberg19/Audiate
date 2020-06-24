# Development

- **4/18/20** Figured out how to play audio four different ways using the
Cinder audio library
    - Figured out how to apply several of the Cinder audio filters on this audio 
    (i.e. Lowpass filter)
    - Types of sounds I can play include .wav files and synthesized sound waves

- **4/19/20** Figured new ways to modify .wav file audio and attempted to use 
external library for effects
    - Can successfully multiply .wav file audio with sound waves, like triangle 
    waves (to be honest this sounds demonic)
    - Attempted to use SoLoud audio library with this project and encountered a 
    ton of issues linking/building it. I would really like to use this library,
    because it has some really cool features, but I have sunk hours into this 
    and if I can't get it to work after going to office hours, I need to give up.

- **4/20/20** I spent 4 hours at office hours and 3 separate TAs couldn't help
me get SoLoud working. This has become a huge waste of time and I'm not sure 
what to do about linking an external library. I will start fresh tomorrow and 
try something other than SoLoud.

- **4/21/20** I decided to try to pursue two other potential libraries, ImGui
and PortAudio.
    - PortAudio was having issues linking and I was not able to get it to work.
    - I figured out how to link ImGui and I implemented some basic UI function 
    (button, text input, and slider). It took forever to link an external 
    library but I was finally able to do it.
    - Made it so audio will play when GUI opens. I removed this feature earlier 
    for debugging purposes.
    
- **4/26/20** After more trial and error, I have decided to slightly change 
direction with this project.
    - Given the Cinder and CMAKE/CLion set up, it is incredibly difficult/almost
    impossible to find an audio library besides Cinder that is compatible. So, I
    just have to use Cinder. There is very little documentation/info about how 
    to use Cinder's audio tools and if I were to try to implement effects like
    changing pitch/speed of samples, it would involve learning graduate/PhD 
    level DSP algorithms. So, I'm going to use what I have and make an 
    oscilloscope. This will allow you to do math with waves and have a visualizer
    and nice GUI to control it.
    - I started this new direction by making a sound wave class that has children
    which are different types of sound waves. They all share specific functions, 
    but just need to be initialized differently, hence the need for children to
    have their own special constructors.
    
- **4/28/20** I have made progress on the UI and the change of direction for my
project.
    - My object decomposition is coming along for my different types of sound 
    waves.
    - I found a sample Cinder project that will help me figure out how to draw
    what the waves look like. I linked code from it and was able to get a 
    drawing to show, but it's not fully working yet. My wave illustration is 
    different from this other example, because I'm using different types of 
    waves and filters.
    - The UI itself has adequate controls and can now make sounds based upon the
    user's specification.
    
- **4/29/20** Cleaned up my code base and improved what wave illustration looks
like.
    - I organized my classes and commented some functions. I also added constants 
    and changed the namespace to use cinder, as these seem to be good practices.
    - I changed the color of the wave illustration and the box around it. I also
    moved it to a better place in the UI.
    
- **5/2/20** Added wave math and file playing functionality.
    - Added SoundNode class that has two branches of descendents, SoundWaves and
    FilePlayers. I migrated key methods from SoundWave to FilePlayer and kept
    necessary methods in SoundWave that couldn't be moved to SoundNode, because
    FilePlayers couldn't support them. Moving the code and setting up this 
    was very smooth, because my code was modular and well organized.
    - I made it so SoundNodes would now support wave math that could be 
    controlled by the GUI. This was also pretty easy to get set up, because my
    modular code could support the addition of new features.
    - I did come into some issues after I tried to add a new namespace and it 
    somehow messed everything up for a while. I was able to fix everything though.
    - I added a bunch of new songs for the FilePlayer.
    
- **5/3/20** I added the updated Proposal.md and ReadME.md.
    - I changed my original proposal to fit my new project and I put it in the
    root directory of this project.
    - I wrote my initial draft of my ReadME.md file which details to users how 
    to set up/build my project and use it.
    - I also organized and commented some existing code.
    
- **5/5/20** Added documentation for several functions and wrote unit test.
    - Wrote unit tests for sound objects which are objects that are descendents
    of SoundNode. This is the testable part of my code, as besides this, 
    SoundEngine simply controls sound objects and uses their functions.
    - I tidied and commented a lot of my code.

- **5/6/20** Finalized project and turned it in!
    - I did small tasks to make sure everything was good and in order.
    - I submitted my final product!
---