;===========================================================================
;Marvel vs. Capcom - Eternity of Heroes - Commands Template
;by REDHOT & Acey
;===========================================================================

;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

;-|-AI-|--------------------------------------------------------------------
[Command]
name = "AI_1"
command = a, x, F, D, a, a, D
time = 1

[Command]
name = "AI_2"
command = a, a, a, a, a, a, b
time = 1

[Command]
name = "AI_3"
command = a, a, b, D, F, b, x
time = 1

[Command]
name = "AI_4"
command = y, a, F, b, B, y, a
time = 1

[Command]
name = "AI_5"
command = a, b, x, y, y, b, b
time = 1

[Command]
name = "AI_6"
command = b, y, y, F, b, B, B
time = 1

[Command]
name = "AI_7"
command = a, y, F, a, x, a, F, b
time = 1

[Command]
name = "AI_8"
command = a, a, b, y, x, B, x
time = 1

[Command]
name = "AI_9"
command = x, x, a, F, F, b, D
time = 1

[Command]
name = "AI_10"
command = x, x, a, F, y, a, a, F
time = 1

[Command]
name = "AI_11"
command = a, b, a, x, a, y, a
time = 1

[Command]
name = "AI_12"
command = b, y, a, F, y, a, x
time = 1

[Command]
name = "AI_13"
command = x, a, y, y, x, B, B
time = 1

[Command]
name = "AI_14"
command = a, F, F, x, B, F, x
time = 1

[Command]
name = "AI_15"
command = y, x, b, b, a, x, y
time = 1

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Hyper1

[Command]
name = "Hyper2"
command = ~D, DB, B, x+y

[Command]
name = "Hyper2"
command = ~D, DB, B, x+z

[Command]
name = "Hyper2"
command = ~D, DB, B, y+z

;---------------------------------------------------------------------------
;Hyper2

[Command]
name = "Hyper1"
command = ~D, DB, B, a+b

[Command]
name = "Hyper1"
command = ~D, DB, B, a+c

[Command]
name = "Hyper1"
command = ~D, DB, B, b+c

;---------------------------------------------------------------------------
;Fireball

[Command]
name = "Fireballx"
command = ~D,DF,F, x

[Command]
name = "Firebally"
command = ~D,DF,F, y

[Command]
name = "Fireballz"
command = ~D,DF,F, z

;---------------------------------------------------------------------------
;Wind

[Command]
name = "Winda"
command = ~D,DF,F, a

[Command]
name = "Windb"
command = ~D,DF,F, b

[Command]
name = "Windc"
command = ~D,DF,F, c

;-------------------------------------------------------------------------
;Special2

[Command]
name = "Special"
command = ~D,DB,B, a

[Command]
name = "Special"
command = ~D,DB,B,b

[Command]
name = "Special"
command = ~D,DB,B,c

;-------------------------------------------------------------------------
;Counter

[Command]
name = "Counter"
command = ~F, x+a

[Command]
name = "Counter"
command = ~F, y+b

[Command]
name = "Counter"
command = ~F, z+c

[Command]
name = "236Z"
command = z+y+x

;---------------------------------------------------------------------------
; Roll

[Command]
name = "roll_n"
command = ~B, D, DB, x

[Command]
name = "roll_m"
command = ~B, D, DB,  y

[Command]
name = "roll_f"
command = ~B, D, DB, z


;---------------------------------------------------------------------------
; Forward Recovery Roll or Alpha Counter1

[Command]
name = "ac_f_roll_n"
command = ~B, DB, D, x

[Command]
name = "ac_f_roll_m"
command = ~B, DB, D, y

[Command]
name = "ac_f_roll_f"
command = ~B, DB, D, z

;---------------------------------------------------------------------------
; Backward Recovery Roll or Alpha Counter2

[Command]
name = "ac_sweep_b_roll_n"
command = ~B, DB, D, a

[Command]
name = "ac_sweep_b_roll_m"
command = ~B, DB, D, b

[Command]
name = "ac_sweep_b_roll_f"
command = ~B, DB, D, c

;---------------------------------------------------------------------------------------------
;Super Jump

[Command]
name = "Super_Jump"
command = ~D, U
time = 10

[Command]
name = "Super_Jump"
command = x+y+z
time = 5

;---------------------------------------------------------------------------------------------
;Double_Tap
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
;2/3 button combination
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

[Command]
name = "throw_p"
command = x+y
time = 5

[Command]
name = "throw_p"
command = y+z
time = 5

[Command]
name = "throw_p"
command = x+z
time = 5

[Command]
name = "throw_k"
command = a+b
time = 5

[Command]
name = "throw_k"
command = b+c
time = 5

[Command]
name = "throw_k"
command = a+c
time = 5

;---------------------------------------------------------------------------------------------
;Dir + button
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1

;---------------------------------------------------------------------------------------------
;One button
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

;---------------------------------------------------------------------------------------------
;Hold button
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "pc1"
command = b+y

[Command]
name = "ki"
command = /b+y

;---------------------------------------------------------------------------------------------
;Hold dir
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

