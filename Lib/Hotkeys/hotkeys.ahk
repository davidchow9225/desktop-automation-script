;Includes hotkey scripts that are dependent on the active window.
#Include Lib\functions.ahk
#Include Lib\Hotkeys\hotkey.discord.ahk
#Include Lib\Hotkeys\hotkey.notepad++.ahk
;------------Hotkeys------------

;Windows Key Hotkeys
<#p:: ;Pin Script
	pinWindow()
	Return
<#g:: ;Games Folder Hotkey
	Run, "C:\Users\%A_UserName%\Games"
	Return
	<^#g::
		Run https://github.com/davidchow9225/Master-Script	;Opens GitHub Repo
		Return
