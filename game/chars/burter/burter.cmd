; コンフィギュレーション

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

; コマンド
;-| Super Motions |--------------------------------------------------------
[command]
name = "AI1"
command = B,D,a+c,z,c+b,s
time = 1
[command]
name = "AI2"
command = B,F,c+b,z,c+z,x,s
time = 1
[command]
name = "AI3"
command = B,U,a+b,y,c+y,s,z,D
time = 1
[command]
name = "AI4"
command = B,B,a+y,c,z+x,s
time = 1
[command]
name = "AI5"
command = B,B,a+b,z,c+b,s
time = 1
[command]
name = "AI6"
command = D,B,z+b,z,c+x,s
time = 1
[command]
name = "AI7"
command = B,U,a+b,z,c+x,s
time = 1
[command]
name = "AI8"
command = B,F,a+b,c,c+x,s
time = 1
[Command]
name = "AI9"
command = U,D,F,F,B,B,s
time = 1
[Command]
name = "AI10"
command = U,D,F,F,B,F,s
time = 1
[Command]
name = "AI11"
command = U,D,F,F,B,D,s
time = 1
[Command]
name = "AI12"
command = U,D,F,F,B,U,s
time = 1
[Command]
name = "AI13"
command = U,D,F,F,U,B,s
time = 1
[Command]
name = "AI14"
command = U,D,F,F,D,B,s
time = 1
[Command]
name = "AI15"
command = U,D,F,F,F,B,s
time = 1
[Command]
name = "AI16"
command = U,D,U,F,B,B,s
time = 1
[Command]
name = "AI17"
command = U,D,D,F,B,B,s
time = 1
[Command]
name = "AI18"
command = D,D,F,F,B,B,s
time = 1
[Command]
name = "AI19"
command = U,U,F,F,B,B,s
time = 1
[Command]
name = "AI20"
command = U,B,F,F,B,B,s
time = 1
[Command]
name = "AI21"
command = UB, U, F, a+b,s
time = 1
[Command]
name = "AI22"
command = UB, U, F, b+c,s
time = 1
[Command]
name = "AI23"
command = UB, U, F, a+c,s
time = 1
[Command]
name = "AI24"
command = UF, U, B, x+y,s
time = 1
[Command]
name = "AI25"
command = UF, U, B, y+z,s
time = 1
[Command]
name = "AI26"
command = UF, U, B, x+z,s
time = 1
[Command]
name = "AI27"
command = UB, U, F, x+y,s
time = 1
[Command]
name = "AI28"
command = UB, U, F, y+z,s
time = 1
[Command]
name = "AI29"
command = UB, U, F, x+z,s
time = 1
[Command]
name = "AI30"
command = UF, U, B, a+b,s
time = 1
[Command]
name = "AI31"
command = UF, U, B, b+c,s
time = 1
[Command]
name = "AI32"
command = UF, U, B, a+c,s
time = 1
[Command]
name = "AI33"
command = UF, DB, UB,DF ,x,s
time = 1
[Command]
name = "AI34"
command = UF, DB, UB,DF ,y,s
time = 1
[Command]
name = "AI35"
command = UF, DB, UB,DF , z,s
time = 1


[Command]
name = "jeice"
command = ~D, F, B, y
time = 30

[Command]
name = "hyperdash"
command = ~D, B, F, b
time = 30

[Command]
name = "shinkuu"
command = ~D, F, D, F, y
time = 25

;[Command]
;name = "bakuhatsu"
;command = ~D, F, D, F, b
;time = 25

[Command]
name = "mega"
command = ~D, B, F, y
time = 20


[Command]
name = "purple"
command = ~D, F, D, F, x
time = 25


;-| Special Motions |------------------------------------------------------

[Command]
name = "hadouken"
command = ~D, F, x
time = 20

[Command]
name = "hadouken2"
command = ~D, F, y
time = 20

[Command]
name = "shoulder"
command = ~D, B, x
time = 20

[Command]
name = "shoulder2"
command = ~D, B, y
time = 20

[Command]
name = "speedkick"
command = ~D, B, a
time = 20


[Command]
name = "speedkick2"
command = ~D, B, b
time = 20


[Command]
name = "quickkick"
command = a, a, a
time = 20

[Command]
name = "quickkick"
command = ~D, F, a
time = 20

[Command]
name = "quickkick2"
command = ~D, F, b
time = 20


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
command = x+a
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "charge"
command = y+b
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
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
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
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

[Statedef -1]


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;=============================必殺技========================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


; プラネットバースト
[State -1,]
type = ChangeState
value = 2500
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = Var(55) != 1
triggerall = command = "jeice"
triggerall = power >= 1000
;triggerall = Var(55) != 1
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact
trigger16 = stateno = 550 && movecontact


; プラネットバースト
[State -1,]
type = ChangeState
value = 2300
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = Var(55) != 1
triggerall = command = "hyperdash"
triggerall = power >= 2000
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact
trigger16 = stateno = 550 && movecontact

; プラネットバースト
[State -1,]
type = ChangeState
value = 2305
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = Var(55) = 1
triggerall = command = "hyperdash"
triggerall = power >= 2000
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact
trigger16 = stateno = 550 && movecontact

;; 超爆発波
;[State -1,]
;type = ChangeState
;value = 2200
;triggerall = !IsHelper
;triggerall = command = "bakuhatsu"
;triggerall = power >= 2000
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = stateno = 52 || stateno = 101
;trigger2 = animelem = 1, >= 1
;trigger3 = stateno = 220 && movecontact
;trigger4 = stateno = 210 && movecontact
;trigger5 = stateno = 230 && movecontact
;trigger6 = stateno = 200 && movecontact
;trigger7 = stateno = 204 && movecontact
;trigger8 = stateno = 250 && movecontact
;trigger9 = stateno = 260 && movecontact
;trigger10 = stateno = 270 && movecontact
;trigger11 = stateno = 400 && movecontact
;trigger12 = stateno = 410 && movecontact
;trigger13 = stateno = 420 && movecontact
;trigger14 = stateno = 450 && movecontact
;trigger15 = stateno = 500 && movecontact

