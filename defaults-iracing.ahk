;; Default Key Assignments are tested in iRacing.

; LAYER ONE
#HotIf (isIracingRunning() and (NumpadLayer == 1)) 
  ; layer 1 sends keys without modifiers

                                                  ; What I have these mapped to in iRacing:
  setDefault("Numpad1", "Send", [ "{Numpad1}" ] ) ; ABS-
  setDefault("Numpad2", "Send", [ "{Numpad2}" ] ) ; TC-
  setDefault("Numpad3", "Send", [ "{Numpad3}" ] ) ; BB-
  setDefault("Numpad4", "Send", [ "{Numpad4}" ] ) ; ABS+
  setDefault("Numpad5", "Send", [ "{Numpad5}" ] ) ; TC+
  setDefault("Numpad6", "Send", [ "{Numpad6}" ] ) ; BB+
  setDefault("Numpad7", "Send", [ "{Numpad7}" ] ) ; Damage Report
  setDefault("Numpad8", "Send", [ "{Numpad8}" ] ) ; Mute Spotter
  setDefault("Numpad9", "Send", [ "{Numpad9}" ] ) ; Sorry
  setDefault("Numpad0", "Send", [ "{Numpad0}" ] ) ; Mute Voice

  setDefault("NumpadDot", "Send", [ "{NumpadDot}" ] ) ; Pit Limniter
  ; setDefault("NumpadEnter", "Send", [ "{NumpadEnter}" ] ) ; do not redefine layerKey

  setDefault("NumpadAdd", "Send", [ "{NumpadAdd}" ] )    ; 
  setDefault("NumpadSub", "Send", [ "{NumpadSub}" ] )    ; Pass Right
  setDefault("NumpadMult", "Send", [ "{NumpadMult}" ] )  ; Thanks
  setDefault("NumpadDiv", "Send", [ "{NumpadDiv}" ] )    ; Pass Left

#HotIf  ; end Layer One

; BEGIN LAYER TWO
#HotIf (isIracingRunning() and (NumpadLayer == 2))
  ; layer 2 sends keys with SHIFT except where shift does not work, then sends ALT instead (0, Dot)

  setDefault("Numpad1", "slowSend", [ "Shift", "{Numpad1}" ] ) 
  setDefault("Numpad2","slowSend", [ "Shift", "{Numpad2}" ] )
  setDefault("Numpad3","slowSend", [ "Shift", "{Numpad3}" ] )
  setDefault("Numpad4","slowSend", [ "Shift", "{Numpad4}" ] )
  setDefault("Numpad5","slowSend", [ "Shift", "{Numpad5}" ] )
  setDefault("Numpad6","slowSend", [ "Shift", "{Numpad6}" ] )
  setDefault("Numpad7","slowSend", [ "Shift", "{Numpad7}" ] )
  setDefault("Numpad8","slowSend", [ "Shift", "{Numpad8}" ] )
  setDefault("Numpad9","slowSend", [ "Shift", "{Numpad9}" ] )
  
  setDefault("NumpadAdd","slowSend", [ "Shift", "{NumpadAdd}"  ] ) 
  setDefault("NumpadSub","slowSend", [ "Shift", "{NumpadSub}"   ] ) 
  setDefault("NumpadMult","slowSend", [ "Shift", "{NumpadMult}"  ] ) 
  setDefault("NumpadDiv","slowSend", [ "Shift", "{NumpadDiv}"  ] )  

  ; setDefault("NumpadEnter","slowSend", [ "Shift", "{NumpadEnter}"  ] ) ; do not redefine unless using different layerKey

  setDefault("Numpad0","slowSend", [ "Alt", "{Numpad0}" ] )
  setDefault("NumpadDot","slowSend", [ "Alt", "{NumpadDot}" ] )

#HotIf ; end Layer Two

; BEGIN LAYER THREE
#HotIf (isiRacingRunning() and (NumpadLayer == 3))
  ; layer 3 sends keys with CTRL 

  setDefault("Numpad1", "slowSend", [ "Ctrl", "{Numpad1}" ] ) 
  setDefault("Numpad2","slowSend", [ "Ctrl", "{Numpad2}" ] )
  setDefault("Numpad3","slowSend", [ "Ctrl", "{Numpad3}" ] )
  setDefault("Numpad4","slowSend", [ "Ctrl", "{Numpad4}" ] )
  setDefault("Numpad5","slowSend", [ "Ctrl", "{Numpad5}" ] )
  setDefault("Numpad6","slowSend", [ "Ctrl", "{Numpad6}" ] )
  setDefault("Numpad7","slowSend", [ "Ctrl", "{Numpad7}" ] )
  setDefault("Numpad8","slowSend", [ "Ctrl", "{Numpad8}" ] )
  setDefault("Numpad9","slowSend", [ "Ctrl", "{Numpad9}" ] )
  
  setDefault("NumpadAdd","slowSend", [ "Ctrl", "{NumpadAdd}"  ] )    ; 
  setDefault("NumpadSub","slowSend", [ "Ctrl", "{NumpadSub}"   ] )   ; 
  setDefault("NumpadMult","slowSend", [ "Ctrl", "{NumpadMult}"  ] )   ; 
  setDefault("NumpadDiv","slowSend", [ "Ctrl", "{NumpadDiv}"  ] )  

  ; setDefault("NumpadEnter","slowSend", [ "Shift", "{NumpadEnter}"  ] ) ; do not redefine unless using different layerKey

  setDefault("Numpad0","slowSend", [ "Ctrl", "{Numpad0}" ] )
  setDefault("NumpadDot","slowSend", [ "Ctrl", "{NumpadDot}" ] )

#HotIf  ; end Layer Three

