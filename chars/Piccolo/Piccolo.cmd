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
command.time = 15
command.buffer.time = 1

;-| CPU |-------------------------------------------------------

[Command]
name = "cpu1"
command = a,U,D,F,F,B,B,D,U,U
time = 1
[Command]
name = "cpu2"
command = b,U,D,F,B,F,B,D,U,D
time = 1
[Command]
name = "cpu3"
command = c,U,D,B,F,B,F,D,U,B
time = 1
[Command]
name = "cpu4"
command = x,U,D,B,F,F,B,D,U,F
time = 1
[Command]
name = "cpu5"
command = y,U,D,F,F,B,B,D,U,a
time = 1
[Command]
name = "cpu6"
command = z,U,D,F,B,F,B,D,U,b
time = 1
[Command]
name = "cpu7"
command = s,U,D,B,F,B,F,D,U,c
time = 1
[Command]
name = "cpu8"
command = b,U,D,B,F,F,B,D,U,x
time = 1
[Command]
name = "cpu9"
command = c,U,D,F,B,F,B,D,U,y
time = 1
[Command]
name = "cpu10"
command = c,U,D,B,B,F,B,D,U,y
time = 1
[Command]
name = "cpu11"
command = a,U,D,F,F,B,B,B,D,U,U
time = 1
[Command]
name = "cpu12"
command = b,U,D,F,B,F,B,B,D,U,D
time = 1
[Command]
name = "cpu13"
command = c,U,D,B,B,F,B,F,D,U,B
time = 1
[Command]
name = "cpu14"
command = x,U,D,B,F,B,F,B,D,U,F
time = 1
[Command]
name = "cpu15"
command = y,U,D,F,F,B,B,B,D,U,a
time = 1
[Command]
name = "cpu16"
command = z,U,B,D,F,B,F,B,D,U,b
time = 1
[Command]
name = "cpu17"
command = s,U,D,B,F,B,F,B,D,U,c
time = 1
[Command]
name = "cpu18"
command = b,U,D,B,F,B,F,B,D,U,x
time = 1
[Command]
name = "cpu19"
command = c,U,D,F,B,B,F,B,D,U,y
time = 1
[Command]
name = "cpu20"
command = c,U,D,B,B,B,F,B,D,U,y
time = 1
[Command]
name = "cpu21"
command = a,U,D,F,F,s,B,B,D,U,U
time = 1
[Command]
name = "cpu22"
command = b,U,s,D,F,B,F,B,D,U,D
time = 1
[Command]
name = "cpu23"
command = c,U,D,B,F,B,F,s,D,U,B
time = 1
[Command]
name = "cpu24"
command = x,U,D,B,s,F,F,B,D,U,F
time = 1
[Command]
name = "cpu25"
command = y,U,D,s,F,F,B,B,D,U,a
time = 1
[Command]
name = "cpu26"
command = z,U,D,F,B,F,s,B,D,U,b
time = 1
[Command]
name = "cpu27"
command = s,U,D,s,B,F,B,F,D,U,c
time = 1
[Command]
name = "cpu28"
command = b,U,D,B,s,F,F,B,s,D,U,x
time = 1
[Command]
name = "cpu29"
command = c,U,D,F,s,B,F,B,D,U,y
time = 1
[Command]
name = "cpu30"
command = c,U,D,B,B,F,B,s,D,U,y
time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "makankousappou"
command = ~D, F, D, F, y
time = 25

[Command]
name = "super"
command = ~D, F, D, F, b
time = 25

[Command]
name = "bakuretsu"
command = ~D, B, F, b
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "deathbeam"
command = ~D, B, F, y
time = 20

[Command]
name = "shoryuken"
command = ~F, D, DF, a
time = 20

[Command]
name = "shoryuken2"
command = ~F, D, DF, b
time = 20

[Command]
name = "hadouken"
command = ~D, DF, F, x
time = 20

[Command]
name = "hadouken2"
command = ~D, DF, F, y
time = 20

[Command]
name = "tatsumaki"
command = ~D, B, a
time = 20

[Command]
name = "tatsumaki2"
command = ~D, B, b
time = 20

[Command]
name = "attack"
command = ~D, DF, F, a
time = 20

[Command]
name = "attack2"
command = ~D, DF, F, b
time = 20

[Command]
name = "mystic"
command = ~D, B, x
time = 20

[Command]
name = "mystic2"
command = ~D, B, y
time = 20

[command]
name = "slashdown"
command = ~F, D, a
time = 20

[command]
name = "slashdown2"
command = ~F, D, b
time = 20

[Command]
name = "barrier"
command = ~B, D, x
time = 15

[Command]
name = "barrier2"
command = ~B, D, y
time = 15

[Command]
name = "dash_x"
command = ~F, F, x

[Command]
name = "dash_y"
command = ~F, F, y

[Command]
name = "dash_a"
command = ~F, F, a

[Command]
name = "dash_b"
command = ~F, F, b

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
name = "s"
command = s
time = 1

[Command]
name="fwd"
command=F
time=1

[Command]
name="back"
command=B
time=1

[Command]
name="up"
command=U
time=1

[Command]
name="down"
command=D
time=1

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
; 2. State entry
; --------------
[Statedef -1]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;=============================必殺技========================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

; 超爆裂アタック
[State -1,]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "bakuretsu"
triggerall = power >= 3000
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
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && movecontact
;trigger14 = stateno = 910 && movecontact

; 魔空包囲弾
[State -1,]
type = ChangeState
value = 3100
triggerall = var(59) = 0
triggerall = command = "super"
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
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && movecontact

; 魔貫光殺砲
[State -1,]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = command = "makankousappou"
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
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && movecontact

; 空中魔貫光殺砲
[State -1,]
type = ChangeState
value = 3260
triggerall = var(59) = 0
triggerall = command = "makankousappou"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

;---------------------------------------------------------------------------

; ソニックアタック（弱）
[State -1]
type = ChangeState
value = 2200
triggerall = var(59) = 0
triggerall = command = "tatsumaki"
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
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && movecontact

; ソニックアタック（強）
[State -1]
type = ChangeState
value = 2250
triggerall = var(59) = 0
triggerall = command = "tatsumaki2"
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
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && movecontact

;---------------------------------------------------------------------------

; ジャンピングニーリフト（強）
[State -1]
type = ChangeState
value = 2150
triggerall = var(59) = 0
triggerall = command = "attack2"
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
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 910 && movecontact
trigger14 = stateno = 900 && MoveContact
trigger15 = stateno = 5120

; ジャンピングニーリフト（弱）
[State -1]
type = ChangeState
value = 2100
triggerall = var(59) = 0
triggerall = command = "attack"
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
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 910 && movecontact
trigger14 = stateno = 900 && MoveContact
trigger15 = stateno = 5120

;---------------------------------------------------------------------------

;----------------ミスティックアタック（強）
[State -1, ]
type = ChangeState
value = 2300
triggerall = var(59) = 0
triggerall = (command = "mystic2")
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
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && MoveContact

