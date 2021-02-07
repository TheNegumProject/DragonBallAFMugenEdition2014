;-| AI Command |--------------------------------
[Command]
name = "AI1"
command = a, a, a
time = 1

[Command]
name = "AI2"
command = c, c, c
time = 1

[Command]
name = "AI3"
command = x, x, x
time = 1

[Command]
name = "AI4"
command = z, z, z
time = 1

[Command]
name = "AI5"
command = a, c
time = 1

[Command]
name = "AI6"
command = c, a
time = 1

[Command]
name = "AI7"
command = x, z
time = 1

[Command]
name = "AI8"
command = z, x
time = 1

[Command]
name = "AI9"
command = a, c, a
time = 1

[Command]
name = "AI10"
command = c, a, c
time = 1

[Command]
name = "AI11"
command = x, z, x
time = 1

[Command]
name = "AI12"
command = z, x, z
time = 1

[Command]
name = "AI13"
command = D, DB, B ,a, a, a
time = 1

[Command]
name = "AI14"
command = D, DB, B ,c, c, c
time = 1

[Command]
name = "AI15"
command = D, DB, B ,x, x, x
time = 1

[Command]
name = "AI16"
command = D, DB, B ,z, z, z
time = 1

[Command]
name = "AI17"
command = D, DB, B ,a, c
time = 1

[Command]
name = "AI18"
command = D, DB, B ,c, a
time = 1

[Command]
name = "AI19"
command = D, DB, B ,x, z
time = 1

[Command]
name = "AI20"
command = D, DB, B ,z, x
time = 1

[Command]
name = "AI21"
command = D, DB, B ,a, c, a
time = 1

[Command]
name = "AI22"
command = D, DB, B ,c, a, c
time = 1

[Command]
name = "AI23"
command = D, DB, B ,x, z, x
time = 1

[Command]
name = "AI24"
command = D, DB, B ,z, x, z
time = 1

[Command]
name = "AI25"
command = a, a, a+b
time = 1

[Command]
name = "AI26"
command = b, c, a+b
time = 1

[Command]
name = "AI27"
command = a, c, a+b
time = 1

[Command]
name = "AI28"
command = c, a, a+b
time = 1

[Command]
name = "AI29"
command = x, x, x+y
time = 1

[Command]
name = "AI30"
command = y, y, x+y
time = 1

[Command]
name = "AI31"
command = x, y, x+y
time = 1

[Command]
name = "AI32"
command = z, x, x+y
time = 1

[Command]
name = "AI33"
command = a, a, a, a+b
time = 1

[Command]
name = "AI34"
command = x, x, x, x+y
time = 1