; ギャリック砲
[State -1,]
type = ChangeState
value = 2005
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = Var(55) != 1
triggerall = command = "shinkuu"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact

; ギャリック砲
[State -1,]
type = ChangeState
value = 2003
triggerall = var(59) != 1
triggerall = IsHelper(7000)
triggerall = command = "shinkuu"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact


; 空中ギャリック砲
[State -1,]
type = ChangeState
value = 2105
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = Var(55) != 1
triggerall = command = "shinkuu"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact


;-----Air Super
[State -1,]
type = ChangeState
value = 2700
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = Var(55) = 1
triggerall = command = "purple"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact


; 空中ギャリック砲
[State -1,]
type = ChangeState
value = 2103
triggerall = var(59) != 1
triggerall = IsHelper(7000)
triggerall = command = "shinkuu"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

; ダッシュボム
[State -1,]
type = ChangeState
value = 1700
triggerall = var(59) != 1
triggerall = IsHelper(7000)
triggerall = command = "mega"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact

;lightning kick B
[State -1]
type = ChangeState
value = 1505
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "speedkick2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 500 && movecontact
trigger3 = stateno = 220 && movecontact; = 1
trigger4 = stateno = 210 && movecontact; = 1
trigger5 = stateno = 230 && movecontact; = 1
trigger6 = stateno = 200 && movecontact; = 1
trigger7 = stateno = 204 && movecontact; = 1
trigger8 = stateno = 250 && movecontact; = 1
trigger9 = stateno = 260 && movecontact; = 1
trigger10 = stateno = 270 && movecontact; = 1
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1200 && movecontact
trigger16 = stateno = 101

;lightning kick B
[State -1]
type = ChangeState
value = 1500
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "speedkick"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 500 && movecontact
trigger3 = stateno = 220 && movecontact; = 1
trigger4 = stateno = 210 && movecontact; = 1
trigger5 = stateno = 230 && movecontact; = 1
trigger6 = stateno = 200 && movecontact; = 1
trigger7 = stateno = 204 && movecontact; = 1
trigger8 = stateno = 250 && movecontact; = 1
trigger9 = stateno = 260 && movecontact; = 1
trigger10 = stateno = 270 && movecontact; = 1
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1200 && movecontact
trigger16 = stateno = 101
trigger17 = stateno = 1505


; 連続エネルギー弾（弱）
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact

; エネルギー弾（強）
[State -1]
type = ChangeState
value = 1005
triggerall = var(59) != 1
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact
trigger16 = stateno = 1000 && AnimElem = 9, >= 1 && AnimElem = 11, <= 1

; 空中連続エネルギー弾（弱）
[State -1,]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

; 空中エネルギー弾（強）
[State -1,]
type = ChangeState
value = 1105
triggerall = var(59) != 1
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0 ;|| Numprojid(1100) = 2 || Numprojid(1105) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact





; ショルダータックル（強）
[State -1]
type = ChangeState
value = 1405
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "shoulder2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 460 && movecontact




;lightning kick B
[State -1]
type = ChangeState
value = 1200
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "quickkick"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 500 && movecontact
trigger3 = stateno = 220 && movecontact; = 1
trigger4 = stateno = 210 && movecontact; = 1
trigger5 = stateno = 230 && movecontact; = 1
trigger6 = stateno = 200 && movecontact; = 1
trigger7 = stateno = 204 && movecontact; = 1
trigger8 = stateno = 250 && movecontact; = 1
trigger9 = stateno = 260 && movecontact; = 1
trigger10 = stateno = 270 && movecontact; = 1
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1200 && movecontact
trigger16 = stateno = 101

;lightning kick B
[State -1]
type = ChangeState
value = 1210
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "quickkick2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 500 && movecontact
trigger3 = stateno = 220 && movecontact; = 1
trigger4 = stateno = 210 && movecontact; = 1
trigger5 = stateno = 230 && movecontact; = 1
trigger6 = stateno = 200 && movecontact; = 1
trigger7 = stateno = 204 && movecontact; = 1
trigger8 = stateno = 250 && movecontact; = 1
trigger9 = stateno = 260 && movecontact; = 1
trigger10 = stateno = 270 && movecontact; = 1
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 1200 && movecontact
trigger16 = stateno = 101





; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 1205
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "quickkick"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 635 && movecontact
trigger6 = stateno = 640 && movecontact
trigger7 = stateno = 650 && movecontact
trigger8 = stateno = 1406 && movecontact
trigger9 = stateno = 111

; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 1206
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "quickkick2"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 635 && movecontact
trigger6 = stateno = 640 && movecontact
trigger7 = stateno = 650 && movecontact
trigger8 = stateno = 1406 && movecontact
trigger9 = stateno = 111





; ダッシュ強パンチ (ニュートラル)
[State -1,]
type = ChangeState
value = 510
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "dash_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact; = 1
trigger4 = stateno = 210 && movecontact; = 1
trigger5 = stateno = 230 && movecontact; = 1
trigger6 = stateno = 200 && movecontact; = 1
trigger7 = stateno = 204 && movecontact; = 1
trigger8 = stateno = 250 && movecontact; = 1
trigger9 = stateno = 260 && movecontact; = 1
trigger10 = stateno = 270 && movecontact; = 1
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact

;---------------------------------------------------------------------------
;============================特殊技=========================================
;---------------------------------------------------------------------------

;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;空中ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

; バックステップ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

; 空中バックダッシュ
[State -1, Run Back]
type = ChangeState
value = 112
triggerall = var(59) != 1
triggerall = vel x <= 0;-1 
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

; 投げ
[State -1,]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 7
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

; きたねぇ花火（カウンター）
[State -1]
type = ChangeState
value = 305
triggerall = var(59) != 1
triggerall = var(55) != 1
triggerall = !IsHelper
triggerall = command = "recovery" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000

; 気力溜め
[State -1]
type = ChangeState
value = 1900
triggerall = var(59) != 1
triggerall = Var(50) != 1
;triggerall = !IsHelper
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"

; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = var(59) != 1
trigger1 = command = "start"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

; 高速移動 (後方)
[State -1]
type = ChangeState
value = 360
triggerall = var(59) != 1
triggerall = command = "recovery" ^^ command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102

