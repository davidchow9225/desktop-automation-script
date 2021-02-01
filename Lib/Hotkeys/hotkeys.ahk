SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Includes hotkey scripts that are dependent on the active window.
#Include %A_ScriptDir%\lib\functions.ahk
#Include %A_ScriptDir%\lib\hotkey.discord.ahk
#Include %A_ScriptDir%\lib\hotkey.notepad++.ahk


;Hotkeys
<#p:: ;Pin Script
	pinWindow()
	return
<#g:: ;Games Folder Hotkey
	Run, "C:\Users\%A_UserName%\Games"
	Return
	<^#g::
		Send <#g	;Microsoft Game Bar
		Return
