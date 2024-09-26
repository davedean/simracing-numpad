;; Default Key Assignments are tested in iRacing.

global NumpadLayer := 1             ; default "layer".
global alwaysRun := true           ; set to 'true' to always run


; which key to use for layer switching 
global layerKey    := "NumpadEnter" 

HotKey layerKey, layerPress         ; Call layerPress from layerKey - required!


; LAYER ONE
#HotIf (isSimRunning() and (NumpadLayer == 1)) 

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
  
  ; NumpadEnter:: Send "{NumpadEnter}"

  HotIf()
#HotIf  ; end Layer One

; BEGIN LAYER TWO
#HotIf (isSimRunning() and (NumpadLayer == 2))

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
  NumpadEnter:: slowSend "Shift", "{NumpadEnter}"

  ;; these don't like SHIFT
  ; Numpad0::    slowSend "Alt", "{Numpad0}" ; used for layerKey, do not define here
  NumpadDot::  slowSend "Alt", "{NumpadDot}"

#HotIf ; end Layer Two

; BEGIN LAYER THREE
#HotIf (isSimRunning() and (NumpadLayer == 3))

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
  ;Numpad0::    slowSend "Ctrl", "{Numpad0}" ; used for layerKey, do not define here
  NumpadDot::  slowSend "Ctrl", "{NumpadDot}"

  ; send the key plus CTRL
  NumpadAdd::  slowSend "Ctrl", "{NumpadAdd}"
  NumpadSub::  slowSend "Ctrl", "{NumpadSub}"
  NumpadMult:: slowSend "Ctrl", "{NumpadMult}"
  NumpadDiv::  slowSend "Ctrl", "{NumpadDiv}"
  NumpadEnter:: slowSend "Ctrl", "{NumpadEnter}" 

#HotIf  ; end Layer Three