;ミスティックスルー（強／近）
[State -1, ]
type = ChangeState
value = 2302
triggerall = win != 1
triggerall = (stateno = 2300) && (movehit=1)
triggerall = (command = "holdfwd")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2300) && (AnimElem = 4, >=1 && AnimElem = 4, <= 1)
;trigger3 = (stateno = 2300) && (movehit)

;ミスティックスルー（強／遠）
[State -1, ]
type = ChangeState
value = 2301
triggerall = win != 1
triggerall = (stateno = 2300) && (movehit=1)
triggerall = (command = "holdfwd")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2300) && (AnimElem = 4, >=1 && AnimElem = 8, <= 1)
;trigger3 = (stateno = 2300) && (movehit)


;--------------ミスティックアタック（弱）
[State -1, ]
type = ChangeState
value = 2350
triggerall = var(59) = 0
triggerall = (command = "mystic")
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
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && MoveContact

ミスティックスルー（弱／近）
[State -1, ]
type = ChangeState
value = 2352
triggerall = win != 1
triggerall = (stateno = 2350) && (movehit=1)
triggerall = (command = "holdfwd")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2350) && (AnimElem = 4, >=1 && AnimElem = 4, <= 1)
;trigger3 = (stateno = 2350) && (movecontact)

ミスティックスルー（弱／遠）
[State -1, ]
type = ChangeState
value = 2351
triggerall = win != 1
triggerall = (stateno = 2350) && (movehit=1)
triggerall = (command = "holdfwd")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2350) && (AnimElem = 4, >=1 && AnimElem = 8, <= 1)
;trigger3 = (stateno = 2350) && (movecontact)


;---------------------------------------------------------------------------

; 追跡エネルギー弾（弱）
[State -1]
type = ChangeState
value = 2010
triggerall = var(59) = 0
triggerall = command = "hadouken"
triggerall = power >= 120
;triggerall = numproj = 0
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
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && MoveContact

; 追跡エネルギー弾（強）
[State -1]
type = ChangeState
value = 2000
triggerall = var(59) = 0
triggerall = command = "hadouken2"
triggerall = power >= 120
;triggerall = numproj = 0
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
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------

; 怪光波（弱）
[State -1,]
type = ChangeState
value = 2050
triggerall = var(59) = 0
triggerall = command = "barrier"
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
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && MoveContact

; 怪光波（強）
[State -1,]
type = ChangeState
value = 2060
triggerall = var(59) = 0
triggerall = command = "barrier2"
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
trigger9 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger10 = stateno = 270 && movecontact && AnimElem = 4, >= 1 && AnimElem = 9, <= 1
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------

;舞空脚(弱)
[State -1, ]
type = ChangeState
value = 670
triggerall = var(59) = 0
triggerall = (command = "tatsumaki")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

;舞空脚(強)
[State -1, ]
type = ChangeState
value = 680
triggerall = var(59) = 0
triggerall = (command = "tatsumaki2")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)


;---------------------------------------------------------------------------
;============================特殊技=========================================
;---------------------------------------------------------------------------

;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;バックステップ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = (command = "BB") && (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1, Fwd]
type = ChangeState
value = 110
triggerall = var(59) = 0
trigger1 = (command = "FF") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1, Back]
type = ChangeState
value = 112
triggerall = var(59) = 0
triggerall = vel x <= 0
trigger1 = (command = "BB") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = var(59) = 0
trigger1 = command = "s"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; 残像拳（カウンター）
[State -1]
type = ChangeState
value = 700
triggerall = var(59) = 0
triggerall = command = "counter" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000

;---------------------------------------------------------------------------
; 高速移動 (後方)
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) = 0
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
value = 1001
triggerall = var(59) = 0
triggerall = command = "counter" ^^ command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダッシュ高速移動 (前方)
[State -1]
type = ChangeState
value = 1001
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"

;---------------------------------------------------------------------------
;投げ
[State -1, ]
type = ChangeState
value = 800
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_x"

;スライディングキック
[State -1, ]
type = ChangeState
value = 910
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_a"

;ダッシュ浮かせ攻撃
[State -1, ]
type = ChangeState
value = 920
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_y"

;三連脚
[State -1, ]
type = ChangeState
value = 930
triggerall = var(59) = 0
triggerall = stateno = 101
trigger1 = command = "hold_b"

;---------------------------------------------------------------------------
;============================通常技=========================================
;---------------------------------------------------------------------------

;立ち強キック（近距離） 
[State -1, ]
type = ChangeState
value = 260
triggerall = var(59) = 0
triggerall = (command = "b") && (command != "holddown") && (P2BodyDist X <= 16)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 900 && MoveContact
;---------------------------------------------------------------------------
;立ち強キック
[State -1, ]
type = ChangeState
value = 270
triggerall = var(59) = 0
triggerall = (command = "b") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
;trigger9 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------

;立ち弱キック（近距離）
[State -1, ]
type = ChangeState
value = 271
triggerall = var(59) = 0
triggerall = (command = "a") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, ]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = (command = "a") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------

;立ち強パンチ（近距離）
[State -1, ]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = (command = "y") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 900 && MoveContact
;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, ]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = (command = "y") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------

;立ち弱パンチ（近距離）
[State -1, ]
type = ChangeState
value = 211
triggerall = var(59) = 0
triggerall = (command = "x") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 900 && MoveContact
;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, ]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = (command = "x") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 200) && (AnimElem = 2,>4 || MoveContact)
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 900 && MoveContact


;---------------------------------------------------------------------------
;浮かし攻撃
[State -1, ]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = (command = "y") && (command = "holddiagfwd")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 211 && MoveContact
trigger6 = stateno = 271 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 900 && MoveContact


;---------------------------------------------------------------------------
;============================しゃがみ=========================================
;---------------------------------------------------------------------------

;屈み強キック
[State -1, ]
type = ChangeState
value = 460
triggerall = var(59) = 0
triggerall = (command = "b") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 900 && MoveContact
;---------------------------------------------------------------------------
;屈み弱キック
[State -1, ]
type = ChangeState
value = 450
triggerall = var(59) = 0
triggerall = (command = "a") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 450) && (AnimElem = 2,>5 || MoveContact)
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 211 && MoveContact
trigger6 = stateno = 271 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------
;屈み強パンチ
[State -1, ]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = (command = "y") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = (stateno = 200 || stateno = 211) && (movecontact)
trigger4 = (stateno = 250 || stateno = 271) && (movecontact)
trigger5 = stateno = 900 && MoveContact

;---------------------------------------------------------------------------
;屈み弱パンチ
[State -1, ]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = (command = "x") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (AnimElem = 2,>5 || MoveContact)
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact
trigger5 = stateno = 900 && MoveContact


;---------------------------------------------------------------------------
;============================空中技=========================================
;---------------------------------------------------------------------------

