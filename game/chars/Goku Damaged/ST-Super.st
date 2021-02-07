;[------Y------][-----][------]
;[------N------][-----][--G---]
;[------V------][-----][--O---]
;[------A------][-'S-][---K---]
;[------S------][-----][--U---]
;[------E------][-----][------]
;[------R------][-----][------]
;[---Don't forget to check out the Shugen-Do--]
;[------game engine at www.sakirsoft.com------]
;===========================================================================
;[Variables usage]----------------------------------------------------------
;===========================================================================
; Var(0)  - Used in State 9001, to determine the y velocity of the helper
; Var(1)  - Used in State 9001, to determine the x velocity -//-, and in
;          State 1000, to set the direction of the attack
; Var(2)  - State 630 and 640, to set the attacks to airborne moves
; Var(3)  - AI Randomizer Var
; Var(4)  - AI Randomizer Var for air moves
; Var(5)  - AI Randomizer Var for combo finishers/launchers
; Var(57) - GameTime var
; Var(59) - AI variable
;===========================================================================
;[Super ST]-----------------------------------------------------------------
;===========================================================================
;Combo Rush X - Approach
[Statedef 500]
type 		= S
movetype	= A
physics		= S
anim		= 500
velset		= 0,0
ctrl		= 0
juggle		= 6
sprpriority	= 4

[State 500, DashSound]
type = PlaySnd
trigger1 = Time = 0
value = S40,5

[State 500, dust]
Type = Explod
Trigger1 = Time = 0
Anim = 9006
ID = 9006
Pos = -25, 0
PosType = P1
Facing = 1
BindTime = 1
SprPriority = 3
OwnPal = 1
IgnoreHitPause = 1
Persistent = 0

[State 500, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 30
trans = add
TimeGap  = 1
FrameGap = 1
length = 10
PalContrast = 128,128,128
PalAdd      =   15,  15,  15
PalBright = 40,40,40
palpostbright = 5,5,5
palmul = .65,.65,.65

[State 500, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 500, VelSet]
type = VelSet
trigger1 = Animelem = 2
trigger1 = 1
x = 17

[State 500, PowerAdd]
type = PowerAdd
trigger1 = Animelem = 1
trigger2 = Animelem = 2
value = -50

[State 500,Hit]
type = HitDef
trigger1 = Time = 0
attr = S, HT
hitflag = MAF
priority = 99999, Miss
sprpriority = 4
sparkno = -1
p2facing = 1
p1stateno = 501
pausetime = 5,5

[State 500, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Combo Rush X - Combo
[Statedef 501]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 501
sprpriority = 2

[State 501, VelSet]
type = VelSet
trigger1 = 1
x = 2

[State 501, 2]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
animtype  = Medium
damage    = 20, 10
guardflag = MA
pausetime = 5,6
sparkno = 1
sparkxy = -10,-70
hitsound   = S1,2
guardsound = S1,10
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -3
air.velocity = -2.5,-2
getpower = 0
envshake.time = 4
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 120

[State 501, 2]
type = HitDef
trigger1 = animelem = 5
attr = S, NA
animtype  = Medium
damage    = 20, 10
guardflag = MA
pausetime = 5,6
sparkno = 1
sparkxy = -10,-70
hitsound   = S1,4
guardsound = S1,10
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -3
air.velocity = -2.5,-2
getpower = 0
envshake.time = 4
envshake.freq = 120
envshake.ampl = -3
envshake.phase = 120

[State 501, PowerAdd]
type = PowerAdd
trigger1 = (animelem = 2 || animelem = 5)
value = -180

[State 501, ChangeState]
type = ChangeState
trigger1 = Time = 30
value = 204
ctrl = 0

;---------------------------------------------------------------------------
;Combo Rush X - Finish
[Statedef 502]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 502
sprpriority = 2

[State 502, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 502, Posadd]
type = Posadd
trigger1 = animelem = 3
x = p2bodydist x+5
y = p2bodydist y-12

[State 502, 1]
type = PlaySnd
trigger1 = Time = 4
value = 40, 4

[State 502, VelSet]
type = VelSet
trigger1 = Time > 5
y = 0

[State 502, 1]
type = PlaySnd
trigger1 = Time = 19
value = 0, 5

[State 502, Gokuvoice]
type = PlaySnd
trigger1 = Time = 19
value = 3, 2

[State 502, 2]
type = HitDef
trigger1 = Animelem = 8
attr = A, NA
damage    = 20, 10
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = 0
sparkxy = -10,-58
hitsound   = S1,5
guardsound = S1,10
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -3.5,20
air.fall=1
fall.damage = 10
down.velocity = -1,-20
down.bounce = 2
envshake.time = 10
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140
fall.envshake.time = 15
fall.envshake.freq = 120
fall.envshake.ampl = -3
fall.envshake.phase = 140

[State 502, ChangeState]
type = ChangeState
trigger1 = time = 40
value = 51
ctrl = 1

;---------------------------------------------------------------------------
;Quick KameHameHa - Charge
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 300
sprpriority = 1

[State 1001, PlaySnd]
type = PlaySnd
trigger1 = Time = 5
value = S4,7
volume = 255
channel = 5

[State 1000, VarSet]
type = VarSet
triggerall = var(59) < 1
trigger1 = command = "holddown"
trigger1 = command != "holdup"
v = 1
value = 1

[State 1000, VarSet]
type = VarSet
triggerall = var(59) < 1
trigger1 = command = "holdup"
trigger1 = command != "holddown"
v = 1
value = 2

[State 1000, VarSet]
type = VarSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger2 = command = "holdup"
trigger2 = command = "holddown"
v = 1
value = 0

[State 1000, PowerAdd]
type = PowerAdd
trigger1 = Time > 5
value = -25

[State 1000, Helper]
type = Helper
trigger1 = Time = 5
helpertype = normal
name = "KameHameHa - KI"
ID = 9002
stateno = 9002
pos = -16,-35;-18,-26
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 1000, StopSnd]
type = StopSnd
trigger1 = animtime = 0
channel = 5

[State 1000, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1001
ctrl = 0

;---------------------------------------------------------------------------
;Quick KameHameHa - Shoot
[Statedef 1001]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 301+ifelse(var(1)=1,1,0)+ifelse(var(1)=2, 2, 0)
sprpriority = -1

[State 1001, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S4,8
volume = 255

[State 1001, SprPriority]
type = SprPriority
trigger1 = 1
value = -1
ignorehitpause = 1

[State 1001, Text]
type = DisplayToClipboard
trigger1 = Time = 0
text = "Kame time!"

[State 1001, BGPalFX]
type = BGPalFX
trigger1 = Time = 0
time = 14
add = 0,0,0
mul = 512,512,512
color = 128

[State 1001, BGPalFX]
type = BGPalFX
trigger1 = Time = 14
time = 2
add = 0,0,0
mul = 450,450,450
color = 160

[State 1001, BGPalFX]
type = BGPalFX
trigger1 = Time = 16
time = 2
add = 0,0,0
mul = 400,400,400
color = 192

[State 1001, BGPalFX]
type = BGPalFX
trigger1 = Time = 18
time = 2
add = 0,0,0
mul = 350,350,350
color = 224

[State 1001, BGPalFX]
type = BGPalFX
trigger1 = Time = 20
time = 2
add = 0,0,0
mul = 300,300,300
color = 256

[State 1001, BGPalFX]
type = BGPalFX
trigger1 = Time = 22
time = 2
add = 0,0,0
mul = 270,270,270
color = 256

[State 1001, PalFX]
type = PalFX
trigger1 = Time = 0
time = 14
add = 0,0,0
mul = 520,520,520
color = 136

[State 1001, PalFX]
type = PalFX
trigger1 = Time = 14
time = 4
add = 0,0,0
mul = 408,408,408
color = 200

[State 1001, PalFX]
type = PalFX
trigger1 = Time = 18
time = 4
add = 0,0,0
mul = 308,308,308
color = 238

[State 1001, VelAdd]
type = VelAdd
trigger1 = Time = 0
x = -3-ifelse(var(1)=0,2,0)

[State 1001, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 10
freq = 120
ampl = -2
phase = 140

[State 1001, ForceFeedback]
type = ForceFeedback
trigger1 = time = 0
waveform = "sine"    ;"square","sinesquare","off"
time = 20
freq = 128,5,5,5
ampl = 128,5,5,5
self = 1

[State 1001, EnvColor]
type = EnvColor
trigger1 = Time = 0
value = 255,255,255
time = 1

[State 1001, Kamedust]
type = Explod
trigger1 = Time = 2
trigger1 = var(1) = 0
anim = 9008
ID = 9008
pos = 180,15
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = 38
scale = 1,1
sprpriority = 10
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 1001, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "KameHameHa - Small Beam"
ID = 9003
stateno = 9003
pos = 50,-21
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1001, Helper]
type = null;Helper
trigger1 = Time = 0
helpertype = normal
name = "KameHameHa - Big Beam"
ID = 9003
stateno = 9009
pos = 15,-52
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 1001, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;===========================================================================
;[End of file]--------------------------------------------------------------
;===========================================================================
