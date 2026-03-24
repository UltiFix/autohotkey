#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force    ; Skips the dialog box and replaces the old instance automatically

; Include other scripts in the same directory as this script
#Include %A_ScriptDir%\2digiPartSearch.ahk
#Include %A_ScriptDir%\3killWindow.ahk
#Include %A_ScriptDir%\4lightDarkModeChange.ahk
#Include %A_ScriptDir%\6pastePlainText.ahk
#Include %A_ScriptDir%\7octoPartSearch.ahk



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; HOTKEY TO RELOAD
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^!r::Reload ; control + alt + r

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Define the hotkey for digiPartSearch functionality
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^!d:: ; control + alt + d
    digiPartSearch()
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Define the hotkey for killWindow functionality
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^+!x:: ; Control + Alt + Shift + X
    killWindow()
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Define the hotkey for light dark mode change
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^!+l:: ; Control + Alt + Shift + L
    lightDarkModeChange()
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Define the hotkey for pastePlainText functionality
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^!v:: ; control + alt + v
    pastePlainText()
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Define the hotkey for octoPartSearch functionality
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^!o:: ; control + alt + o
    octoPartSearch()
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; invert right/left wheel direction LTSpice
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive ahk_exe LTspice.exe
WheelLeft::
Loop 10
{
	Send, {WheelRight}
	Sleep, 10
}
return
WheelRight::
Loop 10
{
	Send, {WheelLeft}
	Sleep, 10
}
return
#IfWinActive


