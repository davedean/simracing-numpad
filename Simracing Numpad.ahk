; Numpad as Button Box
; Version: v0.05

#Requires AutoHotkey v2.0
#SingleInstance Force           ; only one instance

global NumpadLayer := 1             ; default "layer".
global layerKey    := "NumpadEnter" ; which key to use for layer switching.

global alwaysRun := false           ; set to 'true' to always run

#Include functions.ahk              ; required! loads the rest of the script.

;;;;;;;;;;;;;;;;;; BEGIN LAYER ONE
#HotIf (isSimRunning()) and (NumpadLayer == 1) 

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
  ; NumpadAdd::  Send "{NumpadAdd}"
  NumpadAdd:: macro("TyresToggle")  

  NumpadSub::  Send "{NumpadSub}"
  NumpadMult:: Send "{NumpadMult}"
  NumpadDiv::  Send "{NumpadDiv}"

  ; my numpad includes backspace
  ; Backspace::  Send "{Backspace}"

#HotIf  ; end Layer One

;;;;;;;;;;;;;;;;;;; BEGIN LAYER TWO
#HotIf (isSimRunning()) and  (NumpadLayer == 2)

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
#HotIf (isSimRunning()) and (NumpadLayer == 3)

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
