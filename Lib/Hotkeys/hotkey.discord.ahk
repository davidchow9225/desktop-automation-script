#IfWinActive ahk_exe Discord.exe

!F4::
		Send, !{F4}	;Force Close Discord
		WinWaitClose ahk_exe Discord.exe	;Waits for the Discord window to no longer exist.
		Run "C:\Users\%A_UserName%\AppData\Local\Discord\app-0.0.309\Discord.exe" ;Reopen Discord
		Return

#IfWinActive

IfWinNotExist (ahk_exe notepad++.exe)
{
	ExitApp, -1
}