;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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


;-| Super Motions |--------------------------------------------------------
[Command]
name = "minus"
command = ~D, F, D, F, b
time = 25

[Command]
name = "dthunder"
command = ~D, B, F, b
time = 25

[Command]
name = "beam"
command = ~D, F, D, F, y
time = 25
;-| Special Motions |------------------------------------------------------
[Command]
name = "torture"
command = ~D, B, F, y
time = 20

[Command]
name = "blaster"
command = ~D, B, x
time = 15

[Command]
name = "blaster2"
command = ~D, B, y
time = 15

[Command]
name = "hadouken"
command = ~D, F, x
time = 15

[Command]
name = "hadouken2"
command = ~D, F, y
time = 15

[Command]
name = "blow"
command = ~F, D, DF, x
time = 15

[Command]
name = "blow2"
command = ~F, D, DF, y
time = 15

[Command]
name = "launch"
command = ~D, F, a
time = 15

[Command]
name = "launch2"
command = ~D, F, b
time = 15

[Command]
name = "shred"
command = ~D, B, a
time = 15

[Command]
name = "shred2"
command = ~D, B, b
time = 15

[Command]
name = "thunder"
command = ~B, D, DB, x
time = 15

[Command]
name = "thunder2"
command = ~B, D, DB, a
time = 15

[Command]
name = "thunder3"
command = ~B, D, DB, y
time = 15

[Command]
name = "thunder4"
command = ~B, D, DB, b
time = 15

[Command]
name = "counter"
command = x+a
time = 1
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holddiagfwd";Required (do not remove)
command = /$F+D
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
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "hold_a";Required (do not remove)
command = /a
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /b

time = 1
[Command]
name = "hold_c";Required (do not remove)
command = /c
time = 1

[Command]
name = "hold_x";Required (do not remove)
command = /x
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /y
time = 1

[Command]
name = "hold_z";Required (do not remove)
command = /z
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================
;===========================================================================
[State -1,]
type = ChangeState
value = 3200
triggerall = var(59) <= 0
triggerall = command = "minus"
triggerall = power >= 3000
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1

; セルジュニアアタック
[State -1,]
type = ChangeState
value = 3100
triggerall = var(59) <= 0
triggerall = command = "dthunder"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1
trigger13 = stateno = 910 && movecontact

; 超かめはめ波
[State -1,]
type = ChangeState
value = 3000
triggerall = var(59) <= 0
triggerall = command = "beam"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1

; 空中超かめはめ波
[State -1,]
type = ChangeState
value = 3050
triggerall = var(59) <= 0
triggerall = command = "beam"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)
;===========================================================================
; デスビーム
[State -1,]
type = ChangeState
value = 2800
triggerall = var(59) <= 0
triggerall = command = "torture"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1

; かめはめ波（弱）
[State -1]
type = ChangeState
value = 2500
triggerall = var(59) <= 0
triggerall = command = "blow"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1

; かめはめ波（弱）
[State -1]
type = ChangeState
value = 2550
triggerall = var(59) <= 0
triggerall = command = "blow2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1

; かめはめ波（弱）
[State -1]
type = ChangeState
value = 2400
triggerall = var(59) <= 0
triggerall = command = "blaster"
triggerall = power >= 100
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1

; かめはめ波（強）
[State -1]
type = ChangeState
value = 2450
triggerall = var(59) <= 0
triggerall = command = "blaster2"
triggerall = power >= 100
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1
;---------------------------------------------------------------------------

; 空中かめはめ波（弱）
[State -1,]
type = ChangeState
value = 2320
triggerall = var(59) <= 0
triggerall = command = "shred"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

; 空中かめはめ波（弱）
[State -1,]
type = ChangeState
value = 2330
triggerall = var(59) <= 0
triggerall = command = "shred2"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

;---------------------------------------------------------------------------

; デスビーム
[State -1,]
type = ChangeState
value = 2300
triggerall = var(59) <= 0
triggerall = command = "shred"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1

; デスビーム
[State -1,]
type = ChangeState
value = 2350
triggerall = var(59) <= 0
triggerall = command = "shred2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1


; デスビーム
[State -1,]
type = ChangeState
value = 2200
triggerall = var(59) <= 0
triggerall = command = "launch"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1

[State -1,]
type = ChangeState
value = 2250
triggerall = var(59) <= 0
triggerall = command = "launch2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1

; かめはめ波（弱）
[State -1]
type = ChangeState
value = 2100
triggerall = var(59) <= 0
triggerall = command = "thunder"
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1

; かめはめ波（強）
[State -1]
type = ChangeState
value = 2150
triggerall = var(59) <= 0
triggerall = command = "thunder2"
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1

; かめはめ波（弱）
[State -1]
type = ChangeState
value = 2160
triggerall = var(59) <= 0
triggerall = command = "thunder3"
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1

; かめはめ波（強）
[State -1]
type = ChangeState
value = 2170
triggerall = var(59) <= 0
triggerall = command = "thunder4"
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1
;===========================================================================
; かめはめ波（弱）
[State -1]
type = ChangeState
value = 2000
triggerall = var(59) <= 0
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1

; かめはめ波（強）
[State -1]
type = ChangeState
value = 2010
triggerall = var(59) <= 0
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 260 && movecontact &&  AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 270 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1
;---------------------------------------------------------------------------

; 空中かめはめ波（弱）
[State -1,]
type = ChangeState
value = 2050
triggerall = var(59) <= 0
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