[Command]
name = "SJ"
command = $D, $U

;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

[Statedef -1]


;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

;-----------------------------

[State -1, Fireball]
type = ChangeState
value = 1000
triggerall = StateType = S
triggerall = Command = "Fireballx"
triggerall = NumProj = 0
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 220
trigger3 = MoveContact
trigger3 = StateNo = 230
trigger4 = MoveContact
trigger4 = StateNo = 240
trigger5 = MoveContact
trigger5 = StateNo = 250
trigger6 = MoveContact
trigger6 = StateNo = 400
trigger7 = MoveContact
trigger7 = StateNo = 410
trigger8 = MoveContact
trigger8 = StateNo = 420
trigger9 = MoveContact
trigger9 = StateNo = 430
trigger10 = MoveContact
trigger10 = StateNo = 440
trigger11 = MoveContact
trigger11 = StateNo = 450
trigger12 = MoveContact
trigger12 = StateNo = 200 || StateNo = 210

[State -1, Fireball]
type = ChangeState
value = 1010
triggerall = StateType = S
triggerall = Command = "Firebally"
triggerall = NumProj = 0
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 220
trigger3 = MoveContact
trigger3 = StateNo = 230
trigger4 = MoveContact
trigger4 = StateNo = 240
trigger5 = MoveContact
trigger5 = StateNo = 250
trigger6 = MoveContact
trigger6 = StateNo = 400
trigger7 = MoveContact
trigger7 = StateNo = 410
trigger8 = MoveContact
trigger8 = StateNo = 420
trigger9 = MoveContact
trigger9 = StateNo = 430
trigger10 = MoveContact
trigger10 = StateNo = 440
trigger11 = MoveContact
trigger11 = StateNo = 450
trigger12 = MoveContact
trigger12 = StateNo = 200 || StateNo = 210

[State -1, Fireball]
type = ChangeState
value = 1020
triggerall = StateType = S
triggerall = Command = "Fireballz"
triggerall = NumProj = 0
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 220
trigger3 = MoveContact
trigger3 = StateNo = 230
trigger4 = MoveContact
trigger4 = StateNo = 240
trigger5 = MoveContact
trigger5 = StateNo = 250
trigger6 = MoveContact
trigger6 = StateNo = 400
trigger7 = MoveContact
trigger7 = StateNo = 410
trigger8 = MoveContact
trigger8 = StateNo = 420
trigger9 = MoveContact
trigger9 = StateNo = 430
trigger10 = MoveContact
trigger10 = StateNo = 440
trigger11 = MoveContact
trigger11 = StateNo = 450
trigger12 = MoveContact
trigger12 = StateNo = 200 || StateNo = 210

;-----------------------------

[State -1, Air Fireball]
type = ChangeState
value = 1050
triggerall = StateType = A
triggerall = stateno != 1110
triggerall = stateno != 1100
triggerall = stateno < 10000
triggerall = NumProj = 0
trigger1 = Command = "Fireballx"

[State -1, Air Fireball]
type = ChangeState
value = 1060
triggerall = StateType = A
triggerall = stateno != 1110
triggerall = stateno != 1100
triggerall = stateno < 10000
triggerall = NumProj = 0
trigger1 = Command = "Firebally"

[State -1, Air Fireball]
type = ChangeState
value = 1070
triggerall = StateType = A
triggerall = stateno != 1110
triggerall = stateno != 1100
triggerall = stateno < 10000
triggerall = NumProj = 0
trigger1 = Command = "Fireballz"

;-----------------------------

[State -1, Wind a]
type = ChangeState
value = 1200
triggerall = StateType = S
triggerall = NumProj = 0
trigger1 = Command = "Winda"

[State -1, Wind b]
type = ChangeState
value = 1202
triggerall = StateType = S
triggerall = NumProj = 0
trigger1 = Command = "Windb"

[State -1, Wind c]
type = ChangeState
value = 1203
triggerall = StateType = S
triggerall = NumProj = 0
trigger1 = Command = "Windc"

;-----------------------------

[State -1, Air Wind a]
type = ChangeState
value = 1250
triggerall = StateType = A
triggerall = NumProj = 0
triggerall = stateno != 1110
triggerall = stateno != 1100
triggerall = stateno < 10000
trigger1 = Command = "Winda"

[State -1, Air Wind b]
type = ChangeState
value = 1260
triggerall = StateType = A
triggerall = NumProj = 0
triggerall = stateno != 1110
triggerall = stateno != 1100
triggerall = stateno < 10000
trigger1 = Command = "Windb"

[State -1, Air Wind c]
type = ChangeState
value = 1270
triggerall = StateType = A
triggerall = NumProj = 0
triggerall = stateno != 1110
triggerall = stateno != 1100
triggerall = stateno < 10000
trigger1 = Command = "Windc"

;-----------------------------

