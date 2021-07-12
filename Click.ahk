#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#MaxThreadsPerHotkey 3

+Lbutton::
Loop
{
	Random, rand, 25, 125
	GetKeyState, state, Lbutton, P
	if state = u ;
		Break
	Click
	Sleep  %rand% ;
}
Return
