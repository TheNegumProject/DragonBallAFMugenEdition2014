;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.

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

;---Hypers---------------

[Command]
name = "kame"   
command = D, DF, F, D, DF, F, a
time = 30

[Command]
name = "masenko"   
command = D, DF, F, D, DF, F, b
time = 30

[Command]
name = "genki"   
command = D, DF, F, D, DF, F, c
time = 30

[Command]
name = "ciocc"   
command = D, DF, F, D, DF, F, x
time = 30

[Command]
name = "furia"   
command = D, DF, F, D, DF, F, y
time = 30


;---Supers---------------

[Command]
name = "trapas"   
command = D, DB, B, a
time = 15

[Command]
name = "combo"   
command = D, DB, B, b
time = 15

[Command]
name = "devast"   
command = D, DB, B, x
time = 15

[Command]
name = "sfuriata"   
command = D, DB, B, y
time = 15

[Command]
name = "fire_ball"   
command = D, DB, B, c
time = 15










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


;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
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

;-----Hypers------------

;Furia debole
[State -1, ]
type = ChangeState
value = 3450
triggerall = command = "furia"
triggerall = power >= 1000
triggerall = var(40) >= 2000
triggerall = var(40) < 5000
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;Furia media
[State -1, ]
type = ChangeState
value = 3460
triggerall = command = "furia"
triggerall = power >= 2000
triggerall = var(40) >= 5000
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;Raggio Cioccolattino
[State -1, ]
type = ChangeState
value = 3300
triggerall = command = "ciocc"
triggerall = power >= 3000
triggerall = life <= 200
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;Simil-Genkidama
[State -1, ]
type = ChangeState
value = 3200
triggerall = command = "genki"
triggerall = power >= 3000
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;Simil-Masenko
[State -1, ]
type = ChangeState
value = 8200
triggerall = (p2stateno != 8100 && p2stateno != 8200 && p2stateno != 8300 && p2stateno != 8400 && p2stateno != 8500)
triggerall = command = "masenko"
triggerall = power >= 2000
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;Simil-Masenko
[State -1, ]
type = ChangeState
value = 8600
triggerall = p2bodydist X >=0
triggerall = p2stateno = 8100 || p2stateno = 8200 || p2stateno = 8300 || p2stateno = 8400 || p2stateno = 8500
triggerall = command = "masenko"
triggerall = power >= 2000
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;kamehameha
[State -1, ]
type = ChangeState
value = 8099
triggerall = (p2stateno != 8100 && p2stateno != 8200 && p2stateno != 8300 && p2stateno != 8400 && p2stateno != 8500)
triggerall = command = "kame"
triggerall = power >= 1000
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;kamehameha
[State -1, ]
type = ChangeState
value = 8600
triggerall = p2bodydist X >=0
triggerall = p2stateno = 8100 || p2stateno = 8200 || p2stateno = 8300 || p2stateno = 8400 || p2stateno = 8500
triggerall = command = "kame"
triggerall = power >= 1000
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000


;-----Supers------------


;trapassing
[State -1, ]
type = ChangeState
value = 1002
triggerall = command = "trapas"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000


;combo teleport
[State -1, ]
type = ChangeState
value = 1100
triggerall = command = "combo"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;devastating sphere
[State -1, ]
type = ChangeState
value = 1200
triggerall = command = "devast"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;Great Fury
[State -1, ]
type = ChangeState
value = 1300
triggerall = command = "sfuriata"
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000


;Fire ball
[State -1]
type = ChangeState
value = 1400
triggerall = command = "fire_ball"
triggerall = numproj = 0
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 2000

;Fire Ball 1
[State -1]
type = changestate
value = 1401
triggerall = command = "c"
triggerall = power >= 100
triggerall = Time > 10
trigger1 = stateno = 1400

;Fire Ball 2        cont
[State -1]
type = changestate
value = 1402
triggerall = command = "c"
triggerall = power >= 100
triggerall = Time > 10
trigger1 = stateno = 1401

