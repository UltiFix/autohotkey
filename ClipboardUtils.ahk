ClearClipboard() {
    ; Clear clipboard first
    Clipboard := ""
    ClipWait, 0
    return
}

CopySelection() {
    ; Clear clipboard first
    Clipboard := ""
    ClipWait, 0
    ; Copy the selected text to the clipboard
    Send, ^c
    ; Wait for the clipboard to contain data
    ClipWait, 1
    return Clipboard
}