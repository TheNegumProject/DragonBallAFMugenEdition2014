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
;[Helper ST]----------------------------------------------------------------
;===========================================================================
;-Renzoku Projectile
;(Used in StateNo 420)
[Statedef 9001]
type 			= A
movetype		= A
physics			= N
anim			= 9001
velset			= 0,0
ctrl			= 0
poweradd		= 0
juggle			= 10
facep2			= 0
hitdefpersist		= 0
movehitpersist		= 0
hitcountpersist		= 0
sprpriority		= 3

[State 9001:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 9001:	PlayerPush]
type			= PlayerPush
trigger1		= 1
value			= 0

[State 9001:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 9001:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			= 0
range			= -2,2

[State 9001:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			= 1
range			= 2,0

[State 9001:	VelSet]
type			= VelSet
trigger1		= (!Time)
x			= 12+(Var(1))
y			= (Var(0))

[State 9001:	AfterImage]
type			= AfterImage
trigger1		= (!Time)
time 			= 30
timegap 		= 2
framegap 		= 1
length 			= 30
paladd 			= 30, 30, 30
palmul 			= .33, .33, .33
palcontrast 		= 90,90,90
trans 			= add

[State 9001:	HitDef]
type			= HitDef
trigger1		= 1
attr			= S, NA
hitflag			= MAFDP
guardflag		= MA
animtype		= Hard
priority		= 7, Hit
damage			= 10,5
pausetime		= 5,5
guard.pausetime		= 15,20
sparkno			= S6150
guard.sparkno		= S6150
sparkxy			= 0,40
hitsound		= S1,12
guardsound		= S1,12
ground.type		= High
air.type		= Trip
ground.slidetime	= 25
ground.hittime		= 25
air.hittime		= 25
ground.velocity		= -8
guard.velocity		= -8
air.velocity		= -8,-3.5
airguard.velocity	= -8,-3.5
ground.cornerpush.veloff= 0
fall.xvelocity		= -1
fall.yvelocity		= -3
fall.recover		= 0
air.fall		= 1
down.velocity		= -1,-2
down.bounce		= 1
id			= 701
getpower		= 0
givepower		= 25
palfx.time		= 12
palfx.mul		= 256,256,256
palfx.add		= 200,50,10
palfx.sinadd		= 175,25,5,4
envshake.time 		= 12
envshake.freq 		= 120
envshake.ampl 		= -4
persistent		= 0

[State 9001:	DestroySelf]
type			= DestroySelf
trigger1		= MoveContact
trigger2		= FrontEdgeBodyDist < -30
ignorehitpause	= 1

;------------------------------------------------------------------------------
;[KameHameHa - KI]
;(Used in StateNo 1000)
[Statedef 9002]
type 			= A
movetype		= A
physics		= N
anim			= 9002
velset		= 0,0
ctrl			= 0
poweradd		= 0
juggle		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 8

[State 9002:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 9002, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 128
length = 4
palcolor = 256
palbright = 30,60,30
palcontrast = 120,220,120
palpostbright = 20,50,20
paladd = 10,25,10
palmul = .65,.75,.65
timegap = 1
framegap = 1
trans = "add"

[State 9002, PosAdd]
type = PosAdd
trigger1 = 1
x = (rootdist X)-16;-18
y = (rootdist Y)-35;-26

[State 9002, AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 9002, DestroySelf]
type			= DestroySelf
trigger1                = (parent,stateno != 1000)
ignorehitpause = 1

;------------------------------------------------------------------------------
;-Small KameHameHa Beam
;(Used in StateNo 1001)
[Statedef 9003]
type 			= A
movetype		= A
physics			= N
anim=9003+ifelse(parent,var(1)=1,8,0)+ifelse(parent,var(1)=2, 9, 0)
velset			= 0,0
ctrl			= 0
poweradd		= 0
juggle			= 5
facep2			= 0
hitdefpersist		= 0
movehitpersist		= 0
hitcountpersist		= 0
sprpriority		= 9

[State 9003, SprPriority]
type = SprPriority
trigger1 = 1
value = 9
ignorehitpause = 1

[State 9003, PosAdd]
type = PosAdd
trigger1 = parent,var(1) = 0
trigger1 = 1
x = (rootdist X)+50
y = (rootdist Y)-21

[State 9003, PosAdd]
type = PosAdd
trigger1 = parent,var(1) = 1
trigger1 = 1
x = (rootdist X)+21
y = (rootdist Y)-34

[State 9003, PosAdd]
type = PosAdd
trigger1 = parent,var(1) = 2
trigger1 = 1
x = (rootdist X)+20
y = (rootdist Y)-71

[State 9003:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 9003:	PlayerPush]
type			= PlayerPush
trigger1		= 1
value			= 1

[State 9003:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 9003, Damn it hurts - straight]
type = HitDef
trigger1 = parent,var(1) = 0
trigger1 = time >= 0
attr = S, HP
animtype  = Hard
Damage = 5, 2
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -25, -1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -25, -1
fall = 1
givepower = 25
getpower = 0
palfx.time		= 12
palfx.mul		= 520,520,520
palfx.add		= 0,0,0

[State 9003, Damn it hurts - down]
type = HitDef
trigger1 = parent,var(1) = 1
trigger1 = time >= 0
attr = C, NA
animtype  = Hard
Damage = 5, 2
hitflag = MAFD
pausetime = 0,0
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -12, 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -12, 12
givepower = 25
getpower = 0
palfx.time		= 12
palfx.mul		= 520,520,520
palfx.add		= 0,0,0
fall = 1
fall.damage = 30
fall.envshake.time = 10
fall.envshake.freq = 120
fall.envshake.ampl = -4
fall.envshake.phase = 140

[State 9003, Damn it hurts - up]
type = HitDef
trigger1 = parent,var(1) = 2
trigger1 = time >= 0
attr = S, HP
animtype  = Hard
Damage = 5, 2
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -12, -15
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -12, -15
fall = 1
givepower = 25
getpower = 0
palfx.time		= 12
palfx.mul		= 520,520,520
palfx.add		= 0,0,0
fall.envshake.time = 8
fall.envshake.freq = 120
fall.envshake.ampl = -4
fall.envshake.phase = 140
fall.damage = 15

[State 9003:	DestroySelf]
type			= DestroySelf
trigger1		= AnimTime = 0
ignorehitpause	= 1

;------------------------------------------------------------------------------
;-Aura
;(Used in StateNo 700)
[statedef 9004]
type = A
movetype = I
physics = N
anim = 9005
velset = 0,0
ctrl = 0
sprpriority = 15

[State 9004, ChangeAnim]
type = ChangeAnim
triggerall = parent, stateno != 700
trigger1 = anim = 9005
trigger1 = (timemod = 5,0)
value = 9010
elem = 12-AnimElemNo(0)

[State 9004, ChangeAnim]
type = ChangeAnim
triggerall = parent, stateno = 700
trigger1 = anim = 9010
trigger1 = (timemod = 5,0)
value = 9005
elem = 12-AnimElemNo(0)

[State 9004, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 9005
trigger1 = animtime = 0
value = 9004

[State 9004, ChangeAnim]
type = ChangeAnim
triggerall = parent, stateno != 700
trigger1 = anim = 9004
trigger1 = animtime = 0
value = 9010

[State 9004, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S4,11
volume = 0
lowpriority = 1
channel = 5
loop = 1

[State 9004, SprPriority]
type = SprPriority
trigger1 = 1
value = 15

[State 9004:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 9004, PosAdd]
type = PosAdd
trigger1 = (Time = 0)
trigger2 = 1
x = (rootdist X)
y = (rootdist Y)

[State 9004, NotHitBy]
type = NotHitBy
trigger1 = 1
value = S,NA
time = 1

[State 9004, StopSnd]
type = StopSnd
trigger1                = anim = 9010
trigger1                = animtime = 0
channel = 5

[State 9004:	DestroySelf]
type			= DestroySelf
trigger1                = anim = 9010
trigger1                = animtime = 0

;------------------------------------------------------------------------------
;-Big KameHameHa Beam
;(Used in ...)
[Statedef 9009]
type 			= A
movetype		= A
physics			= N
anim			= 9009
velset			= 0,0
ctrl			= 0
poweradd		= 0
juggle			= 5
facep2			= 0
hitdefpersist		= 0
movehitpersist		= 0
hitcountpersist		= 0
sprpriority		= 9

[State 9009, PalFX]
type = PalFX
trigger1 = 1
time = 1
mul = 256,256,276
invertall = 0
color = 256
ignorehitpause = 1

[State 9009, SprPriority]
type = SprPriority
trigger1 = 1
value = 9
ignorehitpause = 1

[State 9009, PosAdd]
type = PosAdd
trigger1 = 1
x = (rootdist X)+15
y = (rootdist Y)-52

[State 9009:	AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= NoShadow

[State 9009:	PlayerPush]
type			= PlayerPush
trigger1		= 1
value			= 1

[State 9009:	NotHitBy]
type			= NotHitBy
trigger1		= 1
value			= SCA

[State 9009, Damn it hurts]
type = HitDef
trigger1 = time >= 0
attr = S, HP
animtype  = Hard
Damage = 10, 5
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -30, -1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -30, -1
fall = 1
givepower = 25
getpower = 0
palfx.time		= 12
palfx.mul		= 520,520,520
palfx.add		= 0,0,0

[State 9009:	DestroySelf]
type			= DestroySelf
trigger1		= AnimTime = 0
ignorehitpause	= 1

;===========================================================================
;[End of file]--------------------------------------------------------------
;===========================================================================
