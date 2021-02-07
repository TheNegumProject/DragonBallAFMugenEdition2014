;===========================================================================
;Player 2 Custom States
;===========================================================================
; Wall Bounce : Used in State 1300
; Part 1 : P2 Fly Back
[Statedef 95000]
type    = A
movetype= H
physics = N
velset = 0,0

[State 95000, P2Anim]
type = ChangeAnim2
trigger1 = Time >= 0
value = 95000

[State 95000, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 95001

;---------------------------------------------------------------------------
; Wall Bounce : Used in State 1300
; Part 2 : P2 Hit Wall
[Statedef 95001]
type    = A
movetype= H
physics = N

[State 95001, Velocity]
type = HitVelSet
trigger1 = !time
x = 1
y = 1

[State 95001, Gravity]
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 95001, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 95001, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 0
trigger2 = FrontEdgeBodyDist <= 0
value = 95002

[State 95001, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
;---------------------------------------------------------------------------
; Wall Bounce : Used in State 1300
; Part 3 : P2 Pre-Fall from Wall
[Statedef 95002]
type    = A
movetype= H
physics = N

[State 95002, P2Anim]
type = ChangeAnim2
trigger1 = !time
value = 95002

[State 95002, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 95002, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 95002, Spark]
type = Explod
trigger1 = !time
anim = F72
pos = -14, -50
postype = p1
sprpriority = 3

[State 95002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = F7,0

[State 95002, Next]
type = ChangeState
trigger1 = AnimTime = 0
value = 95003
;---------------------------------------------------------------------------
; Wall Bounce : Used in State 1300
; Part 4 : P2 Falling from Wall
[Statedef 95003]
type    = A
movetype= H
physics = N

[State 95003, P2Anim]
type = ChangeAnim2
trigger1 = !time
value = 95003

[State 95003, VelSet]
type = VelSet
trigger1 = !time
x = 1.6
y = -5

[State 95003, Next]
type = ChangeState
trigger1 = AnimTime = 0
value = 95004

;---------------------------------------------------------------------------
; Wall Bounce : Used in State 1300
; Part 5 : P2 Fall into Ground
[Statedef 95004]
type    = A
movetype= H
physics = N

[State 95004, VelSet]
type = VelSet
trigger1 = !time
x = 1.6
y = -4

[State 95004, VelAdd]
type = VelAdd
trigger1 = Time >= 0
y = .35

[State 95004, ChangeAnim 5050]
type = ChangeAnim
trigger1 = !time
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 95004, ChangeAnim 5052]
type = ChangeAnim
trigger1 = !time
trigger1 = SelfAnimExist(5052)
value = 5052

[State 95004, ChangeAnim 5060]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 95004, ChangeAnim 5062]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 95004, ChangeAnim 5050]
type = ChangeAnim
trigger1 = !time
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 95004, ChangeAnim 5052]
type = ChangeAnim
trigger1 = !time
trigger1 = SelfAnimExist(5052)
value = 5052

[State 95004, ChangeAnim 5060]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 95004, ChangeAnim 5062]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 95004, HitGround]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
;---------------------------------------------------------------------------
; Throw Toss Player 2 State
[Statedef 95020]
type    = A
movetype= H ;Get hit
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 95020, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95022

;BLARGH!
[State 95020, HitBy]
type = HitBy
Trigger1 = Time >= 0
value = SCA
time = 1

[State 95010, End]
type = SelfState
trigger1 = Time >= 40
value = 50
ctrl = 1

;-------------------------------------------------------------------------
; Throw Toss Player 2 State
[Statedef 95021]
type    = A
movetype= H ;Get hit
physics = N
velset = 8,ifelse((enemynear,stateno=[2005,2006]),-10,-7)
ctrl = 0
sprpriority = 3

