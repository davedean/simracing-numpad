; Numpad as Button Box
; Version: v0.02

; What is this? 
; This is an AutoHotKey script to turn a "numpad" into a multi-layer input device.

; What is a layer?
; A layer is another "virtual" set of keys. So the default is "layer 1", but if you switch to "layer 2", you can assign those physical keys again to different functions.

; Why? 
; Because in simracing I want some keys available to control things, and layers add virtual keys so there's lots.

; How many physical keys?
; Using a cheap numpad, I have 18 keys. On my keypad, NumLock is unusable, one key is "backspace" (why?) so also unusable, and I'm using Enter to change layers.
; That leaves 15 physical keys available.

; How many layers?
; This script is set up for THREE layers. 
; To change layer, you use the layerKey (default is NumpadEnter, and tooltips will tell you when you change layer)
; Tap it without holding to select "layer 1".
; Hold it for a short duration to select "layer 2".
; Hold it for a long duration to select "layer 3".
;
; Three layers, times 15 keys, gives 45 virtual keys available from the number pad.

; How do I install this?
; 1. Install AutoHotKey version 2+
; 2. Tell AutoHotKey to run this script
; 3. You can tell it launch at boot, if desired.

; How do I use the script?
; 1. Open your sim (iRacing, ACC and AC will be auto-detected and enable the script).
; 2. Press keys, and they will be sent to the sim.
; 3. To change layer, tap or hold the layerKey (Tooltips will tell you whats happening) 
; 2. Assign keys in your sim.


; How do I configure my sim?
; 0. Decide which features you want to map to which keys, on which layer.
;   Example: 
;     I want to map "ABS+" and "ABS-" to two keys, near eachother. I choose "4" for "ABS+" and "1" for "ABS-".   
;  
;    This will mean "ABS+" is above "ABS-", on my numpad, like this:
;
;     -------   -------   -------   -------
;    |   4   | |   5   | |   6   | | Back  |  
;    |  ABS+ | |       | |       | | Space | 
;     -------   -------   -------   ------- 
;     -------   -------   -------   -------
;    |   1   | |   2   | |   3   | | Enter |  
;    |  ABS- | |       | |       | |       | 
;     -------   -------   -------  |       |
;
;    It helps to think about your layout, and how you will USE it.
;
;    Because I want to use ABS+/- frequently, I'm using Layer 1 so I can access them quickly. 
;    I could also use Layer 2 or 3, but I like praciticing while tweaking setups.
;  
; 1. Open your sim
; 2. Go to your sims keyboard configuration (eg: in iRacing, you need to start a Test Drive, then hit "Configure")
; 3. For each function you want to map to a key, find the function, and map it to the key you want to use, on the layer you want to use.

#Requires AutoHotkey v2.0
#SingleInstance Force       ; only one instance.
SetNumLockState('AlwaysOn') ; so Numlock is ignored - this script only intercepts "numlock on" keys.

global NumpadLayer := 1               ; default "layer".
global layerKey := "NumpadEnter"      ; which key to use for layer switching.

;; BEGIN Sim Detection
global simActive := false    ; set to 'true' to always run

; update SimActive whenever Enter is pressed.
; NumpadEnter:: {
;   if WinActive("ahk_class SimWinClass")    ; detect iRacing
;     or WinActive("AC2")                    ; Assetto Corsa Competizione
;     or WinActive("ahk_class acsW")         ; AC sim running 
;     or WinActive("Assetto Corsa Launcher") ; Assetto Corsa Launcher 
;     or WinActive("Content Manager")        ; Content Manager for Assetto Corsa
;     {
;       simActive := true
;     } 
;     else {
;       simActive := false
;     }
; }
;; END Sim Detection

HotKey layerKey, layerPress ;; Call layerPress from layerKey