;ジャンプ強キック
[State -1, ]
type = ChangeState
value = 660
triggerall = var(59) = 0
triggerall = (command = "b")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 651
triggerall = var(59) = 0
triggerall = (command = "a") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = (command = "a") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = (command = "y") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601 || stateno = 651) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = (command = "y") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 650) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = (command = "x") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =600) && (AnimElem = 2,>4) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 601
triggerall = var(59) = 0
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =601) && (AnimElem = 2,>4)  && (movecontact)


;=============================デバッグ========================================
[State -1, デバッグ表示1]
type = null;AppendToClipboard
trigger1 = 1
text = " AI:%d,%d,BodyDist X=%d,Y=%d"
params = var(59),var(58),floor(P2BodyDist X),ceil(P2BodyDist Y)
ignorehitpause = 1

[State -1, デバッグ表示2]
type = null;AppendToClipboard
trigger1 = 1
text = " Pos X=%d,Y=%d, Edge F=%d,B=%d"
params = ceil(Pos X),floor(Pos Y),FrontEdgeBodyDist,BackEdgeBodyDist
ignorehitpause = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;======================ここからAI用記述=====================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;====================反撃===================================================
[State -1, 魔空包囲弾]
type = ChangeState
value = 3100
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = power >= 2000
triggerall = StateType != A
triggerall = ctrl
triggerall = p2statetype != L
triggerall = Life > 75
trigger1 = P2MoveType = A
trigger1 = p2bodydist X = [0,55]
trigger1 = Random = [900,900+(var(59)*2)]
trigger2 = p2movetype != H
trigger2 = p2bodydist X = [20,60]
trigger2 = p2bodydist Y = [-100,-50]
trigger2 = Random = [900,901+(var(59)*2)]

[State -1, ジャンピングニーリフト（弱）]
type = ChangeState
value = 2100
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = ctrl
triggerall = StateType != A
triggerall = p2statetype != L
trigger1 = p2bodydist X = [-5,40]
trigger1 = Random = [900,900+(var(59)*2)]
trigger2 = p2movetype != H
trigger2 = p2bodydist X = [-25,60]
trigger2 = p2bodydist Y = [-100,-50]
trigger2 = Random = [900,903+(var(59)*3)]

[State -1,高速移動 (前方)]
type = ChangeState
value = 1001
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = ctrl
triggerall = StateType != A
triggerall = p2statetype != L
trigger1 = p2bodydist X = [-10,60]
trigger1 = Random = [910,911+(var(59)*3)]
trigger2 = p2movetype != H
trigger2 = p2bodydist X = [-25,60]
trigger2 = p2bodydist Y = [-100,-50]
trigger2 = Random = [910,916+(var(59)*4)]

[State -1,遠距離立ち弱パンチ]
type = ChangeState
value = 200
triggerall = var(59) = [1,2]
triggerall = StateType != A
triggerall = RoundState = 2
triggerall = ctrl
triggerall = P2StateType != L
triggerall = P2BodyDist X = [15,40]
triggerall = EnemyNear,AnimTime <= -4
triggerall = (PrevStateNo=[5000,5120]) || (PrevStateNo=[120,159])
triggerall = EnemyNear,ctrl = 0
trigger1 = Random = [0,8+(var(59)*8)]

[State -1, 屈み弱キック]
type = ChangeState
value = 450
triggerall = var(59) = [1,2]
triggerall = StateType != A
triggerall = RoundState = 2
triggerall = ctrl
triggerall = P2StateType != L
triggerall = P2BodyDist X = [-5,33]
triggerall = EnemyNear,AnimTime <= -4 
triggerall = (PrevStateNo=[5000,5120]) || (PrevStateNo=[120,159])
triggerall = EnemyNear,ctrl = 0
trigger1 = Random = [600,ifelse(P2BodyDist X<15,634+(var(59)*16),619+(var(59)*10))]

[State -1, 投げ]
Type = ChangeState
value = 800
triggerall = var(59) = [1,2]
triggerall = statetype = S
triggerall = ctrl
triggerall = p2bodydist X = [-1,9]
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = P2MoveType = A
triggerall = EnemyNear,AnimTime <= -1
trigger1 = Random  = [30,30+var(59)]

;=============================ガード========================================
[State -1, 空中ガード]
type  = ChangeState
value = 132
triggerall = inguarddist
triggerall = statetype = A
triggerall = var(59) = [1,2]
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = A
trigger1 = p2bodydist X = [40,80]
trigger1 = var(58) = [0,var(59)*30]
trigger2 = p2bodydist X = [-20,39]
trigger2 = var(58) = [0,var(59)*38]
trigger3 = enemy,Numproj > 0 
trigger3 = var(58) = [0,var(59)*42]

[State -1, 対地 立ちガード]
type  = ChangeState
value = 130
triggerall = inguarddist
triggerall = statetype != A
triggerall = var(59) = [1,2]
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = S
trigger1 = p2bodydist X = [40,90]
trigger1 = var(58) = [0,var(59)*17]
trigger2 = p2bodydist X = [-15,39]
trigger2 = var(58) = [10,10+(var(59)*17)]
trigger3 = enemy,teammode = simul
trigger3 = p2bodydist X = [-50,-16]
trigger3 = var(58) = [0,var(59)*32]
trigger4 = p2bodydist X = [-15,39]
trigger4 = enemy,hitdefattr = S, NA,SA,HA
trigger4 = Random < var(59)*120

[State -1, 対空 立ちガード]
type  = ChangeState
value = 130
triggerall = inguarddist
triggerall = statetype != A
triggerall = var(59) = [1,2]
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = A
trigger1 = p2bodydist X = [40,90]
trigger1 = var(58) = [0,var(59)*32]
trigger2 = p2bodydist X = [-40,39]
trigger2 = var(58) = [0,var(59)*37]
trigger3 = p2bodydist X = [-40,39]
trigger3 = enemy,hitdefattr = A, NA,SA,HA
trigger3 = Random < var(59)*240

[State -1, しゃがみガード]
type  = ChangeState
value = 131
triggerall = inguarddist
triggerall = statetype != A
triggerall = var(59) = [1,2]
triggerall = ctrl
triggerall = stateno != [190,194]
trigger1 = p2statetype = C
trigger1 = p2bodydist X = [40,85]
trigger1 = var(58) = [0,var(59)*20]
trigger2 = p2statetype = C
trigger2 = p2bodydist X = [-20,39]
trigger2 = var(58) = [0,var(59)*32]
trigger3 = p2statetype = S
trigger3 = p2bodydist X = [-15,39]
trigger3 = var(58) = [0,var(59)*12]
trigger4 = p2statetype = C
trigger4 = enemy,teammode = simul
trigger4 = p2bodydist X = [-50,-16]
trigger4 = var(58) = [0,var(59)*32]
trigger5 = p2bodydist X = [-20,39]
trigger5 = enemy,hitdefattr = C, NA,SA,HA
trigger5 = Random < var(59)*180
trigger6 = enemy,Numproj > 0 
trigger6 = var(58) = [0,var(59)*42]