; 高速移動 (前方)
[State -1]
type = ChangeState
value = 361
triggerall = var(59) != 1
triggerall = command = "recovery" ^^ command = "z"
trigger1 = statetype = S
trigger1 = ctrl

 ダッシュ高速移動 (前方)
[State -1]
type = ChangeState
value = 361
triggerall = var(59) != 1
triggerall = stateno = 100 || stateno = 101 || stateno = 102
triggerall = ctrl = 0
trigger1 = command = "hold_x" && command = "hold_a" 
trigger2 = command = "hold_z"
trigger3 = command = "hold_c"


;---------------------------------------------------------------------------
;=======================ダッシュ攻撃========================================
;---------------------------------------------------------------------------

; ダッシュ強パンチ (ダッシュ中)
[State -1,]
type = ChangeState
value = 511
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = stateno = 101
trigger1 = command = "hold_y"

; ダッシュ弱パンチ (ダッシュ中)
[State -1,]
type = ChangeState
value = 500
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = stateno = 101
trigger1 = command = "hold_x"

 ダッシュ弱キック (スライディングキック)
[State -1,]
type = ChangeState
value = 550
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = stateno = 101
trigger1 = command = "hold_a"

 ダッシュ強キック (ダッシュ中)
[State -1,]
type = ChangeState
value = 525
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = stateno = 101
trigger1 = command = "hold_b"

;---------------------------------------------------------------------------
;============================通常技=========================================
;---------------------------------------------------------------------------
;-------------パンチ

; 弱パンチ (近距離)
[State -1,]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x < 4
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 210
trigger3 = time > 4
trigger4 = stateno = 500 && movecontact

; 弱パンチ
[State -1,]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200
trigger3 = time > 9
trigger4 = stateno = 210
trigger4 = time > 4
trigger5 = stateno = 260 && movecontact
trigger6 = stateno = 500 && movecontact

; 強パンチ (近距離)
[State -1,]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 500 && movecontact

; 強パンチ
[State -1,]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 260 && movecontact
trigger7 = stateno = 500 && movecontact

;-------------------------------------------キック

; 弱キック (近距離)
[State -1,]
type = ChangeState
value = 260
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x < 5
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 235
trigger2 = time > 3
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 500 && movecontact

; 弱キック
[State -1,]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = time > 14
trigger3 = stateno = 260
trigger3 = time > 3
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 500 && movecontact
trigger7 = stateno = 250 && movecontact

; 強キック (近距離)
[State -1,]
type = ChangeState
value = 280
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x < 25
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 200 && movecontact
;trigger4 = stateno = 250 && movecontact
trigger4 = stateno = 260 && movecontact
trigger5 = stateno = 500 && movecontact

; 強キック
[State -1]
type = ChangeState
value = 270
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 250 && movecontact
;trigger7 = stateno = 260 && movecontact
trigger7 = stateno = 500 && movecontact

;---------------------------------------------------------------------------
;============================しゃがみ=========================================
;---------------------------------------------------------------------------

; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 =  stateno = 410
trigger3 =  time > 6
trigger4 = stateno = 500 && movecontact

; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 420 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 260 && movecontact
trigger9 = stateno = 500 && movecontact

; しゃがみ弱キック
[State -1]
type = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 420 && movecontact
trigger3 = time > 4
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 500 && movecontact

; しゃがみ強キック
[State -1]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 420 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 250 && movecontact
;trigger8 = stateno = 280 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 500 && movecontact

;---------------------------------------------------------------------------
;============================空中技=========================================
;---------------------------------------------------------------------------

; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "x"
trigger1 = statetype = A && vel x != 0 
trigger1 = ctrl = 1
;trigger2 = stateno = 610 && movecontact

; ジャンプ弱パンチ (垂直)
[State -1]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact

; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 620
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 635 && movecontact
trigger6 = stateno = 1406 && movecontact

; ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A && vel x != 0
trigger1 = ctrl = 1
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 1406 && movecontact
;trigger3 = stateno = 630 && movecontact

; ジャンプ弱キック (垂直)
[State -1]
type = ChangeState
value = 635
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 635 && movecontact
trigger4 = stateno = 1406 && movecontact

; ジャンプ強キック
[State -1]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A && vel x != 0
trigger1 = ctrl = 1
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 620 && movecontact

; ジャンプ強キック (垂直)
[State -1]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 635 && movecontact
trigger4 = stateno = 620 && movecontact





;;;-----------------------------------------------------------------------------
;ARTIFICIAL INTELLIGENCE BEGINS HERE
;;;;;--------------------------------------------------------------------------
;;;;DELETE THE NEXT 40 LINES TO DISABLE AI
[State -3, 0]  ;ai start
type = varset
triggerall = var(55) = 0
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
trigger35 = command = "AI35"
var(59) = 1



;Random Mode Change
[State -1, Random_AIvar]
type     = VarRandom
trigger1 = stateno != [120,155]
trigger1 = Time = 1
trigger2 = stateno = [0,99]
trigger2 = statetime = 10
v     = 58
range = 0,99





;=============================ガード========================================
[State -1, 空中ガード]
type  = ChangeState
value = 132
triggerall = p2movetype = A
triggerall = statetype = A
triggerall = var(59) = 1
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = A
trigger1 = p2bodydist X = [40,80]
trigger1 = var(58) = [0,69]
trigger2 = p2bodydist X = [-20,39]
trigger2 = var(58) = [0,95]

[State -1, 対地 立ちガード]
type  = ChangeState
value = 130
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = var(59) = 1
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = S
trigger1 = p2bodydist X = [40,90]
trigger1 = var(58) = [0,39]
trigger2 = p2bodydist X = [-15,39]
trigger2 = var(58) = [10,49]
trigger3 = enemy,teammode = simul
trigger3 = p2bodydist X = [-50,-16]
trigger3 = var(58) = [0,79]
trigger4 = p2bodydist X = [-15,39]
trigger4 = enemy,hitdefattr = S, NA,SA,HA
trigger4 = Random < 300

