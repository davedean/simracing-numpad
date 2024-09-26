; Simracing Numpad - Config
; Version: v0.05

global NumpadLayer := 1             ; default "layer".
global alwaysRun := false           ; set to 'true' to always run

;; This is defaulted to Numpad0 already, but you can override.
;global layerKey    := "Numpad0" ; which key to use for layer switching.

;; Your key mapping overrides.
; remember to turn OFF the key before adding your override.


; LAYER ONE
HotIf("(isSimRunning()) and (NumpadLayer == 1)")
HotIf()

; LAYER TWO
HotIf("(isSimRunning()) and (NumpadLayer == 1)")
HotIf()

; LAYER THREE
HotIf("(isSimRunning()) and (NumpadLayer == 1)")
HotIf()