;=============================投げ========================================
[State -1, 投げ]
type  = ChangeState
value = 800
triggerall = var(59) = [1,2]
triggerall = Random  = [35,43+(var(59)*8)]
triggerall = statetype = S
triggerall = ctrl
triggerall = p2bodydist X = [-1,4]
triggerall = (P2Movetype != H) && (p2statetype != A)
trigger1 = (ctrl) && (p2statetype = C) || (ctrl) && (p2statetype = S)


;=============================AI専用========================================
[State -1, 追撃待機]
type = ChangeState
value = 8000
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 2210 || stateno = 2251
trigger1 = AnimTime = 0
trigger1 = P2BodyDist X < 100
trigger1 = var(58) = [0,50]
trigger2 = stateno = 2210 || stateno = 2251
trigger2 = AnimTime = 0
trigger2 = P2BodyDist X >= 100
trigger2 = var(58) = [0,50-((P2BodyDist X-100)/4)]
trigger3 = (stateno = [2301,2302]) || (stateno = [2351,2352])
trigger3 = AnimTime = 0
trigger3 = var(58) = [0,74-(P2BodyDist X/15)]
trigger4 = stateno = 930
trigger4 = AnimTime = 0
trigger4 = movehit
trigger4 = var(58) = [0,97]
trigger5 = stateno = 460
trigger5 = AnimTime = 0
trigger5 = movehit
trigger5 = var(58) = [0,39]

[State -1, 間合い調節]
type = ChangeState
value = 8020
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = Ctrl
trigger1 = P2StateNo = 712
trigger1 = var(58) = [0,ifelse(power<1000,49,29)]

[State -1, エリアルへ]
type = ChangeState
value = 8040
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 260 || stateno = 420
trigger1 = movehit
trigger1 = var(58) = [0,67+(var(59)*15)]
trigger2 = Ctrl
trigger2 = P2StateNo = 712
trigger2 = var(58) = [30,79+(var(59)*10)]

[State -1, 怪光待機]
type = ChangeState
value = 8100
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2stateno = 2051 || p2stateno = 2061

;=============================超必殺技========================================
[State -1,超爆裂アタック]
type = ChangeState
value = 3000
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = stateno = 270 && MoveHit
trigger1 = prevstateno = 220 || prevstateno = 250 || prevstateno = 271
trigger1 = Animelem = 4,>=1
trigger1 = var(58) = [40,69+(var(59)*15)]
trigger2 = stateno = 410 && movehit
trigger2 = prevstateno = 450
trigger2 = var(58) = [50,69+(var(59)*10)]
trigger3 = stateno = 52 && prevstateno = 660
trigger3 = animelem = 1, >= 1
trigger3 = P2StateNo = [5020,5035]
trigger3 = var(58) = [0,statetime*24]

[State -1,魔空包囲弾]
type = ChangeState
value = 3100
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = stateno = 270 && MoveHit
trigger1 = prevstateno = 220 || prevstateno = 250 || prevstateno = 271
trigger1 = Animelem = 4,>=1
trigger1 = P2StateType != C
trigger1 = var(58) = [80,ifelse(prevstateno = 220,87,83)]
trigger2 = ctrl
trigger2 = P2BodyDist X > 50
trigger2 = P2Life < 100
trigger2 = Random = [400,549-P2Life]
trigger2 = P2StateType != L
trigger2 = P2MoveType != H

[State -1,魔貫光殺砲]
type = ChangeState
value = 3200
triggerall = var(59) = [1,2]
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = stateno = 270 && MoveHit
trigger1 = prevstateno = 220 || prevstateno = 250 || prevstateno = 271
trigger1 = Animelem = 4,>=1
trigger1 = P2StateType != C
trigger1 = var(58) = [85,ifelse(prevstateno = 220,99,92)]
trigger2 = stateno = 270 && MoveHit
trigger2 = prevstateno = 220 || prevstateno = 250 || prevstateno = 271
trigger2 = Animelem = 4,>=1
trigger2 = P2StateType != C
trigger2 = p2life/((Enemy,Const(data.defence))*.01) < 210*((Const(data.attack))*.01)
trigger2 = var(58) = [0,ifelse(prevstateno = 220,80+(var(59)*12),46+(var(59)*10))]
trigger3 = ctrl
trigger3 = p2bodydist x > 120 && p2bodydist Y > -30
trigger3 = enemy,Numproj > 0 && !inguarddist
trigger3 = var(58) = [0,1+(P2BodyDist X/(60-(var(59)*15)))]
trigger4 = ctrl
trigger4 = stateno = 8100
trigger4 = p2life/((Enemy,Const(data.defence))*.01) < 210*((Const(data.attack))*.01)

[State -1,空中魔貫光殺砲]
type = ChangeState
value = 3260
triggerall = var(59) = [1,2]
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = stateno = 660
trigger1 = prevstateno = [610,620]
trigger1 = power < 3000
trigger1 = movehit
trigger1 = var(58) = [25,46+(var(59)*10)]
trigger2 = P2StateNo = 712
trigger2 = StateNo = 8050 && Var(5) != 1
trigger2 = StateTime = [23,27]
trigger2 = random < 130+(StateTime-23)*50

;=============================必殺技========================================
[State -1,ソニックアタック（弱）]
type = ChangeState
value = 2200
triggerall = var(59) = [1,2]
triggerall = statetype != A
trigger1 = ctrl
trigger1 = P2BodyDist X = [100,130]
trigger1 = p2statetype != L
trigger1 = random = [900,924]

[State -1,ソニックアタック（強）]
type = ChangeState
value = 2250
triggerall = var(59) = [1,2]
triggerall = statetype != A
trigger1 = stateno = 410 && movehit
trigger1 = prevstateno = 450
trigger1 = var(58) = [0,39+(var(59)*5)+ifelse(P2StateType = C,10,0)]
trigger2 = stateno = 270 && movehit
trigger2 = prevstateno = 220 || prevstateno = 250 || prevstateno = 271
trigger2 = Animelem = 4,>=1
trigger2 = var(58) = [0,39+(var(59)*5)]
trigger3 = stateno = 52 && prevstateno = 660
trigger3 = animelem = 1, >= 1
trigger3 = P2StateNo = [5020,5035]
trigger3 = var(58) = [33,33+(statetime*16)]

;---------------------------------------------------------------------------
[State -1,ジャンピングニーリフト（強）]
type = ChangeState
value = 2150
triggerall = var(59) = [1,2]
triggerall = statetype != A
trigger1 = stateno = 910 && movehit
trigger1 = MoveHit = [5,19-var(59)]
trigger1 = var(58) = [0,MoveHit*5.5]
trigger2 = stateno = 8020
trigger2 = NumHelper(710)
trigger2 = Helper(710),StateNo = 711
trigger2 = Helper(710),StateTime = [7,14]
trigger2 = var(58) = [0,(Helper(710),StateTime)*7]

