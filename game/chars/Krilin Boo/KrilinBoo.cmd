;The CMD file.

;-| Button Remapping |-----------------------------------------------------

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------| Commandos de I.A |----------------------------------

[Command]
name = "IA 1"
command = F, F, F, F, F
time = 2
[Command]
name = "IA 2"
command = B, B, B, B, B
time = 2
[Command]
name = "IA 3"
command = F, B, F, B
time = 2
[Command]
name = "IA 4"
command = F, B, F, F
time = 2
[Command]
name = "IA 5"
command = a, a, a, a, a
time = 2
[Command]
name = "IA 6"
command = b, b, b, b, b
time = 2
[Command]
name = "IA 7"
command = c, c, c, c
time = 2
[Command]
name = "IA 8"
command = x, x, x, x, x
time = 2
[Command]
name = "IA 9"
command = y, y, y, y
time = 2
[Command]
name = "IA 10"
command = z, z, z, z, z
time = 2
[Command]
name = "IA 11"
command = D, D, D, D, D
time = 2
[Command]
name = "IA 12"
command = U, U, U, U, U
time = 2
[Command]
name = "IA 13"
command = U, D, U, D
time = 2
[Command]
name = "IA 14"
command = B, B, U, U, U
time = 2
[Command]
name = "IA 15"
command = F, F, U, U
time = 2
[Command]
name = "IA 16"
command = F, U, F, U, F
time = 2
[Command]
name = "IA 17"
command = B, D, D, B
time = 2
[Command]
name = "IA 18"
command = F, D, F, D, F
time = 2
[Command]
name = "IA 19"
command = F, F, B, B, U
time = 2
[Command]
name = "IA 20"
command = U, U, D, D
time = 2
[Command]
name = "IA 21"
command = B, U, U, U, F
time = 2

;-| Special Motions |------------------------------------------------------
[Command]
name = "Taioken"
command = ~D,DB, B, a
time = 30
[Command]
name = "Taioken"
command = ~B,DB, D, a
time = 30
[Command]
name = "Taioken"
command = ~D,DB, D, a
time = 30
[Command]
name = "Taioken"
command = ~B,DB, B, a
time = 30

[Command]
name = "Kame Ha"
command = ~D, DB, D, x
[Command]
name = "Kame Ha"
command = ~D, DB, B, x
[Command]
name = "Kame Ha"
command = ~B, DB, B, x
[Command]
name = "Kame Ha"
command = ~B, DB, D, x

[Command]
name = "Blast Amarillo"
command = ~D, DB, D, b
[Command]
name = "Blast Amarillo"
command = ~D, DB, B, b
[Command]
name = "Blast Amarillo"
command = ~B, DB, B, b
[Command]
name = "Blast Amarillo"
command = ~B, DB, D, b

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "FF_c"
command = F, F, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "agarre"
command = /F,x
time = 1

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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
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

[Command]
name = "holZ"
command = /$z
time = 1

[Command]
name = "charge"
command = /a

[Command]
name = "charge 1"
command = /x


---------------------------------------------------------------------------
; 2. State entry
--------------

[Statedef -1]

===========================================================================

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;========================/Inteligencia A/=================================

[State -1, IA]
type = VarSet
trigger1 = command = "IA 1"
trigger2 = command = "IA 2"
trigger3 = command = "IA 3"
trigger4 = command = "IA 4"
trigger5 = command = "IA 5"
trigger6 = command = "IA 6"
trigger7 = command = "IA 7"
trigger8 = command = "IA 8"
trigger9 = command = "IA 9"
trigger10 = command = "IA 10"
trigger11 = command = "IA 11"
trigger12 = command = "IA 12"
trigger12 = command = "IA 13"
trigger12 = command = "IA 14"
trigger12 = command = "IA 15"
trigger12 = command = "IA 16"
trigger12 = command = "IA 17"
trigger12 = command = "IA 18"
trigger12 = command = "IA 19"
trigger12 = command = "IA 20"
trigger12 = command = "IA 21"
v = 47
value = 1

