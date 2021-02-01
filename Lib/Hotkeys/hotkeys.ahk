;Includes hotkey scripts that are dependent on the active window.
#Include Lib\functions.ahk
#Include Lib\Hotkeys\hotkey.discord.ahk
#Include Lib\Hotkeys\hotkey.notepad++.ahk


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