[State -1,ジャンピングニーリフト（弱）]
type = ChangeState
value = 2100
triggerall = var(59) = [1,2]
triggerall = statetype != A
triggerall = ctrl
trigger1 = Random = [965,969+(var(59)*15)]
trigger1 = P2movetype = A
trigger1 = p2statetype != L
trigger1 = p2bodydist X = [-5,40]
trigger2 = p2statetype != L
trigger2 = p2movetype != H
trigger2 = Random = [915,919+(var(59)*40)]
trigger2 = p2bodydist X = [-25,60]
trigger2 = p2bodydist Y = [-100,-50]
trigger3 = stateno = 5120
trigger3 = p2bodydist X = [-5,40]
trigger3 = var(58) = [0,4+(var(59)*4)]
trigger4 = stateno = 5120
trigger4 = enemynear,vel Y > 0
trigger4 = enemynear,vel X > 0
trigger4 = p2bodydist X = [-5,40]
trigger4 = var(58) = [0,8+(var(59)*8)]

;---------------------------------------------------------------------------
[State -1,ミスティックアタック（強）]
type = ChangeState
value = 2300
triggerall = var(59) = [1,2]
triggerall = statetype != A
trigger1 = stateno = 410
trigger1 = prevstateno = 450
trigger1 = P2StateType != C
trigger1 = movecontact = Ceil((var(58))*(.04-(var(59)*.01)))
trigger1 = var(58) = [ifelse(MoveHit,64-(var(59)*7),72),84]
trigger2 = stateno = 270
trigger2 = prevstateno = 220 || prevstateno = 250 || prevstateno = 271
trigger2 = Animelem = 4,>=1
trigger2 = P2StateType != C
trigger2 = movecontact = Ceil((var(58))*(.04-(var(59)*.01)))
trigger2 = var(58) = [ifelse(MoveHit,64-(var(59)*7),74),92]
trigger3 = stateno = 8100
trigger3 = P2BodyDist X = [40,140]
trigger3 = var(58) = [0,statetime*2.2]
trigger4 = ctrl
trigger4 = P2BodyDist X = [90,140]
trigger4 = p2statetype != L
trigger4 = random = [800,ifelse(P2StateType=A,825+(var(59)*7),839+(var(59)*10))]

[State -1,ミスティックスルー（強）]
type = ChangeState
value = ifelse(AnimElem=4,>1,2301,2302)
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = (stateno = 2300) && (movehit=1)
triggerall = (AnimElem = 4, >=1 && AnimElem = 8, <= 1)
trigger1 = prevstateno = 270 || prevstateno = 410 || prevstateno = 8100
trigger1 = var(58) = [0,44+(var(59)*25)]
trigger2 = var(58) = [0,var(59)*33]

;--------------
[State -1,ミスティックアタック（弱）]
type = ChangeState
value = 2350
triggerall = var(59) = [1,2]
triggerall = statetype != A
trigger1 = stateno = 410
trigger1 = prevstateno = 450
trigger1 = P2StateType = C
trigger1 = movecontact = Ceil((var(58))*(.04-(var(59)*.01)))
trigger1 = var(58) = [60,69]
trigger2 = stateno = 270
trigger2 = prevstateno = 220 || prevstateno = 250 || prevstateno = 271
trigger2 = Animelem = 4,>=1
trigger2 = P2StateType = C
trigger2 = movecontact = Ceil((var(58))*(.04-(var(59)*.01)))
trigger2 = var(58) = [64-(var(59)*7),84]
trigger3 = stateno = 8100
trigger3 = P2BodyDist X = [40,130]
trigger3 = var(58) = [50,50+statetime*2.2]
trigger4 = ctrl
trigger4 = P2BodyDist X = [90,130]
trigger4 = p2statetype != L
trigger4 = random = [700,ifelse(P2StateType=A,711+(var(59)*4),730+(var(59)*7))]

[State -1,ミスティックスルー（弱）]
type = ChangeState
value = ifelse(AnimElem=4,>1,2351,2352)
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = (stateno = 2350) && (movehit=1)
triggerall = (AnimElem = 4, >=1 && AnimElem = 8, <= 1)
trigger1 = prevstateno = 270 || prevstateno = 410 || prevstateno = 8100
trigger1 = var(58) = [0,44+(var(59)*25)]
trigger2 = var(58) = [0,var(59)*33]

;---------------------------------------------------------------------------
[State -1,追跡エネルギー弾（弱）]
type = ChangeState
value = 2010
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = power >= 120
triggerall = statetype != A
trigger1 = ctrl
trigger1 = Numproj = 0
trigger1 = P2BodyDist X > 120
trigger1 = p2statetype != L
trigger1 = random = [700,705+(P2BodyDist X/10)]

[State -1,追跡エネルギー弾（強）]
type = ChangeState
value = 2000
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = power >= 120
triggerall = statetype != A
trigger1 = ctrl
trigger1 = Numproj = 0
trigger1 = P2BodyDist X > 120
trigger1 = p2statetype != L
trigger1 = random = [500,505+(P2BodyDist X/10)]

;---------------------------------------------------------------------------
[State -1,怪光波（弱）]
type = ChangeState
value = 2050
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = stateno = 410 && MoveGuarded
trigger1 = P2BodyDist X >= 40
trigger1 = var(58) = [85,94]
trigger2 = stateno = 270 && MoveGuarded
trigger2 = Animelem = 4,>=1
trigger2 = P2StateType != C
trigger2 = var(58) = [85,94]
trigger3 = ctrl
trigger3 = P2BodyDist X = [100,140]
trigger3 = p2statetype != L
trigger3 = random = [600,624]
trigger4 = ctrl
trigger4 = P2BodyDist X = [141,190]
trigger4 = p2statetype != L
trigger4 = random = [250,274]

[State -1,怪光波（強）]
type = ChangeState
value = 2060
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = power >= 100
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = ctrl
trigger1 = P2BodyDist X > 140
trigger1 = p2statetype = S || p2statetype = C
trigger1 = random = [200,229+(P2BodyDist X/8)]

;---------------------------------------------------------------------------
[State -1,舞空脚(弱)]
type = ChangeState
value = 670
triggerall = var(59) = [1,2]
triggerall = (ctrl) && (statetype = A)
trigger1 = stateno = 50 && statetime = [13-(var(59)*4),16-(var(59)*4)]
trigger1 = P2BodyDist X = [-5,25+(statetime*5)]
trigger1 = P2MoveType = I
trigger1 = var(58) = [0,(statetime+6-(var(59)*4))*11]

[State -1,舞空脚(強)]
type = ChangeState
value = 680
triggerall = var(59) = [1,2]
triggerall = statetype = A
trigger1 = stateno = [610,620]
trigger1 = prevstateno = [650,651]
trigger1 = Pos Y < -120
trigger1 = movecontact
trigger1 = var(58) = [0,ifelse(Power>=3000,30,47)]
trigger2 = stateno = [610,620]
trigger2 = prevstateno = [650,651]
trigger2 = Pos Y >= -120
trigger2 = movecontact
trigger2 = var(58) = [0,54+(var(59)*15)]
trigger3 = stateno = 660
trigger3 = prevstateno = [610,620]
trigger3 = movecontact
trigger3 = Pos Y >= -120
trigger3 = var(58) = [0,ifelse(Power<3000,46+(var(59)*15),19)]
trigger4 = Pos Y < -105
trigger4 = ctrl
trigger4 = P2BodyDist X < 130
trigger4 = enemy, numproj >= 1
trigger4 = var(58) = [0,39+(var(59)*5)]
trigger5 = P2StateNo = 712
trigger5 = StateNo = 8050 && Var(5) != 1
trigger5 = StateTime = [18,32-(var(59)*2)]
trigger5 = var(58) = [0,(StateTime-17)*(13-(var(59)*2))]

