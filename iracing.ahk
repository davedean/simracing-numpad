; Numpad as Button Box
; Version: v0.03

#Requires AutoHotkey v2.0
#SingleInstance Force            ; only one instance.
SetNumLockState('AlwaysOn')      ; so Numlock is ignored - this script only intercepts "numlock on" keys.

global alwaysRun := false        ; set to 'true' to always run

global NumpadLayer := 1             ; default "layer".
global layerKey    := "NumpadEnter" ; which key to use for layer switching.

HotKey layerKey, layerPress         ; Call layerPress from layerKey

runningSim() {
  if alwaysRun
  or WinActive("ahk_class SimWinClass")  ; iRacing
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

  ;; send "numlock off" alternatives:
  Numpad1::    Send "{NumpadEnd}"
  Numpad2::    Send "{NumpadDown}"
  Numpad3::    Send "{NumpadPgDn}"
  Numpad4::    Send "{NumpadLeft}"
  Numpad5::    Send "{NumpadClear}"
  Numpad6::    Send "{NumpadRight}"
  Numpad7::    Send "{NumpadHome}"
  Numpad8::    Send "{NumpadUp}"
  Numpad9::    Send "{NumpadPgUp}"

  Numpad0::    Send "{NumpadIns}"
  NumpadDot::  Send "{NumpadDel}"

  ;; these have no "numlock ofF" version, we the key plus SHIFT:
  NumpadAdd::  Send "+{NumpadAdd}"
  NumpadSub::  Send "+{NumpadSub}"
  NumpadMult:: Send "+{NumpadMult}"
  NumpadDiv::  Send "+{NumpadDiv}"

  ; my numpad includes backspace
  Backspace::  Send "+{Backspace}"
#HotIf ; end Layer Two

;;;;;;;;;;;;;;;;;;; BEGIN LAYER THREE
#HotIf (runningSim()) and (NumpadLayer == 3)

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

  ; my numpad includes backspace
  Backspace::  Send "^{Backspace}"
  ; end Layer Three
#HotIf

;;;;;;;;;;;;;;;;; FUNCTIONS:

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