; 空中かめはめ波（強）
[State -1,]
type = ChangeState
value = 2060
triggerall = var(59) <= 0
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) <= 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;バックステップ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) <= 0
trigger1 = (command = "BB") && (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1, Fwd]
type = ChangeState
value = 110
triggerall = var(59) <= 0
trigger1 = (command = "FF") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1, Back]
type = ChangeState
value = 112
triggerall = var(59) <= 0
triggerall = vel x <= 0
trigger1 = (command = "BB") && (statetype = A) && (ctrl)
;---------------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = var(59) <= 0
trigger1 = command = "start"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; 残像拳（カウンター）
[State -1]
type = ChangeState
value = 700
triggerall = var(59) <= 0
triggerall = command = "counter" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 高速移動 (後方)
[State -1]
type = ChangeState
value = 360
triggerall = var(59) <= 0
triggerall = command = "counter" ^^ command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102

;---------------------------------------------------------------------------
; 高速移動 (前方)
[State -1]
type = ChangeState
value = 361
triggerall = var(59) <= 0
triggerall = command = "counter" ^^ command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダッシュ高速移動 (前方)
[State -1]
type = ChangeState
value = 361
triggerall = var(59) <= 0
triggerall = stateno = 100 || stateno = 101 || stateno = 102
triggerall = ctrl = 0
trigger1 = command = "hold_x" && command = "hold_a" 
trigger2 = command = "hold_z"
trigger3 = command = "hold_c"

;---------------------------------------------------------------------------
; 気力溜め
[State -1]
type = ChangeState
value = 4500
triggerall = var(59) <= 0
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"



[State -1, ]
type = ChangeState
value = 800
triggerall = var(59) <= 0
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y") && (P2BodyDist X <= 10) && (P2Movetype != H) && (p2statetype != A)
trigger1 = (ctrl) && (p2statetype = C) || (ctrl) && (p2statetype = S)

;---------------------------------------------------------------------------
;=======================ダッシュ攻撃========================================
;---------------------------------------------------------------------------
;ダッシュ弱パンチ
[State -1, ]
type = ChangeState
value = 900
triggerall = var(59) <= 0
triggerall = stateno = 101
trigger1 = command = "hold_x"

;スライディングキック
[State -1, ]
type = ChangeState
value = 910
triggerall = var(59) <= 0
triggerall = stateno = 101
trigger1 = command = "hold_a"

;ダッシュ浮かせ攻撃
[State -1, ]
type = ChangeState
value = 920
triggerall = var(59) <= 0
triggerall = stateno = 101
trigger1 = command = "hold_y"

;三連脚
[State -1, ]
type = ChangeState
value = 930
triggerall = var(59) <= 0
triggerall = stateno = 101
trigger1 = command = "hold_b"

;---------------------------------------------------------------------------
;============================通常技=========================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;立ち強キック（近距離） 
[State -1, ]
type = ChangeState
value = 260
triggerall = var(59) <= 0
triggerall = (command = "b") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
;---------------------------------------------------------------------------
;立ち強キック
[State -1, ]
type = ChangeState
value = 270
triggerall = var(59) <= 0
triggerall = (command = "b") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1

;---------------------------------------------------------------------------

;立ち弱キック（近距離）
[State -1, ]
type = ChangeState
value = 271
triggerall = var(59) <= 0
triggerall = (command = "a") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 250 && movecontact

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, ]
type = ChangeState
value = 250
triggerall = var(59) <= 0
triggerall = (command = "a") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
;trigger5 = stateno = 250 && movecontact
;---------------------------------------------------------------------------
;立ち強パンチ（近距離）
[State -1, ]
type = ChangeState
value = 210
triggerall = var(59) <= 0
triggerall = (command = "y") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, ]
type = ChangeState
value = 220
triggerall = var(59) <= 0
triggerall = (command = "y") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
;---------------------------------------------------------------------------
;立ち弱パンチ（近距離）
[State -1, ]
type = ChangeState
value = 211
triggerall = var(59) <= 0
triggerall = (command = "x") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, ]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = (command = "x") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 211 && MoveContact
;---------------------------------------------------------------------------
;浮かし攻撃
[State -1, ]
type = ChangeState
value = 420
triggerall = var(59) <= 0
triggerall = (command = "y") && (command = "holddiagfwd")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 3, >= 1 && AnimElem = 5, <= 1
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 211 && MoveContact
trigger6 = stateno = 271 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 210 && movecontact
;----------------------------------------------------------------------------

;屈み強キック
[State -1, ]
type = ChangeState
value = 460
triggerall = var(59) <= 0
triggerall = (command = "b") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 2, >= 1 && AnimElem = 3, <= 1
;---------------------------------------------------------------------------
;屈み弱キック
[State -1, ]
type = ChangeState
value = 450
triggerall = var(59) <= 0
triggerall = (command = "a") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (MoveContact)
;trigger3 = (stateno = 450) && (AnimElem = 2,>5 || MoveContact)
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 271 && movecontact
trigger6 = stateno = 250 && movecontact

;---------------------------------------------------------------------------
;屈み強パンチ
[State -1, ]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = (command = "y") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = (stateno = 200 || stateno = 211) && (movecontact)
trigger4 = (stateno = 250 || stateno = 271) && (movecontact)

;---------------------------------------------------------------------------
;屈み弱パンチ
[State -1, ]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = (command = "x") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
;--------------------------------------------------------------------------
;ジャンプ強キック
[State -1, ]
type = ChangeState
value = 660
triggerall = var(59) <= 0
triggerall = (command = "b")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 651
triggerall = var(59) <= 0
triggerall = (command = "a") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 650
triggerall = var(59) <= 0
triggerall = (command = "a") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 620
triggerall = var(59) <= 0
triggerall = (command = "y") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601 || stateno = 651) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 610
triggerall = var(59) <= 0
triggerall = (command = "y") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 650) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = (command = "x") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =600) && (AnimElem = 2,>4) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 601
triggerall = var(59) <= 0
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =601) && (AnimElem = 2,>4) && (movecontact)