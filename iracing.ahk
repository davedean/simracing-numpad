; Numpad as Button Box

; ideas: 
; spotter toggle.
; car dash toggle

#Requires AutoHotkey v2.0

;#HotIf WinActive("ahk_class SimWinClass") ; detect iRacing

global NumpadMode := 1

; Mode Switch Tap - Mode One, Press - Mode Two
NumpadDot::{
    global NumpadMode := 1
    ToolTip("Numpad Mode " . NumpadMode . " - Hold for Mode Two")
    SetTimer ()=>ToolTip(), -1200
 
    Sleep(200)
 
    if GetKeyState("NumpadDot","P") {
        global NumpadMode := 2
        ToolTip ("Numpad Mode " . NumpadMode . " - Tap for Mode One")
        SetTimer ()=>ToolTip(), -1200
    }

; Mode Three, Hold Longer  .. not implemented but the idea is ok.
;    Sleep(200)
 
;    if GetKeyState("NumpadDot","P") {
;        global NumpadMode := 2
;        ToolTip ("Numpad Three")
;        SetTimer ()=>ToolTip(), -1200
;    }

    KeyWait("NumpadDot")  ;(Prevents repeat)
}

;;;;;;;;;;;;;;;;;; BEGIN LAYER ONE
#HotIf (NumpadMode == 1)

  Numpad4::   Send "t"       ; abs+ "4" 
  Numpad1::   Send "g"       ; abs- "1"
  Numpad6::   Send "="       ; bb+ "6"
  Numpad3::   Send "-"       ; bb- "3"
  Numpad5::   Send "y"       ; tc+ "5" 
  Numpad2::   Send "h"       ; tc- "2" 

  ; NOT SET YET
  ; Numpad0::     Send "0"       ;  
  ; Numpad7::     Send "7"       ;  
  ; Numpad8::     Send "8"       ; 

  Numpad9::    Send "5"     ; sorry "9"

  NumpadEnter:: Send ""     ;  
  NumpadAdd::  Send ""      ; 

  NumpadDiv::  Send "3"     ; pass left "/" 
  NumpadSub::  Send "4"     ; pass right "-"
  NumpadMult:: Send "6"     ; thanks "*" 

#HotIf

;;;;;;;;;;;;;;;;;;; BEGIN LAYER TWO
#HotIf (NumpadMode == 2)

  NumpadEnd::   Send "u"   ; FFB - , TODO: needs to use a macro, no direct assignment in iRacing
  NumpadLeft::  Send "j"   ; FFB + , TODO: needs to use a macro, no direct assignment in iRacing

  ; NumpadIns::   Send ""   ;  
  ; NumpadDown::  Send ""   ; 
  ; NumpadPgDn::  Send ""   ;
  ; NumpadClear:: Send ""   ;
  ; NumpadRight:: Send ""   ;
  ; NumpadHome::  Send ""   ;
  ; NumpadUp::    Send ""   ;
  ; NumpadDel::   Send ""   ; 


  ; NumpadDiv::   Send "/"       ;  
  ; NumpadMult::  Send "*"       ;  
  ; NumpadAdd::   Send "+"       ;  
  ; NumpadSub::   Send "-"       ;  
  ; NumpadEnter:: Send "EnterOFF"   ;  

#HotIf


#HotIf ; end iRacing detection

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; BEGIN NOTES:

;; Numpad0 / NumpadIns	0 / Ins
;; Numpad1 / NumpadEnd	1 / End
;; Numpad2 / NumpadDown	2 / ↓
;; Numpad3 / NumpadPgDn	3 / PgDn
;; Numpad4 / NumpadLeft	4 / ←
;; Numpad5 / NumpadClear	5 / typically does nothing
;; Numpad6 / NumpadRight	6 / →
;; Numpad7 / NumpadHome	7 / Home
;; Numpad8 / NumpadUp	8 / ↑
;; Numpad9 / NumpadPgUp	9 / PgUp
;; NumpadDot / NumpadDel	. / Del
;; NumLock	NumLock (number lock key). While Ctrl is held down, NumLock produces the key code of Pause, so use ^Pause in hotkeys instead of ^NumLock.
;; NumpadDiv	/ (division)
;; NumpadMult	* (multiplication)
;; NumpadAdd	+ (addition)
;; NumpadSub	- (subtraction)
;; NumpadEnter	Enter


; Mode Switching:
; The cheap numpad I bought treats numlock weirdly.
; for numlock supported keys, it presses numlock 
; before/after the key when numlock is on. IE: 
; the state of numlock is untrackable, and can't be used to switch "modes".
; I use "numlockDot" to switch modes instead.

; Key Mapping:
; I've tried to map to the default iRacing buttons.
; 
; For functions which don't have a default iRacing button,
; I'm using the keyboard rows:
; t y u i o ( increment )
; g h j k l ( decrement ) 
; 
; I'll run out of keys soon and need to think of something else.
