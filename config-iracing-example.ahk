;; User-Specific Config File

; LAYER ONE
#HotIf (isIracingRunning() and (NumpadLayer == 1)) 
  ; Layer One Keys:

  ; EXAMPLES: 

  ; How to override defaults:
  ; Numpad1::    Send "{Numpad7}"     ; send a "plain" key
  ; Numpad0::    Send "{F5}"          ; send a function key

  ; if sending a key with a modifier, use "slowSend".
  ; iRacing is fussy about modifiers keys, slowSend does what iRacing expects.
  ; Numpad1::    slowSend "Shift", "{Numpad1}"   ; slowSend a key with a modifier

  ; call a macro instead of sending a key
  ; NumpadAdd:: IracingMacro("TyresToggle")  ; swaps tyres between Dry/Wet on next pit

  ; add additional keys
  ; Backspace::  Send "{Backspace}"    ; my numpad includes backspace

#HotIf  ; end Layer One

; BEGIN LAYER TWO
#HotIf (isIracingRunning() and (NumpadLayer == 2))
  ; Layer Two Keys:

#HotIf ; end Layer Two

; BEGIN LAYER THREE
#HotIf (isiRacingRunning() and (NumpadLayer == 3))
  ; Layer Three Keys:
#HotIf  ; end Layer Three