if (simActive == true) { 
  
  ;; Alternate layer switching - use dedicated keys to layer switch:
  ;Numpad0::      global NumpadLayer := 1 ; Set Layer 1 with Numpad0     (large key on left, easy to hit)
  ;NumpadEnter::  global NumpadLayer := 2 ; Set Layer 2 with NumpadEnter (large key on right, easy to hit)
  ;NumpadDot::    global NumpadLayer := 3 ; Set Layer 3 with NumpadDot   (small key by itself, harder to hit)
  ;
  ;; If you enable this method, you'll need to comment out
  ;; all other mentions of Numpad0, NumpadEnter, NumpadDot, NumpadIns and NumpadDel.
  ;; This includes the `global layerKey` line up above.


  ;;;;;;;;;;;;;;;;;; BEGIN LAYER ONE
  #HotIf (NumpadLayer == 1)

    ; send the "numlock on" version of keys.
    Numpad1::    Send "{Numpad1}" 
    Numpad2::    Send "{Numpad2}" 
    Numpad3::    Send "{Numpad3}" 
    Numpad4::    Send "{Numpad4}" 
    Numpad5::    Send "{Numpad5}" 
    Numpad6::    Send "{Numpad6}" 
    Numpad7::    Send "{Numpad7}" 
    Numpad8::    Send "{Numpad8}" 
    Numpad9::    Send "{Numpad9}" 

    Numpad0::    Send "{Numpad0}" 
    NumpadDot::  Send "{NumpadDot}"

    ; send the "default" version of keys.
    NumpadAdd::  Send "{NumpadAdd}"       
    NumpadSub::  Send "{NumpadSub}"  
    NumpadMult:: Send "{NumpadMult}"   
    NumpadDiv::  Send "{NumpadDiv}"

    ; my numpad includes backspace, so I'm including it.
    Backspace::  Send "{Backspace}"
  #HotIf

  ;;;;;;;;;;;;;;;;;;; BEGIN LAYER TWO
  #HotIf (NumpadLayer == 2)

    ;; send "numlock off" alternatives:
    Numpad1:: Send "{NumpadEnd}" 
    Numpad2:: Send "{NumpadDown}"
    Numpad3:: Send "{NumpadPgDn}"
    Numpad4:: Send "{NumpadLeft}"
    Numpad5:: Send "{NumpadClear}"
    Numpad6:: Send "{NumpadRight}"
    Numpad7:: Send "{NumpadHome}"
    Numpad8:: Send "{NumpadUp}"
    Numpad9:: Send "{NumpadPgUp}"

    Numpad0::   Send "{NumpadIns}"
    NumpadDot:: Send "{NumpadDel}"

    ;; these have no "numlock ofF" version, we the key plus SHIFT:
    NumpadAdd::  Send "+{NumpadAdd}"
    NumpadSub::  Send "+{NumpadSub}"
    NumpadMult:: Send "+{NumpadMult}"
    NumpadDiv::  Send "+{NumpadDiv}"

    ; my numpad includes backspace, so I'm including it.
    Backspace::  Send "+{Backspace}"

  #HotIf ; end Layer Two

  ;;;;;;;;;;;;;;;;;;; BEGIN LAYER THREE
  #HotIf (NumpadLayer == 3)

    ; send the "numlock on" version of keys plus CTRL
    Numpad1::    Send "^{Numpad1}" 
    Numpad2::    Send "^{Numpad2}" 
    Numpad3::    Send "^{Numpad3}" 
    Numpad4::    Send "^{Numpad4}" 
    Numpad5::    Send "^{Numpad5}" 
    Numpad6::    Send "^{Numpad6}" 
    Numpad7::    Send "^{Numpad7}" 
    Numpad8::    Send "^{Numpad8}" 
    Numpad9::    Send "^{Numpad9}" 

    Numpad0::    Send "^{Numpad0}" 
    NumpadDot::  Send "^{NumpadDot}"

    ; send the key plus CTRL
    NumpadAdd::  Send "^{NumpadAdd}"       
    NumpadSub::  Send "^{NumpadSub}"  
    NumpadMult:: Send "^{NumpadMult}"   
    NumpadDiv::  Send "^{NumpadDiv}"

    ; my numpad includes backspace, so I'm including it.
    Backspace::  Send "^{Backspace}"

    ; end Layer Three
  #HotIf 
} ; END simActive

;;;;;;;;;;;;;;;;; FUNCTIONS:

