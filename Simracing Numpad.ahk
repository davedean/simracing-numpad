; Simracing Numpad - Main File
; Version: v0.05

#Requires AutoHotkey v2.0
#SingleInstance Force           ; only one instance

; This file Includes the others.
        
#Include functions.ahk     ; functions containing logic

; global settings:
global NumpadLayer := 1             ; default "layer".
global alwaysRun := true           ; set to 'true' to always run

; which key to use for layer switching 
global layerKey    := "NumpadEnter" 

HotKey layerKey, layerPress         ; Call layerPress from layerKey - required!

; config files:
#Include *i config-iracing.ahk      ; iracing config, *i makes it optional.
#Include defaults-iracing.ahk

; TODO:
;#Include config-acc.ahk            ; ACC config
;#Include config-assettocorsa.ahk   ; AC/CM config