;Fire Ball 2        cont
[State -1]
type = changestate
value = 1401
triggerall = command = "c"
triggerall = power >= 100
triggerall = Time > 10
trigger1 = stateno = 1402

























;---------------------------------------------------------------------------

;立ち強パンチ
[State -1, ]
type = ChangeState
value = 220
triggerall = (command = "c") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;立ち強パンチ
[State -1, ]
type = ChangeState
value = 221
triggerall = command = "c" && var(10) = 2
trigger1 = stateno = 220

;立ち強パンチ
[State -1, ]
type = ChangeState
value = 222
triggerall = command = "c" && var(10) = 1
trigger1 = stateno = 221

;立ち強パンチ
[State -1, ]
type = ChangeState
value = 223
triggerall = command = "z" && var(10) = 1
trigger1 = stateno = 221



;---------------------------------------------------------------------------
;============================特殊技=========================================
;---------------------------------------------------------------------------

;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;バックステップ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = (command = "BB") && (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1, Fwd]
type = ChangeState
value = 110
trigger1 = (command = "FF") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1, Back]
type = ChangeState
value = 112
triggerall = vel x <= 0
trigger1 = (command = "BB") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
; 高速移動 (後方)
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = var(18) = 0
triggerall = command = "hold_x" && command = "hold_y"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5 = stateno = 2000

;---------------------------------------------------------------------------
; 高速移動 (後方)
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = var(19) = 0
triggerall = prevstateno != 1000
triggerall = stateno != 1000
triggerall = command = "hold_x" && command = "hold_y"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5 = stateno = 2000
;---------------------------------------------------------------------------
; 高速移動 (前方)
[State -1]
type = ChangeState
value = 1001
triggerall = var(59) = 0
triggerall = var(19) = 0
triggerall = command = "hold_x" && command = "hold_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000

;---------------------------------------------------------------------------
; Charge
[State -1]
type = ChangeState
value = 4500
triggerall = statetype != C
triggerall = var(9) = 0
triggerall = Power <= 3000
trigger1 = ctrl = 1
triggerall = command = "hold_z"
trigger2 = stateno = 2000

;---------------------------------------------------------------------------
; Chargetrasf
[State -1]
type = ChangeState
value = 4500
triggerall = statetype != C
triggerall = var(9) = 1
triggerall = Power < 3000
trigger1 = ctrl = 1
triggerall = command = "hold_z"
trigger2 = stateno = 2000
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;============================通常技=========================================
;---------------------------------------------------------------------------

;立ち強キック（近距離） 
[State -1, ]
type = ChangeState
value = 260
triggerall = (command = "y") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 2000
;---------------------------------------------------------------------------
;立ち強キック
[State -1, ]
type = ChangeState
value = 270
triggerall = (command = "z") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 220 && movecontact
trigger8 = stateno = 260 && movecontact && AnimElem = 9, >= 1 && AnimElem = 10, <= 1
trigger9 = stateno = 2000
;---------------------------------------------------------------------------

;;立ち弱キック（近距離）
;[State -1, ]
;type = ChangeState
;value = 271
;triggerall = (command = "x") && (command != "holddown") && (P2BodyDist X <= 15)
;trigger1 = (ctrl) && (statetype = S)
;trigger2 = stateno = 200 && MoveContact
;trigger3 = stateno = 211 && MoveContact
;trigger4 = stateno = 271 && movecontact
;trigger5 = stateno = 2000
;---------------------------------------------------------------------------
;立ち弱キック
[State -1, ]
type = ChangeState
value = 250
triggerall = (command = "x") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 2000
;---------------------------------------------------------------------------

;立ち強パンチ（近距離）
[State -1, ]
type = ChangeState
value = 210
triggerall = (command = "b") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 2000
;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, ]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = (command = "c") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, ]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = prevstateno != 220
triggerall = stateno != 220
triggerall = (command = "c") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 271 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 2000
;---------------------------------------------------------------------------

