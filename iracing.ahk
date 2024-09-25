; Numpad as Button Box
; Version: v0.03

#Requires AutoHotkey v2.0
#SingleInstance Force           ; only one instance

SetKeyDelay 30 30

global NumpadLayer := 1             ; default "layer".
global layerKey    := "NumpadEnter" ; which key to use for layer switching.

HotKey layerKey, layerPress         ; Call layerPress from layerKey

global alwaysRun := false           ; set to 'true' to always run

runningSim() {
  if alwaysRun
  or WinActive("ahk_class SimWinClass")  ; iRacing

  ;; not tested assigning in these, but should work:
  or WinActive("AC2")                    ; Assetto Corsa Competizione

  or WinActive("ahk_class acsW")         ; AC sim running
  or WinActive("Assetto Corsa Launcher") ; Assetto Corsa Launcher
  or WinActive("Content Manager")        ; Content Manager for Assetto Corsa 
  {
    return true
  } else {
    return false
  }
}


;; TODO: ignoreUpSignals() ; ignores "up" signals, due to my weird numpad.
Numpad0 up:: 
Numpad1 up::  
Numpad2 up::
Numpad3 up::  
Numpad4 up:: 
Numpad5 up::  
Numpad6 up::
Numpad7 up::  
Numpad8 up:: 
Numpad9 up::  
NumpadAdd up::
NumpadSub up::  
NumpadMult up::
NumpadDiv up:: 
NumpadIns up:: 
NumpadEnd up::  
NumpadDown up::
NumpadPgdn up::  
NumpadLeft up:: 
NumpadClear up::  
NumpadRight up::
NumpadHome up::  
NumpadUp up:: 
NumpadPgup up:: Send "" 


;;;;;;;;;;;;;;;;;; BEGIN LAYER ONE
#HotIf (runningSim()) and (NumpadLayer == 1) 

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

  ; my numpad includes backspace
  Backspace::  Send "{Backspace}"
#HotIf  ; end Layer One

;;;;;;;;;;;;;;;;;;; BEGIN LAYER TWO
#HotIf (runningSim()) and  (NumpadLayer == 2)

  ;; send with SHIFT:
  Numpad1::    slowSend "{Shift down}", "{Numpad1}", "{Shift up}"
  Numpad2::    slowSend "{Shift down}", "{Numpad2}", "{Shift up}"
  Numpad3::    slowSend "{Shift down}", "{Numpad3}", "{Shift up}"
  Numpad4::    slowSend "{Shift down}", "{Numpad4}", "{Shift up}"
  Numpad5::    slowSend "{Shift down}", "{Numpad5}", "{Shift up}"
  Numpad6::    slowSend "{Shift down}", "{Numpad6}", "{Shift up}"
  Numpad7::    slowSend "{Shift down}", "{Numpad7}", "{Shift up}"
  Numpad8::    slowSend "{Shift down}", "{Numpad8}", "{Shift up}"
  Numpad9::    slowSend "{Shift down}", "{Numpad9}", "{Shift up}"

  ;; send with SHIFT 
  NumpadAdd::  slowSend "{Shift down}", "{NumpadAdd}", "{Shift up}"
  NumpadSub::  slowSend "{Shift down}", "{NumpadSub}", "{Shift up}"
  NumpadMult:: slowSend "{Shift down}", "{NumpadMult}", "{Shift up}"
  NumpadDiv::  slowSend "{Shift down}", "{NumpadDiv}", "{Shift up}"

  ;; these don't like SHIFT
  Numpad0::    slowSend "{Alt down}", "{Numpad0}", "{Alt up}"
  NumpadDot::  slowSend "{Alt down}", "{NumpadDot}", "{Alt up}"

  ; my numpad includes backspace
  Backspace::  slowSend "{Shift down}", "{Backspace}", "{Shift up}"
#HotIf ; end Layer Two

;;;;;;;;;;;;;;;;;;; BEGIN LAYER THREE
#HotIf (runningSim()) and (NumpadLayer == 3)

  ; send the "numlock on" version of keys plus CTRL
  Numpad1::    slowSend "{Ctrl down}", "{Numpad1}", "{Ctrl up}"
  Numpad2::    slowSend "{Ctrl down}", "{Numpad2}", "{Ctrl up}"
  Numpad3::    slowSend "{Ctrl down}", "{Numpad3}", "{Ctrl up}"
  Numpad4::    slowSend "{Ctrl down}", "{Numpad4}", "{Ctrl up}"
  Numpad5::    slowSend "{Ctrl down}", "{Numpad5}", "{Ctrl up}"
  Numpad6::    slowSend "{Ctrl down}", "{Numpad6}", "{Ctrl up}"
  Numpad7::    slowSend "{Ctrl down}", "{Numpad7}", "{Ctrl up}"
  Numpad8::    slowSend "{Ctrl down}", "{Numpad8}", "{Ctrl up}"
  Numpad9::    slowSend "{Ctrl down}", "{Numpad9}", "{Ctrl up}"

  ;; use CTRL 
  Numpad0::    slowSend "{Ctrl down}", "{Numpad0}", "{Ctrl up}" ; zero / ins 
  NumpadDot::  slowSend "{Ctrl down}", "{NumpadDot}", "{Ctrl up}"

  ; send the key plus CTRL
  NumpadAdd::  slowSend "{Ctrl down}", "{NumpadAdd}", "{Ctrl up}"
  NumpadSub::  slowSend "{Ctrl down}", "{NumpadSub}", "{Ctrl up}"
  NumpadMult:: slowSend "{Ctrl down}", "{NumpadMult}", "{Ctrl up}"
  NumpadDiv::  slowSend "{Ctrl down}", "{NumpadDiv}", "{Ctrl up}"

  ; my numpad includes backspace
  Backspace::  slowSend "{Ctrl down}", "{Backspace}", "{Ctrl up}"
#HotIf  ; end Layer Three

;;;;;;;;;;;;;;;;; FUNCTIONS:

; send keys slowly for iRacing
slowSend(modsDown, key, modsUp) {

  delay := 10

  loop 1 {
  ; some iracing mappings appear to be "slow"
  ; these repeats and delays let it work.
  ; keeping loop in case I want it later.
    Send("{Blind}" . modsDown) 
    Sleep(delay) 
  }
  
  Sleep(delay) 
  ; send the key
  Send(key) 
  Sleep(delay)

  ; release the modifiers.
  Send("{Blind}" . modsUp) 
}

; Layer Switching function
layerPress(*) {
  global layerKey         ; imports global

  ; durations for short and long holds
  shortHoldTime := 200
  longHoldTime  := 800

  ; tooltip text
  tooltiptimer:=-2400
  tooltiptext:="Numpad Layer "
  tooltiphelp:=" (Tap=1, Short Hold=2, Long Hold=3)"

  if runningSim() {
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
;  | DMG   | | MUTE  | | SORRY | |       |  ; BLANK KEYS NOT YET USED
;  | REPORT| |SPOTTER| |       | |       |
;   -------   -------   -------   -------
;   -------   -------   -------   -------
;  | ABS+  | | TC+   | | BB+   | |       |  ; BLANK KEYS NOT YET USED
;  |       | |       | |       | |       |
;   -------   -------   -------   -------
;   -------   -------   -------   -------
;  | ABS+  | | TC-   | | BB-   | | LAYER |
;  |       | |       | |       | | SELECT|
;   -------   -------   -------  | TAP=1 |
;   -----------------   -------  | HOLD=2| 
;  |                 | |       | | LONG  |  ; BLANK KEYS NOT YET USED
;  |                 | |       | | HOLD=3|
;   -----------------   -------   -------
;
