; While you don't have to declare the toggle, by doing so you know what the initial start value is
toggle	:= 0

return

F1::
	; This is where the toggling occurs. You're setting the toggle to the opposite of itself.
	; 1 becomes 0. True becomes False. You can use either.
	toggle	:= !toggle

	if (toggle = 0){
		; If the toggle is off (0 or false), do the stuff in here
		MsgBox, The toggle is turned off.
	}
	else{
		; If the toggle is on (1 or true), do the stuff in here
		loop{
			; move mouse
			Mousemove, 0, 1, 0, rel

			; move mouse back to original position
			Mousemove, 0, -1, 0, rel
			; wait a bit and do it again
			sleep 150
		}
	}

return