;;立ち弱パンチ（近距離）
;[State -1, ]
;type = ChangeState
;value = 211
;triggerall = (command = "x") && (command != "holddown") && (P2BodyDist X <= 15)
;trigger1 = (ctrl) && (statetype = S)
;trigger2 = stateno = 2000
;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, ]
type = ChangeState
value = 200
triggerall = (command = "a") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 200) && (AnimElem = 2,>4 || MoveContact)
trigger3 = stateno = 211 && MoveContact
trigger4 = stateno = 2000
;---------------------------------------------------------------------------
;浮かし攻撃
[State -1, ]
type = ChangeState
value = 420
triggerall = (command = "y") && (command = "holddiagfwd")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 211 && MoveContact
trigger6 = stateno = 271 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 210 && movecontact


;---------------------------------------------------------------------------
;============================しゃがみ=========================================
;---------------------------------------------------------------------------

;屈み強キック
[State -1, ]
type = ChangeState
value = 460
triggerall = (command = "y") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1

;屈み強キック
[State -1, ]
type = ChangeState
value = 420
triggerall = (command = "c") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1

;屈み強キック
[State -1, ]
type = ChangeState
value = 470
triggerall = (command = "z") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
;---------------------------------------------------------------------------
;屈み弱キック
[State -1, ]
type = ChangeState
value = 450
triggerall = (command = "x") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 450) && (AnimElem = 2,>5 || MoveContact)
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 211 && MoveContact
trigger6 = stateno = 271 && movecontact
trigger7 = stateno = 250 && movecontact

;---------------------------------------------------------------------------
;屈み強パンチ
[State -1, ]
type = ChangeState
value = 410
triggerall = (command = "b") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = (stateno = 200 || stateno = 211) && (movecontact)
trigger4 = (stateno = 250 || stateno = 271) && (movecontact)

;---------------------------------------------------------------------------
;屈み弱パンチ
[State -1, ]
type = ChangeState
value = 400
triggerall = (command = "a") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (AnimElem = 2,>5 || MoveContact)
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 211 && MoveContact


;---------------------------------------------------------------------------
;============================空中技=========================================
;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1, ]
type = ChangeState
value = 670
triggerall = (command = "z")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)

;---------------------------------------------------------------------------

;ジャンプ強キック
[State -1, ]
type = ChangeState
value = 660
triggerall = (command = "y")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 620) && (movecontact)

;---------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 650
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 620
triggerall = (command = "c")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601 || stateno = 651) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 610
triggerall = (command = "b")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 650) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 600
triggerall = (command = "a")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =600) && (AnimElem = 2,>4) && (movecontact)
;---------------------------------------------------------------------------

;Fly Up Air Command
[State -1]
type = ChangeState
value = 2000
triggerall = var(58) != 1
triggerall = command = "s"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Fly Up Air Command
[State -1]
type = ChangeState
value = 50
triggerall = stateno = 2000
triggerall = command = "s"
trigger1 = statetype = A

;Fly up
[State -1]
type = ChangeState
value = 1999
triggerall = var(58) != 1
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = ctrl = 1



[State -1, AI]
type = Varset
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"


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

[State -1,A2]
;Parar de voar
type = ChangeState
;trigger1 = Var(9) = 0
trigger1 = var(59) != 0
trigger1 = stateno = 10001
trigger1 = p2statetype = S
trigger1 = p2bodydist Y > 42
value = 50


----|Contrattacco|-------------------

;contrattacco energetico
[State -1, kamehameha]
type = ChangeState
value = 8600
triggerall = command="hold_a" && command = "hold_b" && power >= 2000 && p2bodydist x >= 90
triggerall = p2stateno = 8100 || p2stateno = 8200 || p2stateno = 8300 || p2stateno = 8400 || p2stateno = 8500
triggerall = p2bodydist Y <= 5 && p2bodydist Y >= 0
trigger1 = (statetype = s)
trigger2 = stateno = 10001
trigger6 = movecontact
trigger6 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 6070