;============================通常技=========================================
[State -1,立ち弱パンチ]
type = ChangeState
value = ifelse(P2BodyDist X <= 15,211,200)
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = P2BodyDist X = [-5,40]
triggerall = StateType != A
triggerall = ctrl
trigger1 = random = [0,ifelse(p2movetype = A,3+(var(59)*12),9+(var(59)*40))]
trigger1 = p2statetype != L
trigger2 = var(58) = [0,7+(var(59)*7)]
trigger2 = p2stateno != [120,159]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger3 = p2movetype = I
trigger3 = p2statetype != L
trigger3 = enemynear,ctrl = 0
trigger3 = var(58) = [0,7+(var(59)*7)]

[State -1,立ち弱キック（近距離）]
type = ChangeState
value = 271
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = P2BodyDist X = [-5,14]
trigger1 = stateno = 271
trigger1 = MoveContact
trigger1 = P2BodyDist X = [-5,50]
trigger1 = var(58) = [0,99-(P2BodyDist X*ifelse(MoveGuarded,.6,.1*(4-var(59))))]
trigger2 = random = [300,ifelse(p2movetype = A,304+(var(59)*10),309+(var(59)*35))]
trigger2 = p2statetype != L
trigger2 = ctrl
trigger3 = var(58) = [22,22+(var(59)*11)]
trigger3 = p2stateno != [120,159]
trigger3 = p2statetype != L
trigger3 = p2movetype = H
trigger3 = ctrl
trigger4 = p2movetype = I
trigger4 = p2statetype != L
trigger4 = enemynear,ctrl = 0
trigger4 = ctrl
trigger4 = var(58) = [22,22+(var(59)*11)]

[State -1,立ち弱キック（遠距離）]
type = ChangeState
value = 250
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = P2BodyDist X = [0,70]
trigger1 = stateno = 250 || stateno = 271
trigger1 = MoveContact
trigger1 = P2BodyDist X = [-5,50]
trigger1 = var(58) = [0,99-(P2BodyDist X*ifelse(MoveGuarded,.6,.1*(4-var(59))))]
trigger2 = random = [300,ifelse(p2movetype = A,304+(var(59)*10),309+(var(59)*35))]
trigger2 = p2statetype != L
trigger2 = ctrl
trigger3 = var(58) = [22,22+(var(59)*11)]
trigger3 = p2stateno != [120,159]
trigger3 = p2statetype != L
trigger3 = p2movetype = H
trigger3 = ctrl
trigger4 = p2movetype = I
trigger4 = p2statetype != L
trigger4 = enemynear,ctrl = 0
trigger4 = ctrl
trigger4 = var(58) = [22,22+(var(59)*11)]

[State -1,立ち強キック]
type = ChangeState
value = ifelse(P2BodyDist X <= 16,260,270)
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 250 || stateno = 271
trigger1 = MoveHit
trigger1 = P2BodyDist X > 45
trigger1 = var(58) = [55-P2BodyDist X,89+(var(59)*5)]
trigger2 = stateno = 220
trigger2 = MoveHit
trigger2 = var(58) = [0,37+(var(59)*5)]
trigger3 = stateno = 220
trigger3 = MoveContact
trigger3 = var(58) = [50,87+(var(59)*5)]
trigger4 = stateno = 210 && MoveHit
trigger4 = P2BodyDist X <= 16
trigger4 = var(58) = [0,22]
trigger5 = stateno = 210 && MoveContact
trigger5 = P2BodyDist X <= 16
trigger5 = var(58) = [25,49]
trigger6 = stateno = 210 && MoveContact
trigger6 = prevstateno = 900
trigger6 = P2BodyDist X <= 16
trigger6 = var(58) = [50,72]

[State -1,立ち強パンチ（近距離）]
type = ChangeState
value = 210
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = P2BodyDist X <= 15
trigger1 = stateno = 200 || stateno = 211 || stateno = 900
trigger1 = MoveHit
trigger1 = var(58) = [0,14+(var(59)*5)]
trigger2 = stateno = 200 || stateno = 211 || stateno = 900
trigger2 = MoveContact
trigger2 = var(58) = [25,84+(var(59)*5)]

[State -1,立ち強パンチ（遠距離）]
type = ChangeState
value = 220
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 200 || stateno = 211 || stateno = 900
trigger1 = MoveHit
trigger1 = P2BodyDist X > 15
trigger1 = var(58) = [0,19+(var(59)*5)]
trigger2 = stateno = 200 || stateno = 211 || stateno = 900
trigger2 = MoveContact
trigger2 = P2BodyDist X > 15
trigger2 = var(58) = [30,80+(var(59)*7)]
trigger3 = stateno = 210 && MoveHit
trigger3 = var(58) = [0,37+(var(59)*5)]
trigger4 = stateno = 210 && MoveContact
trigger4 = var(58) = [50,87+(var(59)*5)]

;============================しゃがみ=========================================
[State -1, 屈み弱キック]
type = ChangeState
value = 450
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 450 && MoveContact
trigger1 = P2BodyDist X < 30
trigger1 = Random < 1000-(P2BodyDist X*(90-(var(59)*12)))
trigger2 = P2BodyDist X = [-5,33]
trigger2 = random = [600,ifelse(p2movetype = A,609+(var(59)*12),609+(var(59)*70))]
trigger2 = P2StateType != L && P2StateType !=A
trigger2 = ctrl
trigger3 = p2bodydist x < 33
trigger3 = p2stateno != [120,159]
trigger3 = p2statetype != L && p2statetype != A
trigger3 = p2movetype = H
trigger3 = ctrl
trigger3 = var(58) = [50,79+(var(59)*5)]
trigger4 = p2bodydist x < 33
trigger4 = p2movetype = I
trigger4 = p2statetype != L && p2statetype != A
trigger4 = enemynear,ctrl = 0
trigger4 = ctrl
trigger4 = var(58) = [50,79+(var(59)*5)]

[State -1, 屈み強パンチ]
type = ChangeState
value = 410
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 450 && MoveContact
trigger1 = P2BodyDist X >= 15
trigger1 = var(58) = [0,30+(P2BodyDist X-15)]
trigger2 = p2bodydist x = [30,42]
trigger2 = random = [750,760+(var(59)*7)]
trigger2 = p2statetype != L
trigger2 = p2movetype != A
trigger2 = ctrl

