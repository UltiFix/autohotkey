#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

lightDarkModeChange() {
    RegRead, light, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, SystemUsesLightTheme

    if light {
	    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, SystemUsesLightTheme, 0
	    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme, 0
    } else {
   	    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, SystemUsesLightTheme, 1
   	    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme, 1
    }

    Process, Close, explorer.exe
}