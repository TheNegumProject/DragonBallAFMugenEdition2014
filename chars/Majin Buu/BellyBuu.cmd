;-| Super Motions |--------------------------------------------------------

[Command]
name = "BEcounter"
command = x+y+z
time = 1

[Command]
name = "kiexplosion"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "candy"
command = ~D, DF, F, D, DF, F, a
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "shbs"
command = ~D,DF,F, x
time = 20

[Command]
name = "Ki Shot"
command = ~D,DF,F,a
time = 20

[Command]
name = "superjump"
command = D,U
time = 20

[Command]
name = "superjumpf"
command = D,UF
time = 20

[Command]
name = "superjumpb"
command = D,UB
time = 20

[Command]
name = "AI1"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI2"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI3"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI4"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI5"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI6"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI7"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI8"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI9"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI10"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI11"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI12"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI13"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI14"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI15"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI16"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI17"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI18"
command = a,a,a,a,a,a
time = 1

[Command]
name = "AI19"
command = a,a,a,a,a,a
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "DD";Required (do not remove)
command = D, D
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

[Command]
name = "UU";Required (do not remove)
command = U, U
time = 10
;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "fly"
command = a+x
time = 1

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

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holda"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /a
time = 1

[Command]
name = "holdx"
command = /z
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /x
time = 1

[Command]
name = "holds"
command = /s
time = 1

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
;   . . .  (any additional triggers)

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;Candy
[State -1]
type = ChangeState
value = 3200
triggerall = var(1) != 1
triggerall = command = "candy"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1

;Body Explosion Counter
[State -1]
type = ChangeState
value = 3100
triggerall = var(1) != 1
triggerall = command = "BEcounter"
triggerall = power >= 1000
triggerall = ctrl = 0
triggerall = alive = 1
trigger1 = Movetype = H
trigger1 = statetype = S
trigger2 = Movetype = H
trigger2 = statetype = A
trigger3 = stateno = 130
trigger4 = stateno = 132

;Ki Explosion
[State -1]
type = ChangeState
value = 3000
triggerall = var(1) != 1
triggerall = command = "kiexplosion"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Throw
[State -1]
type = ChangeState
value = 800
triggerall = var(1) != 1
triggerall = command = "x"
triggerall = statetype = S && ctrl
triggerall = P2bodydist X <= 10
trigger1 = command = "holdfwd"
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;Skin Hold Butt Slam
[State -1]
type = ChangeState
value = 1101
triggerall = var(1) != 1
triggerall = command = "shbs"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Ki Shot
[State -1]
type = ChangeState
value = 2050
triggerall = var(1) != 1
triggerall = command = "Ki Shot"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 401 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 411 && movecontact
trigger7 = stateno = 200 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 201 && movecontact
trigger10 = stateno = 211 && movecontact
;---------------------------------------------------------------------------
;Power Up
[State -1]
type = ChangeState
value = 730
triggerall = var(1) != 1
triggerall = command = "holdc"
triggerall = command = "holdz"
triggerall = Power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
;---------------------------------------------------------------------------
;Zanzoken
[State -1]
type = ChangeState
value = 1000
triggerall = var(1) != 1
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Fly 
[State -1]
type = ChangeState
value = 1510
triggerall = var(1) != 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = command = "c"

; Fly After Jumping 
[State -1]
type = ChangeState
value = 1500
triggerall = var(1) != 1
triggerall = Var(2) != 1
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = stateno != 1500

;Land
[State -1]
type = ChangeState
value = 15100
triggerall = var(1) != 1
triggerall = Var(2) != 1
trigger1 = command = "c"
trigger1 = stateno = 1500
;---------------------------------------------------------------------------
;Super Jump
[State -1]
type = Changestate
value = 1040
triggerall = var(1) != 1
triggerall = command = "superjump"
triggerall = (statetype = S) && (ctrl = 1)
trigger1 = Var(1) != 1
trigger2 = Var(1) = 1
trigger2 = p2bodydist X <= 20

;Super Jump
[State -1]
type = Changestate
value = 1041
triggerall = var(1) != 1
triggerall = command = "superjumpf"
triggerall = (statetype = S) && (ctrl = 1)
trigger1 = Var(1) != 1

;Super Jump
[State -1]
type = Changestate
value = 1042
triggerall = var(1) != 1
triggerall = command = "superjumpb"
triggerall = (statetype = S) && (ctrl = 1)
trigger1 = Var(1) != 1
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = var(1) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
triggerall = var(1) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand_a
[State -1]
type = ChangeState
value = 200
triggerall = var(1) != 1
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command != "holddown"
trigger2 = stateno = 1500
;---------------------------------------------------------------------------
;Stand_b
[State -1]
type = ChangeState
value = 201
triggerall = var(1) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
;---------------------------------------------------------------------------
;Stand_x
[State -1]
type = ChangeState
value = 210
triggerall = var(1) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = stateno = 200 && movecontact
;--------------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 211
triggerall = var(1) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 210 && movecontact
;---------------------------------------------------------------------------
;Crouch_a
[State -1]
type = ChangeState
value = 400
triggerall = var(1) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact && pos y > -10
;---------------------------------------------------------------------------
;Crouch_b
[State -1]
type = ChangeState
value = 401
triggerall = var(1) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 200 && movecontact && pos y > -10
trigger5 = stateno = 201 && movecontact && pos y > -10
trigger6 = stateno = 210 && movecontact && pos y > -10
;---------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 410
triggerall = var(1) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 200 && movecontact && pos y > -10
trigger4 = stateno = 210 && movecontact && pos y > -10
;---------------------------------------------------------------------------
;Crouch_y
[State -1]
type = ChangeState
value = 411
triggerall = var(1) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 401 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 200 && movecontact && pos y > -10
trigger6 = stateno = 201 && movecontact && pos y > -10
trigger7 = stateno = 210 && movecontact && pos y > -10
trigger8 = stateno = 211 && movecontact && pos y > -10
;---------------------------------------------------------------------------
;Jump_a
[State -1]
type = ChangeState
value = 600
triggerall = var(1) != 1
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_b
[State -1]
type = ChangeState
value = 601
triggerall = var(1) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
;---------------------------------------------------------------------------
;Jump_x
[State -1]
type = ChangeState
value = 610
triggerall = var(1) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact
;---------------------------------------------------------------------------
;Jump_y
[State -1]
type = ChangeState
value = 611
triggerall = var(1) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 601 && movecontact
trigger4 = stateno = 610 && movecontact
;---------------------------------------------------------------------------
[State -1]
type = SuperPause
trigger1 = P1name != "PexBuu"
time = 100000000000000000000

;AI Activation
[State -1]
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
v = 1
value = 1

;AI Activation Reset
[State -1]
type = Varset
trigger1 = win
v = 1
value = 0