; Fireball
[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2BodyDist x >= 60 && Random <= 500
trigger1 = Ctrl && P2StateType = S && StateType = S
trigger1 = Power >= 120
value = 250

; Ki
[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2BodyDist x >= 50 && Random >= 500
trigger1 = Ctrl && StateType = S
trigger1 = Power <= 2900
value = 1000

[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = Random >= 500
trigger1 = Ctrl && P2StateType = A && StateType = S
trigger1 = Power <= 2900
value = 1000

; Golpes Combinados
[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2BodyDist x <= 50 && Random <= 250
trigger1 = Ctrl && P2MoveType != A && P2StateType = S
trigger1 = Statetype = S
value = 200

[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2BodyDist x <= 50 && Random <= 100
trigger1 = Ctrl && P2MoveType != A && P2StateType = S
trigger1 = Statetype = S
value = 249

[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2BodyDist x <= 50 && Random <= 100
trigger1 = Ctrl && P2MoveType != A && P2StateType = S
trigger1 = Statetype = S
value = 240

[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2BodyDist x <= 50 && Random <= 250
trigger1 = Ctrl && P2MoveType != A && P2StateType != C
trigger1 = Statetype = S
value = 230

[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2BodyDist x <= 50 && Random <= 200
trigger1 = Ctrl && P2MoveType != A && P2StateType != C
trigger1 = Statetype = S
value = 220

[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(47) != 0
trigger1 = P2BodyDist x <= 50 && Random <= 250
trigger1 = Ctrl && P2MoveType != A && P2StateType != A
trigger1 = Statetype = C
value = 430

;Teletrans
[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2BodyDist x >= 85 && Random <= 250
trigger1 = Ctrl && P2MoveType != H && StateType != A
trigger1 = P2Statetype = S
value = 3000

;Cubrir
[State -1]
type = ChangeState
value = 130
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2bodydist X <= 40 || (enemy, NumProj >= 1) || P2movetype = A
trigger1 = random <= 450
trigger1 = ctrl
trigger1 = StateType = S

[State -1]
type = ChangeState
value = 130
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2bodydist X <= 40 || P2movetype = A
trigger1 = random <= 450
trigger1 = ctrl
trigger1 = StateType = S

[State -1]
type = ChangeState
value = 131
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2bodydist X <= 40 || P2movetype = A
trigger1 = random <= 450
trigger1 = ctrl
trigger1 = StateType = C

[State -1]
type = ChangeState
value = 132
triggerall = p2movetype = A || (enemy, NumProj >= 1)
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = statetype = A
triggerall = random <= 600
triggerall = var(47) = 1
triggerall = ctrl
triggerall = stateno != 132
trigger1 = p2statetype = A
trigger2 = (enemy, NumProj >= 1)

; Saltar
[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2StateType = A && Random <= 650
trigger1 = Ctrl && StateType = S
value = 40

;Atakes Aereos
[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2StateType = A && Random <= 200
trigger1 = Ctrl && StateType = A
value = 600

[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2StateType = A && Random <= 300
trigger1 = Ctrl && StateType = A
value = 610

[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2StateType = A && Random <= 200
trigger1 = Ctrl && StateType = A
value = 630

[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2StateType = A && Random <= 300
trigger1 = Ctrl && StateType = A
value = 640

;Taioken
[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2BodyDist X >= 80
trigger1 = StateType = S && Random <= 150
trigger1 = power >= 550
trigger1 = Ctrl
value = 300

;Kame Ha
[State -1]
type = ChangeState
triggerall = RoundState = 2 && Var(47) != 0
trigger1 = P2BodyDist X >= 210 || P2StateType != A
trigger1 = StateType = S && Random <= 700
trigger1 = power >= 2000
trigger1 = Ctrl
value = 4000

;===========================================================================
;===============================================================================
[State -1, Combo_X]
type = ChangeState
value = 249
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 220

[State -1, Combo_X.1]
type = ChangeState
value = 240
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 249

[State -1, Combo_X.1]
type = ChangeState
value = 240
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 249

[State -1, Combo_Z]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 230
trigger1 = AnimElem = 2, >3

[State -1, Combo_X.d]
type = ChangeState
value = 435
triggerall = command = "x"
triggerall = command != "holZ"
trigger1 = movecontact && stateno = 430

===========================================================================

[State -1, Correr]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

---------------------------------------------------------------------------

[State -1, Retroceder]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

---------------------------------------------------------------------------

[State -1, Puño Der]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

---------------------------------------------------------------------------

[State -1, Puño Izq]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

---------------------------------------------------------------------------

[State -1, Rodillazo]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = time > 3

---------------------------------------------------------------------------

[State -1, Patada Arriba]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = time > 1

__________________________________________________________________________

[State -1, Patada Media]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

---------------------------------------------------------------------------
;Taunt

[State -1, Saludo]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

---------------------------------------------------------------------------

[State -1, Puño Agachado Der]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

---------------------------------------------------------------------------

[State -1, Puño Agachado Izq]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

---------------------------------------------------------------------------

[State -1, Patada Agachado]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
--------------------------------------------------------------------------

[State -1, Patada Agachado 2]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
--------------------------------------------------------------------------

[State -1, Salto Golpe]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

---------------------------------------------------------------------------

[State -1, Salto Golpe Medio]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

---------------------------------------------------------------------------

[State -1, Salto Patada]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;------------------------------------------------------------------------

[State -1, Salto Patada Media]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

-----------------------------------------------------------------------------
;Taioken
[State -1, Taioken]
type = ChangeState
value = 300
triggerall = command = "Taioken"
triggerall = (Power >= 550)
trigger1 = statetype = S
trigger1 = ctrl


;-------------------------------------------------------
;FireBall
[State -1, Fireball]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = (Power >= 110)
trigger1 = statetype != A
trigger1 = ctrl
;-----------------------------------------------------------
;Teleport
[State -1, Zanzoken]
type = ChangeState
value = 3000
triggerall = Power >= 120
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;.-----------------------------------------------------------------
;Cargar ki
[State -1, Cargar Ki]
type = ChangeState
value = 1000
triggerall = ctrl = 1
triggerall = (Power < 2900)
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S

;-----------------------------------------------------------------

[State -1,Air Dash Forward]
type = ChangeState
value = 2000
triggerall = Var(2) = 0
trigger1 = (command = "FF") && (statetype = A) && (ctrl = 1)

[State -1,Air Dash Back]
type = ChangeState
value = 2100
triggerall = Var(2) = 0
trigger1 = (command = "BB") && (statetype = A) && (ctrl = 1)

;---------------------------------------------------------------------

[State -1, Kame Ha]
type = ChangeState
value = 4000
triggerall = command = "Kame Ha"
triggerall = (Power >= 2000)
trigger1 = var(1)

;-----------------------------------------------------------------------

[State -1, Blast Amarillo]
type = ChangeState
value = 3200
triggerall = command = "Blast Amarillo"
triggerall = (Power >= 1000)
trigger1 = var(1)

