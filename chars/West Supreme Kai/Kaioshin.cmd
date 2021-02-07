;ESTO DEBE IR EN EL CMD DEL CHAR
[Command]
name = "ai"
command = x,x,x,x,x,x,x,x,x,x,a+b+c+z+x+y
time = 1

[Command]
name = "ai1"
command = y,y,y,y,y,y,y,y,y,y,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai2"
command = U,U,U,U,U,U,U,U,U,U,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai4"
command = a,b,c,z,x,y,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai5"
command = U,D,F,B,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai6"
command = D,F,U,B,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai7"
command = x,D,x,D,x,D,x,D,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai8"
command = F,F,F,F,F,F,B,U,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai9"
command = F,F,F,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai10"
command = B,U,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai11"
command = F,F,F,B,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai12"
command = F,B,F,B,F,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai13"
command = x,y,z,a,b,c,a+b+c+z+x+y+U+D+F+B
time = 1


; COMANDOS DE SUPREMO KAIOSAMA
;-| Super Motions |--------------------------------------------------------

; Enerugi- Surasuto
[Command]
name = "Beam" 
command = ~D, DB, B, F, c
time = 30

; Gekiretsu Shin Ou Hou
[Command]
name = "Flash" 
command = ~D, DB, B, F, z
time = 30

;-| Special Motions |------------------------------------------------------

;Renzoku
[Command]
name = "Renzoku"
command = ~D, DF, F, a

;Renzoku Energy Dan
[Command]
name = "Renzoku2"
command = ~D, DB, B, a

;Finger Blast
[Command]
name = "Blast"
command = ~D, DF, F, b

;Finger Blast Upwards
[Command]
name = "Blast2"
command = ~D, DB, B, b

;Finger Blast (Air)
[Command]
name = "Blast3"
command = ~D, DF, F, b

;Finger Blast (Flying)
[Command]
name = "Blast4"
command = ~D, DB, B, a

[Command]
name = "flashcut"
command = ~D, DF, F, c

[Command]
name = "flashkicks"
command = ~D, F, z

[Command]
name = "zanzoken"
command = y+b

[Command]
name = "zanzoken1"
command = x+a

; Combo
[Command]
name = "Combo"
command = ~D, B, x

; Combo 2
[Command]
name = "Combo2"
command = ~D, B, y

; Combo 3
[Command]
name = "Combo3"
command = ~D, B, z

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

[Command]
name = "uppercut_c"
command = ~F, D, DF, c

[Command]
name = "uppercut_x"
command = ~F, D, DF, x

[Command]
name = "uppercut_y"
command = ~F, D, DF, y

[Command]
name = "uppercut_z"
command = ~F, D, DF, z

;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "ret_mag"
command = ~25$B, F, x
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10

[Command]
name = "chargedownup_x"
command = ~20$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;-| Flying Motion |------------------------------------------------------

