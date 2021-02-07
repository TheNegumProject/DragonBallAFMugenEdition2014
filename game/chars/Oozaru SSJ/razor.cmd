;AI
[Command]
name = "AI01"
command = a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI02"
command = b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI03"
command = c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI04"
command = x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI05"
command = y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI06"
command = z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI07"
command = U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI08"
command = D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI09"
command = F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI10"
command = B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI11"
command = a,b,a,b,a,b,a,b,a,b,a,b
time = 0
[Command]
name = "AI12"
command = a,c,a,c,a,c,a,c,a,c,a,c
time = 0
[Command]
name = "AI13"
command = b,a,b,a,b,a,b,a,b,a,b,a
time = 0
[Command]
name = "AI14"
command = b,c,b,c,b,c,b,c,b,c,b,c
time = 0
[Command]
name = "AI15"
command = c,a,c,a,c,a,c,a,c,a,c,a
time = 0
[Command]
name = "AI16"
command = c,b,c,b,c,b,c,b,c,b,c,b
time = 0
[Command]
name = "AI17"
command = U,D,U,D,U,D,U,D,U,D,U,D
time = 0
[Command]
name = "AI18"
command = D,U,D,U,D,U,D,U,D,U,D,U
time = 0
[Command]
name = "AI19"
command = F,B,F,B,F,B,F,B,F,B,F,B
time = 0
[Command]
name = "AI20"
command = B,F,B,F,B,F,B,F,B,F,B,F
time = 0
[Command]
name = "AI21"
command = U,D,U,D,U,D,U,D,U,D,U,D
time = 0
[Command]
name = "AI22"
command = U,U,U,U,U,U,D,D,D,D,D,D
time = 0
[Command]
name = "AI23"
command = D,D,D,D,D,D,U,U,U,U,U,U
time = 0
[Command]
name = "AI24"
command = F,F,F,F,F,F,B,B,B,B,B,B
time = 0
[Command]
name = "AI25"
command = B,B,B,B,B,B,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = U,a,U,a,U,a,U,a,U,a,U,a
time = 0
[Command]
name = "AI27"
command = U,b,U,b,U,b,U,b,U,b,U,b
time = 0
[Command]
name = "AI28"
command = U,c,U,c,U,c,U,c,U,c,U,c
time = 0
[Command]
name = "AI29"
command = U,x,U,x,U,x,U,x,U,x,U,x
time = 0
[Command]
name = "AI30"
command = U,y,U,y,U,y,U,y,U,y,U,y
time = 0

;-----------------[2000power 消費技]-----------------------------------------
[Command]
name = "FC"
command = ~D, DF, F, D, DF, F, a
time = 30

;-----------------[1000power 消費技]-----------------------------------------
[Command]
name = "RC_EX"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "RC_EX"
command = ~D, DB, B, D, DB, B,  b
time = 30

[Command]
name = "DC_EX"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "DC_EX"
command = ~D, DF, F, D, DF, F, b
time = 30

;------------------------------------------------------------------------
[Command]
name = "RC"
command = ~D, DB, B, a
time = 20

[Command]
name = "RC"
command = ~D, DB, B, b
time = 20

[Command]
name = "DC"
command = ~D, DF, F, a
time = 20

[Command]
name = "DC"
command = ~D, DF, F, b
time = 20

[Command]
name = "JC"
command = ~$D, $U, a
time = 20

[Command]
name = "JC"
command = ~$D, $U, b
time = 20

;-| Double Tap |--------------------------------------------
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
command = a+b
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
name = "down_y"
command = /$D,y
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
command = a
time = 1

[Command]
name = "y"
command = b
time = 1

[Command]
name = "z"
command = c
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |-------------------------------------------------------
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

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdz"
command = /$z
time = 1

;--------------------------------------------------------------------------
[Statedef -1]
;--------------------------------------------------------------------------
;フェイタルクロー
[State -1, Fatal Craw]
type = ChangeState
value = 3500
triggerall = var(59) = 0
triggerall = command = "FC"
trigger1 = statetype != A && power >= 2000
trigger1 = ctrl

;--------------------------------------------------------------------------
;ダッシュクローEX
[State -1, Dash Craw EX]
type = ChangeState
value = 3100
triggerall = var(59) = 0
triggerall = command = "DC_EX"
trigger1 = statetype != A && power >= 1000
trigger1 = ctrl

;---------------------------------------------------------------------------
;ラピッドクローEX
[State -1, Rapid Craw EX]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "RC_EX"
trigger1 = statetype != A && power >= 1000
trigger1 = ctrl

;--------------------------------------------------------------------------
;ジャンピングクロー
[State -1, Jumping Craw]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = command = "JC"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [10,12]) || (stateno = 40)

;--------------------------------------------------------------------------
;ダッシュクロー
[State -1, Dash Craw]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "DC"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ラピッドクロー
[State -1, Rapid Craw]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "RC"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = null ;ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;弱x
[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x" && command != "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;強x
[State -1, Standing Punch2]
type = ChangeState
value = 201
triggerall = var(59) = 0
triggerall = command = "x" && command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;弱y
[State -1, Standing Punch3]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "y" && command != "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;強y
[State -1, Standing Punch4]
type = ChangeState
value = 211
triggerall = var(59) = 0
triggerall = command = "y" && command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ攻撃
[State -1, jumping Attack]
type = ChangeState
value = 300
triggerall = var(59) = 0
triggerall = command = "x" || command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------------------------------------------
;起き上がり背後攻撃
[State -1]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "holdx" || command = "holdy"
trigger1 = stateno = 5120 && time >= 20
