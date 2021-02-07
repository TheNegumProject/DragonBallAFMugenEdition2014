;===============================================================================
;Speed
;===============================================================================
[statedef 10000]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim =10000
poweradd = -400

[State 10000:	Sound]
type = PlaySnd
trigger1 = (Time = 0)
value = s1,1

[state 10000,3]
type = statetypeset
trigger1 = pos Y!= 0
statetype = A

[state 10000,4]
type = posadd
triggerall = time = 9
trigger1 = command != "holdback" && command != "holdup" && command != "holddown"
trigger2 = command = "holdfwd"
trigger3 = pos Y= 0 && command = "holddown" && command != "holdback"
x = 100

[State 10000, 1]
type = ChangeAnim
trigger1 = time = 0 && command = "holdback"
value = 10001

[State 10000, 1]
type = ChangeAnim
trigger1 = time = 0 && command = "holdup"
value = 10002

[State 10000, 1]
type = ChangeAnim
trigger1 = time = 0 && command = "holddown"
value = 10002

[state 10000,4]
type = posadd
trigger1 = time = 12 && command = "holdback"
x = -100

[state 10000,4]
type = posadd
trigger1 = time = 12 && command = "holdup"
y = -100-(random%var(32))

[state 10000]
type = posset
trigger1 = screenpos Y< 90
y = floor(pos Y)+floor(-screenpos Y+90)

[state 10000]
type = posset
trigger1 = command = "holddown" && time = 9
y = 0

[state 10000,5]
type = ctrlset
trigger1 = time > 18
value = 1

[state 10000,6]
type = turn
trigger1 = p2dist X< 0

[state 10000,7]
type = changestate
trigger1 = time > 18 && command = "holdup"
value = 1100
ctrl = 1

[state 10000]
type = changestate
trigger1 = time > 18 && command != "holdup"
value = ifelse(prevstateno = 40 || prevstateno = 707 || prevstateno = 50, 50, ifelse(pos Y!= 0, 1100, 0))
ctrl = 1
;===============================================================================
; fireball
;===============================================================================
[Statedef 2000]
type    = S
movetype= A
physics = S
velset = 0,0,0
juggle = 4
ctrl = 0
poweradd= -100
anim = 2000

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 6008
ID =  6008
pos = 33,-57
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 99999999999
vel = 0,0
accel = 0,0
random = 0,0
removetime = 12
supermove
pausemove
scale = 0.5,0.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value =2,0
volume = 99999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value =6,0
volume = 99999999
channel = -1

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal ;player
name = "energy ball"
ID = 6220
stateno = 6220
pos = 45,-55
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove
size.yscale = 0.8
size.xscale = 0.8

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 0]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;===============================================================================
;Fly
;===============================================================================
[Statedef 1110]
type = A
ctrl = 0
anim = 1100
velset =0,-5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,3
volume = 9999999
channel = -1

[State 1100,End]
type = ChangeState
trigger1 = animTime =0
value =1100
ctrl = 1


[Statedef 1100]
type = A
ctrl = 0
anim = 1100
velset = 0,0

[State 1100, ]
type = PowerAdd
trigger1 = time > 0
value = -2

[State 1100, ]
type = VelSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = var(2) = 0
trigger2 = Pos Y < -450
x = 0
y = 0

[State 1100, ]
type = ChangeAnim
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Anim != 1100
value = 1100

[State 1100,]
type = VarSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Var(2) != 2
trigger2 = Var(2) = 2
trigger2 = Vel Y >= 0.3
v = 2
value = 1

[State 1100,]
type = VarSet
trigger1 = Var(2) = 1
trigger1 = Vel Y <= -0.3
v = 2
value = 2

[State 1100,]
type = VelAdd
trigger1 = Var(2) = 1
y = -0.02

[State 1100,]
type = VelAdd
trigger1 = Var(2) = 2
y = 0.03

[State 1100,]
type = VelSet
Triggerall = var(2) != 0
Trigger1 = command = "holdfwd"
Trigger2 = command = "holdback"
Trigger3 = command = "holdup"
Trigger4 = command = "holddown"
y = 0

[State 1100,]
type = VarSet
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
v = 2
value = 0

[State 1100,]
type = PosSet
trigger1 = Pos Y < -450
y = -450

[State 1100, ]
type = PosAdd
trigger1 = P2BodyDist Y > 450
trigger1 = Vel Y < 0
y = 50

[State 1100,]
type = VelSet
trigger1 = P2BodyDist Y > 450
trigger1 = Vel Y < 0
y = 0

[State 1100, ]
type = AfterImage
trigger1 = Command = "FF"
trigger1 = Vel X < 8.6
trigger2 = Command = "BB"
trigger2 = Vel X > -7
trigger3 = Command = "DD"
trigger3 = Vel Y < 8.6
trigger4 = Command = "UU"
trigger4 = Vel Y > -7
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add


[State 1100, ]
type = VelSet
trigger1 = Command = "FF"
trigger1 = Vel X < 6.6
x = 6.6

[State 1110, ]
type = PlaySnd
trigger1 = Command = "FF"
value = 1, 0

