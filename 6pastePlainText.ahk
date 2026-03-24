#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


pastePlainText() {
    	ClipSaved := ClipboardAll  ; Save the entire clipboard
    	Clipboard := Clipboard     ; Convert to plain text
    	Send ^v                    ; Paste the plain text
    	Sleep 100                  ; Wait for the paste to complete
    	Clipboard := ClipSaved     ; Restore the original clipboard content
    	return
}