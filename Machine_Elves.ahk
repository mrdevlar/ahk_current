;=================== GLOBAL ======================
#InstallKeybdHook
#InstallMouseHook
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode 2
Menu, TRAY, Icon, C:\Dropbox\operations\ahk.ico
WinGet, SavedWinId, ID, A     ;Save our current active window



;=================== FUNDAMENTALS ================
^!+#1::
run C:\Program Files (x86)\AutoHotkey\Autohotkey.chm
return
^!+#2::
reload
return
^!+#3::
Edit
return
^!+#4::
Keyhistory
return
^!+#5::
Run c:\dropbox\
return


;=================== MOUSE ================
; G602 with side buttons
; each button is set to ctrl+alt+win+NumpadN

#^!Numpad1::
    SendInput, ^w
return

#^!Numpad2::
    
return

#^!Numpad3::
    SendInput, ^{LButton}
return

#^!Numpad4::
return

#^!Numpad5::
    SendInput, ^!+#2 ;Debug
return

#^!Numpad6::
return

#^!Numpad7::
return

#^!Numpad8::
return


;=================== KEYBOARD ================
; Generic Buttons on most keyboards that no one uses 

CapsLock::
return

PrintScreen::
return

Pause::
return



;=================== CHROME ================
#IfWinActive Google Chrome

#^!Numpad7::
    SendInput, ^{Tab}
return

#^!Numpad8::
    SendInput, ^+{Tab}
return

; ~MButton::
; if (A_PriorHotkey <> "~MButton" or A_TimeSincePriorHotkey > 300)
; {
;     ; Too much time between presses, so this isn't a double-press.
;     KeyWait, MButton
; 	Send {MButton}
;     return
; }
; Send ^w
; return

;================ REFERENCE LIST ================

; LButton
; RButton
; MButton

; WheelDown
; WheelUp
; WheelLeft and WheelRight

; XButton1 - a button that appears only on certain mice 
; XButton2 - a button that appears only on certain mice

; Space
; Tab
; Enter (or Return)
; Escape (or Esc)
; Backspace (or BS)

; Delete (or Del)
; Insert (or Ins)
; Home
; End
; PgUp
; PgDn
; Up
; Down
; Left
; Right

; ScrollLock
; CapsLock
; NumLock

; Numlock ON OFF 
; Numpad0 NumpadIns 
; Numpad1 NumpadEnd 
; Numpad2 NumpadDown 
; Numpad3 NumpadPgDn 
; Numpad4 NumpadLeft 
; Numpad5 NumpadClear 
; Numpad6 NumpadRight 
; Numpad7 NumpadHome 
; Numpad8 NumpadUp 
; Numpad9 NumpadPgUp 
; NumpadDot (.)  NumpadDel 
; NumpadDiv (/) NumpadDiv (/) 
; NumpadMult (*) NumpadMult (*) 
; NumpadAdd (+) NumpadAdd (+) 
; NumpadSub (-) NumpadSub (-) 
; NumpadEnter NumpadEnter 

; F1 through F24

; AppsKey

; LWin
; RWin
; Control (or Ctrl)
; Alt
; Shift

; LControl (or LCtrl)
; RControl (or RCtrl)
; LShift
; RShift
; LAlt
; RAlt - Note: If your keyboard layout has AltGr instead of RAlt, you can probably use it as a hotkey prefix via <^>! as described here. In addition, "LControl & RAlt::" would make AltGr itself into a hotkey.

; PrintScreen
; CtrlBreak
; Pause
; Break -- Since this is synonymous with Pause, use ^CtrlBreak in hotkeys instead of ^Pause or ^Break.

; Help
; Sleep

; Browser_Back
; Browser_Forward
; Browser_Refresh
; Browser_Stop
; Browser_Search
; Browser_Favorites
; Browser_Home
; Volume_Mute
; Volume_Down
; Volume_Up
; Media_Next
; Media_Prev
; Media_Stop
; Media_Play_Pause
; Launch_Mail
; Launch_Media
; Launch_App1
; Launch_App2

; SCnnn (where nnn is the scan code of a key) - Recognizes unusual keys not mentioned above. See Special Keys for details.

; VKnn (where nn is the hexadecimal virtual key code of a key) - This rarely-used method also prevents certain types of hotkeys from requiring the keyboard hook. For example, the following hotkey does not use the keyboard hook, but as a side-effect it is triggered by pressing either Home or NumpadHome: ^VK24::MsgBox You pressed Home or NumpadHome while holding down Control.
; Known limitation: VK hotkeys that are forced to use the keyboard hook, such as *VK24 or ~VK24, will fire for only one of the keys, not both (e.g. NumpadHome but not Home).
; For more information about the VKnn method, see Special Keys.


; Symbol Description 
; # Win (Windows logo key). In v1.0.48.01+, for Windows Vista and later, hotkeys that include the Windows key (e.g. #a) will wait for the Windows key to be released before sending any text containing an "L" keystroke. This prevents the Send within such a hotkey from locking the PC. This behavior applies to all sending modes except SendPlay (which doesn't need it) and blind mode. 
; ! Alt 
; ^ Control 
; + Shift 
; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey. See below for details. Such hotkeys are ignored (not activated) on Windows 95/98/Me. 

; Double Click
; ~BUTTON
; if (A_PriorHotkey <> "BUTTON" or A_TimeSincePriorHotkey > 300)
; {
;     ; Too much time between presses, so this isn't a double-press.
;     KeyWait, BUTTON
; 	Send {BUTTON}
;     return
; }
; Send {OTHERBUTTON}

; Application Specific
; Everything below this line would only apply to the specific application
; #IfWinActive ahk_class APPLICATION_NAME