[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"

;-----------------------------

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"

;-----------------------------


[State -1, Hyper2]
type = ChangeState
value = 3100
triggerall = command = "Hyper2"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = command = "Hyper1"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 3100

;-----------------------------

;[State -1, Special1]
;type = ChangeState
;value = 1000
;triggerall = command = "SpecialX"
;triggerall = NumHelper(1050) = 0
;triggerall = NumHelper(1060) = 0
;triggerall = NumHelper(1070) = 0
;trigger1 = Statetype != A && ctrl
;trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

;[State -1, Special1]
;type = ChangeState
;value = 1010
;triggerall = command = "SpecialY"
;triggerall = NumHelper(1050) = 0
;triggerall = NumHelper(1060) = 0
;triggerall = NumHelper(1070) = 0
;trigger1 = Statetype != A && ctrl
;trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

;[State -1, Special1]
;type = ChangeState
;value = 1020
;triggerall = command = "SpecialZ"
;triggerall = NumHelper(1050) = 0
;triggerall = NumHelper(1060) = 0
;triggerall = NumHelper(1070) = 0
;trigger1 = Statetype != A && ctrl
;trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


;-----------------------------------------------------------------------

[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S)
trigger2 = p2movetype != H

;-----------------------------

[State -1, Special2]
type = ChangeState
value = 1100
triggerall = stateno < 3000
triggerall = command = "Special"
trigger1 =  ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, WallCling]
type = ChangeState
value = 4400
trigger1 = command = "holdfwd" && ctrl && var(59) = 0 && prevstateno != 4400 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]
;trigger3 = command = "holdfwd" && stateno = 4402
;trigger4 = command = "holdfwd" && stateno = 4404
;trigger5 = command = "holdfwd" && stateno = 4405

;-----------------------------
[State -1, X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 105 && time > 4

;-----------------------------
[State -1, Y]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = stateno = 105 && time > 4

;-----------------------------
[State -1, Z]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = (StateNo = 610) && (Movecontact) && time > 2
trigger5 = (StateNo = 640) && (Movecontact) && time > 2
trigger6 = stateno = 105 && time > 4

;-----------------------------
[State -1, B]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = stateno = 105 && time > 4

;-----------------------------
[State -1, C]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = (StateNo = 640) && (Movecontact)
trigger7 = stateno = 105 && time > 4

;-----------------------------
[State -1, A]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = stateno = 105 && time > 4

;-----------------------------
[State -1, X agachado]
type = ChangeState
value = 400
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)

;-----------------------------
[State -1, X]
type = ChangeState
value = 200
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------

[State -1, Y agachado]
type = ChangeState
value = 410
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)

;-----------------------------

[State -1, Y]
type = ChangeState
value = IfElse(P2BodyDist X > 28,210,211)
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3

;-----------------------------

[State -1, Z]
type = ChangeState
value = IfElse(P2BodyDist X > 28,220,221)
triggerall = Command = "z"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3
trigger4 = (StateNo = 210) && (Movecontact) && time > 3
trigger5 = (StateNo = 211) && (Movecontact) && time > 3
trigger6 = (StateNo = 240) && (Movecontact) && time > 3
trigger7 = (StateNo = 241) && (Movecontact) && time > 3
 
;-----------------------------

[State -1, C]
type = ChangeState
value = IfElse(P2BodyDist X > 28,250,251)
triggerall = Command = "c"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)
trigger6 = (StateNo = 240) && (Movecontact)
trigger7 = (StateNo = 241) && (Movecontact)
trigger8 = (StateNo = 221) && (Movecontact)
trigger9 = (StateNo = 220) && (Movecontact)

;-----------------------------

[State -1, Z agachado]
type = ChangeState
value = 420
triggerall = Command = "z"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)

;-----------------------------

[State -1, A agachado]
type = ChangeState
value = 430
triggerall = Command = "a"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
trigger3 = (Stateno = 230) && (Movecontact)
trigger4 = (Stateno = 400) && (Movecontact)

;-----------------------------

[State -1, s]
type = ChangeState
value = 195
triggerall = Command = "s"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------

[State -1, A]
type = ChangeState
value = 230
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)

;-----------------------------

[State -1, B]
type = ChangeState
value = IfElse(P2BodyDist X > 28,240,241)
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)

;-----------------------------

[State -1, B agachado]
type = ChangeState
value = 440
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)

;-----------------------------

[State -1, C agachado]
type = ChangeState
value = 450
triggerall = Command = "c"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 250) && (Movecontact)
trigger9 = (StateNo = 251) && (Movecontact)
trigger10 = (StateNo = 420) && (Movecontact)
trigger11 = (StateNo = 421) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit

[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

;------------------------------------
;AI Guard Push (Standing)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 6300
triggerall = Var(59) = 1
triggerall = (StateType = S) && (StateType != L)
triggerall = P2life != 0
trigger1 = StateNo = [150,153]
trigger1 = P2BodyDist X >= 71
trigger1 = Time >= 5

;---------------------------------------------------------------------------
;------------------------ Lie Down Recovery Roll ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll

[State -1]
type = ChangeState
value = 832
triggerall = Var(59) <= 0
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
; Lie Down Backward Recovery Roll

[State -1]
type = ChangeState
value = 855
triggerall = Var(59) <= 0
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1
