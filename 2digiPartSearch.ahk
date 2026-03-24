#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\ClipboardUtils.ahk

digiPartSearch() {
    Clipboard := CopySelection()
    ; If the clipboard has data, proceed
    if (Clipboard != "")
    {
        ; Open the default web browser and search clipboard
        Run, https://www.digikey.com/en/products/result?keywords=%Clipboard%
    }
    else
    {
        MsgBox, No text was highlighted.
    }
}