[State -1, 対空 立ちガード]
type  = ChangeState
value = 130
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = var(59) = 1
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = A
trigger1 = p2bodydist X = [40,90]
trigger1 = var(58) = [0,80]
trigger2 = p2bodydist X = [-40,39]
trigger2 = var(58) = [0,90]
trigger3 = p2bodydist X = [-40,39]
trigger3 = enemy,hitdefattr = A, NA,SA,HA
trigger3 = Random < 600

[State -1, しゃがみガード]
type  = ChangeState
value = 131
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = var(59) = 1
triggerall = ctrl
triggerall = stateno != [190,194]
trigger1 = p2statetype = C
trigger1 = p2bodydist X = [40,85]
trigger1 = var(58) = [0,50]
trigger2 = p2statetype = C
trigger2 = p2bodydist X = [-20,39]
trigger2 = var(58) = [0,79]
trigger3 = p2statetype = S
trigger3 = p2bodydist X = [-15,39]
trigger3 = var(58) = [0,30]
trigger4 = p2statetype = C
trigger4 = enemy,teammode = simul
trigger4 = p2bodydist X = [-50,-16]
trigger4 = var(58) = [0,79]
trigger5 = p2bodydist X = [-20,39]
trigger5 = enemy,hitdefattr = C, NA,SA,HA
trigger5 = Random < 450


;=============================投げ========================================
[State -1, 投げ]
type  = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = !IsHelper
triggerall = Random  = [35,59]
triggerall = statetype = S
triggerall = ctrl
triggerall = p2bodydist X = [-1,4]
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2movetype != H


;=============================Hypers========================================

[State -3]
type = ChangeState
triggerall = var(59) = 1
triggerall = var(55) != 1
triggerall = !IsHelper
triggerall = (stateno != 305) &&  (stateno != 310)
triggerall = StateType = S
triggerall = Power > 1900
triggerall = enemynear,Movetype != A
trigger1 = p2bodydist X > 120 || (enemynear,statetype = L && p2bodydist X > 70)
trigger1 = random <= 5200
trigger1 = Ctrl = 1
;trigger2 = p2statetype != A
value = 2500

[State -3, 高確率でセルJｒｱﾀｯｸ];時間差攻撃
type = ChangeState
triggerall = var(59) = 1
triggerall = var(55) != 1
triggerall = power >= 2000
triggerall = !IsHelper
triggerall = StateType != A
trigger1 = random <= 600
trigger1 = p2bodydist X = [31,300]
trigger1 = p2statetype = L
trigger1 = stateno != 5120
trigger1 = Ctrl
trigger2 = stateno = 270
trigger2 = prevstateno = [220,230]
trigger2 = movehit
trigger2 = var(58) = [30,99]
trigger3 = stateno = 220
trigger3 = (prevstateno = [200,210]) || (prevstateno = [250,260])
trigger3 = movehit
trigger3 = var(58) = [30,99]
trigger3 = p2bodydist X > 30
trigger4 = stateno = 400
trigger4 = prevstateno = 420
trigger4 = movehit
trigger4 = var(58) = [30,99]
trigger5 = stateno = 400
trigger5 = movehit
trigger5 = var(58) = [90,99]
trigger6 = stateno = 450
trigger6 = movecontact
trigger6 = var(58) = [30,79]
value = 2300

[State -3, 高確率でセルJｒｱﾀｯｸ];時間差攻撃
type = ChangeState
triggerall = var(59) = 1
triggerall = var(55) = 1
triggerall = !IsHelper
triggerall = power >= 2000
triggerall = StateType != A
trigger1 = random <= 600
trigger1 = p2bodydist X = [31,300]
trigger1 = p2statetype = L
trigger1 = stateno != 5120
trigger1 = Ctrl
trigger2 = stateno = 270
trigger2 = prevstateno = [220,230]
trigger2 = movehit
trigger2 = var(58) = [30,99]
trigger3 = stateno = 220
trigger3 = (prevstateno = [200,210]) || (prevstateno = [250,260])
trigger3 = movehit
trigger3 = var(58) = [30,99]
trigger3 = p2bodydist X > 30
trigger4 = stateno = 400
trigger4 = prevstateno = 420
trigger4 = movehit
trigger4 = var(58) = [30,99]
trigger5 = stateno = 400
trigger5 = movehit
trigger5 = var(58) = [90,99]
trigger6 = stateno = 450
trigger6 = movecontact
trigger6 = var(58) = [30,79]
value = 2305

[State -3]
type = ChangeState
triggerall = var(59)= 1
triggerall = !IsHelper
triggerall = var(55) = 1
triggerall = StateType != A
triggerall = power >= 1000
triggerall = stateno != 2700
trigger1 = stateno = 400
trigger1 = prevstateno = 420
trigger1 = movehit
trigger1 = var(58) = [0,29]
trigger2 = stateno = 270
trigger2 = prevstateno = [220,230]
trigger2 = movehit
trigger2 = var(58) = [0,29]
trigger3 = stateno = 220
trigger3 = (prevstateno = [200,210]) || (prevstateno = [250,260])
trigger3 = movehit
trigger3 = p2bodydist X > 30
trigger3 = var(58) = [0,29]
trigger4 = stateno = 400
trigger4 = prevstateno = 420
trigger4 = movehit
trigger4 = var(58) = [0,29]
value = 2700



[State -3]
type = ChangeState
triggerall = var(59)= 1
triggerall = !IsHelper
triggerall = var(55) != 1
triggerall = StateType != A
triggerall = power >= 1000
triggerall = stateno != 2005
trigger1 = Ctrl
trigger1 = p2bodydist X = [100,300]
trigger1 = p2bodydist Y = [-80,10]
Trigger1 = !(enemynear,ctrl)
trigger1 = p2Movetype != H
trigger1 = random <= 30
trigger2 = stateno = 270
trigger2 = prevstateno = [220,230]
trigger2 = movehit
trigger2 = var(58) = [0,29]
trigger3 = stateno = 220
trigger3 = (prevstateno = [200,210]) || (prevstateno = [250,260])
trigger3 = movehit
trigger3 = p2bodydist X > 30
trigger3 = var(58) = [0,29]
trigger4 = stateno = 400
trigger4 = prevstateno = 420
trigger4 = movehit
trigger4 = var(58) = [0,29]
trigger5 = stateno = 400
trigger5 = movehit
trigger5 = var(58) = [0,49]
value = 2005

