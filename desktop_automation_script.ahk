#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
#Persistent

;A pop-up Message Box notifying the user that the script has started.
MsgBox,0,%A_ScriptName% Initialized!,Your master script has started.,3

;Includes scripts from the Desktop Automation Script's library.
#Include Lib\functions.ahk
#Include Lib\Hotkeys\hotkeys.ahk


;Suspend & Kill Script Hotkeys
<#F3::	;Suspend Script
	Suspend, permit
	suspendScript()
	Return
<#F4::	;Kill Script
	MsgBox,,%A_ScriptName% Terminated,%A_ScriptName% has been Terminated.,5
	ExitApp
