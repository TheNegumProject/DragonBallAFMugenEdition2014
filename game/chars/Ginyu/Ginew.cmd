;Ginew

;-----------Supers------------------
[Command]
name = "Psyko Quake"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "Nova Explode"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "Mouth Blast"
command = ~D, DF, F, B, y
time = 30

;-----------Specials Ki----------------
[Command]
name = "Telekinesis Corta"
command = ~F, DF, D, DB, B, a
time = 30

[Command]
name = "Telekinesis Larga"
command = ~F, DF, D, DB, B, b
time = 30

[Command]
name = "Mouth Ball"
command = ~D, DB, B, c
time = 30

[Command]
name = "fireball"
command = c
time = 30

;-----------Specials----------------
[Command]
name = "Ginew elbow"
command = ~F, D, DF, y
time = 30

[Command]
name = "Dig Attack"
command = ~F, DF, D, DB, B, x
time = 30

[Command]
name = "Dig Attack 2"
command = ~F, DF, D, DB, B, y
time = 30

[Command]
name = "Mamushka Kicks 1"
command = ~35$B, F, a
time = 10

[Command]
name = "Mamushka Kicks 2"
command = ~35$B, F, b
time = 10
;------------Comands----------------

[Command]
name = "charge"
command = /a
time = 1

[Command]
name = "charge 1"
command = /b
time = 1

[Command]
name = "fly"
command = a+b
time = 1
;------------Secuencias Comunes-------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "recovery"
command = a+b
time = 1

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
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1


;---------Botones--------------------
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
name = "start"
command = s
time = 1


;-----------Holds-----------------------
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

;--------------------------------------------------------------------------------

[Statedef -1]

;===================================================================================
;---------------- Superrs ----------------------------------------------------------
;===================================================================================

;Psyko Quake
[State -1]
type = ChangeState
value = 8400
triggerall = (Power >= 2000)
triggerall = command = "Psyko Quake"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 411)
trigger6 = (movecontact = 1) && (stateno = 200)
trigger7 = (movecontact = 1) && (stateno = 201)
trigger8 = (movecontact = 1) && (stateno = 210)
trigger9 = (movecontact = 1) && (stateno = 211)

;Nova Explode
[State -1]
type = ChangeState
value = 4000
triggerall = (Power >= 1000)
triggerall = command = "Nova Explode"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 411)
trigger6 = (movecontact = 1) && (stateno = 200)
trigger7 = (movecontact = 1) && (stateno = 201)
trigger8 = (movecontact = 1) && (stateno = 210)
trigger9 = (movecontact = 1) && (stateno = 211)

;Mouth Blast
[State -1]
type = ChangeState
value = 8000
triggerall = (Power >= 1000)
triggerall = command = "Mouth Blast"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 600)
trigger3 = (movecontact = 1) && (stateno = 601)
trigger4 = (movecontact = 1) && (stateno = 610)
trigger5 = (movecontact = 1) && (stateno = 611)
trigger6 = (movecontact = 1) && (stateno = 500)
trigger7 = (movecontact = 1) && (stateno = 501)
trigger8 = (movecontact = 1) && (stateno = 510)
trigger9 = (movecontact = 1) && (stateno = 511)
trigger10 = stateno = 613 || stateno = 2303 || stateno = 2304 || stateno = 2306 || stateno = 2350 || stateno = 2353 || stateno = 2400 || stateno = 2500
trigger11 = stateno = 1500 || stateno = 1501 || stateno = 1502 || stateno = 1503 || stateno = 1504

;===================================================================================
;---------------- Specials ---------------------------------------------------------
;===================================================================================

;Ginew elbow
[State -1]
type = ChangeState
value = 2000
triggerall = command = "Ginew elbow"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 200)
trigger6 = (movecontact = 1) && (stateno = 201)
trigger7 = (movecontact = 1) && (stateno = 210)
trigger8 = (movecontact = 1) && (stateno = 211)


;Dig Attack
[State -1]
type = ChangeState
value = 2200
triggerall = command = "Dig Attack" || command = "Dig Attack 2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 411)
trigger6 = (movecontact = 1) && (stateno = 200)
trigger7 = (movecontact = 1) && (stateno = 201)
trigger8 = (movecontact = 1) && (stateno = 210)
trigger9 = (movecontact = 1) && (stateno = 211)

;Mamushka Kicks - Alta
[State -1]
type = ChangeState
value = 2400
triggerall = command = "Mamushka Kicks 1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 200)
trigger6 = (movecontact = 1) && (stateno = 201)
trigger7 = (movecontact = 1) && (stateno = 210)
trigger8 = (movecontact = 1) && (stateno = 211)


;Mamushka Kicks - Larga
[State -1]
type = ChangeState
value = 2500
triggerall = command = "Mamushka Kicks 2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 200)
trigger6 = (movecontact = 1) && (stateno = 201)
trigger7 = (movecontact = 1) && (stateno = 210)
trigger8 = (movecontact = 1) && (stateno = 211)