; Layer Switching function ..
layerPress(*) {
  global layerKey         ; imports global

  if WinActive("ahk_class SimWinClass")    ; detect iRacing
    or WinActive("AC2")                    ; Assetto Corsa Competizione
    or WinActive("ahk_class acsW")         ; AC sim running 
    or WinActive("Assetto Corsa Launcher") ; Assetto Corsa Launcher 
    or WinActive("Content Manager")        ; Content Manager for Assetto Corsa
    {
      simActive := true
      MsgBox "Enabled"
    } 
    else {
      simActive := false
      MsgBox "Disabled"
    }

  if simActive {

    ; durations for short and long holds 
    shortHoldTime := 200
    longHoldTime  := 800

    ; tooltip text
    tooltiptimer:=-2400
    tooltiptext:="Numpad Layer "
    tooltiphelp:=" (Tap=1, Short Hold=2, Long Hold=3)"

    ; Tap - Enable Layer One.
    global NumpadLayer := 1     ; set layer=1
    ToolTip(tooltiptext . NumpadLayer . tooltiphelp)
    SetTimer ()=>ToolTip(), tooltiptimer

    ; Short Hold, Enable Layer Two
    Sleep(shortHoldTime)

    if GetKeyState(layerKey,"P") {
        global NumpadLayer := 2  ; set layer=2
        ToolTip(tooltiptext . NumpadLayer . tooltiphelp)
        SetTimer ()=>ToolTip(), tooltiptimer
    }

    ; Long Hold, Enable Layer Three
    Sleep(longHoldTime)

    if GetKeyState(layerKey,"P") {
        global NumpadLayer := 3  ; set layer=2
        ToolTip(tooltiptext . NumpadLayer . tooltiphelp)
        SetTimer ()=>ToolTip(), tooltiptimer
    }
    
  }

  KeyWait(layerKey)  ;(Prevents repeat)

}




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; BEGIN NOTES:

; Why Not Map NumLock?
; The cheap numpad I bought treats numlock weirdly. It doesn't send NumLock to the PC.
; AND, for numlock supported keys, when numlock is on, it sends multiple numlock down/up surrounding the key. It's garbage.
; So I can't see numlock presses or get its state, and I'm ignoring it.


; PHYSICAL LAYOUT (of the cheap numpad I bought):
;   -------   -------   -------   -------
;  | NUM   | |  /    | |  *    | |  -    |  ; NUM LOCK IS IGNORED
;  | LOCK  | |       | |       | |       | 
;   -------   -------   -------   -------    
;   -------   -------   -------   -------
;  |   7   | |   8   | |   9   | |   +   |  
;  |       | |       | |       | |       | 
;   -------   -------   -------   ------- 
;   -------   -------   -------   -------
;  |   4   | |   5   | |   6   | | Back  |  
;  |       | |       | |       | | Space | 
;   -------   -------   -------   ------- 
;   -------   -------   -------   -------
;  |   1   | |   2   | |   3   | | Enter |  
;  |       | |       | |       | |       | 
;   -------   -------   -------  |       |
;   -----------------   -------  |       |
;  | 0               | |   .   | |       |  
;  |                 | |       | |       | 
;   -----------------   -------   ------- 


; MY CURRENT LAYOUT (Layer 1):
;   -------   -------   -------   -------
;  | NUM   | | PASS  | | THA   | | PASS  |  ; NUM LOCK is IGNORED
;  | LOCK  | | LEFT  | | NKS   | | RIGHT | 
;   -------   -------   -------   -------    
;   -------   -------   -------   -------
;  |       | |       | | SORRY | |       |  ; BLANK KEYS NOT YET USED
;  |       | |       | |       | |       | 
;   -------   -------   -------   ------- 
;   -------   -------   -------   -------
;  | ABS+  | | TC+   | | BB+   | |       |  
;  |       | |       | |       | |       | 
;   -------   -------   -------   ------- 
;   -------   -------   -------   -------
;  | ABS+  | | TC-   | | BB-   | | LAYER |  
;  |       | |       | |       | | SELECT| 
;   -------   -------   -------  | TAP=1 |
;   -----------------   -------  | HOLD=2|
;  |                 | |       | | LONG  |  
;  |                 | |       | | HOLD=3| 
;   -----------------   -------   ------- 
;