[State -1, 浮かし攻撃]
type = ChangeState
value = 420
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 450 && MoveContact
trigger1 = P2BodyDist X >= 15
trigger1 = var(58) = [50,80+(P2BodyDist X-15)]

[State -1, 屈み強キック]
type = ChangeState
value = 460
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = stateno = 410 && movecontact
trigger1 = prevstateno = 450
trigger1 = P2BodyDist X < 40
trigger1 = var(58) = [70,80+(var(59)*7)]
trigger2 = stateno = 410 && movecontact
trigger2 = prevstateno != 450
trigger2 = P2BodyDist X < 45
trigger2 = var(58) = [0,67+(var(59)*5)]
trigger3 = p2bodydist x = [34,65]
trigger3 = random = [600,609+(var(59)*15)]
trigger3 = p2statetype != L
trigger3 = p2movetype != A
trigger3 = ctrl

;============================空中技=========================================
[State -1,ジャンプ弱パンチ]
type = ChangeState
value = ifelse(vel x = 0,600,601)
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = statetype = A && stateno != 105
trigger1 = stateno = 8050 && Var(5) = 1
trigger1 = pos y < -50

[State -1,ジャンプ弱キック]
type = ChangeState
value = ifelse(vel x = 0,650,651)
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = statetype = A && stateno != 105
trigger1 = stateno = [600,601]
trigger1 = movecontact
trigger1 = var(58) = [0,87+(var(59)*5)]
trigger2 = ctrl
trigger2 = P2StateType = A
trigger2 = P2BodyDist X = [-5,25]
trigger2 = P2BodyDist Y = [-15,15]
trigger2 = var(58) = [0,66]

[State -1,ジャンプ強パンチ]
type = ChangeState
value = ifelse(vel x = 0,610,620)
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = statetype = A && stateno != 105
triggerall = stateno != 950
trigger1 = stateno = [650,651]
trigger1 = movecontact
trigger1 = var(58) = [0,74+(var(59)*10)]
trigger2 = ctrl = 1
trigger2 = pos Y > -105 && vel Y > 0
trigger2 = var(58) = [0,39]

[State -1,ジャンプ強キック]
type = ChangeState
value = 660
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = statetype = A && stateno != 105
triggerall = stateno != 950
trigger1 = stateno = [610,620]
trigger1 = Pos Y < -120
trigger1 = movecontact
trigger1 = var(58) = [ifelse(Power>=3000,33,50),87+(var(59)*5)]
trigger2 = ctrl = 1
trigger2 = pos Y > -100 && vel Y > 0
trigger2 = var(58) = [40,79]

;=======================ダッシュ攻撃========================================
[State -1,ダッシュ弱パンチ]
type = ChangeState
value = 900
triggerall = var(59) = [1,2]
triggerall = statetype != A
triggerall = stateno = 101
trigger1 = p2stateno = 2051 || p2stateno = 2061
trigger1 = P2BodyDist X < 50
trigger1 = P2StateType != L
trigger1 = var(58) = [0,74]
trigger2 = p2stateno != 2051 && p2stateno != 2061
trigger2 = P2BodyDist X < 50
trigger2 = P2StateType != L
trigger2 = var(58) = [0,46]

[State -1,スライディングキック]
type = ChangeState
value = 910
triggerall = var(59) = [1,2]
triggerall = statetype != A
triggerall = stateno = 101
trigger1 = P2StateType = L && p2stateno != 5120
trigger1 = P2BodyDist X < 100
trigger2 = P2BodyDist X = [80,100]
trigger2 = P2StateType != L
trigger2 = var(58) = [90,99]

[State -1,三連脚]
type = ChangeState
value = 930
triggerall = var(59) = [1,2]
triggerall = statetype != A
triggerall = stateno = 101
trigger1 = p2stateno = 2051 || p2stateno = 2061
trigger1 = P2BodyDist X < 100
trigger1 = var(58) = [75,99]
trigger2 = p2stateno != 2051 && p2stateno != 2061
trigger2 = P2BodyDist X = [100,130]
trigger2 = P2StateType != L
trigger2 = var(58) = [0,9+((P2BodyDist X-100)/var(59))]

;============================特殊技=========================================
[State -1, ジャンプ開始]
type = ChangeState
value = 40
triggerall = var(59) = [1,2]
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2bodydist X < 100
trigger1 = P2StateNo = 5120
trigger1 = EnemyNear,AnimTime = -6
trigger1 = var(58) = [0,19]
trigger2 = enemy, numproj >= 1
trigger2 = !inguarddist
trigger2 = var(58) = [0,19]
trigger3 = p2bodydist X > 70
trigger3 = p2statetype != L
trigger3 = random = [0,25+(p2bodydist X/8)]
trigger4 = p2bodydist X < 40
trigger4 = p2statetype != L
trigger4 = var(58) = [0,24]

[State -1, 前にジャンプ]
type = VarSet
triggerall = var(59) = [1,2]
triggerall = Random < (p2bodydist X) * 4
trigger1 = stateno = 40
sysvar(1) = 1

[State -1, 後にジャンプ]
type = VarSet
triggerall = var(59) = [1,2]
triggerall = stateno = 40
trigger1 = P2BodyDist X < 40
trigger1 = var(58) = [0,66]
sysvar(1) = -1

[State -1,ダッシュ]
type = ChangeState
value = 100
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = enemy,Numproj= 0
trigger1 = stateno = 8000
trigger1 = var(58) = [0,statetime*10]
trigger2 = stateno = 8100
trigger2 = var(58) = [0,statetime*10]
trigger3 = ctrl
trigger3 = p2bodydist X = [70,140]
trigger3 = p2statetype != L && p2movetype != A
trigger3 = random = [100,124]
trigger4 = ctrl
trigger4 = p2bodydist X > 140
trigger4 = p2statetype != L && p2movetype != A
trigger4 = random = [100,149]

[State -1,バックステップ]
type = ChangeState
value = 105
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = BackEdgeBodyDist > 30
trigger1 = p2stateno = 5120
trigger1 = var(58) = [0,24]
trigger2 = P2BodyDist X > 30
trigger2 = var(58) = [0,17]

[State -1,空中ダッシュ]
type = ChangeState
value = 110
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X > 100 && vel Y = 0
trigger1 = var(58) = [10,13]

[State -1,残像拳（カウンター）]
type = ChangeState
value = 700
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = stateno = [150,153]
triggerall = power >= 1200
triggerall = statetype != A
trigger1 = random = [500,500+(var(59)*2)]
trigger2 = BackEdgeBodyDist <= 30
trigger2 = random = [0,1+(var(59)*3)]

[State -1,高速移動 (後方)]
type = ChangeState
value = 1000
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = BackEdgeBodyDist > 30
trigger1 = ctrl
trigger1 = Var(58) = 15
trigger2 = ctrl
trigger2 = p2stateno = 5120
trigger2 = var(58) = [50,74]
trigger3 = stateno = 101
trigger3 = P2StateType = L && p2stateno = 5120
trigger3 = P2BodyDist X < 100
trigger3 = var(58) = [50,74]

