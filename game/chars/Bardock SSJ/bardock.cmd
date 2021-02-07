; The CMD file.

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

;-| IA |------------------------------------------------------

[Command]
name = "IA_1"
command = a,a,a,a,a,a,a,a,a
time = 1

[Command]
name = "IA_2"
command = b,b,b,b,b,b,b,b,b
time = 1

[Command]
name = "IA_3"
command = a,b,b,b,b,b,b,b,b
time = 1

[Command]
name = "IA_4"
command = a,b,c,b,b,b,b,b,b
time = 1

[Command]
name = "IA_5"
command = a,b,c,x,b,b,b,b,b
time = 1

[Command]
name = "IA_6"
command = a,b,c,x,y,b,b,b,b
time = 1

[Command]
name = "IA_7"
command = a,b,c,x,y,z,b,b,b
time = 1

[Command]
name = "IA_8"
command = a,b,c,x,y,z,a,b,b
time = 1

[Command]
name = "IA_9"
command = a,b,c,x,y,z,a,b,c
time = 1

[Command]
name = "IA_10"
command = x,b,c,x,y,z,a,b,c
time = 1

;-| special power attacks |-----------------------------------------------------

[Command] ; in air
name = "superball"
command = D, B, D, B, c
time = 25

[Command] ; in air
name = "superbeam"
command = D, F, D, F, c
time = 25

;-| special physic attacks |-----------------------------------------------------

[Command]
name = "runexplo"
command = D, F, D, F, x
time = 25

[Command]
name = "handexplo"
command = D, B, D, B, x
time = 25

[Command]
name = "superpunchfwd"
command = D, B, D, B, y
time = 25

[Command]
name = "floorexplo"
command = D, F, D, F, y
time = 25

[Command]
name = "ungryfists"
command = D, B, D, F, y
time = 25

[Command]
name = "superpunchfwddown"
command = D, F, D, B, y
time = 25

[Command] ; in air
name = "superkickdown"
command = D, F, D, F, b
time = 25

;-| power normal attacks |-----------------------------------------------------

[Command]
name = "beam"
command = D, F, c

[Command]
name = "flyuppunch"
command = F, D, F, y
time = 25

[Command]
name = "bigball"
command = D, B, c

;-| Physical Attacks |-----------------------------------------------------

[Command]
name = "elbowfwd"
command = D, B, y

[Command]
name = "downkick"
command = D, F, b

[Command]
name = "kickfwd"
command = D, B, b

[Command]
name = "flypunchfwd"
command = D, B, x

[Command]
name = "turnkick"
command = D, B, a

;-| Special Combo Attacks |-----------------------------------------------------

[Command]
name = "dashpunch"
command = x+y

[Command]
name = "teleporthit"
command = a+b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
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

;===================|
;--[ Hold Button ]--|
;===================|

