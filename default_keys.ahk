


;; ignores "up" signals, due to my numpad sending these.
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


;; Default Key Assignments, tested in iRacing:

; LAYER ONE
#HotIf (isSimRunning()) and (NumpadLayer == 1) 

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

  HotIf()
#HotIf  ; end Layer One

; BEGIN LAYER TWO
#HotIf (isSimRunning()) and  (NumpadLayer == 2)

  ;; send with SHIFT:
  Numpad1::    slowSend "Shift", "{Numpad1}"
  Numpad2::    slowSend "Shift", "{Numpad2}"
  Numpad3::    slowSend "Shift", "{Numpad3}"
  Numpad4::    slowSend "Shift", "{Numpad4}"
  Numpad5::    slowSend "Shift", "{Numpad5}"
  Numpad6::    slowSend "Shift", "{Numpad6}"
  Numpad7::    slowSend "Shift", "{Numpad7}"
  Numpad8::    slowSend "Shift", "{Numpad8}"
  Numpad9::    slowSend "Shift", "{Numpad9}"

  ;; send with SHIFT 
  NumpadAdd::  slowSend "Shift", "{NumpadAdd}"
  NumpadSub::  slowSend "Shift", "{NumpadSub}"
  NumpadMult:: slowSend "Shift", "{NumpadMult}"
  NumpadDiv::  slowSend "Shift", "{NumpadDiv}"

  ;; these don't like SHIFT
  Numpad0::    slowSend "Alt", "{Numpad0}"
  NumpadDot::  slowSend "Alt", "{NumpadDot}"

  ; my numpad includes backspace
  Backspace::  slowSend "Shift", "{Backspace}"
#HotIf ; end Layer Two

; BEGIN LAYER THREE
#HotIf (isSimRunning()) and (NumpadLayer == 3)

  ; send the "numlock on" version of keys plus CTRL
  Numpad1::    slowSend "Ctrl", "{Numpad1}"
  Numpad2::    slowSend "Ctrl", "{Numpad2}"
  Numpad3::    slowSend "Ctrl", "{Numpad3}"
  Numpad4::    slowSend "Ctrl", "{Numpad4}"
  Numpad5::    slowSend "Ctrl", "{Numpad5}"
  Numpad6::    slowSend "Ctrl", "{Numpad6}"
  Numpad7::    slowSend "Ctrl", "{Numpad7}"
  Numpad8::    slowSend "Ctrl", "{Numpad8}"
  Numpad9::    slowSend "Ctrl", "{Numpad9}"

  ;; use CTRL 
  Numpad0::    slowSend "Ctrl", "{Numpad0}"
  NumpadDot::  slowSend "Ctrl", "{NumpadDot}"

  ; send the key plus CTRL
  NumpadAdd::  slowSend "Ctrl", "{NumpadAdd}"
  NumpadSub::  slowSend "Ctrl", "{NumpadSub}"
  NumpadMult:: slowSend "Ctrl", "{NumpadMult}"
  NumpadDiv::  slowSend "Ctrl", "{NumpadDiv}"

  ; my numpad includes backspace
  Backspace::  slowSend "Ctrl", "{Backspace}"

#HotIf  ; end Layer Three