[State 95021, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95023

[State 95021, PosAdd]
type = PosAdd
Trigger1 = !time
x = 60
y = 40

[State 95021, 2] ;Gravity
type = VelAdd
Trigger1 = Time > 0
y = 0.44

[State 95021, Damage]
type = LifeAdd
Trigger1 = !time
value = -80

[State 95021, SelfState] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5100 ;Hit ground
;---------------------------------------------------------------------------
; Throw Toss Player 2 State
[Statedef 95022]
type    = A
movetype= H ;Get hit
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 95022, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95022

;BLARGH!
[State 95022, HitBy]
type = HitBy
Trigger1 = Time >= 0
value = SCA
time = 1

[State 95022, End]
type = SelfState
trigger1 = Time >= 40
value = 50
ctrl = 1
;---------------------------------------------------------------------------
; Ki Strings Hold
[Statedef 95028]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 95028, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 95028, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95028

[State 95028, HitBy]
type = NotHitBy
Trigger1 = 1
value = SCA
time = 1

[State 95029, MoveUp]
type = PosAdd
trigger1 = (enemy, name ="Bojack_CS") && (enemy, stateno = 250 && enemy, prevstateno = 1100)
trigger2 = (enemy, name ="Bojack_CS") && (enemy, stateno = 260 && enemy, prevstateno = 1100)
trigger3 = (enemy, name ="Bojack_CS") && (enemy, stateno = 2002 && enemy, prevstateno = 2001)
y = -10

[State 95029, End]
type = ChangeState
trigger1 = (enemy, name ="Bojack_CS") && (enemy, stateno = 250 && enemy, prevstateno = 1100)
trigger2 = (enemy, name ="Bojack_CS") && (enemy, stateno = 260 && enemy, prevstateno = 1100)
trigger3 = (enemy, name ="Bojack_CS") && (enemy, stateno = 2002 && enemy, prevstateno = 2001)
value = 95051

[State 95028, End]
type = SelfState
trigger1 = Time >= 120
trigger2 = (enemy, name ="Bojack_CS") && ((enemy, stateno != 1100)&&(enemy, stateno != 2001))
value = 50
;---------------------------------------------------------------------------
; Ki Strings Pull
[Statedef 95029]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 95029, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 95029, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95029

[State 95029, HitBy]
type = NotHitBy
Trigger1 = 1
value = SCA
time = 1

[State 95029, Damage]
type = LifeAdd
Trigger1 = !Time
value = -40

[State 95029, Pull]
type = VelSet
trigger1 = (enemy, name ="Bojack_CS") && ((enemy, stateno = 1100) || (enemy, stateno = 2001))
x = floor((abs((enemy, pos x)-(pos x))-15)/10)
y = floor((abs((enemy, pos y)-(pos y))-10)/10)

[State 95029, End]
type = ChangeState
trigger1 = (enemy, name ="Bojack_CS") && (enemy, stateno = 250 && enemy, prevstateno = 1100)
trigger2 = (enemy, name ="Bojack_CS") && (enemy, stateno = 260 && enemy, prevstateno = 1100)
trigger3 = (enemy, name ="Bojack_CS") && (enemy, stateno = 2002 && enemy, prevstateno = 2001)
value = 95051
ctrl = 1

[State 95029, End]
type = ChangeState
trigger1 = Time = 60
trigger2 = (enemy, name ="Bojack_CS") && ((enemy, stateno != 1100) && (enemy, stateno != 2001))
value = 95050
ctrl = 1
;---------------------------------------------------------------------------
; Throw Toss Player 2 State
[Statedef 95030]
type    = A
movetype= H ;Get hit
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 95030, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95022

;BLARGH!
[State 95030, HitBy]
type = HitBy
Trigger1 = Time >= 0
value = SCA
time = 1

[State 95030, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95031, Damage]
type = LifeAdd
Trigger1 = time = 20
value = -50

[State 95031, Damage]
type = LifeAdd
Triggerall = time > 20
Trigger1 = time % 2
value = -1

[State 95030, End]
type = SelfState
trigger1 = Time >= 120
value = 50
ctrl = 1
;-------------------------------------------------------------------------
; Throw Toss Player 2 State
[Statedef 95031]
type    = A
movetype= H ;Get hit
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 95031, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95061

[State 95030, PosAdd]
type = PosAdd
Trigger1 = animelem=2
x = -2
y = 50

[State 95031, 2]
type = VelAdd
Trigger1 = 1
y = 0.44

[State 95031, 2]
type = VelAdd
Trigger1 = vel x >= -0.5
x = -0.5

[State 95030, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95031, SelfState] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5100 ;Hit ground
;---------------------------------------------------------------------------
; Ki String Super Grab 1
[Statedef 95035]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 95035, Animation]
type = ChangeAnim2
trigger1 = !time
value = ifelse(prevstateno=95036,95036,95035)

