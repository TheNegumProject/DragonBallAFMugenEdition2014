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
[command]
name = "OceanIllusion"
command = D,D,D,D,x
time = 40

[Command]
name = "Valley of Rock`s"
command = D,D,D,D,a
time = 40

[Command]
name = "Valley of Rock`s"
command = D,D,D,D,b
time = 40

[Command]
name = "Valley of Rock`s"
command = D,D,D,D,c
time = 40

[command]
name = "FireBreath"
command = D,DF,F,D,DF,F,z
time = 40

[command]
name = "FireBreath"
command = D,DF,F,D,DF,F,y
time = 40

[command]
name = "FireBreath"
command = D,DF,F,D,DF,F,x
time = 40

;-| Ki Motions |-----------------------------------------------------------


;-| Combo Motions |--------------------------------------------------------
[command]
name = "Shadow Punch"
command = D,DF,F,a
time = 30

[command]
name = "Teletransporte Ade"
command = /$F,x+y
time = 30

[command]
name = "Teletransporte Atr"
command = /$B,x+y
time = 30

[command]
name = "Teletransporte Junto p2"
command = x+y
time = 30

[command]
name = "BF_x"
command = B,F,x
time = 30

[command]
name = "DB_x"
command = D,B,x
time = 30

[command]
name = "DF_x"
command = D,F,x
time = 30

[command]
name = "DF_y"
command = D,F,y
time = 30

[command]
name = "DB_y"
command = D,B,y
time = 30

[command]
name = "FDDF_a"
command = ~F,D,DF,a
time = 20

[command]
name = "FDDF_b"
command = ~F,D,DF,b
time = 20

[command]
name = "b+y"
command = b+y
time = 15

[command]
name = "DF_z"
command = D,F,z
time = 30

[command]
name = "DF_a"
command = D,F,a
time = 30

[command]
name = "DB_a"
command = D,B,a
time = 30

[command]
name = "DB_z"
command = D,B,z
time = 30

[command]
name = "DF_b"
command = D,F,b
time = 30

[command]
name = "DB_b"
command = D,B,b
time = 30

[command]
name = "DF_c"
command = D,F,c
time = 30

[command]
name = "DB_c"
command = D,B,c
time = 30

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
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "DU"     ;Required (do not remove)
command = D, U
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
name = "hold_a"
command = /a

[Command]
name = "hold_b"
command = /b

[Command]
name = "hold_c"
command = /c

[Command]
name = "hold_x"
command = /x

[Command]
name = "hold_y"
command = /y

[Command]
name = "hold_z"
command = /z

[Command]
name = "hold_s"
command = /s

;===============================================================================
;-------------------------------------------------------------------------------
[Statedef -1]

[State -1, Fire Breath]
type = ChangeState
value = 3500
triggerall = var(6) <= 0
triggerall = numhelper(40000) != 1
triggerall = command = "FireBreath"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1, Valley of Rock`s]
type = ChangeState
value = 3600
triggerall = var(6) <= 0
triggerall = command = "Valley of Rock`s"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1, OceanIllusion]
type = ChangeState
value = 4500
triggerall = var(6) <= 0
triggerall = numhelper(70000) != 1
triggerall = command = "OceanIllusion"
triggerall = power >= 5000
trigger1 = (statetype = s) && ctrl

[State -1, WaterGeiser]
type = ChangeState
value = 1900
triggerall = command = "FDDF_a"
trigger1 = statetype = S && ctrl && power > 300

[State -1, WaterGeiser]
type = ChangeState
value = 1900
triggerall = command = "FDDF_b"
trigger1 = statetype = S && ctrl && power > 300

[State -1, EarthStomp!]
type = ChangeState
value = 2100
triggerall = command = "DF_c"
trigger1 = statetype = S && ctrl && power > 300

[State -1, Shadow Punch]
type = ChangeState
value = 1500
triggerall = command = "DF_a"
trigger1 = statetype = S && ctrl

[State -1, Shadow Punch]
type = ChangeState
value = 1550
triggerall = command = "DF_b"
trigger1 = statetype = S && ctrl

[State -1, Fire Ring]
type = ChangeState
value = 1600
triggerall = command = "DF_x"
trigger1 = statetype = S && ctrl && power > 300

