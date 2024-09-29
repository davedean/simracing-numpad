#Requires AutoHotkey v2.0

#Include functions.ahk
#Include default_config.ahk
#Include *i user_config.ahk  ; The *i makes it optional

; Merge configurations
MergedConfig := MergeConfigs(DefaultConfig, UserConfig)

; Function to merge configs
MergeConfigs(defaultConfig, userConfig) {
    mergedConfig := defaultConfig.Clone()
    for layerNum, layerMap in userConfig {
        if !mergedConfig.Has(layerNum) {
            mergedConfig[layerNum] := Map()
        }
        for key, value in layerMap {
            mergedConfig[layerNum][key] := value
        }
    }
    return mergedConfig
}

; Generate hotkeys for each layer
#HotIf (isACCRunning() and (NumpadLayer == 1))
  GenerateHotkeys(MergedConfig["Layer1"])
#HotIf

#HotIf (isACCRunning() and (NumpadLayer == 2))
  GenerateHotkeys(MergedConfig["Layer2"])
#HotIf

#HotIf (isACCRunning() and (NumpadLayer == 3))
  GenerateHotkeys(MergedConfig["Layer3"])
#HotIf

; ; Function to generate hotkeys
; GenerateHotkeys(config) {
;     for key, actionInfo in config {
;         if (actionInfo[1] == "Send") {
;             Hotkey key, (*) => Send(actionInfo[2])
;         } else if (actionInfo[1] == "Function") {
;             funcName := actionInfo[2]
;             params := actionInfo.Length > 2 ? Array.Prototype.Slice.Call(actionInfo, 3) : []
;             Hotkey key, (*) => ExecuteAction(funcName, params)
;         }
;     }
; }

; ; Helper function to execute actions
; ExecuteAction(funcName, params) {
;     %funcName%(params*)
; }


; ; Function to generate hotkeys
; GenerateHotkeys(config) {
;     for key, action in config {
;         if (SubStr(action, 1, 1) == "{" and SubStr(action, -1) == "}") {
;             ; Simple key mapping
;             Hotkey key, (*)=> Send(action)
;         } else {
;             ; Function call
;             Hotkey key, (*) => ExecuteAction(action)
;         }
;     }
; }

; ; Helper function to execute actions
; ExecuteAction(action) {
;     if (InStr(action, "(") && InStr(action, ")")) {
;         ; It's a function call with parameters
;         funcName := SubStr(action, 1, InStr(action, "(") - 1)
;         params := StrSplit(SubStr(action, InStr(action, "(") + 1, -1), ",", " ")
;         %funcName%(params*)
;     } else {
;         ; It's a function call without parameters
;         %action%()
;     }
; }

; ; Function to generate hotkeys
; GenerateHotkeys(config) {
;     for key, action in config {
;         if (SubStr(action, 1, 1) == "{" and SubStr(action, -1) == "}") {
;             ; Simple key mapping
;             Hotkey key, (*)=> Send(action)
;         } else {
;             ; Function call
;             Hotkey key, (*)=> %action%
;         }
;     }
; }



; #Requires AutoHotkey v2.0

; #Include default_config.ahk
; #Include *i user_config.ahk  ; The *i makes it optional

; ; Merge configurations
; MergedConfig := MergeConfigs(DefaultConfig, UserConfig)

; ; Generate hotkeys for each layer
; for layerNum, layerConfig in MergedConfig {
;     GenerateHotkeys(layerNum, layerConfig)
; }


; ; Function to merge configs
; MergeConfigs(defaultConfig, userConfig) {
;     mergedConfig := defaultConfig.Clone()
;     for layerNum, layerMap in userConfig {
;         if !mergedConfig.Has(layerNum) {
;             mergedConfig[layerNum] := Map()
;         }
;         for key, value in layerMap {
;             mergedConfig[layerNum][key] := value
;         }
;     }
;     return mergedConfig
; }

; ; Function to generate hotkeys
; GenerateHotkeys(layerNum, config) {
;     for key, action in config {
;         hotkey := key
;         layerCondition := Format("(isIracingRunning() and (NumpadLayer == {1}))", SubStr(layerNum, 6))
;         if (SubStr(action, 1, 1) == "{" and SubStr(action, -1) == "}") {
;             ; Simple key mapping
;             HotIf layerCondition
;             HotKey hotkey, (*)=> Send(action)
;         } else {
;             ; Function call
;             HotIf layerCondition
;             HotKey hotkey, (*)=> %action%
;         }
;     }
; }