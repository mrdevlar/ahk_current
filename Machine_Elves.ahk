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

;=================== KEYBOARD ================