[State -3]
type = ChangeState
triggerall = var(59)= 1
triggerall = IsHelper(7000)
triggerall = var(55) = 1
triggerall = StateType != A
triggerall = power >= 1000
triggerall = stateno != 2003
trigger1 = Ctrl
trigger1 = p2bodydist X = [100,300]
trigger1 = p2bodydist Y = [-80,10]
Trigger1 = !(enemynear,ctrl)
trigger1 = p2Movetype != H
trigger1 = random <= 30
trigger2 = stateno = 270
trigger2 = prevstateno = [220,230]
trigger2 = movehit
trigger2 = var(58) = [0,29]
trigger3 = stateno = 220
trigger3 = (prevstateno = [200,210]) || (prevstateno = [250,260])
trigger3 = movehit
trigger3 = p2bodydist X > 30
trigger3 = var(58) = [0,29]
trigger4 = stateno = 400
trigger4 = prevstateno = 420
trigger4 = movehit
trigger4 = var(58) = [0,29]
trigger5 = stateno = 400
trigger5 = movehit
trigger5 = var(58) = [0,49]
value = 2003



[State -3]
type = ChangeState
triggerall = var(59) = 1
triggerall = !IsHelper
triggerall = var(55) != 1
triggerall = StateType != A
trigger1 = Ctrl
trigger1 = power >= 1000
trigger1 = (enemynear,ctrl)
trigger1 = random<25
value = 2005


[State -3]
type = ChangeState
triggerall = var(59)= 1
triggerall = !IsHelper
triggerall = var(55) != 1
triggerall = StateType = A && Ctrl = 1
triggerall = power >= 1000
triggerall = stateno != 2105
trigger1 = p2bodydist X = [100,300]
trigger1 = p2bodydist Y = [-80,10]
Trigger1 = !(enemynear,ctrl)
trigger1 = p2Movetype != H
trigger1 = random <= 200
trigger2 = stateno = 650
trigger2 = movehit
trigger2 = var(58) = [0,29]
value = 2105



[State -3]
type = ChangeState
triggerall = var(59)= 1
triggerall = IsHelper(7000)
triggerall = var(55) = 1
triggerall = StateType = A && Ctrl = 1
triggerall = power >= 1000
triggerall = stateno != 2105
trigger1 = p2bodydist X = [100,300]
trigger1 = p2bodydist Y = [-80,10]
Trigger1 = !(enemynear,ctrl)
trigger1 = p2Movetype != H
trigger1 = random <= 200
trigger2 = stateno = 650
trigger2 = movehit
trigger2 = var(58) = [0,29]
value = 2103


[State -1,気力溜め]
type = ChangeState
value = 1900
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = p2bodydist X > 35
trigger1 = p2statetype = L
trigger1 = Var(58) = [50,60]
trigger2 = p2bodydist X > 150
trigger2 = Var(58) = [50,99]


;=============================Specials========================================

[state -3]
type = changestate
value = 1500
triggerall = var(59) = 1 && stateno < 800
triggerall = !IsHelper
triggerall = StateType != A && MoveType != H
triggerall = ctrl && p2life!= 0
triggerall = P2BodyDist X = [00,15]
triggerall = P2StateType != A
triggerall = enemy, numproj = 0
trigger1 = p2movetype = A
trigger1 = random < 100
trigger2 = p2statetype = A
trigger2 = random < 100

[state -3]
type = changestate
value = 1500
triggerall = var(59) = 1
triggerall = !IsHelper
triggerall = StateType != A && MoveType != H
trigger1 = stateno = 400
trigger1 = movecontact
trigger1 = var(58) = [40,69]
trigger2 = stateno = 270
trigger2 = prevstateno = [220,230]
trigger2 = movehit
trigger2 = var(58) = [40,49]
trigger3 = stateno = 220
trigger3 = movecontact
trigger3 = p2bodydist X > 30
trigger3 = var(58) = [40,49]
trigger4 = stateno = 450
trigger4 = movecontact
trigger4 = var(58) = [40,79]

[state -3]
type = changestate
value = 1200
triggerall = var(59) = 1
triggerall = !IsHelper
triggerall = StateType != A && MoveType != H
trigger1 = stateno = 400
trigger1 = movecontact
trigger1 = var(58) = [10,39]
trigger2 = stateno = 270
trigger2 = prevstateno = [220,230]
trigger2 = movehit
trigger2 = var(58) = [30,39]
trigger3 = stateno = 220
trigger3 = movecontact
trigger3 = p2bodydist X > 30
trigger3 = var(58) = [30,39]
trigger4 = stateno = 450
trigger4 = movecontact
trigger4 = var(58) = [0,39]


;ライジングアタック強
[State -1,]
type = ChangeState
value = 1405
triggerall = !IsHelper
triggerall = var(59) = 1
triggerall = p2bodydist x = [0,40]
trigger1 = random <= 200
trigger1 = (statetype != A)  && CTRL
trigger1 = (enemynear,movetype = H) || (enemynear,movetype = A)
trigger1 = enemynear,statetype = A
trigger1 = p2bodydist Y <= -50
trigger2 = stateno = 220
trigger2 = movehit
trigger2 = var(58) = [0,79]
trigger3 = stateno = 400
trigger3 = movecontact
trigger3 = var(58) = [40,69]


[state -3]
type = ChangeState
value = 1205
triggerall = var(59) = 1
triggerall = !IsHelper
triggerall = StateType = A && MoveType != H
trigger1 = ctrl && p2life!= 0
trigger1 = P2BodyDist X = [-5,30]
trigger1 = P2BodyDist Y = [0,10]
trigger1 = p2MoveType = H
trigger1 = var(58) = [0,9]
trigger2 = (stateno = 650)|| (stateno = 620)
trigger2 = movehit
trigger2 = var(58) = [0,29]

