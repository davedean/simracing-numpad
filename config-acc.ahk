;; Default Key Assignments are tested in iRacing.

; LAYER ONE
#HotIf (isACCRunning() and (NumpadLayer == 1)) 
  ; layer 1 sends keys without modifiers

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

  NumpadAdd::  Send "{NumpadAdd}" ;  
  
  NumpadSub::  Send "{NumpadSub}"  
  NumpadMult:: Send "{NumpadMult}" 
  NumpadDiv::  Send "{NumpadDiv}"  
  
  ; NumpadEnter:: Send "{NumpadEnter}" ; used for layerKey, do not define unless using different layerKey

  ; my numpad includes backspace
  Backspace::  Send "{Backspace}"   ; 

#HotIf  ; end Layer One

; BEGIN LAYER TWO
#HotIf (isACCRunning() and (NumpadLayer == 2))
  ; layer 2 sends keys with SHIFT except where shift does not work, then sends ALT instead (0, Dot)

  Numpad1::    slowSend "Shift", "{Numpad1}"
  Numpad2::    slowSend "Shift", "{Numpad2}"
  Numpad3::    slowSend "Shift", "{Numpad3}"
  Numpad4::    slowSend "Shift", "{Numpad4}"
  Numpad5::    slowSend "Shift", "{Numpad5}"
  Numpad6::    slowSend "Shift", "{Numpad6}"
  Numpad7::    slowSend "Shift", "{Numpad7}"  
  Numpad8::    slowSend "Shift", "{Numpad8}"
  Numpad9::    slowSend "Shift", "{Numpad9}"

  NumpadAdd::  slowSend "Shift", "{NumpadAdd}"  
  NumpadSub::  slowSend "Shift", "{NumpadSub}"   
  NumpadMult:: slowSend "Shift", "{NumpadMult}"  
  NumpadDiv::  slowSend "Shift", "{NumpadDiv}"   

  ; NumpadEnter:: slowSend "Shift", "{NumpadEnter}"  ; used for layerKey, do not define unless using different layerKey

  Numpad0::    slowSend "Alt", "{Numpad0}"
  NumpadDot::  slowSend "Alt", "{NumpadDot}"

#HotIf ; end Layer Two

; BEGIN LAYER THREE
#HotIf (isACCRunning() and (NumpadLayer == 3))
  ; layer 3 sends keys with CTRL 

  Numpad1::    slowSend "Ctrl", "{Numpad1}"  
  Numpad2::    slowSend "Ctrl", "{Numpad2}"   
  Numpad3::    slowSend "Ctrl", "{Numpad3}"
  Numpad4::    slowSend "Ctrl", "{Numpad4}"   
  Numpad5::    slowSend "Ctrl", "{Numpad5}" 
  Numpad6::    slowSend "Ctrl", "{Numpad6}"
  Numpad7::    slowSend "Ctrl", "{Numpad7}"
  Numpad8::    slowSend "Ctrl", "{Numpad8}"
  Numpad9::    slowSend "Ctrl", "{Numpad9}"
 
  Numpad0::    slowSend "Ctrl", "{Numpad0}"
  NumpadDot::  slowSend "Ctrl", "{NumpadDot}"

  NumpadAdd::  slowSend "Ctrl", "{NumpadAdd}"
  NumpadSub::  slowSend "Ctrl", "{NumpadSub}"
  NumpadMult:: slowSend "Ctrl", "{NumpadMult}"
  NumpadDiv::  slowSend "Ctrl", "{NumpadDiv}"
  ; NumpadEnter:: slowSend "Ctrl", "{NumpadEnter}"  ; used for layerKey, do not define unless using different layerKey

#HotIf  ; end Layer Three