[Command]
name = "hold_x"
command = /x
time = 1
[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "hold_a"
command = /a
time = 1
[Command]
name = "hold_b"
command = /b
time = 1
[Command]
name = "hold_c"
command = /c
time = 1
[Command]
name = "hold_start"
command = /s
time = 1

;==================|
;--[ Super Jump ]--|
;==================|

[command]
name = "superjump"
command = ~$D,U
time = 15
[command]
name = "superjumpF"
command = ~$D,UF
time = 15
[command]
name = "superjumpB"
command = ~$D,UB
time = 15

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
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

[State -1, IA]
type = VarSet
triggerall = var(40) != 1
trigger1 = command = "IA_1"
trigger2 = command = "IA_2"
trigger3 = command = "IA_3"
trigger4 = command = "IA_4"
trigger5 = command = "IA_5"
trigger6 = command = "IA_6"
trigger7 = command = "IA_7"
trigger8 = command = "IA_8"
trigger9 = command = "IA_9"
trigger10 = command = "IA_10"
var(49) = 1

;===========================================================================
;===========================================================================
;special Modes

;Ozaru Mode
[State -1, Ozaru Mode]
type = ChangeState
value = 3900
triggerall = power = powerMax && command = "c" && command = "b" && var(40) != 1
trigger1 = statetype = S
trigger1 = ctrl

;Finish Ozaru Mode
[State -1, Finish Ozaru Mode]
type = ChangeState
value = 3910
triggerall = stateno != 3900
trigger1 = command = "c" && command = "start" && var(40) = 1

;Super Jump Ozaru Mode
[State -1, Super Jump Ozaru Mode]
type = ChangeState
value = 3913
triggerall = stateno = 3901
trigger1 = command = "superjump"

;Super Jump Ozaru Mode
[State -1, Jump Ozaru Mode]
type = ChangeState
value = 3913
triggerall = stateno = 3901
trigger1 = command = "superjumpF"

;Super Jump Ozaru Mode
[State -1, Jump Ozaru Mode]
type = ChangeState
value = 3913
triggerall = stateno = 3901
trigger1 = command = "superjumpB"

;Jump Ozaru Mode
[State -1, Jump Ozaru Mode]
type = ChangeState
value = 3904
triggerall = stateno = 3901
trigger1 = command = "holdup"

;Walk Back Ozaru Mode
[State -1, Turn Ozaru Mode]
type = ChangeState
value = 3902
triggerall = stateno = 3901
trigger1 = command = "holdfwd" && command != "holdup"

;Turn Ozaru Mode
[State -1, Walk Ozaru Mode]
type = ChangeState
value = 3903
triggerall = stateno = 3901
trigger1 = command = "holdback"

;Punch x+y Ozaru Mode
[State -1, Punch x+y Ozaru Mode]
type = ChangeState
value = 3914
triggerall = stateno = [3901,3903]
trigger1 = command = "y" && command = "x"

;Punch x Ozaru Mode
[State -1, Punch x Ozaru Mode]
type = ChangeState
value = 3906
triggerall = stateno = [3901,3903]
trigger1 = command = "x"

;Punch y Ozaru Mode
[State -1, Punch y Ozaru Mode]
type = ChangeState
value = 3907
triggerall = stateno = [3901,3903]
trigger1 = command = "y"

;Punch a Ozaru Mode
[State -1, Punch a Ozaru Mode]
type = ChangeState
value = 3908
triggerall = stateno = [3901,3903]
trigger1 = command = "a"

;Punch b Ozaru Mode
[State -1, Punch b Ozaru Mode]
type = ChangeState
value = 3909
triggerall = stateno = [3901,3903]
trigger1 = command = "b"

;beam ozaru
[State -1, Beam Ozaru Mode]
type = ChangeState
value = 3912
triggerall = power >= 1000
triggerall = stateno = [3901,3903]
trigger1 = command = "beam"

;fireball Ozaru
[State -1, Fireball Ozaru Mode]
type = ChangeState
value = 3911
triggerall = power >= 250
triggerall = stateno = [3901,3903]
trigger1 = command = "c"


;===========================================================================
;===========================================================================
;special Power Moves

;Super Air Ball
[State -1, Super Air Ball]
type = ChangeState
value = 3502
triggerall = command = "superball" && power >= 1000
trigger1 = statetype = A
trigger1 = ctrl

;Super Ball
[State -1, Super Ball]
type = ChangeState
value = 3501
triggerall = command = "superball" && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;Super Air Beam
[State -1, Super Air Beam]
type = ChangeState
value = 3503
triggerall = command = "superbeam" && power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [1006,1010]

;Super Beam
[State -1, Super Beam]
type = ChangeState
value = 3500
triggerall = command = "superbeam" && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;Super punch fwd down
[State -1, Super punch fwd down]
type = ChangeState
value = 3007
triggerall = command = "ungryfists" && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;Super punch fwd down
[State -1, Super punch fwd down]
type = ChangeState
value = 3006
triggerall = command = "superpunchfwddown" && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;Super kick down
[State -1, Super kick down]
type = ChangeState
value = 3003
triggerall = command = "superkickdown" && power >= 500
trigger1 = statetype = A
trigger1 = ctrl

;Super punch fwd
[State -1, Super punch fwd]
type = ChangeState
value = 3002
triggerall = command = "superpunchfwd" && power >= 500
trigger1 = statetype = S
trigger1 = ctrl

;Floorexplo
[State -1, Floorexplo]
type = ChangeState
value = 3001
triggerall = command = "floorexplo" && power >= 500
trigger1 = statetype = S
trigger1 = ctrl

;RunExplo
[State -1, RunExplo]
type = ChangeState
value = 3005
triggerall = command = "runexplo" && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;handexplo
[State -1, Handexplo]
type = ChangeState
value = 3000
triggerall = command = "handexplo" && power >= 500
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;===========================================================================
;Basic Physical Attacks

;---------------------------------------------------------------------------
;Uppercut
[State -1, Uppercut]
type = ChangeState
value = 251
triggerall = command = "x" && command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Trow Forward
[State -1, Trow Forward]
type = ChangeState
value = 250
triggerall = command = "x" && command = "y"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Strong Punch Down
[State -1, Strong Punch Down]
type = ChangeState
value = 611
triggerall = command = "x" && command = "y"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;Elbowfwd
[State -1, Elbowfwd]
type = ChangeState
value = 1212
triggerall = command = "elbowfwd" && power >= 200
trigger1 = ctrl
trigger1 = stateno != 1212
trigger2 = stateno = [1006,1010]

;Fly Up Punch
[State -1, Fly Up Punch]
type = ChangeState
value = 1211
triggerall = (hitcount < 15 || stateno != 1211 || prevstateno != 1211)
triggerall = command = "flyuppunch"
trigger1 = ctrl
trigger2 = stateno = [1006,1010]

;Turning Kick
[State -1, Turning Kick]
type = ChangeState
value = 1203
triggerall = command = "turnkick"
trigger1 = ctrl
trigger2 = stateno = [1006,1010]

;Fly Down Kick
[State -1, Fly Down Kick]
type = ChangeState
value = 1200
triggerall = command = "downkick"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1201 && animElem = 3

;Fly Fwd Kick
[State -1, Fly Fwd Kick]
type = ChangeState
value = 1201
triggerall = command = "kickfwd"
triggerall = stateno != 1201
trigger1 = ctrl
trigger2 = stateno = [1006,1010]

;Fly Fwd up Punch
[State -1, Fly Fwd up Punch]
type = ChangeState
value = 1202
triggerall = command = "flypunchfwd"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [1006,1010]

;===========================================================================
; Basic Moves
;---------------------------------------------------------------------------
; Ki Force
[State -1, Ki Force]
type = ChangeState
value = 750
triggerall = command = "c" && command = "z"
triggerall = power >= 500
trigger1 = ctrl
trigger2 = stateno = [1006,1010]

[State -1, Zanzoken]
type = changestate
triggerall = command = "z" && power >= 0
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = movetype = H && gethitvar(hitcount) <= 2
trigger3 = stateno = [1006,1010]
value = 770

[State -1, Zanzoken down]
type = changestate
triggerall = command = "z" && power >= 100
triggerall = command = "holddown"
triggerall = pos y < 0
trigger1 = ctrl
trigger2 = movetype = H && gethitvar(hitcount) <= 2
trigger3 = stateno = [1006,1010]
value = 770

; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = var(49) != 1
triggerall = command = "hold_b" && command = "hold_y"
trigger1 = statetype = S
trigger1 = ctrl

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dash Fwd
[State -1, Dash Fwd]
type = ChangeState
value = 1000
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [1006,1011]

;Dash Back
[State -1, Dash Back]
type = ChangeState
value = 1001
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [1006,1011]

;Dash Up
[State -1, Dash Up]
type = ChangeState
value = 1002
trigger1 = command = "UU"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [1006,1011]

;Dash Down
[State -1, Dash Down]
type = ChangeState
value = 1003
trigger1 = command = "DD"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = [1006,1011]

;---------------------------------------------------------------------------
;Go To Fly
[State -1, Go To Fly]
type = ChangeState
value = 1005
triggerall = command = "z"
trigger1 = command = "holddown"
trigger1 = statetype = S || statetype = C
trigger1 = pos y = 0
trigger1 = ctrl
trigger2 = stateno = [1000,1004]

;Fly
[State -1, Fly]
type = ChangeState
value = 1006
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [1006,1010]

;Fly Fwd
[State -1, Fly Fwd]
type = ChangeState
value = 1007
triggerall = command = "holdfwd"
trigger1 = stateno = [1006,1010]
trigger1 = stateno != 1007

;Fly Back
[State -1, Fly Back]
type = ChangeState
value = 1008
triggerall = command = "holdback"
trigger1 = stateno = [1006,1010]
trigger1 = stateno != 1008

;Fly Up
[State -1, Fly Up]
type = ChangeState
value = 1009
triggerall = command != "holdfwd" && command != "holdback"
triggerall = command = "holdup"
triggerall = stateno = 1006
trigger1 = stateno != 1009

;Fly Down
[State -1, Fly Down]
type = ChangeState
value = 1010
triggerall = command != "holdfwd" && command != "holdback"
triggerall = command = "holddown"
triggerall = stateno = 1006
trigger1 = stateno != 1010

;---------------------------------------------------------------------------
; Super Jump Extracted on Vegeta by Duende Macabro
[State -1, Superjump]
type = changestate
triggerall = command = "superjump" && statetype!= A
trigger1 = ctrl = 1
value = 55

[State -1, SuperjumpF]
type=changestate
triggerall = command = "superjumpF" && statetype != A
trigger1 = ctrl = 1
value = 57

[State -1,SuperjumpB]
type = changestate
triggerall = command = "superjumpB" && statetype != A
trigger1 = ctrl = 1
value = 59

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 197
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;===========================================================================
;Basic Power Moves

;---------------------------------------------------------------------------
;Air big ball
[State -1, Air big ball]
type = ChangeState
value = 1508
triggerall = command = "bigball"
triggerall = power >= 500
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [1006,1011]

;---------------------------------------------------------------------------
;Big Ball
[State -1, Big Ball]
type = ChangeState
value = 1507
triggerall = command = "bigball"
triggerall = power >= 350
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [1006,1011]

;---------------------------------------------------------------------------
;Beam
[State -1, Beam]
type = ChangeState
value = 1505
triggerall = command = "beam"
triggerall = power >= 200
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;AirBeam
[State -1, AirBeam]
type = ChangeState
value = 1506
triggerall = command = "beam"
triggerall = power >= 250
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [1006,1010]

;---------------------------------------------------------------------------
;Fireball 2
[State -1, Fireball 2]
type = ChangeState
value = 1501
triggerall = var(20) >= 0
triggerall = command = "c"
trigger1 = stateno = 1500
trigger1 = animelemtime(2) >= 5

;---------------------------------------------------------------------------
;Fireball
[State -1, Fireball]
type = ChangeState
value = 1500
triggerall = var(20) >= 0
triggerall = command = "c"
triggerall = power >= 200
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1501
trigger2 = animelemtime(2) >= 5

;---------------------------------------------------------------------------
;Air Back Fireball
[State -1, Air Fireball]
type = ChangeState
value = 1502
triggerall = command = "c" && command = "holdback"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [1006,1010]

;---------------------------------------------------------------------------
;Air Down Fireball
[State -1, Air Down Fireball 2]
type = ChangeState
value = 1504
triggerall = var(20) >= 0
triggerall = command = "c"
trigger1 = stateno = 1503
trigger1 = animelemtime(2) >= 5

;---------------------------------------------------------------------------
;Air Down Fireball
[State -1, Air Down Fireball]
type = ChangeState
value = 1503
triggerall = var(20) >= 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [1006,1010]
trigger3 = stateno = 1504
trigger3 = animelemtime(2) >= 5

;===========================================================================
;===========================================================================
;Combo attacks

; ;Teleport Back Strong Kick
; [State -1, Teleport Back Strong Kick]
; type = ChangeState
; value = 252
; triggerall = command = "b" && command = "a"
; trigger1 = stateno = 250 || stateno = 251
; trigger1 = movehit
; trigger2 = stateno = [1200,1212]
; trigger2 = movehit
; trigger3 = stateno = 771

;Teleport Back Strong Kick
[State -1, Teleport Back Strong Kick]
type = ChangeState
value = 252
triggerall = command = "teleporthit"
triggerall = stateno != 252
trigger1 = stateno = [250,259]
trigger1 = movehit
trigger2 = stateno = [1200,1299]
trigger2 = movehit
trigger3 = stateno = [1120,1123]
trigger3 = movehit
trigger4 = stateno = 771

;Fly Fwd Punch
[State -1, Fly Fwd Punch]
type = ChangeState
value = 255
triggerall = command = "dashpunch"
triggerall = var(16) < 10
trigger1 = ctrl
trigger2 = stateno = 250 && movehit
trigger3 = stateno = 771

;Back Strong Kick2
[State -1, COMBO FLY PUNCH A]
type = ChangeState
value = 1110
triggerall = command = "a"
trigger1 = stateno = 252 && movehit
trigger2 = stateno = [1110,1114]
trigger2 = movehit && var(16) < 5 && Time = [12,30]

;Back Strong Kick
[State -1, COMBO FLY PUNCH B]
type = ChangeState
value = 1111
triggerall = command = "b"
trigger1 = stateno = 252 && movehit
trigger2 = stateno = [1110,1114]
trigger2 = movehit && var(16) < 5 && Time = [12,30]

;Fly combo punch
[State -1, COMBO FLY PUNCH X]
type = ChangeState
value = 1112
triggerall = command = "x"
trigger1 = stateno = 252 && movehit
trigger2 = stateno = [1110,1114]
trigger2 = movehit && var(16) < 5 && Time = [12,30]

;Fly combo punch2
[State -1, COMBO FLY PUNCH Y]
type = ChangeState
value = 1113
triggerall = command = "y"
trigger1 = stateno = 252 && movehit
trigger2 = stateno = [1110,1114]
trigger2 = movehit && var(16) < 5 && Time = [12,30]

;========= FINAL AIR MOVES ============================

;Final Back Strong Kick
[State -1, FINAL AIR KICK A]
type = ChangeState
value = 1115
triggerall = command = "a"
triggerall = stateno = [1110,1114]
trigger1 = movehit && var(16) = 5 && Time = [12,30]

;Final Down Strong Dkick
[State -1, FINAL AIR KICK B]
type = ChangeState
value = 1116
triggerall = command = "b"
triggerall = stateno = [1110,1114]
trigger1 = movehit && var(16) = 5 && Time = [12,30]

;Mega Puño
[State -1, FINAL AIR PUNCH X]
type = ChangeState
value = 1117
trigger1 = command = "x"
triggerall = stateno = [1110,1114]
trigger1 = movehit && var(16) = 5 && Time = [12,30]

;Final Down Strong Punch
[State -1, FINAL AIR PUNCH Y]
type = ChangeState
value = 1118
triggerall = command = "y"
triggerall = stateno = [1110,1114]
trigger1 = movehit && var(16) = 5 && Time = [12,30]

;Fly Fwd Punch continue x
[State -1, Fly Fwd Punch x]
type = ChangeState
value = 1120
triggerall = command = "x"
triggerall = var(16) < 10
triggerall = movecontact
trigger1 = stateno = [1120,1123]
trigger2 = stateno = 255

;Fly Fwd Punch continue x
[State -1, Fly Fwd Punch y]
type = ChangeState
value = 1121
triggerall = command = "y"
triggerall = var(16) < 10
triggerall = movecontact
trigger1 = stateno = [1120,1123]
trigger2 = stateno = 255

;Fly Fwd Punch continue a
[State -1, Fly Fwd Punch a]
type = ChangeState
value = 1122
triggerall = command = "a"
triggerall = var(16) < 10
triggerall = movecontact
trigger1 = stateno = [1120,1123]
trigger2 = stateno = 255

;Fly Fwd Punch continue b
[State -1, Fly Fwd Punch b]
type = ChangeState
value = 1123
triggerall = command = "b"
triggerall = var(16) < 10
triggerall = movecontact
trigger1 = stateno = [1120,1123]
trigger2 = stateno = 255

;Fly Fwd Punch finish
[State -1, Fly Fwd Punch finish]
type = ChangeState
value = 1125
triggerall = var(16) >= 10
triggerall = movecontact
triggerall = command = "a" || command = "b" || command = "x" || command = "y"
trigger1 = stateno = [1120,1123]
trigger2 = stateno = 255

;===========================================================================
;===========================================================================
;Basic Combos

;Uppercut Continue
[State -1, Uppercut Continue]
type = ChangeState
value = 251
triggerall = command = "x" && command = "y"
triggerall = command = "holddown"
triggerall = movecontact
trigger1 = stateno = [210,249]
trigger2 = stateno = [410,449]

;---------------------------------------------------------------------------
;Trow Forward
[State -1, Trow Forward Continue]
type = ChangeState
value = 250
triggerall = command = "x" && command = "y"
triggerall = command = "holdfwd"
triggerall = movecontact
trigger1 = stateno = [210,249]
trigger2 = stateno = [410,449]

;---------------------------------------------------------------------------
;Crouching Light Punch Continue
[State -1, Crouching Light Punch Continue]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = movecontact
trigger1 = stateno = 400
trigger1 = hitcount < 4
trigger2 = stateno = 200
trigger2 = hitcount < 4

;---------------------------------------------------------------------------
;Crouching Light Kick Continue
[State -1, Crouching Light Kick Continue]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = movecontact
trigger1 = stateno = [400,409]
trigger2 = stateno = 430
trigger2 = hitcount < 2
trigger3 = stateno = [200,249]

;---------------------------------------------------------------------------
;Crouching Strong Punch Continue
[State -1, Crouching Strong Punch Continue]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = movecontact
trigger1 = stateno = [400,409]
trigger2 = stateno = [430,439]
trigger3 = stateno = [200,249]

;---------------------------------------------------------------------------
;Crouching Strong Kick Continue
[State -1, Crouching Strong Kick Continue]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = movecontact
trigger1 = stateno = [400,439]
trigger2 = stateno = [200,249]

;---------------------------------------------------------------------------
;Jump Light Punch Continue
[State -1, Jump Light Punch Continue]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = movecontact
trigger1 = stateno = 600
trigger1 = hitcount < 4

;---------------------------------------------------------------------------
;Jump Light Kick Continue
[State -1, Jump Light Kick Continue]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = movecontact
trigger1 = stateno = [600,609]
trigger2 = stateno = 630
trigger2 = hitcount < 2

;---------------------------------------------------------------------------
;Jump Strong Punch Down Continue
[State -1, Jump Strong Punch Down Continue]
type = ChangeState
value = 253
triggerall = command = "y" && command = "x"
triggerall = command = "holddown"
triggerall = movehit
trigger1 = stateno = 251

;---------------------------------------------------------------------------
;Jump Strong Punch Down Continue
[State -1, Jump Strong Punch Down Continue]
type = ChangeState
value = 611
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = movecontact
trigger1 = stateno = [600,610]
trigger2 = stateno = [630,641]

;---------------------------------------------------------------------------
;Jump Strong Punch Continue
[State -1, Jump Strong Punch Continue]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = movecontact
trigger1 = stateno = [600,609]
trigger2 = stateno = [630,639]

;---------------------------------------------------------------------------
;Jump Strong Kick Down Continue
[State -1, Jump Strong Kick Down Continue]
type = ChangeState
value = 642
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = movecontact
trigger1 = stateno = [640,641]

;---------------------------------------------------------------------------
;Jump Strong Kick 2 Continue
[State -1, Jump Strong Kick 2 Continue]
type = ChangeState
value = 641
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = movecontact
trigger1 = stateno = 640

;---------------------------------------------------------------------------
;Jump Strong Kick Continue
[State -1, Jump Strong Kick Continue]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = movecontact
trigger1 = stateno = [600,639]

;---------------------------------------------------------------------------
;Stand Light Punch Continue
[State -1, Stand Light Punch Continue]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = stateno = 200
trigger1 = hitcount < 4

;---------------------------------------------------------------------------
;Stand Light Kick Continue
[State -1, Stand Light Kick Continue]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = stateno = [200,209]
trigger2 = stateno = 230
trigger2 = hitcount < 3

;---------------------------------------------------------------------------
;Stand Strong Punch Continue
[State -1, Stand Strong Punch Continue]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = stateno = [200,209]
trigger2 = stateno = [230,239]

;---------------------------------------------------------------------------
;Standing Strong Kick Continue
[State -1, Standing Strong Kick Continue]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = movecontact
trigger1 = stateno = 240

;---------------------------------------------------------------------------
;Standing Strong Kick Continue
[State -1, Standing Strong Kick Continue]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = stateno = [200,239]

;===========================================================================
;===========================================================================
;Basic Punchs and Kicks

;---------------------------------------------------------------------------
;Strong Kick Down
[State -1, Strong Kick Down]
type = ChangeState
value = 642
triggerall = command = "a" && command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = pos y = 0
trigger2 = stateno = 771

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = pos y = 0
trigger2 = stateno = 771

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = pos y = 0
trigger2 = stateno = 771

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = pos y = 0
trigger2 = stateno = 771

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = pos y < 0
trigger2 = stateno = 771

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = pos y < 0
trigger2 = stateno = 771

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = pos y < 0
trigger2 = stateno = 771


;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [1006,1010]
trigger3 = pos y < 0
trigger3 = stateno = 771