[state -3]
type = ChangeState
value = 1206
triggerall = var(59) = 1
triggerall = !IsHelper
triggerall = StateType = A && MoveType != H
trigger1 = ctrl && p2life!= 0
trigger1 = P2BodyDist X = [-5,30]
trigger1 = P2BodyDist Y = [-10,10]
trigger1 = p2MoveType = H
trigger1 = var(58) = [0,9]
trigger2 = (stateno = 650)|| (stateno = 620)
trigger2 = movehit
trigger2 = var(58) = [0,89]

[state -3]
type = changestate
value = 1505
triggerall = var(59) = 1 && stateno < 800
triggerall = !IsHelper
triggerall = StateType != A && MoveType != H && p2life!= 0
triggerall = ctrl
triggerall = P2BodyDist X = [10,60]
triggerall = P2BodyDist Y <= -20
triggerall = p2movetype != H
trigger1 = p2movetype = A
trigger1 = random < 100
trigger2 = p2statetype = A
trigger2 = random < 100


[state -3]
type = changestate
value = 1206
triggerall = var(59) = 1 && stateno < 800
triggerall = !IsHelper
triggerall = StateType = A && MoveType != H && p2life!= 0
triggerall = ctrl
triggerall = P2BodyDist X = [0,220]
triggerall = P2BodyDist Y = [-5,150]
trigger1 = p2MoveType = A
trigger1 = random >= 100
;trigger2 = enemy, Numproj > 0 && random >= 10
;trigger3 = enemy, Numhelper > 0 && random >= 10
trigger2 = p2stateno = [5000,5999]

[state -3]
type = ChangeState
value = 1210
triggerall = var(59) = 1
triggerall = !IsHelper
triggerall = Life != 0 && stateno < 600
triggerall = p2bodydist X = [125,196]
triggerall = roundstate = 2 && ctrl = 1
triggerall = StateType != A && MoveType != H
triggerall = P2MoveType != H
triggerall = P2StateNo != 40
triggerall = StateNo != 195
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2stateno != [5000,5999]
triggerall = movetype != H
triggerall = random > 100
trigger1 = enemy, numproj = 0
trigger2 = p2movetype != A


[state -3]
type = ChangeState
value = 1505
triggerall = !IsHelper
triggerall = statetype = S
triggerall = var(59) = 1
triggerall = ctrl
trigger1 = enemy,numproj > 0
trigger1 = var(58) = [0,39]
;trigger2 = numhelper > 0
;Esquiva


[State -1,エネルギー弾（強)]
type = ChangeState
value = 1005
triggerall = var(59) = 1
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X > 150
trigger1 = var(58) = [80,82]
trigger2 = stateno = 270
trigger2 = prevstateno = [220,230]
trigger2 = movehit
trigger2 = var(58) = [0,19]
trigger3 = stateno = 220
trigger3 = movecontact
trigger3 = p2bodydist X > 30
trigger3 = var(58) = [0,19]
trigger4 = stateno = 400
trigger4 = movecontact
trigger4 = var(58) = [0,19]


[State -1,空中エネルギー弾（強）]
type = ChangeState
value = 1105
triggerall = var(59) = 1
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X > 150
trigger1 = random = [800,824]
trigger2 = stateno = 650
trigger2 = movehit
trigger2 = var(58) = [0,19]

; ダッシュ強パンチ (ニュートラル)
[State -1,]
type = ChangeState
value = 510
triggerall = var(59) = 1
triggerall = !IsHelper
trigger1 = power < 3000
trigger1 = stateno = 0
trigger1 = p2bodydist X > 0
trigger1 = var(58) = [50,79]
trigger2 = stateno = 270
trigger2 = prevstateno = [220,230]
trigger2 = movehit
trigger2 = var(58) = [40,89]
trigger3 = stateno = 220
trigger3 = (prevstateno = [200,210]) || (prevstateno = [250,260])
trigger3 = movehit
trigger3 = p2bodydist X > 30
trigger3 = var(58) = [40,89]
trigger4 = stateno = 400
trigger4 = prevstateno = 420
trigger4 = movehit
trigger4 = var(58) = [40,79]

;=======================ダッシュ攻撃========================================
[State -1,ダッシュ強パンチ (ダッシュ中)]
type = ChangeState
value = 511
triggerall = stateno = 101
triggerall = !IsHelper
triggerall = var(59) = 1
trigger1 = p2bodydist x > 120
trigger1 = var(58) = [50,74]

[State -1,ダッシュ弱パンチ (ダッシュ中)]
type = ChangeState
value = 500
triggerall = stateno = 101
triggerall = !IsHelper
triggerall = var(59) = 1
trigger1 = p2bodydist x < 50
trigger1 = var(58) = [60,79]

[State -1,ダッシュ弱キック (スライディングキック)]
type = ChangeState
value = 550
triggerall = stateno = 101
triggerall = !IsHelper
triggerall = var(59) = 1
trigger1 = p2bodydist x = [80,89]
trigger1 = var(58) = [75,99]

;============================通常技=========================================
[State -1,弱パンチ (近距離)]
type = ChangeState
value = 210
triggerall = var(59) = 1
triggerall = p2bodydist x < 4
triggerall = statetype = S
triggerall = ctrl
trigger1 = random = [0,49]
trigger1 = p2statetype != L
trigger1 = p2movetype != A
trigger2 = var(58) = [0,21]
trigger2 = p2stateno != [120,159]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger3 = p2movetype = I
trigger3 = enemynear,ctrl = 0
trigger3 = ctrl
trigger3 = var(58) = [0,21]

[State -1,弱キック (近距離)]
type = ChangeState
value = 230
triggerall = var(59) = 1
triggerall = p2bodydist x < 5
triggerall = statetype = S
trigger1 = random = [300,399]
trigger1 = p2statetype != L
trigger1 = p2movetype != A
trigger1 = ctrl = 1
trigger2 = var(58) = [22,44]
trigger2 = p2stateno != [120,159]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger2 = ctrl = 1
trigger3 = stateno = 200
trigger3 = movecontact
trigger3 = var(58) = [0,89]
trigger4 = stateno = 500
trigger4 = movecontact
trigger4 = var(58) = [0,89]