;Flying
[Command]
name = "fly"
command = y+b

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "DD"
command = D, D
time=10
[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1
[Command]
name = "recovery" ;Extra recovery commands (optional)
command = y+z
time = 1
[Command]
name = "recovery" ;Extra recovery commands (optional)
command = x+z
time = 1

[Command]
name = "a+x"
command = a+x
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "yz"
command = y+z
time = 1

;[Command]
;name = "abc"
;command = a+b+c
;time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "fwd_bc"
command = /F, b+c
time = 1

[Command]
name = "fwd_xy"
command = /F, x+y
time = 1

[Command]
name = "fwd_yz"
command = /F, y+z
time = 1

[Command]
name = "back_xy"
command = /B, x+y
time = 1

[Command]
name = "back_yz"
command = /B, y+z
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

[Command]
name = "back_bc"
command = /B, b+c
time = 1

[Command]
name = "charge"
command = /a
[Command]
name = "charge 1"
command = /x
;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Hold Button |-----------------------------------------------------------

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "start"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;---------------------------------------------------------------------------
; Finger Beam
[State -1,ESPECIAL DEL DEDO]
type = ChangeState
value = 6000
triggerall = command = "Beam"
triggerall = power >= 2000 ;Level 2 Super
triggerALL = statetype =S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Final Flash
[State -1,ESPECIAL DE DOS MANOS]
type = ChangeState
value = 6050
triggerall = command = "Flash" 
triggerall = power >= 2000 ;Level 2 Super
triggerALL = statetype =S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Combo
[State -1,COMBO 1]
type = ChangeState
value = 1001
triggerall = command = "Combo"
triggerall = power >= 500 ;1/2 Level  
trigger1 = Statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 420
trigger10 = movecontact = 1
trigger11 = stateno = 430
trigger11 = movecontact = 1
trigger12 = stateno = 440
trigger12 = movecontact = 1
trigger13 = stateno = 3001

[State -1,COMBO 2]
type = ChangeState
value = 1002
triggerall = command = "Combo2"
triggerall = power >= 500 ;1/2 Level
trigger1 = Statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 420
trigger10 = movecontact = 1
trigger11 = stateno = 430
trigger11 = movecontact = 1
trigger12 = stateno = 440
trigger12 = movecontact = 1
trigger13 = stateno = 3001

[State -1,COMBO 3]
type = ChangeState
value = 1003
triggerall = command = "Combo3"
triggerall = power >= 500 ;1/2 Level
trigger1 = Statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 420
trigger10 = movecontact = 1
trigger11 = stateno = 430
trigger11 = movecontact = 1
trigger12 = stateno = 440
trigger12 = movecontact = 1
trigger13 = stateno = 3001

;---------------------------------------------------------------------------
;Renzoku
[State -1,BOLA DE ENERGIA]
type = ChangeState
value = 1030
triggerall = command = "Renzoku"
trigger1 = Statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 420
trigger10 = movecontact = 1
trigger11 = stateno = 430
trigger11 = movecontact = 1
trigger12 = stateno = 440
trigger12 = movecontact = 1
trigger13 = stateno = 3001

;---------------------------------------------------------------------------
;Renzoku Energy Dan
[State -1,SEGUIDILLA DE TRES ESFERAS]
type = ChangeState
value = 1390
triggerall = command = "Renzoku2"
trigger1 = Statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Flash Cut
[State -1,GOLPE QUE LO TIRA]
type = ChangeState
value = 1200
triggerall = command = "flashcut"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
trigger8 = stateno = 3001

;---------------------------------------------------------------------------
; Flash Kicks
[State -1,COMBO 4]
type = ChangeState
value = 1004
triggerall = command = "flashkicks"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
trigger8 = stateno = 3001

;---------------------------------------------------------------------------
;Finger Blast
[State -1,ENERGIA DEL DEDO]
type = ChangeState
value = 1040
triggerall = command = "Blast"
trigger1 = Statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 420
trigger10 = movecontact = 1
trigger11 = stateno = 430
trigger11 = movecontact = 1
trigger12 = stateno = 440
trigger12 = movecontact = 1
trigger13 = stateno = 3001

;---------------------------------------------------------------------------
;Finger Blast 2
[State -1]
type = ChangeState
value = 1050
triggerall = command = "Blast2"
trigger1 = Statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 420
trigger10 = movecontact = 1
trigger11 = stateno = 430
trigger11 = movecontact = 1
trigger12 = stateno = 440
trigger12 = movecontact = 1
trigger13 = stateno = 3001

;---------------------------------------------------------------------------
;Finger Blast (Air)
[State -1]
type = ChangeState
value = 1060
triggerall = command = "Blast3"
trigger1 = Statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 620
trigger4 = movecontact = 1
trigger5 = stateno = 630
trigger5 = movecontact = 1
trigger6 = stateno = 640
trigger6 = movecontact = 1
trigger7 = stateno = 650
trigger7 = movecontact = 1
trigger8 = stateno = 3001

;---------------------------------------------------------------------------
;Finger Blast (Flying)
[State -1]
type = ChangeState
value = 1063
triggerall = command = "Blast4"
trigger1 = stateno = 3001

;---------------------------------------------------------------------------
;Zanzoken
[State -1,TELETRANSPORTACION DELANTE]
type = ChangeState
value = 4000
triggerall = command = "FF"
triggerall = command != "holddown"
triggerall = numprojid(4050) = 0
triggerall = ctrl=1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1  
trigger3 = stateno = 210
trigger3 = movecontact = 1  
trigger4 = stateno = 220
trigger4 = movecontact = 1  
trigger5 = stateno = 230
trigger5 = movecontact = 1  
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1  
trigger8 = stateno = 410
trigger8 = movecontact = 1  
trigger9 = stateno = 420
trigger9 = movecontact = 1  
trigger10 = stateno = 430
trigger10 = movecontact = 1 
trigger11 = stateno = 3001 



;---------------------------------------------------------------------------
;Zanzoken Backwards
[State -1,TELETRANSPORTACION ATRAS]
type = ChangeState
value = 4050
triggerall = command = "BB"
triggerall = command != "holddown"
triggerall = numprojid(4051) = 0
triggerall = ctrl=1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1  
trigger3 = stateno = 210
trigger3 = movecontact = 1  
trigger4 = stateno = 220
trigger4 = movecontact = 1  
trigger5 = stateno = 230
trigger5 = movecontact = 1  
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1  
trigger8 = stateno = 410
trigger8 = movecontact = 1  
trigger9 = stateno = 420
trigger9 = movecontact = 1  
trigger10 = stateno = 430
trigger10 = movecontact = 1 
trigger11 = stateno = 3001


;---------------------------------------------------------------------------
;Zanzoken Air
[State -1]
type = ChangeState
value = 4100
triggerall = command = "zanzoken"
triggerall = command != "holddown"
triggerall = numprojid(4100) < 2
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Zanzoken Down
[State -1]
type = ChangeState
value = 4200
triggerall = command = "zanzoken"
triggerall = command != "holddown"
triggerall = numprojid(4200) < 2
trigger1 = StateNo = 3001
;---------------------------------------------------------------------------
;Flying
[State -1,fly]
type = ChangeState
value = 3001
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Flying
[State -1,fly]
type = ChangeState
value = 3115
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
-----------------------------------------------------------

;---------------------------------------------------------------------------
;:====================================================
;PUÑO DEBIL
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 220
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 3001
[State -1, SEGUNDO GOLPE CON A]
type = ChangeState
value = 201
triggerall = command = "a"
triggerall = stateno = 200
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

[State -1, SEGUNDO GOLPE CON A]
type = ChangeState
value = 202
triggerall = command = "a"
triggerall = stateno = 201
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

[State -1, TERCER GOLPE]
type = ChangeState
value = 203
triggerall = stateno = 202
triggerall = movecontact = 1
triggerall=time=50
trigger1 = statetype = S
trigger2 = stateno = 1500
;:====================================================
;---------------------------------------------------------------------------
;Stand Meduim Punch
[State -1, Stand Meduim Punch]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 3001

[State -1, SEGUNDO GOLPE CON B]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = stateno = 210
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

[State -1, TERCER GOLPE CON B]
type = ChangeState
value = 212
triggerall = command = "b"
triggerall = stateno = 211
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 410
trigger7 = movecontact = 1
trigger8 = stateno = 430
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1
trigger10 = stateno = 3001

[State -1, SEGUNDO GOLPE CON C]
type = ChangeState
value = 221
triggerall = command = "c"
triggerall = stateno = 220
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

[State -1, SEGUNDO GOLPE CON C]
type = ChangeState
value = 222
triggerall = command = "c"
triggerall = stateno = 221
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 3001
[State -1, SEGUNDO GOLPE CON x]
type = ChangeState
value = 231
triggerall = command = "x"
triggerall = stateno = 230
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500
[State -1, TERCER GOLPE CON x]
type = ChangeState
value = 232
triggerall = command = "x"
triggerall = stateno = 231
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500
[State -1, CUARTO GOLPE CON x]
type = ChangeState
value = 233
triggerall = command = "x"
triggerall = stateno = 232
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500



;---------------------------------------------------------------------------
;Standing Meduim Kick
[State -1, Standing Meduim Kick]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 3001
[State -1, SEGUNDO GOLPE CON x]
type = ChangeState
value = 241
triggerall = command = "y"
triggerall = stateno = 240
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500
[State -1, TERCER GOLPE CON x]
type = ChangeState
value = 242
triggerall = command = "y"
triggerall = stateno = 241
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500
[State -1, TERCER GOLPE CON x]
type = ChangeState
value = 243
triggerall = command = "y"
triggerall = stateno = 242
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500


;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 410
trigger7 = movecontact = 1
trigger8 = stateno = 430
trigger8 = movecontact = 1
trigger9 = stateno = 3001
[State -1, SEGUNDO GOLPE CON Z]
type = ChangeState
value = 251
triggerall = command = "z"
triggerall = stateno = 250
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500

[State -1, TERCER GOLPE CON Z]
type = ChangeState
value = 253
triggerall = command = "z"
triggerall = stateno = 251
triggerall = movecontact = 1
trigger1 = statetype = S
trigger2 = stateno = 1500
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Meduim Punch
[State -1, Crouching Meduim Punch]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Meduim Kick
[State -1, Crouching Meduim Kick]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 430
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 440
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Meduim Punch
[State -1, Jump Meduim Punch]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Jump Meduim Kick
[State -1, Jump Meduim Kick]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 630
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 630
trigger2 = movecontact = 1
trigger3 = stateno = 640
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Power Up
[State -1, Carga]
type = ChangeState
value = 730
triggerall = command = "charge 1"
triggerall = command = "charge"
triggerall = power < 4000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 3001


