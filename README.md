# simracing-numpad / Numpad as Button Box
An AutoHotKey (AHK) script for iRacing, for use with a numpad.

### What is this? 

In simracing I want some keys available to control things.

This is an AutoHotKey script to turn a "numpad" into a multi-layer input device. 


### What is a layer?

A layer is another "virtual" set of keys. 

So the default is "layer 1", but if you switch to "layer 2", you can assign those physical keys again to different functions.

And again, for "layer 3".

### How many keys?

Using a cheap numpad, I have 15 usable keys.

This script is set up for THREE layers. 

So 45 virtual keys.

### Changing layer

To change layer, you use the layerKey (default is Numpad0)

Tap it without holding to select "layer 1".

Hold it for a short duration to select "layer 2".

Hold it for a long duration to select "layer 3".

### How do I install this?

1. Copy the repo to a directory on your computer.
2. Install AutoHotKey version 2+
3. Tell AutoHotKey to run "Simracing Numpad.ahk"

### How do I use the script?

1. Open your sim (iRacing, ACC and AC will be auto-detected and enable the script).
2. Press keys, and they will be sent to the sim.
3. To change layer, tap or hold the layerKey (Tooltthe on-screen-display will tell you whats happening) 
2. Assign keys in your sim.
4. Edit the config.ahk if you want to change things.

### What can I configure in config.ahk?

You can override any key, to send a different key or run a function.

Examples:
- make Numpad1 send Numpad4
- make Numpad0 send "gg"
- make NumpadAdd run the "tyresToggle" macro (to change from wet to dry tyres, or vice-versa)
- make NumpadDel send an iRacing message "Lol I won"

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



### Why Not Map NumLock?

The cheap numpad I bought treats numlock weirdly. It doesn't send NumLock to the PC.
AND, for numlock supported keys, when numlock is on, it sends multiple numlock down/up surrounding the key. It's garbage.
So I can't see numlock presses or get its state, and I'm ignoring it.


### Whats an example use of this?

```
PHYSICAL LAYOUT (of the cheap numpad I bought):
  -------   -------   -------   -------
 | NUM   | |  /    | |  *    | |  -    |  ; NUM LOCK IS IGNORED
 | LOCK  | |       | |       | |       |
  -------   -------   -------   -------
  -------   -------   -------   -------
 |   7   | |   8   | |   9   | |   +   |
 |       | |       | |       | |       |
  -------   -------   -------   -------
  -------   -------   -------   -------
 |   4   | |   5   | |   6   | | Back  |
 |       | |       | |       | | Space |
  -------   -------   -------   -------
  -------   -------   -------   -------
 |   1   | |   2   | |   3   | | Enter |
 |       | |       | |       | |       |
  -------   -------   -------  |       |
  -----------------   -------  |       |
 | 0               | |   .   | |       |
 |                 | |       | |       |
  -----------------   -------   -------


MY CURRENT LAYOUT (Layer 1):
  -------   -------   -------   -------
 | NUM   | | PASS  | | THA   | | PASS  |  ; NUM LOCK is IGNORED
 | LOCK  | | LEFT  | | NKS   | | RIGHT |
  -------   -------   -------   -------
  -------   -------   -------   -------
 |  DMG  | | MUTE  | | SORRY | | TOGGLE|  
 |REPORT | |SPOTTER| |       | | TYRES |
  -------   -------   -------   -------
  -------   -------   -------   -------
 | ABS+  | | TC+   | | BB+   | |       |
 |       | |       | |       | |       |
  -------   -------   -------   -------
  -------   -------   -------   -------
 | ABS+  | | TC-   | | BB-   | |       |
 |       | |       | |       | |       |
  -------   -------   -------  |       |
  -----------------   -------  |       |
 | layerKey - 1=tap| |       | |       |
 | 2=hold, 3=l hold| |       | |       |
  -----------------   -------   -------


MY CURRENT LAYOUT (Layer 2):
  -------   -------   -------   -------
 | NUM   | | Front | | Front | | 10L   |  ; NUM LOCK is IGNORED
 | LOCK  | | Left  | | Right | | Fuel  |
  -------   -------   -------   -------
  -------   -------   -------   -------
 |       | | Rear  | | Rear  | |       |  
 |       | | Left  | | Right | |       |
  -------   -------   -------   -------
  -------   -------   -------   -------
 | Fast  | | All   | | Max   | |       |
 | Repair| | Tyres | | Fuel  | |       |
  -------   -------   -------   -------
  -------   -------   -------   -------
 | No Fst| | No    | | No    | |       |
 | Repair| | Tyres | | Fuel  | |       |
  -------   -------   -------  |       |
  -----------------   -------  |       |
 | layerKey - 1=tap| |       | |       |
 | 2=hold, 3=l hold| |       | |       |
  -----------------   -------   -------

```