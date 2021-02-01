#IfWinActive ahk_exe notepad++.exe

<#h:: ;Brings up AutoHotKey Documentation
	Run "%A_ProgramFiles%\AutoHotkey\AutoHotKey.exe"
	Return
	
<#s:: ;Window Spy Hotkey
	Run "%A_ProgramFiles%\AutoHotkey\WindowSpy.ahk"
	Return
	
<#r:: ;Refreshes Master Script
	Reload
	Return

#IfWinActive

IfWinNotExist (ahk_exe notepad++.exe)
{
	ExitApp, -1
}