[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15

command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "super_explosion"
command = ~D, DF, F, D, DF, F, x
time = 40

[Command]
name = "bazooka"
command = ~D, DF, F, D, DF, F, b
time = 40

[Command]
name = "cruel"
command = ~D, DF, F, D, DF, F, a
time = 40




;-| Special Motions |------------------------------------------------------

; Shoryuken
[Command]
name = "shoryuken_x"
command = ~DB, B, a
;command = ~DF, F, a
[Command]
name = "shoryuken_y"
command = ~DB, B, b
;command = ~DF, F, b
[Command]
name = "shoryuken_z"
command = ~DF, F,  c
;command = ~DF, F, c

; Hadoken
[Command]
name = "hadoken_x"
command = ~DB, B, x

[Command]
name = "hadoken_y"
command = ~DF, F, y

[Command]
name = "hadoken_z"
command =  ~DF, F, z

;-----------------
; specials
[Command]
name = "Jagkick_a"
;command = ~B, D, DB, a
command = ~DB, B, a

[Command]
name = "Jagkick_b"
;command = ~B, D, DB, b
command = ~DB, B, b

[Command]
name = "Jagkick_c"
;command = ~B, D, DB, c
command = ~DB, B, c


[Command]
name="DD"
command= a+b

[Command]
name="DD"
command= b+c




;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 15

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
time = 15

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 15

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 15

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = z
time = 1
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1
[Command]
name = "recovery";Required (do not remove)
command = b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = c
time = 1


;-| Dir + Button |---------------------------------------------------------
;[Command]
;name = "down_a"
;command = /$D,a
;time = 1

;[Command]
;name = "down_b"
;command = /$D,b
;time = 1

;-| Single Button |---------------------------------------------------------
;parry

[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "up"
command = $U
time = 1

;--------------------------------------

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
name = "holds"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]                       ;N/A
name = "holDB"                  ;N/A
command = /b                    ;N/A (Impenetrable Ki )
time = 1

[Command]                       ;N/A
name = "holdx"                  ;N/A
command = /x                    ;N/A (Impenetrable Ki )
time = 1

[Command]                       ;N/A
name = "holdc"                  ;N/A
command = /c                    ;N/A (Impenetrable Ki )
time = 1

[Command]                       ;N/A
name = "holdB"                  ;N/A
command = /b                    ;N/A (Impenetrable  KiBarrier)
time = 1

[Command]                       ;N/A
name = "holda"                  ;N/A
command = /y                    ;N/A (Impenetrable ki )
time = 1


[Command]                       ;N/A
name = "holdb"                  ;N/A
command = /b                    ;N/A (Impenetrable  Ki )
time = 1

[Command]                       ;N/A
name = "holdy"                  ;N/A
command = /y                    ;N/A (Impenetrable ki )
time = 1


[Command]                       ;N/A
name = "holdz"                  ;N/A
command = /z                    ;N/A (Impenetrable ki )
time = 1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;==============================================================

;Fly Up Air Command
[State -1]
type = ChangeState
value = 2000
triggerall = command = "holds"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Fly up
[State -1]
type = ChangeState
value = 1999
triggerall = command = "holds"
trigger1 = statetype != A
trigger1 = ctrl = 1






; Super Explosion
[State -1]
type = ChangeState
value = 20001
triggerall = command = "super_explosion"
triggerall = power = 3000 ;Level 3 super
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = A
;trigger2 = ctrl = 1
trigger3 = hitdefattr = SCA, NA, SA
trigger4 = stateno = 2000




;==================Delightful Shower

;Delightful Shower
[State -1]
type = ChangeState
value = 3200
triggerall = command = "bazooka"
triggerall = power >= 2000 ;Level 2 super
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = A
;trigger2 = ctrl = 1
trigger3 = hitdefattr = SCA, NA, SA
trigger4 = stateno = 2000
;==================Delightful Shower FIN


;Cruel Hunting
[State -1]
type = ChangeState
value = 3000
triggerall = command = "cruel"
triggerall = power >= 1000 ;Level 1 super
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 216
trigger6 = stateno = 220
trigger7 = stateno = 222
trigger8 = stateno = 225
trigger9 = stateno = 230
trigger10 = stateno = 240
trigger11 = stateno = 250
trigger12 = stateno = 400
trigger13 = stateno = 410
trigger14 = stateno = 420
trigger15 = stateno = 430
trigger16 = stateno = 440
trigger17 = stateno = 450
trigger18 = stateno = 2000

[State -1,];------------------( Hadouken Fraco no Ar )--------
type = ChangeState
value = 1050
triggerall = command = "hadoken_x"
triggerall = numproj = 0
triggerall = power >= 210
trigger1 = statetype = A
;trigger1 = ctrl = 1
trigger2 = ((stateno >= 600) && (stateno <= 1099))
trigger2 = movecontact = 1


[State -1,];------------------( Hadouken Medio no Ar )--------
type = ChangeState
value = 1051
triggerall = command = "hadoken_y"
triggerall = numproj = 0
triggerall = power >= 240
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((stateno >= 600) && (stateno <= 1099))
trigger2 = movecontact = 1

[State -1,];------------------( Hadouken Forte no Ar )--------
type = ChangeState
value = 1052
triggerall = command = "hadoken_z"
triggerall = numproj = 0
triggerall = power >= 270
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((stateno >= 600) && (stateno <= 1099))
trigger2 = movecontact = 1


;---------------------------------------------------------------------------
; Light Shoryuken
[State -1, Shoryuken_x]
type = ChangeState
value = 1010
triggerall = command = "shoryuken_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 2000

[State -1, Shoryuken_x]
type = ChangeState
value = 1010
triggerall = command = "shoryuken_x"
triggerall = statetype != A
triggerall = movecontact
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 216
trigger6 = stateno = 220
trigger7 = stateno = 222
trigger8 = stateno = 225
trigger9 = stateno = 230
trigger10 = stateno = 240
trigger11 = stateno = 250
trigger12 = stateno = 400
trigger13 = stateno = 410
trigger14 = stateno = 420
trigger15 = stateno = 430
trigger16 = stateno = 440
trigger17 = stateno = 450
trigger18 = stateno = 2000

;---------------------------------------------------------------------------
; Medium Shoryuken
[State -1, Shoryuken_y]
type = ChangeState
value = 1020
triggerall = command = "shoryuken_y"
triggerall = statetype != A
trigger1 = ctrl

[State -1, Shoryuken_y]
type = ChangeState
value = 1020
triggerall = command = "shoryuken_y"
triggerall = statetype != A
triggerall = movecontact
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 216
trigger6 = stateno = 220
trigger7 = stateno = 222
trigger8 = stateno = 225
trigger9 = stateno = 230
trigger10 = stateno = 240
trigger11 = stateno = 250
trigger12 = stateno = 400
trigger13 = stateno = 410
trigger14 = stateno = 420
trigger15 = stateno = 430
trigger16 = stateno = 440
trigger17 = stateno = 450

;---------------------------------------------------------------------------
; Hard Shoryuken
[State -1, Shoryuken_x]
type = ChangeState
value = 1030
triggerall = command = "shoryuken_z"
triggerall = statetype != A
trigger1 = ctrl

[State -1, Shoryuken_x]
type = ChangeState
value = 1030
triggerall = command = "shoryuken_z"
triggerall = statetype != A
triggerall = movecontact
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 216
trigger6 = stateno = 220
trigger7 = stateno = 222
trigger8 = stateno = 225
trigger9 = stateno = 230
trigger10 = stateno = 240
trigger11 = stateno = 250
trigger12 = stateno = 400
trigger13 = stateno = 410
trigger14 = stateno = 420
trigger15 = stateno = 430
trigger16 = stateno = 440
trigger17 = stateno = 450
;======================|ZANZOKEN|=========================
[State -1]
type = ChangeState
value = 2006
triggerall = var(9) = 0
triggerall = command = "holdc"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000        ;Can be done while flying.

trigger3 = stateno >= 150        ;Can be done while guarding.
trigger3 = stateno <= 153
trigger3 = Time >= 20            ;This specifies what time must pass before
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 216
trigger6 = stateno = 220
trigger7 = stateno = 222
trigger8 = stateno = 225
trigger9 = stateno = 230
trigger10 = stateno = 240
trigger11 = stateno = 250
trigger12 = stateno = 400
trigger13 = stateno = 410
trigger14 = stateno = 420
trigger15 = stateno = 430
trigger16 = stateno = 440
trigger17 = stateno = 450
;triggerall = (roundstate != [0,1]) || (roundstate != [3,4]) 
;triggerall = Var(30) = 59
;triggerall = statetype = S
;triggerall = statetype != A
;triggerall = ctrl
;triggerall = numhelper(4) = 1
;triggerall = helper(4), movecontact = 0
;triggerall = Frontedgebodydist > 150
;trigger1 = P2BodyDist X = [50,200]
;trigger1 = random <= 50

;[State -1]
;type = ChangeState
;value = 102006
;triggerall =  var(9) = 1
;triggerall = command = "DD"
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = stateno = 2000        ;Can be done while flying.

;trigger3 = stateno >= 150        ;Can be done while guarding.
;trigger3 = stateno <= 153
;trigger3 = Time >= 20            ;This specifies what time must pass before

;---------------------------------------------------------------------------
;Jaguar_kick_a
[State -1]
type = ChangeState
value = 1001
triggerall = command = "Jagkick_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 216
trigger6 = stateno = 220
trigger7 = stateno = 222
trigger8 = stateno = 225
trigger9 = stateno = 230
trigger10 = stateno = 240
trigger11 = stateno = 250
trigger12 = stateno = 400
trigger13 = stateno = 410
trigger14 = stateno = 420
trigger15 = stateno = 430
trigger16 = stateno = 440
trigger17 = stateno = 450

;---------------------------------------------------------------------------
;Jaguar_kick_b
[State -1]
type = ChangeState
value = 1101
triggerall = command = "Jagkick_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 216
trigger6 = stateno = 220
trigger7 = stateno = 222
trigger8 = stateno = 225
trigger9 = stateno = 230
trigger10 = stateno = 240
trigger11 = stateno = 250
trigger12 = stateno = 400
trigger13 = stateno = 410
trigger14 = stateno = 420
trigger15 = stateno = 430
trigger16 = stateno = 440
trigger17 = stateno = 450

;---------------------------------------------------------------------------
;Jaguar_kick_c
[State -1]
type = ChangeState
value = 1201
triggerall = command = "Jagkick_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 216
trigger6 = stateno = 220
trigger7 = stateno = 222
trigger8 = stateno = 225
trigger9 = stateno = 230
trigger10 = stateno = 240
trigger11 = stateno = 250
trigger12 = stateno = 400
trigger13 = stateno = 410
trigger14 = stateno = 420
trigger15 = stateno = 430
trigger16 = stateno = 440
trigger17 = stateno = 450


;---------------------------------------------------------------------------
; Light Hadoken (Ground)
[State -1, hadoken_x]
type = ChangeState
value = 1300
triggerall = numproj = 0
triggerall = power >= 210
triggerall = command = "hadoken_x"
triggerall = statetype != A
trigger1 = ctrl

[State -1, hadoken_x]
type = ChangeState
value = 1300
triggerall = numproj = 0
triggerall = power >= 210
triggerall = command = "hadoken_x"
triggerall = statetype != A
triggerall = movecontact
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 216
trigger6 = stateno = 220
trigger7 = stateno = 222
trigger8 = stateno = 225
trigger9 = stateno = 230
trigger10 = stateno = 240
trigger11 = stateno = 250
trigger12 = stateno = 400
trigger13 = stateno = 410
trigger14 = stateno = 420
trigger15 = stateno = 430
trigger16 = stateno = 440
trigger17 = stateno = 450

;---------------------------------------------------------------------------
; Medium Hadoken (Ground)
[State -1, hadoken_y]
type = ChangeState
value = 1310
triggerall = numproj = 0
triggerall = power >= 240
triggerall = command = "hadoken_y"
triggerall = statetype != A
trigger1 = ctrl

[State -1, hadoken_y]
type = ChangeState
value = 1310
triggerall = numproj = 0
triggerall = power >= 240
triggerall = command = "hadoken_y"
triggerall = statetype != A
triggerall = movecontact
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 216
trigger6 = stateno = 220
trigger7 = stateno = 222
trigger8 = stateno = 225
trigger9 = stateno = 230
trigger10 = stateno = 240
trigger11 = stateno = 250
trigger12 = stateno = 400
trigger13 = stateno = 410
trigger14 = stateno = 420
trigger15 = stateno = 430
trigger16 = stateno = 440
trigger17 = stateno = 450

;---------------------------------------------------------------------------
; Hard Hadoken (Ground)
[State -1, hadoken_z]
type = ChangeState
value = 1320
triggerall = numproj = 0
triggerall = power >= 270
triggerall = command = "hadoken_z"
triggerall = statetype != A
trigger1 = ctrl

[State -1, hadoken_z]
type = ChangeState
value = 1320
triggerall = numproj = 0
triggerall = power >= 270
triggerall = command = "hadoken_z"
triggerall = statetype != A
triggerall = movecontact
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 216
trigger6 = stateno = 220
trigger7 = stateno = 222
trigger8 = stateno = 225
trigger9 = stateno = 230
trigger10 = stateno = 240
trigger11 = stateno = 250
trigger12 = stateno = 400
trigger13 = stateno = 410
trigger14 = stateno = 420
trigger15 = stateno = 430
trigger16 = stateno = 440
trigger17 = stateno = 450

;---------------------------------------------------------------------------
;Impenetrable ki 3004




[State -1]
type = ChangeState
value = 3004
triggerall = PalNo = [1, 6]
triggerall = command = "holdz"
triggerall = Var(9) = 0
triggerall = power < 3000
trigger1 = statetype = S         ;Can only be done while on the ground.
trigger1 = ctrl = 1              ;Can be done as long as you have control.
trigger2 = stateno = 2000

;ƒK[ƒhƒLƒƒƒ“ƒZƒ‹UŒ‚ ssj
;[State -1]
;type = ChangeState
;value = 103004
;triggerall = PalNo = [1, 6]
;triggerall = command = "holdb"
;triggerall = command = "holdy"
;triggerall = Var(9) = 1
;trigger1 = statetype = S         ;Can only be done while on the ground.
;trigger1 = ctrl = 1              ;Can be done as long as you have control.


;--------------------------------| Description |----------------------------

;--------------------------------| Description |----------------------------

;Impenetrable ki - Counter
[State -1]
type = ChangeState
value = 3004
triggerall = command = "holdz"
triggerall = Alive = 1
triggerall = var(5) != 0
triggerall = Var(9) = 0
trigger1 = stateno = 5035
trigger2 = stateno = 5020
trigger3 = stateno = 5030
trigger4 = stateno = 5050
trigger5 = stateno = 5040
trigger6 = stateno = 5071
trigger7 = stateno = 5000
trigger8 = stateno = 5001
trigger9 = stateno = 5002
trigger10 = stateno = 5010
trigger11 = stateno = 5011
trigger12 = stateno = 5012
trigger13 = stateno = 5020
trigger14 = stateno = 5021
trigger15 = stateno = 5022
trigger16 = stateno = 5110
trigger17 = stateno = 5120

;Impenetrable ki 3004 END
;---------------------------------------------------------------------------

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
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


;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


--------------------------------------------------------------------------
;;Taunt
;;’§”­
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl






;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;----------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger3 = stateno = 2000

;----------------------------------------------

;Stand Mediun Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 2000

;----------------------------------------------
;Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = command != "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 2000

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = movecontact = 1
trigger3 = (stateno = 200) && time > 7
trigger4 = (stateno = 230) && time > 9
trigger5 = stateno = 2000

;---------------------------------------------------------------------------
;Standing mediun Kick
[State -1, Standing mediun Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = movecontact = 1
trigger3 = StateNo = 210
trigger3 = movecontact = 1
trigger4 = StateNo = 230
trigger4 = movecontact = 1
trigger5 = (stateno = 200) && time > 5
trigger6 = (stateno = 230) && time > 6
trigger7 = stateno = 2000

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = movecontact = 1
trigger3 = StateNo = 210
trigger3 = movecontact = 1
trigger4 = StateNo = 220
trigger4 = movecontact = 1
trigger5 = StateNo = 230
trigger5 = movecontact = 1
trigger6 = StateNo = 240
trigger6 = movecontact = 1
trigger7 = (stateno = 200) && time > 5
trigger8 = (stateno = 230) && time > 6
trigger9 = stateno = 2000

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching mediun Punch (soco médio agaichado)
[State -1, Crouching Mediun Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 430
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Strong Punch (soco Forte agaichado)
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1
trigger4 = stateno = 430
trigger4 = movecontact = 1
trigger5 = stateno = 440
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Light kick
[State -1, Crouching Light kcik]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 430
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching mediun Kick (Chute médio agaichado)
[State -1, Crouching Mediun kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1
trigger4 = stateno = 430
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Strong Kick (Chute Forte agaichado)
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1
trigger4 = stateno = 430
trigger4 = movecontact = 1
trigger5 = stateno = 440
trigger5 = movecontact = 1

; Jumping Light Punch (Soco Fraco no ar)
[State -1, Jumping Light Punch]
type = ChangeState
Value = 600
triggerall = var(30) = 0
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 || stateno = 603
trigger2 = movecontact = 1
trigger3 = var(10) > 0
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
; Jumping Mediun Punch (Soco Médio no ar)
[State -1, Jumping Mediun Punch]
type = ChangeState
value = 610
triggerall = var(7) = 0
triggerall = StateType = A
triggerall = command = "y"
trigger1 = ctrl = 1
trigger2 = StateNo = 600
trigger2 = movecontact = 1
trigger3 = StateNo = 630
trigger3 = movecontact = 1
trigger4 = StateNo = 900 && PrevStateNo != [150,154]
trigger5 = StateNo = 920 && PrevStateNo != [150,154]
trigger6 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Jumping Hard Punch (Soco Forte no ar)
[State -1, Jumping Hard Punch]
type = ChangeState
value = 620
triggerall = var(30) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = StateNo = 600
trigger2 = command != "holdup" 
trigger2 = movecontact = 1
trigger3 = StateNo = 610
trigger3 = command != "holdup" 
trigger3 = movecontact = 1
trigger4 = StateNo = 630
trigger4 = command != "holdup" 
trigger4 = movecontact = 1
trigger5 = StateNo = 640
trigger5 = command != "holdup" 
trigger5 = movecontact = 1
trigger6 = stateno = 600 || stateno = 603 || stateno = 605 || stateno = 610 || stateno = 613 || stateno = 615
trigger6 = movecontact = 1
trigger7 = var(10) > 0
trigger7 = movecontact = 1

;---------------------------------------------------------------------------
; Jumping Light Kick (Chute Fraco no ar)
[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerall = var(7) = 0
triggerall = StateType = A
triggerall = command = "a"
trigger1 = ctrl = 1
trigger2 = StateNo = 600
trigger2 = movecontact = 1
trigger3 = StateNo = 900 && PrevStateNo != [150,154]
trigger4 = StateNo = 920 && PrevStateNo != [150,154]
trigger5 = StateNo = 940 && PrevStateNo != [150,154]

; Jumping Mediun Kick (Chute Médio no ar)
[State -1, Jumping Mediun Kick]
type = ChangeState
value = 640
triggerall = var(7) = 0
triggerall = StateType = A
triggerall = command = "b"
trigger1 = ctrl = 1
trigger2 = StateNo = 600
trigger2 = movecontact = 1
trigger3 = StateNo = 610
trigger3 = movecontact = 1
trigger4 = StateNo = 630
trigger4 = movecontact = 1
trigger5 = StateNo = 900 && PrevStateNo != [150,154]
trigger6 = StateNo = 920 && PrevStateNo != [150,154]
trigger7 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Jumping Hard Kick (Chute Forte no ar)
[State -1]
type = ChangeState
value = 650
triggerall = var(7) = 0
triggerall = StateType = A
triggerall = command = "c"
trigger1 = ctrl = 1
trigger2 = StateNo = 600
trigger2 = command != "holdup" 
trigger2 = movecontact = 1
trigger3 = StateNo = 610
trigger3 = command != "holdup" 
trigger3 = movecontact = 1
trigger4 = StateNo = 620
trigger4 = command != "holdup" 
trigger4 = movecontact = 1
trigger5 = StateNo = 630
trigger5 = command != "holdup" 
trigger5 = movecontact = 1
trigger6 = StateNo = 640
trigger6 = command != "holdup" 
trigger6 = movecontact = 1
trigger7 = StateNo = 900 && PrevStateNo != [150,154]
trigger8 = StateNo = 920 && PrevStateNo != [150,154]
trigger9 = StateNo = 940 && PrevStateNo != [150,154]














[State -1, AI]
type = Varset
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
trigger32 = command = "AI32"
trigger33 = command = "AI33"
trigger34 = command = "AI34"
v = 59
value = 1

[State -1, AI]
type = Varset
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
v = 59
value = 1


;Guarding states

[State -1, AI Standing Guard]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 800
value = 130

[State -1, AI Stand to Crouch Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -1, AI Crouching Guard]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 800
value = 131

[State -1, AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1,AI Aerial Guard]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 800
value = 132
