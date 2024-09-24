# simracing-numpad / Numpad as Button Box
An AutoHotKey (AHK) script for iRacing, for use with a numpad.

### What is this? 

This is an AutoHotKey script to turn a "numpad" into a multi-layer input device.

### What is a layer?

A layer is another "virtual" set of keys. So the default is "layer 1", but if you switch to "layer 2", you can assign those physical keys again to different functions.

### Why? 

Because in simracing I want some keys available to control things, and layers add virtual keys so there's lots.

### How many physical keys?

Using a cheap numpad, I have 18 keys. On my keypad, NumLock is unusable, one key is "backspace" (why?) so also unusable, and I'm using Enter to change layers.

That leaves 15 physical keys available.

### How many layers?

This script is set up for THREE layers. 

To change layer, you use the layerKey (default is NumpadEnter, and tooltips will tell you when you change layer)

Tap it without holding to select "layer 1".

Hold it for a short duration to select "layer 2".

Hold it for a long duration to select "layer 3".

Three layers, times 15 keys, gives 45 virtual keys available from the number pad.

### How do I install this?

1. Install AutoHotKey version 2+
2. Tell AutoHotKey to run this script
3. You can tell it launch at boot, if desired.

### How do I use the script?

1. Open your sim (iRacing, ACC and AC will be auto-detected and enable the script).
2. Press keys, and they will be sent to the sim.
3. To change layer, tap or hold the layerKey (Tooltips will tell you whats happening) 
2. Assign keys in your sim.


### How do I configure my sim?

0. Decide which features you want to map to which keys, on which layer.
  Example: 
    I want to map "ABS+" and "ABS-" to two keys, near eachother. I choose "4" for "ABS+" and "1" for "ABS-".   
 
   This will mean "ABS+" is above "ABS-", on my numpad, like this:

```text
    -------   -------   -------   -------
   |   4   | |   5   | |   6   | | Back  |  
   |  ABS+ | |       | |       | | Space | 
    -------   -------   -------   ------- 
    -------   -------   -------   -------
   |   1   | |   2   | |   3   | | Enter |  
   |  ABS- | |       | |       | |       | 
    -------   -------   -------  |       |
```
   It helps to think about your layout, and how you will USE it.

   Because I want to use ABS+/- frequently, I'm using Layer 1 so I can access them quickly. 
   I could also use Layer 2 or 3, but I like praciticing while tweaking setups.
 
1. Open your sim
2. Go to your sims keyboard configuration (eg: in iRacing, you need to start a Test Drive, then hit "Configure")
3. For each function you want to map to a key, find the function, and map it to the key you want to use, on the layer you want to use.