[State -1,弱パンチ]
type = ChangeState
value = 200
triggerall = var(59) = 1
triggerall = p2bodydist x = [4,25]
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = random = [0,149]
trigger1 = p2statetype != L
trigger1 = p2movetype != A
trigger2 = var(58) = [0,21]
trigger2 = p2stateno != [120,159]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger3 = p2movetype = I
trigger3 = enemynear,ctrl = 0
trigger3 = ctrl
trigger3 = var(58) = [0,21]

[State -1,強パンチ]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = p2bodydist x < 55
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = random = [900,919]
trigger2 = stateno = [250,260]
trigger2 = movecontact
trigger2 = prevstateno = [200,210]
trigger2 = var(58) = [0,29]
trigger3 = (stateno = [200,210])
trigger3 = movecontact
trigger3 = var(58) = [0,19]
trigger3 = p2bodydist x > 12
trigger4 = stateno = 230
trigger4 = movecontact
trigger4 = var(58) = [0,19]

[State -1,弱キック (近距離)]
type = ChangeState
value = 260
triggerall = var(59) = 1
triggerall = p2bodydist x < 5
triggerall = statetype = S
trigger1 = random = [300,399]
trigger1 = p2statetype != L
trigger1 = p2movetype != A
trigger1 = ctrl = 1
trigger2 = var(58) = [22,44]
trigger2 = p2stateno != [120,159]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger2 = ctrl = 1
trigger3 = stateno = [200,210]
trigger3 = movecontact
trigger3 = var(58) = [30,59]
trigger4 = stateno = 500
trigger4 = movecontact
trigger4 = var(58) = [30,59]
trigger5 = p2movetype = I
trigger5 = enemynear,ctrl = 0
trigger5 = ctrl
trigger5 = var(58) = [22,44]

[State -1,弱キック]
type = ChangeState
value = 250
triggerall = var(59) = 1
triggerall = statetype = S
trigger1 = stateno = [200,210]
trigger1 = movecontact
trigger1 = var(58) = [0,89]
trigger1 = p2bodydist x <= 12

[State -1,強キック (近距離)]
type = ChangeState
value = 280
triggerall = var(59) = 1
triggerall = p2bodydist x < 25
trigger1 = (stateno = 260) || (stateno = 230)
trigger1 = movecontact
trigger1 = var(58) = [0,39]
trigger2 = (stateno = 260) || (stateno = 230)
trigger2 = movehit
trigger2 = var(58) = [40,74]
trigger3 = (stateno = 260) || (stateno = 230)
trigger3 = prevstateno = 500
trigger3 = movehit
trigger3 = var(58) = [75,89]

[State -1,強キック]
type = ChangeState
value = 270
triggerall = var(59) = 1
trigger1 = stateno = 220 && movecontact
trigger1 = (prevstateno = [200,210]) || (prevstateno = [250,260])
trigger1 = var(58) = [0,89]
trigger1 = p2bodydist X < 30
trigger2 = stateno = 220 && movecontact
trigger2 = prevstateno != [250,260]
trigger2 = var(58) = [50,79]

;============================しゃがみ=========================================
[State -1,]
type = ChangeState
value = 410
triggerall = var(59) = 1
triggerall = Life != 0
triggerall = p2bodydist X <= 40
triggerall = roundstate = 2
triggerall = ctrl
triggerall = StateType != A && MoveType != H
triggerall = p2stateno = [5050,5110]
trigger1 = enemy, numproj = 0
trigger2 = p2movetype != A
trigger2 = random < 500


[State -1,しゃがみ強パンチ]
type = ChangeState
value = 400
triggerall = var(59) = 1
trigger1 = stateno = 420 && movecontact
trigger1 = var(58) = [0,89]
trigger2 = stateno = 0
trigger2 = p2bodydist Y > -75
trigger2 = p2bodydist X < 0
trigger2 = var(58) = [0,89]
trigger3 = stateno = 410
trigger3 = movecontact
trigger3 = var(58) = [60,62]

[State -1,しゃがみ弱キック]
type = ChangeState
value = 420
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist x < 45
trigger1 = random = [600,749]
trigger1 = p2statetype != L
trigger1 = p2movetype != A
trigger1 = ctrl
trigger2 = var(58) = [50,89]
trigger2 = p2stateno != [120,159]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger2 = ctrl
trigger3 = p2movetype = I
trigger3 = enemynear,ctrl = 0
trigger3 = ctrl
trigger3 = var(58) = [50,89]
trigger4 = stateno = 410
trigger4 = movecontact
trigger4 = var(58) = [0,59]

[State -1,しゃがみ強キック]
type = ChangeState
value = 450
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = stateno = 400
trigger1 = prevstateno != 420
trigger1 = movecontact
trigger1 = var(58) = [50,89]
trigger2 = stateno = 400
trigger2 = prevstateno = 420
trigger2 = movecontact
trigger2 = var(58) = [20,89]

;============================空中技=========================================
[State -1,ジャンプ弱パンチ]
type = ChangeState
value = 610
triggerall = var(59) = 1
trigger1 = statetype = A && vel x != 0
trigger1 = stateno = 50
trigger1 = pos y < -30
trigger2 = stateno = 50
trigger2 = prevstateno = 1406


[State -1,ジャンプ強パンチ]
type = ChangeState
value = 620
triggerall = var(59) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = pos Y > -90 && vel Y > 0
trigger1 = var(58) = [0,39]
trigger2 = stateno = [630,635]
trigger2 = movecontact
trigger2 = var(58) = [25,39]
trigger3 = stateno = 1406
trigger3 = movecontact
trigger3 = var(58) = [0,39]



[State -1,ジャンプ弱キック]
type = ChangeState
value = 630
triggerall = var(59) = 1
triggerall = statetype = A && vel x != 0
trigger1 = ctrl = 1
trigger1 = p2statetype = A
trigger1 = var(58) = [0,19]
trigger2 = stateno = 610
trigger2 = movecontact
trigger2 = var(58) = [0,94]

; ジャンプ弱キック (垂直)
[State -1]
type = ChangeState
value = 635
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = p2statetype = A
trigger1 = var(58) = [0,19]

