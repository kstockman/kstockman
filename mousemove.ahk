#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, mouse, Screen

F1::
loop{

; move mouse
Mousemove, 0, 1, 0, rel

; move mouse back to original position
Mousemove, 0, -1, 0, rel
; wait a bit and do it again
sleep 15000
}
F2::reload
F3::exitapp