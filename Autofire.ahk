; The hook $ hotkey modifier prevents a hotkey from firing itself.
; If 'a' is the hotkey, and it sends 'a', it would keep looping
$F4::
    ; Run the label AutoFireA
    GoSub, AutoFireA
return

; Label auto firing
AutoFireA:
    ; Send a key. We're using 'b'
    Click
    ; Check to see if 'a' is still being held down
    if GetKeyState("F4", "P")
        ; If yes, set a timer to run this label again. Time is in ms
        ; Using a negative number fires the timer once instead of repeatedly.
        SetTimer, AutoFireA, -100
return