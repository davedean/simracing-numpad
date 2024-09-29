;; Default Key Assignments are tested in iRacing.

; LAYER ONE
#HotIf (isIracingRunning() and (NumpadLayer == 1)) 
  ; layer 1 sends keys without modifiers

                                                          ; What I have these mapped to in iRacing:
  setDefault("ir",1,"Numpad1", "Send",    [ "{Numpad1}" ] )      ; ABS-
  setDefault("ir",1,"Numpad2", "Send",    [ "{Numpad2}" ] )      ; TC-
  setDefault("ir",1,"Numpad3", "Send",    [ "{Numpad3}" ] )      ; BB-
  setDefault("ir",1,"Numpad4", "Send",    [ "{Numpad4}" ] )      ; ABS+
  setDefault("ir",1,"Numpad5", "Send",    [ "{Numpad5}" ] )      ; TC+
  setDefault("ir",1,"Numpad6", "Send",    [ "{Numpad6}" ] )      ; BB+
  setDefault("ir",1,"Numpad7", "Send",    [ "{Numpad7}" ] )      ; Damage Report
  setDefault("ir",1,"Numpad8", "Send",    [ "{Numpad8}" ] )      ; Mute Spotter
  setDefault("ir",1,"Numpad9", "Send",    [ "{Numpad9}" ] )      ; Sorry
  setDefault("ir",1,"Numpad0", "Send",    [ "{Numpad0}" ] )      ; Mute Voice

  setDefault("ir",1,"NumpadDot", "Send",  [ "{NumpadDot}" ] )    ; Pit Limniter
  ; setDefault("NumpadEnter", "Send", [ "{NumpadEnter}" ] ) ; do not redefine layerKey

  setDefault("ir",1,"NumpadAdd", "Send",  [ "{NumpadAdd}" ] )    ; 
  setDefault("ir",1,"NumpadSub", "Send",  [ "{NumpadSub}" ] )    ; Pass Right
  setDefault("ir",1,"NumpadMult", "Send", [ "{NumpadMult}" ] )   ; Thanks
  setDefault("ir",1,"NumpadDiv", "Send",  [ "{NumpadDiv}" ] )    ; Pass Left

#HotIf  ; end Layer One

; BEGIN LAYER TWO
#HotIf (isIracingRunning() and (NumpadLayer == 2))
  ; layer 2 sends keys with SHIFT except where shift does not work, then sends ALT instead (0, Dot)

  setDefault("ir",2,"Numpad1", "slowSend",   [ "Shift", "{Numpad1}" ] ) 
  setDefault("ir",2,"Numpad2","slowSend",    [ "Shift", "{Numpad2}" ] )
  setDefault("ir",2,"Numpad3","slowSend",    [ "Shift", "{Numpad3}" ] )
  setDefault("ir",2,"Numpad4","slowSend",    [ "Shift", "{Numpad4}" ] )
  setDefault("ir",2,"Numpad5","slowSend",    [ "Shift", "{Numpad5}" ] )
  setDefault("ir",2,"Numpad6","slowSend",    [ "Shift", "{Numpad6}" ] )
  setDefault("ir",2,"Numpad7","slowSend",    [ "Shift", "{Numpad7}" ] )
  setDefault("ir",2,"Numpad8","slowSend",    [ "Shift", "{Numpad8}" ] )
  setDefault("ir",2,"Numpad9","slowSend",    [ "Shift", "{Numpad9}" ] )
  
  setDefault("ir",2,"NumpadAdd","slowSend",  [ "Shift", "{NumpadAdd}"  ] ) 
  setDefault("ir",2,"NumpadSub","slowSend",  [ "Shift", "{NumpadSub}"   ] ) 
  setDefault("ir",2,"NumpadMult","slowSend", [ "Shift", "{NumpadMult}"  ] ) 
  setDefault("ir",2,"NumpadDiv","slowSend",  [ "Shift", "{NumpadDiv}"  ] )  

  ; setDefault("NumpadEnter","slowSend", [ "Shift", "{NumpadEnter}"  ] ) ; do not redefine unless using different layerKey

  setDefault("ir",2,"Numpad0","slowSend",    [ "Alt", "{Numpad0}" ] )
  setDefault("ir",2,"NumpadDot","slowSend",  [ "Alt", "{NumpadDot}" ] )

#HotIf ; end Layer Two

; BEGIN LAYER THREE
#HotIf (isiRacingRunning() and (NumpadLayer == 3))

  ; layer 3 sends keys with CTRL
  setDefault("ir",3,"Numpad1", "slowSend",    [ "Ctrl", "{Numpad1}" ] ) 
  setDefault("ir",3,"Numpad2", "slowSend",    [ "Ctrl", "{Numpad2}" ] )
  setDefault("ir",3,"Numpad3", "slowSend",    [ "Ctrl", "{Numpad3}" ] )
  setDefault("ir",3,"Numpad4", "slowSend",    [ "Ctrl", "{Numpad4}" ] )
  setDefault("ir",3,"Numpad5", "slowSend",    [ "Ctrl", "{Numpad5}" ] )
  setDefault("ir",3,"Numpad6", "slowSend",    [ "Ctrl", "{Numpad6}" ] )
  setDefault("ir",3,"Numpad7", "slowSend",    [ "Ctrl", "{Numpad7}" ] )
  setDefault("ir",3,"Numpad8", "slowSend",    [ "Ctrl", "{Numpad8}" ] )
  setDefault("ir",3,"Numpad9", "slowSend",    [ "Ctrl", "{Numpad9}" ] )
  
  setDefault("ir",3,"NumpadAdd", "slowSend",  [ "Ctrl", "{NumpadAdd}"  ] )    ; 
  setDefault("ir",3,"NumpadSub", "slowSend",  [ "Ctrl", "{NumpadSub}"   ] )   ; 
  setDefault("ir",3,"NumpadMult","slowSend",  [ "Ctrl", "{NumpadMult}"  ] )   ; 
  setDefault("ir",3,"NumpadDiv", "slowSend",  [ "Ctrl", "{NumpadDiv}"  ] )  

  ; setDefault("NumpadEnter","slowSend", [ "Shift", "{NumpadEnter}"  ] ) ; do not redefine unless using different layerKey

  setDefault("ir",3,"Numpad0","slowSend",    [ "Ctrl", "{Numpad0}" ] )
  setDefault("ir",3,"NumpadDot","slowSend",  [ "Ctrl", "{NumpadDot}" ] )

#HotIf  ; end Layer Three

