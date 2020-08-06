; #########################
; ### Teams Global Mute ###
; #########################

#`::							; press WIN + ` (backtick)
WinGetTitle, active_title, A				; looks at the active program on your screen and puts it into variable "active_title"
if active_title contains Microsoft Teams		; if active program is Teams, move on
  {
    Send ^+M						; send CTRL + SHIFT + M for Teams microphone mute on/off
  }
else							; if active program is not Teams
  {
    SetTitleMatchMode, 3				; set Title search to exact
    WinActivate, Microsoft Teams			; bring "Microsoft Teams" to the foreground so the shortcut will work
	Send ^+M					; send CTRL + SHIFT + M for Teams microphone mute on/off
  }
