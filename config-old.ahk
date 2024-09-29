; Simracing Numpad - Config
; Version: v0.05

global NumpadLayer := 1             ; default "layer".
global alwaysRun := true           ; set to 'true' to always run

;; This is defaulted to Numpad0 already, but you can override.
;global layerKey    := "Numpad0" ; which key to use for layer switching.

;; Your key mapping overrides.
; remember to turn OFF the key before adding your override.


; LAYER ONE
#HotIf (isSimRunning() and (NumpadLayer == 1))    ; #HotIf affects defining new hotkeys
HotIf("(isSimRunning() and (NumpadLayer == 1))")  ; HotIf affects modifying existing hotkeys

  ; Examples:

  ; send a different key
  ; Hotkey "Numpad4", "Off"           ; turn off the default hotkey 
  ; Numpad1::  Send("{Down}")         ; add your override

  ; call a macro instead of sending a key
  ;Hotkey "NumpadAdd", "Off"         ; turn off the default hotkey 
  ;NumpadAdd:: macro("TyresToggle") ; add your override

  ; send an iRacing chat message
  ; Hotkey "NumpadDel", "Off"                           ; turn off the default hotkey 
  ; NumpadDel:: sendIracingChatMessage("Nice Driving!") ; add your override

  ; my numpad includes backspace
  Backspace::  Send "{Backspace}"

HotIf()

; LAYER TWO
#HotIf (isSimRunning() and (NumpadLayer == 2))
HotIf("(isSimRunning() and (NumpadLayer == 2))")
  ; new keys or overrides go in here

  ; my numpad includes backspace
  Backspace::  slowSend "Shift", "{Backspace}"

HotIf()

; LAYER THREE
#HotIf (isSimRunning() and (NumpadLayer == 3))
HotIf("(isSimRunning() and (NumpadLayer == 3))")
  ; new keys or overrides go in here

  ; my numpad includes backspace
  Backspace::  slowSend "Ctrl", "{Backspace}"

HotIf()