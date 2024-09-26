; Numpad as Button Box
; Version: v0.05

SetKeyDelay 30 30


; which key to use for layer switching 
; TODO: move this somewhere better.
global layerKey    := "Numpad0" 

HotKey layerKey, layerPress         ; Call layerPress from layerKey

;; globals for functions
global tyres := 1                   ; used to track tyre state for tyreToggle

;;;;;;;;;;;;;;;;; FUNCTIONS:

; a function to hold macros, so they are shareable/asignable. 
macro(command) {
  ; https://forums.iracing.com/discussion/61/pit-macros-chat-commands/p1
  ; there are chat macros which can modify the car setup.

  switch command {

  ;; Tyres Macros
  ; toggle Tyres between Dry and Wet   
  case "TyresToggle":
    global tyres 
    if (tyres==1) {
      macro("TyresWet")
    } else {
      macro("TyresDry")
    }

  ; set Tyres to Dry   
  case "TyresDry":
    global tyres:=1
    setTyres(tyres, "Dry")

  ; set Tyres to Wet
  case "TyresWet":
    global tyres:=2
    setTyres(tyres, "Wet")


  ;; Fuel Macros

  ;; Pit Macros
   
  ;  default:
  ;   MsgBox "default macro!"

  }
}

sendIracingChatMessage(message) {
  delay := 50
  
  Send("t")
  Sleep(delay) ; chat needs a longer sleep before the command
  Send(message . "{Enter}")
}


; set Tyres to a number
setTyres(tyres,tyresName) {
  sendIracingChatMessage("{#}tc " . tyres)
  onScreenMessage("Tyres now set to " . tyres . " (" . tyresName . ")" )
}


; send keys slowly for iRacing
slowSend(mods, key) {

  modsDown := "{" . mods . " down}"
  modsUp := "{" . mods . " up}"
  
  delay := 10

  loop 1 {
  ; some iracing mappings appear to be "slow"
  ; these repeats and delays let it work.
  ; keeping loop in case I want it later.
    Send("{Blind}" . modsDown) 
    Sleep(delay) 
  }
  
  Sleep(delay) 
  ; send the key
  Send(key) 
  Sleep(delay)

  ; release the modifiers.
  Send("{Blind}" . modsUp) 
}


isSimRunning() {
  if alwaysRun
  or WinActive("ahk_class SimWinClass")  ; iRacing
  or WinActive("ahk_exe SimHubWPF")      ; Sim Hub
  ;; not tested assigning in these, but keys should work
  ;; iRacing specific macros will not.
  
  or WinActive("AC2")                    ; Assetto Corsa Competizione

  or WinActive("ahk_class acsW")         ; AC sim running
  or WinActive("Assetto Corsa Launcher") ; Assetto Corsa Launcher
  or WinActive("Content Manager")        ; Content Manager for Assetto Corsa 
  {
    return true
  } else {
    return false
  }
}

;; info messages
onScreenMessage(message) {
  MyGui := Gui()
  MyGui.Opt("+AlwaysOnTop -Caption +ToolWindow")  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
  MyGui.BackColor := "1b1a1a" 
  MyGui.SetFont("s24")  ; Set a large font size
  CoordText := MyGui.Add("Text", "cLime", message . "  " )  ; XX & YY serve to auto-size the window.
  ; Make all pixels of this color transparent and make the text itself translucent (150):
  ;WinSetTransColor(MyGui.BackColor " 150", MyGui)

  MyGui.Show("x200 y50 NoActivate")  ; NoActivate avoids deactivating the currently active window.
  SetTimer ()=>MyGui.Hide(), -2400
}

; Layer Switching function
layerPress(*) {
  global layerKey         ; imports global

  ; durations for short and long holds
  shortHoldTime := 200
  longHoldTime  := 800

  ; info text
  infotext:="Numpad Layer "
  infohelp:=" (Tap=1, Short Hold=2, Long Hold=3)"

  if isSimRunning() {
    ; Tap - Enable Layer One.
    global NumpadLayer := 1     ; set layer=1
    onScreenMessage(infotext . NumpadLayer . infohelp) 

    ; Short Hold, Enable Layer Two
    Sleep(shortHoldTime)

    if GetKeyState(layerKey,"P") {
        global NumpadLayer := 2  ; set layer=2
        onScreenMessage(infotext . NumpadLayer . infohelp) 

    }

    ; Long Hold, Enable Layer Three
    Sleep(longHoldTime)

    if GetKeyState(layerKey,"P") {
        global NumpadLayer := 3  ; set layer=2
        onScreenMessage(infotext . NumpadLayer . infohelp) 
    }
  } 

  KeyWait(layerKey)  ;(Prevents repeat)
}