[State -1,ジャンプ強キック]
type = ChangeState
value = 650
triggerall = var(59) = 1
trigger1 = statetype = A && vel x != 0
trigger1 = ctrl = 1
trigger1 = pos Y > -100 && vel Y > 0
trigger1 = var(58) = [40,79]
trigger2 = stateno = 630
trigger2 = movecontact
trigger2 = var(58) = [0,54]

[State -1,ジャンプ強キック (垂直)]
type = ChangeState
value = 640
triggerall = var(59) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = pos Y > -100 && vel Y > 0
trigger1 = var(58) = [40,79]



[State -1]
type = ChangeState
triggerall = stateno = 100 &&  var(59) = 1
trigger1 = P2movetype != I && p2movetype != H
trigger1 = p2bodydist x < 2
value = 0
ctrl = 1


[state -3]
type = ChangeState
triggerall = stateno = 20  && var(59) = 1
trigger1 = p2bodydist x <= 30 || P2movetype = A
value = 0
ctrl = 1

;============================特殊技=========================================
[State -1, ジャンプ開始]
type = ChangeState
value = 40
triggerall = var(59) = 1
triggerall = p2bodydist X > 160
triggerall = statetype = S
triggerall = Random < p2bodydist X
triggerall = ctrl
trigger1 = p2statetype = L
trigger2 = enemy, numproj >= 1

[State -1, ジャンプ開始]
type = ChangeState
value = 40
triggerall = var(59) = 1
triggerall = statetype = S
trigger1 = stateno = 280
trigger1 = movehit
trigger1 = var(58) = [0,89]


[State -1, 前にジャンプ]
type = VarSet
triggerall = var(59) = 1
triggerall = Random < (p2bodydist X) * 4
trigger1 = stateno = 40
sysvar(1)  = 1

[state -3]
type = ChangeState
value = 105
triggerall = var(59) = 1
triggerall = stateno = 1490
trigger1 = stateno = 1490

[state -3]
type = ChangeState
value = 105
triggerall = var(59) = 1
triggerall = stateno = 52
trigger1 = stateno = 52
trigger1 = prevstateno = 105


[state -3]
type = ChangeState
value = 105
triggerall = var(59) = 1
triggerall = stateno = 1200
triggerall = p2stateno != [5000,5999]
trigger1 = stateno = 1200 && time = 36

[state -3]
type = ChangeState
value = 100
triggerall = Movetype != A
triggerall = P2Movetype != A
triggerall = stateno != 100
triggerall = var(59) = 1
triggerall = ctrl
triggerall = pos y = 0
trigger1 = (p2stateno = 5120 || p2stateno = 5100 || p2stateno = 5050 || p2statetype = S) && p2bodydist x >= 100
trigger1 = p2movetype != A
trigger1 = random < 300
trigger1 = statetype != A
trigger2 = ProjGuardedTime(221) >= 1
trigger2 = ctrl && random < 999

;[State -1, ダッシュ]
;type = ChangeState
;value = 100
;triggerall = var(59) = 1
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger1 = var(58) = [10,14]

[State -1, 空中ダッシュ]
type = ChangeState
value = 110
triggerall = var(59) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X > 100 && vel Y = 0
trigger1 = var(58) = [10,13]

;[State -1, バックステップ]
;type = ChangeState
;value = 105
;triggerall = var(59) = 1
;triggerall = statetype != A
;triggerall = ctrl
;trigger1 = p2stateno = 5120
;trigger1 = var(58) = [0,24]


[State -1,高速移動 (後方)]
type = ChangeState
value = 360
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = ctrl
trigger1 = Var(58) = 15
trigger2 = p2stateno = 5120
trigger2 = var(58) = [25,49]

[State -1,高速移動 (前方)]
type = ChangeState
value = 361
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = ctrl
trigger1 = Var(58) = 16
trigger2 = enemy,Numproj > 0
trigger2 = var(58) = [25,49]
trigger3 = BackEdgeBodyDist <= 30
trigger3 = P2BodyDist X <= 50
trigger3 = var(58) = [0,11]

;[State -1,きたねぇ花火（カウンター）]
;type = ChangeState
;value = 305
;triggerall = var(59) = 1
;triggerall = stateno = [150,153]
;triggerall = power >= 1500
;trigger1 = power < 2800
;trigger1 = random = [500,504]
;trigger2 = BackEdgeBodyDist <= 30
;trigger2 = random = [0,7]


[state -3]
type = ChangeState
value = 305
triggerall = var(59) = 1
triggerall = var(55) != 1
triggerall = StateType != A && StateType != L
triggerall = P2life != 0
triggerall = power > 1000
trigger1 = P2BodyDist x <= 100
trigger1 = StateNo = [150,153]
trigger1 = var(58) = [0,29]
;trigger1 = Random = [0,500]


[State -1,気力溜め]
type = ChangeState
value = 1900
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = p2bodydist X > 35
trigger1 = p2statetype = L
trigger1 = Var(58) = [50,52]
trigger2 = p2bodydist X > 150
trigger2 = Var(58) = [50,79]

[State -1, 気力溜め中止]
type = ChangeState
triggerall = var(59) = 1
triggerall = stateno = 1900
trigger1 = p2bodydist X < 85
trigger1 = p2statetype != L
trigger2 = enemy,Numproj > 0
trigger3 = p2movetype = A
trigger3 = Var(58) = [0,54]
value = 1901

[State -1,挑発]
type = ChangeState
value = 195
triggerall = var(59) = 1
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2bodydist X > 200
trigger1 = random = [777,780]

[State -1, CPU用オートターン]
type = Turn
triggerall = var(59) = 1
trigger1   = P2BodyDist X < -200
trigger1   = statetype != A
trigger1   = stateno = [200,440]
trigger1   = Time = 1

[State -1, 地上受身]
type = ChangeState
value = 5200
triggerall = stateno = 5050
triggerall = var(59) = 1
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
triggerall = var(59) = 1
triggerall = vel Y > -1
triggerall = alive
triggerall = canrecover
triggerall = pos Y = [-120,-20)
trigger1   = Random < 30
trigger2   = P2BodyDist X = [-90,90]
trigger2   = var(58) = [30,39]
trigger2   = enemy,hitdefattr = SA, AA, AT, AP