[State 1100,]
type = VelSet
trigger1 = Command = "BB"
trigger1 = Vel X > -5.7
x = -5.7

[State 1110, ]
type = PlaySnd
trigger1 = Command = "BB"
value = 1, 0

[State 1100, ]
type = VelSet
trigger1 = Command = "DD"
trigger1 = Vel Y < 6.6
y = 6.6

[State 1110, ]
type = PlaySnd
trigger1 = Command = "DD"
value = 1, 0

[State 1100,]
type = VelSet
trigger1 = Command = "UU"
trigger1 = Vel Y > -5.7
y = -5.7

[State 1110, ]
type = PlaySnd
trigger1 = Command = "UU"
value = 1, 0

[State 1100,]
type = ChangeAnim
triggerall = Anim != 1103
trigger1 = command = "holddown"
value = 1103

[State 1100, ]
type = VelAdd
trigger1 = command = "holddown"
y = 0.3

[State 1100,]
type = VelSet
trigger1 = command = "holddown"
trigger1 = Vel Y < 0
y = 0


[State 1100, ]
type = ChangeAnim
trigger1 = Anim != 1104
trigger1 = command = "holdup"
value = 1104

[State 1100, ]
type = VelAdd
trigger1 = command = "holdup"
y = -0.2

[State 1100,]
type = VelSet
trigger1 = command = "holdup"
trigger1 = Vel Y > 0
y = 0

[State 1100, ]
type = ChangeAnim
triggerall = Anim != 1102
trigger1 = command = "holdback"
value = 1102

[State 1100, ]
type = VelAdd
trigger1 = command = "holdback"
x = -0.15

[State 1100,]
type = VelSet
trigger1 = command = "holdback"
trigger1 = Vel X > 0
x = 0

[State 1100, ]
type = ChangeAnim
trigger1 = Anim != 1101
trigger1 = command = "holdfwd"
value = 1101

[State 1100, ]
type = VelAdd
trigger1 = command = "holdfwd"
x = 0.25

[State 1100,]
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = Vel X < 0
x = 0

[State 1100,]
type = MakeDust
triggerall = Pos Y >= -80 && Pos Y <= -70
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 75
spacing = 3

[State 1100,]
type = MakeDust
triggerall = Pos Y >= -70 && Pos Y <= -60
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 60
spacing = 3

[State 1100,]
type = MakeDust
triggerall = Pos Y >= -60 && Pos Y <= -50
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 50
spacing = 3

[State 1100, ]
type = MakeDust
triggerall = Pos Y >= -50 && Pos Y <= -40
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 40
spacing = 3

[State 1100, ]
type = MakeDust
triggerall = Pos Y >= -40
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 30
spacing = 3

[State 1100,]
type = Turn
trigger1 = P2Dist X < 0

[State 1100,]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

[State 1100,]
type = ChangeState
trigger1 = Time > 2
trigger1 = command = "fly"
value = 50
ctrl = 1

[State 1100,]
type = ChangeState
trigger1 = Win = 1
trigger2 = Lose = 1
value = 1202

;---------------------------------------------------------------------------
[Statedef 1202]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
anim = 1202

[State 210, 3]
type = VelAdd
trigger1 = AnimElem = 1
trigger1 = AnimElem <= 2
x = -0.3

[State 210, 3]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 3021, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 1100

[State 210, 3]
type = ChangeState
trigger1 = time = 60
value = 1203

;---------------------------------------------------------------------------
[Statedef 1203]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0

[State 1531, 5]
type = PlaySnd
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
persistent = 0
value = s2,8

[State 52, 3]
type = PosSet
trigger1 = Vel Y = 0
y = 0

[State 209, 1]
type = ChangeAnim
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1203

[State 209, 1]
type = Velset
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 3021, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 1100

[State 210, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;===============================================================================
;super Salto
;===============================================================================
;super salto
[Statedef 60]
type            = A
movetype        = I
physics         = N
anim            = 41
velset          = 0,-10
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[state 60, CtrlSet]
type            = CtrlSet
trigger1        = Time >= 1
value           = 1

[state 60, VelSetFwd]
type            = VelSet
trigger1        = command = "holdfwd"
x               = 3

[state 60, VelSetBack]
type            = VelSet
trigger1        = command = "holdback"
x               = -3

[state 60, VelAdd]
type            = VelAdd
trigger1        = Time > 10
x               = 0
y               = .40


[State 60, PlaySnd]
type = PlaySnd
trigger1 =  time = 1
value = s1,4
volume = 50
channel = -1

[state 60, End]
type            = ChangeState
trigger1        = Pos Y >= 1
value           = 52

;===============================================================================
;modo furioso
;===============================================================================
;modo furioso
[Statedef 3000]
type = S
movetype= I
physics = S
juggle = 4
ctrl = 0
anim = 3000
poweradd = -3000
sprpriority = 1
velset = 0,0

[State 0, varset]
type=varset
trigger1= Time > 1
var(19) = 10000

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(pos y < 0, 107, 0)
ctrl = 1
