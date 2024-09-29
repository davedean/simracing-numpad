#Requires AutoHotkey v2.0

global UserConfig := Map(
    "Layer1", Map(
         "Numpad1", [ "Send", "{F1}" ] ,  ; Override default mapping
;        "CustomKey1", "{F12}"  ; Add new mapping
    ),
    "Layer2", Map(
        ; "Numpad2", 'slowSend("Alt", "{Numpad2}")',  ; Override default mapping

        ; call functions instead of keys ..
        ; "Numpad1", 'setIracingPitCommand("tyresNone","")',       ; no tyres - all 
        ; "Numpad2", 'setIracingPitCommand("tyresLeftRear","")',   ; tyres - left rear
        ; "Numpad3", 'setIracingPitCommand("tyresRightRear","")',  ; tyres - right rear
        ; "Numpad4", 'setIracingPitCommand("tyresAll","")',        ; all tyres
        ; "Numpad5", 'setIracingPitCommand("tyresLeftFront","")',  ; tyres - left front
        ; "Numpad6", 'setIracingPitCommand("tyresRightFront","")', ; tyres - right front
        ; "Numpad7", 'setIracingPitCommand("fastRepairOn","")',    ; request fast repair
        ; "Numpad8", 'setIracingPitCommand("fastRepairOff","")',   ; cancel fast repair

        ; "NumpadAdd",  'slowSend("Shift", "{"NumpadAdd}")',    ; 
        ; "NumpadSub",  'slowSend "Shift", "{"NumpadSub}"',     ; 
        ; "NumpadMult", 'slowSend "Shift", "{"NumpadMult}"',   ; 
        ; "NumpadDiv",  'slowSend "Shift", "{"NumpadDiv}"',     ; TODO: no fuel

        ; ; "NumpadEnter", "slowSend "Shift", "{"NumpadEnter}"  ; used for layerKey, do not define unless using different layerKey

        ; ; "Numpad0", "slowSend "Alt", "{"Numpad0}"
        ; "Numpad0", "{F5}",                         ; show Tyres page, so I can see Tyre replacement
        ; "NumpadDot", 'slowSend("Alt", "{NumpadDot}")' 
    ),
    "Layer3", Map(
        ;"CustomKey2", 'MsgBox("Custom function")'  ; Add new mapping
    )
)