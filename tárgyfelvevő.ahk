;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  F10  ki-be kapcsolja a scriptet     ;
;                                      ;
;  ESC  teljesen leállítja a programot ;
;                                      ;
;                                      ;
;    ÍRD ÁT AZ ALÁBBI KOORDINÁTÁKAT    ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


kurzus1_X = 100
kurzus1_Y = 150

kruzus2_X = 200
kruzus2_Y = 200

mentes_X = 300
mentes_Y = 300

OK_X = 400
OK_Y = 400


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INNENTŐL LEFELE KÓD, NE NYÚLJ HOZZÁ! ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




#MaxThreadsPerHotkey 2

F10::
{
	Toggle:=!Toggle

	While, Toggle
	{
		myClickButton(kurzus1_X,kurzus1_Y)
		myClickButton(kruzus2_X,kruzus2_Y)
		myClickButton(mentes_X,mentes_Y)
		myClickButton(OK_X,OK_Y)
    }
}
Return

myClickButton(X, Y)
{
	MouseMove, X, Y, 10
	Sleep, 250
	Click
	Random ranSleep, 1500, 3000
	sleep %ranSleep%	
}

Escape::
ExitApp
Return