[State -1, Kykouha]
type = ChangeState
value =  1700
triggerall = var(6)<= 0
triggerall = command = "DB_z"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1, Kykouha]
type = ChangeState
value =  1750
triggerall = var(6)<= 0
triggerall = command = "DB_z"
triggerall = power >= 1000
trigger1 = (statetype = a) && ctrl

[State -1, Aura Explosion]
type = ChangeState
value =  1800
triggerall = var(6)<= 0
triggerall = command = "DB_y"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl

[State -1, Aura Explosion]
type = ChangeState
value =  1850
triggerall = var(6)<= 0
triggerall = command = "DB_y"
triggerall = power >= 300
trigger1 = (statetype = a) && ctrl


;===============================================================================

;===============================================================================
;-------------------------------------------------------------------------------
[State -1, Shogekiha]
type = ChangeState
value = 2200
triggerall = command = "DF_z"
trigger1 = (statetype = s) && ctrl && power > 300

;===============================================================================
;-------------------------------------------------------------------------------
[State -1, Renzouken]
type = ChangeState
value = 220
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger1 = power >= 200
trigger2 = (stateno = [200,499]) && (movecontact = 1)

[State -1, Dash Air Forward]
type = Null;ChangeState
value = 925
triggerall = command = "FF"
trigger1 = statetype = A && ctrl
trigger1 = power >= 100
trigger2 = (stateno = [200,699]) && (movecontact = 1)

[State -1, Dash Ai Backward]
type = Null;ChangeState
value = 926
triggerall = command = "BB"
trigger1 = statetype = A && ctrl
trigger1 = power >= 100
trigger2 = (stateno = [200,699]) && (movecontact = 1)

[State -1, Dash Air Up]
type = Null;ChangeState
value = 927
triggerall = command = "DD"
trigger1 = statetype = A && ctrl
trigger1 = power >= 100
trigger2 = (stateno = [200,699]) && (movecontact = 1)

[State -1, Dash Air Down]
type = Null;ChangeState
value = 928
triggerall = command = "UU"
trigger1 = statetype = A && ctrl
trigger1 = power >= 100
trigger2 = (stateno = [200,699]) && (movecontact = 1)

[State -1, Charge Ki]
type = ChangeState
value = 900
triggerall = ctrl && power < 5000
trigger1 = command = "hold_a" && command = "hold_x" && statetype = S

[State -1, Super Jump]
type = ChangeState
value = 60
triggerall = command = "DU"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,699]) && (movecontact = 1)

[State -1, Hyper Velocity]
type = ChangeState
value = 7099
triggerall = var(6) <= 0
triggerall = command = "Teletransporte Atr"
trigger1 = (statetype = s) && ctrl

[State -1, Hyper Velocity]
type = ChangeState
value = 7098
triggerall = var(6) <= 0
triggerall = command = "Teletransporte Ade"
trigger1 = (statetype = s) && ctrl

[State -1, Hyper Velocity]
type = ChangeState
value = 883
triggerall = var(6) <= 0
triggerall = command = "Teletransporte Junto p2"
triggerall = power >= 800
trigger1 =  ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Taunt]
type = Null;ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype = S && ctrl

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && ctrl

;===============================================================================
;-------------------------------------------------------------------------------
[State -1, Stand Punch 1]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 210 && movehit) && time <= 5 && hitcount<=5

[State -1, Stand Punch 2]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 && movehit) && time <= 5 && hitcount<=5

[State -1, Stand Kick 1]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl

[State -1, Stand Kick 2]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl

[State -1, Stand Kick 3]
type = ChangeState
value = 250
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl


;===============================================================================
;-------------------------------------------------------------------------------
[State -1, Crouch Punch 1]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 410 && movehit) && time <= 5 && hitcount<=5

[State -1, Crouch Punch 2]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl

[State -1, Crouch Punch 3]
type = ChangeState
value = 420
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl

[State -1, Crouch Kick 1]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl

[State -1, Crouch Kick 2]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl

[State -1, Crouch Kick 3]
type = ChangeState
value = 450
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
[State -1, Jump Punch 1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl

[State -1, Jump Punch 2]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl

[State -1, Jump Punch 3]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A && ctrl

[State -1, Jump Kick 1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl

[State -1, Jump Kick 2]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl

[State -1, Jump Kick 3]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A && ctrl