[State -1,高速移動 (前方)]
type = ChangeState
value = 1001
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = Var(58) = 16
trigger2 = ctrl
trigger2 = enemy,Numproj > 0 
trigger2 = var(58) = [25,49]
trigger3 = ctrl
trigger3 = BackEdgeBodyDist <= 30
trigger3 = P2BodyDist X <= 50
trigger3 = var(58) = [0,22]
trigger4 = stateno = 101
trigger4 = P2StateType = L && p2stateno = 5120
trigger4 = P2BodyDist X < 60
trigger4 = var(58) = [0,24]
trigger5 = stateno = 101
trigger5 = p2stateno != 2051 && p2stateno != 2061
trigger5 = P2BodyDist X < 50
trigger5 = P2StateType != L
trigger5 = var(58) = [47,79]

[State -1,挑発]
type = ChangeState
value = 195
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = Vel X = 0
triggerall = stateno != 195
triggerall = statetype != A
triggerall = Life > 250
triggerall = enemy,Numproj= 0
trigger1 = ctrl
trigger1 = p2bodydist X > 200
trigger1 = Life-P2Life > 250
trigger1 = Random = [777,777+((Life-P2Life)*(.045-(var(59)*.15)))]
trigger2 = stateno = 2210 || stateno = 2251
trigger2 = AnimTime = 0
trigger2 = P2BodyDist X > 90
trigger2 = Life-P2Life > 175
trigger2 = var(58) = [50,66-(var(59)*7)+(Life-P2Life)*.1]
trigger3 = (stateno = [2301,2302]) || (stateno = [2351,2352])
trigger3 = AnimTime = 0
trigger3 = p2bodydist X > 145
trigger3 = Life-P2Life > 175
trigger3 = var(58) = [70,86-(var(59)*7)+(Life-P2Life)*.1]
trigger4 = stateno = 52
trigger4 = prevstateno = 675
trigger4 = Enemy,ctrl = 0
trigger4 = P2BodyDist X > 120
trigger4 = Life-P2Life > 175
trigger4 = var(58) = [50,66-(var(59)*7)+(Life-P2Life)*.1]

[State -1,気力溜め]
type = ChangeState
value = 4500
triggerall = var(59) = [1,2]
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = Power < 3000
triggerall = ctrl
triggerall = Numproj = 0
triggerall = enemy,Numproj= 0
trigger1 = p2bodydist X > 35
trigger1 = p2statetype = L
trigger1 = Life > 250
trigger1 = Var(58) = [50,52]
trigger2 = p2bodydist X > 150
trigger2 = Var(58) = [50,79]
trigger3 = Power < 1500
trigger3 = Life > 250
trigger3 = p2bodydist X = [100,149]
trigger3 = Var(58) = [50,69]

[State -1, 気力溜め中止]
type = ChangeState
value = 4501
triggerall = var(59) = [1,2]
triggerall = stateno = 4500
trigger1 = p2bodydist X < 85
trigger1 = p2statetype != L || P2StateNo = 5120
trigger2 = enemy,Numproj > 0 
trigger3 = p2movetype = A
trigger3 = Var(58) = [0,84]
trigger4 = p2bodydist X < 120
trigger4 = Vel X > 0
trigger5 = random < statetime/10
trigger6 = roundstate != 2
trigger7 = inguarddist
trigger7 = Var(58) = [0,89]
trigger8 = Life < 250 && Power > 1250
trigger8 = random < statetime

[State -1, ガード2]
type = ChangeState
value = 120
triggerall = var(59) = [1,2]
triggerall = alive = 1
triggerall = inguarddist
trigger1 = ctrl
trigger1 = var(58) = [80-(var(59)*20),99]

[State -1, CPU用オートターン]
type = Turn
triggerall = roundstate = 2
triggerall = var(59) = [1,2]
trigger1   = P2BodyDist X < -200
trigger1   = statetype != A
trigger1   = stateno = [200,440]
trigger1   = Time = 1

[State -1, 地上受身]
type = ChangeState
value = 5200
triggerall = stateno = 5050
triggerall = roundstate = 2
triggerall = var(59) = [1,2]
triggerall = vel Y > 0
triggerall = alive
triggerall = canrecover
triggerall = pos Y < ifelse((anim = [5051,5059])||(anim = [5061,5069]), 0, 25)
triggerall = pos Y >= -20
trigger1   = Random < 50
trigger2   = var(58) = [20,39]
trigger2   = enemy,hitdefattr = SC, AA, AT, AP

[State -1, 空中受身]
type = ChangeState
value = 5210
triggerall = stateno = 5050
triggerall = roundstate = 2
triggerall = var(59) = [1,2]
triggerall = vel Y > -1
triggerall = alive
triggerall = canrecover
triggerall = pos Y = [-120,-20)
trigger1   = Random < 30
trigger2   = P2BodyDist X = [-90,90]
trigger2   = var(58) = [30,39]
trigger2   = enemy,hitdefattr = SA, AA, AT, AP

;=============================ＡＩスイッチ========================================
[State -1, AI起動用ヘルパー]
type=helper
triggerall = !NumHelper(9741)
triggerall = roundstate=2 && alive
triggerall = var(59) = 0
triggerall = ctrl && stateno=0
trigger1 = (PrevStateNo=[191,192])
trigger2 = PrevStateNo=5900
helpertype=normal
name="AI switch"
stateno=9741
ID=9741
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0

[State -1, AIhelper]
type=changestate
trigger1= ishelper(9741)
trigger1= stateno!=9741
value=9741

[State -1, Random_AIvar]
type     = VarRandom
trigger1 = stateno != [120,155]
trigger1 = Time = 1
trigger2 = stateno = [0,99]
trigger2 = statetime = 10
v     = 58
range = 0,99

[State -1, AI Level]
type     = VarSet
triggerall = !var(59)
triggerall = RoundState = 2
trigger1 = (command="cpu1")||(command="cpu2")
trigger2 = (command="cpu3")||(command="cpu4")
trigger3 = (command="cpu5")||(command="cpu6")
trigger4 = (command="cpu7")||(command="cpu8")
trigger5 = (command="cpu9")||(command="cpu10")
trigger6 = (command="cpu11")||(command="cpu12")
trigger7 = (command="cpu13")||(command="cpu14")
trigger8 = (command="cpu15")||(command="cpu16")
trigger9 = (command="cpu17")||(command="cpu18")
trigger10 = (command="cpu19")||(command="cpu20")
trigger11 = (command="cpu21")||(command="cpu22")
trigger12 = (command="cpu23")||(command="cpu24")
trigger13 = (command="cpu25")||(command="cpu26")
trigger14 = (command="cpu27")||(command="cpu28")
trigger15 = (command="cpu29")||(command="cpu30")
trigger16 = NumHelper(9741)
trigger16 = Helper(9741),var(59)
var(59) = 1 ; AI Level 0-2
;0 = AIなし
;1 = Normal
;2 = Hard