;===================================================================================
;---------------- Specials Ki-------------------------------------------------------
;===================================================================================
;Telekinesis Corta
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Telekinesis Corta"
triggerall = (Power >= 100)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 411)
trigger6 = (movecontact = 1) && (stateno = 200)
trigger7 = (movecontact = 1) && (stateno = 201)
trigger8 = (movecontact = 1) && (stateno = 210)
trigger9 = (movecontact = 1) && (stateno = 211)


;Telekinesis Larga
[State -1]
type = ChangeState
value = 3300
triggerall = command = "Telekinesis Larga"
triggerall = (Power >= 100)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 411)
trigger6 = (movecontact = 1) && (stateno = 200)
trigger7 = (movecontact = 1) && (stateno = 201)
trigger8 = (movecontact = 1) && (stateno = 210)
trigger9 = (movecontact = 1) && (stateno = 211)

;Mouth Ball
[State -1]
type = ChangeState
value = 3500
triggerall = command = "Mouth Ball"
triggerall = (Power >= 200)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 411)
trigger6 = (movecontact = 1) && (stateno = 200)
trigger7 = (movecontact = 1) && (stateno = 201)
trigger8 = (movecontact = 1) && (stateno = 210)
trigger9 = (movecontact = 1) && (stateno = 211)

;FireBall
[State -1]
type = ChangeState
value = 1000
triggerall = command = "fireball"
triggerall = (Power >= 50)
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;charge
[State -1]
type = ChangeState
value = 730
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = (power < 2000)
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger2 = stateno = 1500

;-----------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 185
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;-----------------------------------------------------------------------------
;Flying Start
[State -1]
type = ChangeState
value = 1510
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = A
;-----------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = null; ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 
trigger1 = command = "fwd_b"
trigger1 = stateno != 100    
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b"
trigger2 = stateno != 100    
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b"
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b"
trigger4 = p2statetype = C
trigger4 = p2movetype != H

[State -1]
type = null
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"

;===================================================================================
;---------------- Comands ----------------------------------------------------------
;===================================================================================

;-----------------------------------------------------------------------------------
;Head Press
[State -1]
type = ChangeState
value = 612
;triggerall = command = "a"
;triggerall = command != "holddown"
triggerall = (command = "holddown") && (command = "a")
trigger1 = statetype = A
trigger1 = ctrl = 1

;-------------------------------------------------------------------
;Zanzouken
[State -1, zanzoken]
type = ChangeState
value = 10000
triggerall = command = "z"
triggerall = (power > 400)
triggerall = alive = 1
trigger1 = ctrl = 1
trigger1 = stateno >= 150
trigger2 = Stateno <= 153
trigger3 = stateno = 5000
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071
trigger20 = stateno = 1500


;===================================================================================
;---------------- Normales ------------------------------------------------------------
;===================================================================================


;--------------------------------------------------------------------------------
;crouch light punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 410)
trigger4 = (movecontact = 1) && (stateno = 200)
trigger5 = (movecontact = 1) && (stateno = 210)


;crouch strong punch
[State -1]
type = ChangeState
value = 401
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = (stateno != 401)
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 410)
trigger4 = (movecontact = 1) && (stateno = 200)
trigger5 = (movecontact = 1) && (stateno = 210)

;crouch Light Kick
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = (stateno != 401)
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 200)
trigger4 = (movecontact = 1) && (stateno = 210)

;crouch Strong Kick
[State -1]
type = ChangeState
value = 411
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = (stateno != 401)
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 410)
trigger4 = (movecontact = 1) && (stateno = 200)
trigger5 = (movecontact = 1) && (stateno = 210)

;---------------------------------------------------------------------------------
;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 210)
trigger4 = (movecontact = 1) && (stateno = 400)
trigger5 = (movecontact = 1) && (stateno = 410)

;Stand Strong Punch
[State -1]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 210)
trigger4 = (movecontact = 1) && (stateno = 400)
trigger5 = (movecontact = 1) && (stateno = 410)

;Stand light Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 400)
trigger4 = (movecontact = 1) && (stateno = 410)

;Stand Strong Kick
[State -1]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 210)
trigger4 = (movecontact = 1) && (stateno = 400)
trigger5 = (movecontact = 1) && (stateno = 410)


;-----------------------------------------------------------------------------------
;Jump Light Punch
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jump Strong Punch
[State -1]
type = ChangeState
value = 601
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jump Light Kick
[State -1]
type = ChangeState
value = 610
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jump Strong Kick
[State -1]
type = ChangeState
value = 611
triggerall = stateno != 611
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1

;-----------------------------------------------------------------------------------
;Flying Light Punch
[State -1]
type = ChangeState
value = 500
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 1500

;Flying  Strong Punch
[State -1]
type = ChangeState
value = 501
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 1500

;Flying Light Kick
[State -1]
type = ChangeState
value = 510
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 1500

;Flying Strong Kick
[State -1]
type = ChangeState
value = 511
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 1500