[State 95035, NotHitBy]
type = NotHitBy
Trigger1 = 1
value = ,NA,SA,NP,SP,NT,ST
time = 1

[State 95035, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95035, End]
type = SelfState
trigger1 = Time >= 120
value = 50
ctrl = 1
;-------------------------------------------------------------------------
; Ki String Super Grab 2
[Statedef 95036]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 95036, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95036

[State 95036, PosAdd]
type = PosAdd
Trigger1 = animelem=2
x = -2
y = 50

[State 95036, 2]
type = VelAdd
Trigger1 = 1
y = 0.44

[State 95036, VelAdd]
type = VelAdd
Trigger1 = vel x >= -0.5
x = -0.5

[State 95036, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95036, NextState]
type = ChangeState
trigger1 = animtime=0
value = 95035

[State 95035, NotHitBy]
type = NotHitBy
Trigger1 = 1
value = ,NA,SA,NP,SP,NT,ST
time = 1

[State 95036, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5100 ;Hit ground
;-------------------------------------------------------------------------
; Ki String Super Kick 1
[Statedef 95037]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 95037, Animation]
type = ChangeAnim2
trigger1 = !time
value = 5160

[State 95037, VelAdd]
type = VelSet
Trigger1 = time = 16
x=3.5
y=12

[State 95037, VelAdd]
type = VelAdd
Trigger1 = time >= 16
y = 0.44

[State 95037, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95037, ChnageState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 95038 ;Hit ground
;-------------------------------------------------------------------------
; Ki String Super Kick 2
[Statedef 95038]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 95038, Animation]
type = ChangeAnim2
trigger1 = !time
value = 5100

[State 95038, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95021, Damage]
type = LifeAdd
Trigger1 = time = 2
value = -70

[State 95038, SelfState]
type = SelfState
trigger1 = time = 16
value = 5100
;---------------------------------------------------------------------------
; Ki Strings Drop
[Statedef 95050]
type    = A
movetype= H
physics = N
ctrl = 0
sprpriority = 2

[State 95050, Animation]
type = ChangeAnim2
trigger1 = !time
value = 5050

[State 95050, HitBy]
type = HitBy
Trigger1 = 1
value = SCA
time = 1

[State 95050, PosSet]
type = PosSet
Trigger1 = pos y > 0 && vel y > 0
y = 0

[State 95050, Gravity]
type = Gravity
trigger1 = time

[State 95050, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
;---------------------------------------------------------------------------
; Ki Strings Drop2
[Statedef 95051]
type    = A
movetype= H
physics = N
ctrl = 0
sprpriority = 2

[State 95051, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95029

[State 95051, PosSet]
type = PosSet
Trigger1 = pos y > 0 && vel y > 0
y = 0

[State 95051, Gravity]
type = Gravity
trigger1 = time

[State 95051, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

[State 95051, Pull]
type = VelSet
trigger1 = (enemy, name ="Bojack_CS") && ((enemy, stateno = [250,260]) && enemy, prevstateno = 1100)
x = floor((abs((enemy, pos x)-(pos x))-15)/10)
y = floor((abs((enemy, pos y)-(pos y))-10)/10)

[State 95051, ChangeState]
type = ChangeState
trigger1 = time > 10
value = 95050