#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
#Persistent

MsgBox,0,%A_ScriptName% Initialized!,Your master script has started.,5

;WinPin := FALSE ;Initialized variable for the pinning script.

;Hotkeys
<#s:: ;Window Spy Hotkey
	Run "%A_ProgramFiles%\AutoHotkey\WindowSpy.ahk"
	Return
<#p:: ;Always On Top
	;If (WinPin = FALSE)
	;{
		Winset, Alwaysontop, , A
		WinGetActiveTitle, Title
		/* MsgBox, ,"The active window, "%Title%", is pinned on top."
		WinPin := !WinPin
	}
	Else
	{
		Winset, Alwaysontop, , A
		WinGetActiveTitle, Title
		MsgBox, ,"The active window, "%Title%", is no longer pinned on top."
		WinPin := !WinPin
	} */
	Return
<#g:: ;Games Folder Hotkey
	Run "C:\Users\%A_UserName%\Games"
	Return
	^<#g::
		Send <#g	;Microsoft Game Bar
		Return



;Reopens Discord after forcing it closed.
#IfWinActive ahk_exe Discord.exe
	!F4::
		WinKill, ahk_exe Discord.exe
		Sleep, 250 ;Delay
		Run "C:\Users\%A_UserName%\AppData\Local\Discord\app-0.0.309\Discord.exe" ;Reopen The Program
		Return
#IfWinActive

#IfWinActive ahk_exe notepad++.exe
	<#h:: ;Brings up AutoHotKey Documentation
		Run "C:\Users\%A_UserName%\OneDrive\Desktop\AutoHotkey\AutoHotKey.exe"
		Return
 #IfWinActive
 