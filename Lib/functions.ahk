;Makes the active window AlwaysOnTop
pinWindow(targetWindow := "A")
{
	static pWnd := 0
	static pinned := FALSE
	tWnd := WinActive(targetWindow)	;Defines %tWnd% as the ahk_id for the target window
	If (pinned != TRUE)
	{
		WinSet, AlwaysOnTop, Toggle, ahk_id %tWnd%	;Sets the target window as AlwaysOnTop
		WinGetTitle, t, ahk_id %tWnd%	;Retrieves the title for the target window.
		if t
		{
			Gosub ChangeTitle
		}
		pinned := TRUE
		pWnd := tWnd
	}
	Else
	{
		Gosub UnpinWindow
	}
	
ChangeTitle:
	WinGet, ExStyle, ExStyle, ahk_id %tWnd%
	if (ExStyle & 0x8)	;If 
	{
		WinSetTitle, ahk_id %tWnd%,, %t% - AlwaysOnTop
	}
	else
	{
		WinSetTitle, ahk_id %tWnd%,, % RegexReplace(t, " - AlwaysOnTop")
	}
	Return
UnpinWindow:
	WinSet, AlwaysOnTop, Off, ahk_id %pWnd%	;Sets the target window as AlwaysOnTop
	WinGetTitle, t, ahk_id %pWnd%	;Retrieves the title for the target window.
	WinSetTitle, ahk_id %pWnd%,, % RegexReplace(t, " - AlwaysOnTop")	;Removes indicator from the window title.
	If (tWnd != pWnd)
	{
		WinSet, AlwaysOnTop, Toggle, ahk_id %tWnd%	;Sets the target window as AlwaysOnTop
		WinGetTitle, t, ahk_id %tWnd%	;Retrieves the title for the target window.
		if t
		{
			Gosub ChangeTitle
		}
		pWnd := tWnd
	}
	Else
	{
		pinned := FALSE
	}
	Return
}

suspendScript()
{
	Suspend, Toggle
	If %A_IsSuspended%
	{
		MsgBox,,%A_ScriptName% Suspended,%A_ScriptName% has been suspended.
	}
	Else
	{
		MsgBox,,%A_ScriptName% Suspended,%A_ScriptName% is no longer suspended.
	}
	Return
}

;Opens the window
/* runOnce(target)
{
	If !WinExist(%target%)
	{
		Run, %target%
	}
	Else
	{
		WinActivate, %target%
	}
    Return
} */