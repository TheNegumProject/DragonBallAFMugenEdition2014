;===========================================================================
;Helpers
;===========================================================================
;---------------------------------------------------------------------------
;Ki Ball
[StateDef 10050]
type = A
physics = N
movetype = A
anim = 10051
ctrl = 0
sprpriority = 3
poweradd=ifelse(prevstateno=10051,0,-150)

[State 10050, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
persistent = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999

[State 10050, Dust]
type = Explod
triggerall = Pos Y > -25 && (vel x > 0)
trigger1 = (time%4=0)
Anim = 15010
Pos = -15, -Floor(Pos Y)
Id = 15010
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.15, 0.15
ownpal = 1

[State 10050, Dust]
type = Explod
triggerall = Pos Y > -25 && (vel x < 0)
trigger1 = (time%4=0)
Anim = 15011
Pos = 15, -Floor(Pos Y)
Id = 15011
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.15, 0.15
ownpal = 1

[State 10050, AfterImage]
type = AfterImage
triggerall = prevstateno != 10051
trigger1 = !time
time = 400
length = 40
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 10050, VelSet]
type = VelSet
triggerall = prevstateno != 10051
trigger1 = !time
x = 1
y = 0

[State 10050, VelSet]
type = VelSet
trigger1 = pos y > -15 && vel y > 0
y = (vel y*0.75)

[State 10050, VelAdd]
type = VelAdd
trigger1 = (p2bodydist y-40) <= 0
y = -0.1

[State 10050, VelAdd]
type = VelAdd
triggerall = pos y < 0
trigger1 = (p2bodydist y-40) > 0
y = 0.1

[State 10050, VelAdd]
type = VelAdd
triggerall = vel x < 4
trigger1 = (p2bodydist x) >= 0
x = 0.1

[State 10050, VelAdd]
type = VelAdd
triggerall = vel x > -4
trigger1 = (p2bodydist x) < 0
x = -0.1

[State 10050, LifeVarSet]
type = VarSet
trigger1 = !time && prevstateno != 10051
v = 10
value = 400

[State 10050, LifeLoss]
type = VarAdd
trigger1 = time
v = 10
value = -1

[State 10050, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, SP, NP, SA, NA, AA
slot = 0
stateno = 10051

[State 10050, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, HA, HP
slot = 1
stateno = 10052

[State 10050, NotHit]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
time = 1

[State 10050, Explosion]
type = HitDef
trigger1 = !time 
attr = S, SP
animtype  = Hard
Damage = 70,15
priority = 1, miss
hitflag = MAFD
guardflag = MA
guard.dist = 15
pausetime = 1,12
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -5, -4
air.fall = 1

[State 10050, VarSetX1]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -12,-6

[State 10050, VarSetX2]
type = VarSet
trigger1 = !(Time % 2)
v = 6
value = floor(var(6)*ifelse(random>500,-1,1))

[State 10050, VarSetY1]
type = VarRandom
trigger1 = !(Time % 2)
v = 7
range = -12,-6

[State 10050, VarSetY2]
type = VarSet
trigger1 = !(Time % 2)
v = 7
value = floor(var(7)*ifelse(random>500,-1,1))

[State 10050, Sparkles]
type = Explod
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10050, VarSetA]
type = VarRandom
trigger1 = !(Time % 2)
v = 8
range = -5,5

[State 10050, VarSetB]
type = VarRandom
trigger1 = !(Time % 2)
v = 9
range = -5,5

[State 10050, Sparkles2]
type = Explod
trigger1 = !(Time % 2)
anim = 11559
id = 11550
postype = p1
pos = var(8), var(9)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10050, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 10050, Next]
type = Changestate
trigger1 = Movecontact
trigger2 = var(10) <= 0
value = 13002

[State 10050, DestroySelf]
type = DestroySelf
trigger1 = time = 400 || frontedgebodydist < -400 || BackEdgeBodydist < -400
;---------------------------------------------------------------------------
;Ki Ball Hit
[StateDef 10051]
type = A
physics = N
movetype = H
velset = -(vel x)*2
anim = 10052
sprpriority = 3

[State 10051, Bubble.Helper]
type = Helper
trigger1 = !time
name = "Bubble"
stateno = 10102
postype = p1
pos = 0,0
keyctrl = 0
ownpal = 1
id = 10102

[State 10051, Dust]
type = Explod
triggerall = Pos Y > -25 && (vel x > 0)
trigger1 = (time%4=0)
Anim = 15010
Pos = -15, -Floor(Pos Y)
Id = 15010
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.15, 0.15
ownpal = 1

[State 10051, Dust]
type = Explod
triggerall = Pos Y > -25 && (vel x < 0)
trigger1 = (time%4=0)
Anim = 15011
Pos = 15, -Floor(Pos Y)
Id = 15011
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.15, 0.15
ownpal = 1

[State 10051, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
persistent = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999

[State 10051, HitDef]
type = HitDef
trigger1 = !time 
attr = S, SP
affectteam = F
animtype  = Light
Damage = 35,7
hitflag = MAFD
guardflag = MA
pausetime = 1,12
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = 5, -4
air.fall = 1

[State 10051, LifeLoss]
type = VarAdd
trigger1 = !time
v = 10
value = -200

[State 10051, VelAdd]
type = VelAdd
triggerall = vel x < 4
trigger1 = (p2bodydist x) >= 0
x = 0.1

[State 10051, VelAdd]
type = VelAdd
triggerall = vel x > -4
trigger1 = (p2bodydist x) < 0
x = -0.1

[State 10051, VarSetX1]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -12,-6

[State 10051, VarSetX2]
type = VarSet
trigger1 = !(Time % 2)
v = 6
value = floor(var(6)*ifelse(random>500,-1,1))

[State 10051, VarSetY1]
type = VarRandom
trigger1 = !(Time % 2)
v = 7
range = -12,-6

[State 10051, VarSetY2]
type = VarSet
trigger1 = !(Time % 2)
v = 7
value = floor(var(7)*ifelse(random>500,-1,1))

[State 10051, Sparkles]
type = Explod
trigger1 = Time % 2
anim = 11557
id = 11550
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10051, VarSetA]
type = VarRandom
trigger1 = !(Time % 2)
v = 8
range = -5,5

[State 10051, VarSetB]
type = VarRandom
trigger1 = !(Time % 2)
v = 9
range = -5,5

[State 10051, Sparkles2]
type = Explod
trigger1 = !(Time % 2)
anim = 11559
id = 11550
postype = p1
pos = var(8), var(9)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10051, Back]
type = Changestate
trigger1 = time = 30
value = 10050

[State 10051, End]
type = Changestate
trigger1 = movecontact
value = 13002
;---------------------------------------------------------------------------
;Ki Ball Hit2
[StateDef 10052]
type = A
physics = N
movetype = H
velset = -12
anim = 10052
sprpriority = 3

[State 10052, Dust]
type = Explod
triggerall = Pos Y > -25 && (vel x > 0)
trigger1 = (time%4=0)
Anim = 15010
Pos = -15, -Floor(Pos Y)
Id = 15010
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.15, 0.15
ownpal = 1

[State 10052, Dust]
type = Explod
triggerall = Pos Y > -25 && (vel x < 0)
trigger1 = (time%4=0)
Anim = 15011
Pos = 15, -Floor(Pos Y)
Id = 15011
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.15, 0.15
ownpal = 1

[State 10052, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
persistent = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999

[State 10052, HitDef]
type = HitDef
trigger1 = !time 
attr = S, SP
affectteam = F
animtype  = Hard
Damage = 70,15
hitflag = MAFD
guardflag = MA
pausetime = 1,12
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = 5, -4
fall = 1
fall.recover = 0

[State 10052, VarSetX1]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -12,-6

[State 10052, VarSetX2]
type = VarSet
trigger1 = !(Time % 2)
v = 6
value = floor(var(6)*ifelse(random>500,-1,1))

[State 10052, VarSetY1]
type = VarRandom
trigger1 = !(Time % 2)
v = 7
range = -12,-6

[State 10052, VarSetY2]
type = VarSet
trigger1 = !(Time % 2)
v = 7
value = floor(var(7)*ifelse(random>500,-1,1))

[State 10052, Sparkles]
type = Explod
trigger1 = Time % 2
anim = 11557
id = 11550
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10052, VarSetA]
type = VarRandom
trigger1 = !(Time % 2)
v = 8
range = -5,5

[State 10052, VarSetB]
type = VarRandom
trigger1 = !(Time % 2)
v = 9
range = -5,5

[State 10052, Sparkles2]
type = Explod
trigger1 = !(Time % 2)
anim = 11559
id = 11550
postype = p1
pos = var(8), var(9)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10052, End]
type = Changestate
trigger1 = time = 20 || movecontact
value = 13002
;---------------------------------------------------------------------------
;Beams Ki Ball
[StateDef 10055]
type = A
physics = N
movetype = A
anim = 10055
ctrl = 0
sprpriority = 3
poweradd=0

[State 10055, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
persistent = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999

[State 10055, AfterImage]
type = AfterImage
triggerall = prevstateno != 10051
trigger1 = !time
time = 60
length = 40
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 2
framegap = 2
trans = Add

[State 10055, VelSet]
type = VelSet
trigger1 = !time
x = 2
y = 0

[State 10055, VelAdd]
type = VelAdd
trigger1 = time
x = 0.5

[State 10055, NotHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
pausemovetime = 999
supermovemovetime = 999
ignorehitpause = 1

[State 10055, Explosion]
type = HitDef
trigger1 = !time 
attr = S, SP
animtype  = Hard
Damage = 180,40
hitflag = MAFD
guardflag = MA
guard.dist = 15
pausetime = 1,12
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -12,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -12, -5
fall=1
fall.recover=0

[State 10055, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 10055, Next]
type = Changestate
trigger1 = Movecontact
value = 13101

[State 10055, DestroySelf]
type = DestroySelf
trigger1 = time = 60 || frontedgebodydist < -60 || BackEdgeBodydist < -60
;---------------------------------------------------------------------------
;Ki Bubble
[StateDef 10100]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 10100
ctrl = 0
sprpriority = -1

[State 10100, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,-45

[State 10100, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10100, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10100, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 10100, VarAdd-Scale]
type = VarAdd
trigger1 = 1
fv = 2
value = 0.055

[State 10100, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(2),fvar(2)

[State 10100, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 3
value = 0

[State 10100, VarAdd-PalFX]
type = VarAdd
trigger1 = time >= 10
v = 3
value = (time-10)*20

[State 10100, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -var(3),-var(3),-var(3)
persistent = 1
ignorehitpause = 1

[State 10100, Next]
type = DestroySelf
trigger1 = time = 20
;---------------------------------------------------------------------------
;Ki Bubble 2
[StateDef 10101]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 10100
ctrl = 0
sprpriority = -1

[State 10101, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 2,-50

[State 10101, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10101, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10101, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 10101, VarAdd-Scale]
type = VarAdd
trigger1 = 1
fv = 2
value = 0.075

[State 10101, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(2),fvar(2)

[State 10101, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 3
value = 0

[State 10101, VarAdd-PalFX]
type = VarAdd
trigger1 = time >= 10
v = 3
value = (time-10)*20

[State 10101, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -var(3),-var(3),-var(3)
persistent = 1
ignorehitpause = 1

[State 10101, Next]
type = DestroySelf
trigger1 = time = 20
;---------------------------------------------------------------------------
;Growing Bubble Ring 3
[StateDef 10102]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 10101
ctrl = 0
sprpriority = 3

[State 10102, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10102, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10102, VarSet]
type = VarSet
trigger1 = time = 0
v = 4
value = 0

[State 10102, VarSet]
type = VarAdd
trigger1 = 1
v = 4
value = 13

[State 10102, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -Var(4),-Var(4),-Var(4)
persistent = 1
ignorehitpause = 1

[State 10102, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 0

[State 10102, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = (time+3)*0.035, (time+3)*.035

[State 10102, VarSet]
type = VarRandom
trigger1 = time
v = 5
range = 0,359

[State 10102, FVarSet]
type = VarSet
trigger1 = time
fv = 6
value = var(5)*(3.142/180)

[State 10102, Sparkle]
type = Explod
trigger1 = time < 12
anim = ifelse(time%2, 11559,11550)
id = 11550
postype = p1
pos = 0, 0
vel = cos(fvar(6))*2.0, -sin(fvar(6))*2.0
accel = 0, 0.075
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10102, End]
type = DestroySelf
trigger1 = time = 17
;---------------------------------------------------------------------------
;Ki Bubble-Super 1 [1901]
[StateDef 10103]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 10100
ctrl = 0
sprpriority = 3

[State 10103, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = -49,-99

[State 10103, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10103, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10103, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 10103, VarAdd-Scale]
type = VarAdd
trigger1 = 1
fv = 2
value = 0.03

[State 10103, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(2),fvar(2)

[State 10103, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 3
value = 0

[State 10103, VarAdd-PalFX]
type = VarAdd
trigger1 = time >= 10
v = 3
value = (time-10)*20

[State 10103, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -var(3),-var(3),-var(3)
persistent = 1
ignorehitpause = 1

[State 10103, Next]
type = DestroySelf
trigger1 = time = 20
;---------------------------------------------------------------------------
;Ki Bubble-Super 2 [1901]
[StateDef 10104]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 10100
ctrl = 0
sprpriority = 1

[State 10104, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 35,-99

[State 10104, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10104, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10104, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 10104, VarAdd-Scale]
type = VarAdd
trigger1 = 1
fv = 2
value = 0.03

[State 10104, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(2),fvar(2)

[State 10104, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 3
value = 0

[State 10104, VarAdd-PalFX]
type = VarAdd
trigger1 = time >= 10
v = 3
value = (time-10)*20

[State 10104, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -var(3),-var(3),-var(3)
persistent = 1
ignorehitpause = 1

[State 10104, Next]
type = DestroySelf
trigger1 = time = 20
;---------------------------------------------------------------------------
;Ki Barrier
[StateDef 10105]
type = A
physics = N
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 10105, ChangeAnim]
type = ChangeAnim
trigger1 = var(2)=0
value = 10105

[State 10105, BindToParent]
type = BindToParent
trigger1 = 1
pos = 0, -49

[State 10105, NoHit]
type = NotHitBy
trigger1 = 1
value =  ,HP, NT, ST, HT
time = 1

[State 10105, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, SA, SP, HA
stateno = 10106

[State 10105, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
pausemovetime = 9999
supermovetime = 9999
ignorehitpause = 1

[State 10105, VarSet-PalFX]
type = VarSet
trigger1 = var(2)=0
v = 3
value = -256

[State 10105, VarAdd-PalFX]
type = VarAdd
trigger1 = var(2) = [1,12]
v = 3
value = 21
[State 10105, VarSet-PalFX]
type = VarSet
trigger1 = var(2) = 13
v = 3
value = 0
[State 10105, VarSub-PalFX]
type = VarAdd
trigger1 = var(2) = [72,84]
v = 3
value = -21

[State 10105, PalFX]
type = PalFX
trigger1 = 1
time=1
add = var(3),var(3),var(3)
persistent = 1
ignorehitpause = 1

[State 10105, electricity]
type = Explod
trigger1 = var(2) = 0
trigger2 = var(2) = 26
trigger3 = var(2) = 52
trigger4 = var(2) = 78
Anim = 16010+(random%4)
Pos = 0, 0
Id = 16010
sprpriority = 3
removeongethit = 0
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 0
scale = 0.4, 0.4

[State 10105, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = Hard
Damage = 25,5
hitflag = MAFP
guardflag = MA
pausetime = 1,12
sparkno = -1
sparkxy = 0,0
hitsound   = S1156,0
guardsound = S1156,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -9, -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -9, -5
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
id = 10105
nochainid = 10105
p1sprpriority = 3

[State 10105, DestroySelf]
type = RemoveExplod
trigger1 = parent, stateno != 1150
trigger2 = var(2) >= 84
id = 16010

[State 10105, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 1150
trigger2 = var(2) >= 85

[State 10105, VarAdd]
type = VarAdd
trigger1 = time
v = 2
value = 1
;---------------------------------------------------------------------------
;Ki Barrier Get Hit
[StateDef 10106]
type = A
physics = N
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 10106, PalFX]
type = PalFX
trigger1 = 1
time=1
add = var(3),var(3),var(3)
persistent = 1
ignorehitpause = 1

[State 10106, BindToParent]
type = BindToParent
trigger1 = 1
pos = 0, -49

[State 10106, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, SA, SP
stateno = 10106

[State 10106, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
pausemovetime = 9999
supermovetime = 9999
ignorehitpause = 1

[State 10105, VarAdd]
type = VarAdd
trigger1 = time
v = 2
value = 1

[State 10106, ChangeState]
type = ChangeState
trigger1 = time = 1
value = 10105

[State 10105, DestroySelf]
type = RemoveExplod
trigger1 = parent, movetype = H
id = 16010

[State 10105, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 1150
;---------------------------------------------------------------------------
;Ki Barrier 2
[StateDef 10107]
type = A
physics = N
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 10107, ChangeAnim]
type = ChangeAnim
trigger1 = var(2)=0
value = 10105

[State 10107, BindToParent]
type = BindToParent
trigger1 = 1
pos = 0, -49

[State 10107, NoHit]
type = NotHitBy
trigger1 = 1
value =  ,HP, NT, ST, HT, NA, SA, HA
time = 1

[State 10107, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NP, SP
stateno = 10108

[State 10107, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
pausemovetime = 9999
supermovetime = 9999
ignorehitpause = 1

[State 10107, VarSet-PalFX]
type = VarSet
trigger1 = var(2)=0
v = 3
value = -256

[State 10107, VarAdd-PalFX]
type = VarAdd
trigger1 = var(2) = [1,12]
v = 3
value = 21
[State 10107, VarSet-PalFX]
type = VarSet
trigger1 = var(2) = 13
v = 3
value = 0
[State 10107, VarSub-PalFX]
type = VarAdd
trigger1 = var(2) = [82,94]
v = 3
value = -21

[State 10107, PalFX]
type = PalFX
trigger1 = 1
time=1
add = var(3),var(3),var(3)
persistent = 1
ignorehitpause = 1

[State 10107, electricity]
type = Explod
trigger1 = var(2) = 0
trigger2 = var(2) = 26
trigger3 = var(2) = 52
trigger4 = var(2) = 78
Anim = 16010+(random%4)
Pos = 0, 0
Id = 16010
sprpriority = 3
removeongethit = 0
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 0
scale = 0.4, 0.4

[State 10107, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = Hard
Damage = 25,5
hitflag = P
guardflag = MA
pausetime = 1,12
sparkno = -1
sparkxy = 0,0
hitsound   = S1156,0
guardsound = S1156,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -9, -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -9, -5
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
id = 10105
nochainid = 10105
p1sprpriority = 3

[State 10107, DestroySelf]
type = RemoveExplod
trigger1 = parent, stateno != 2100 && parent, stateno != 2101 
trigger2 = var(2) >= 94
id = 16010

[State 10107, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 2100 && parent, stateno != 2101 
trigger2 = var(2) >= 95

[State 10107, VarAdd]
type = VarAdd
trigger1 = time
v = 2
value = 1
;---------------------------------------------------------------------------
;Ki Barrier Get Hit
[StateDef 10108]
type = A
physics = N
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 10108, PalFX]
type = PalFX
trigger1 = 1
time=1
add = var(3),var(3),var(3)
persistent = 1
ignorehitpause = 1

[State 10108, BindToParent]
type = BindToParent
trigger1 = 1
pos = 0, -49

[State 10108, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NP, SP
stateno = 10108

[State 10108, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
pausemovetime = 9999
supermovetime = 9999
ignorehitpause = 1

[State 10108, VarAdd]
type = VarAdd
trigger1 = time
v = 2
value = 1

[State 10108, ChangeState]
type = ChangeState
trigger1 = time = 1
value = 10107

[State 10108, DestroySelf]
type = RemoveExplod
trigger1 = parent, movetype = H
id = 16010

[State 10108, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 2100 && parent, stateno != 2101 
;---------------------------------------------------------------------------
;Ki Bubble
[StateDef 10110]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 10110
ctrl = 0
sprpriority = 3

[State 10110, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10110, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10110, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 10110, VarAdd-Scale]
type = VarAdd
trigger1 = 1
fv = 2
value = 0.025

[State 10110, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(2),fvar(2)

[State 10110, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 3
value = 0

[State 10110, VarAdd-PalFX]
type = VarAdd
trigger1 = time >= 10
v = 3
value = (time-10)*20

[State 10110, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -var(3),-var(3),-var(3)
persistent = 1
ignorehitpause = 1

[State 10110, Next]
type = DestroySelf
trigger1 = time = 20
;--------------------------------------------------------------------------------------
;Dash Lines-RunFwd [State 100 && 102]
[StateDef 10200]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10200, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 91

[State 10200, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10200, DashLine]
type = Explod
trigger1 = !(time%2)
Anim = 10200
Postype = p1
Pos = -45+floor(Var(10)*0.4), -var(10)
velocity = 1, 0
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.4,0.5

[State 10200, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10200, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10200, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != 100 && parent, stateno != 102)
;--------------------------------------------------------------------------------------
;Dash Lines-RunBack [States 105 && 107]
[StateDef 10201]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10201, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 92

[State 10201, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = -3,0

[State 10201, DashLine]
type = Explod
trigger1 = time%2
Anim = 10201
Postype = p1
Pos = 45-floor(Var(10)*0.5), -var(10)
velocity = -1, 0
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.4,0.5

[State 10201, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10201, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10201, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != 105 && parent, stateno != 107)
;--------------------------------------------------------------------------------------
;Dash Lines-RunUp [State 109]
[StateDef 10205]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10205, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 30

[State 10205, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10205, DashLine]
type = Explod
trigger1 = !(time%2)
Anim = 10205
Postype = p1
Pos = -15+Var(10), 5-var(10)
velocity = 0, -1
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.5,0.4

[State 10205, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10205, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10205, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != 109)
;--------------------------------------------------------------------------------------
;Dash Lines-SuperJump [State 41]
[StateDef 10206]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10206, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 30

[State 10206, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10206, DashLine]
type = Explod
trigger1 = time%2
Anim = 10205
Postype = p1
Pos = -15+Var(10), 5-var(10)
velocity = 0, -1
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.5,0.4

[State 10206, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10206, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10206, DestroySelf]
type = DestroySelf
trigger1 = time >= 12
;---------------------------------------------------------------------------
;Strong Physical Attack Energy Effect - Fwd
[StateDef 10500]
type = A
physics = N
velset = 0, 0
anim = 10500
sprpriority = 3

[State 10500, VarSet-ParentState]
type = VarSet
trigger1 = !time
v = 9
value = (parent, stateno)

[State 10500, BindToParent]
type = BindToParent
trigger1 = var(9) = 220
time = 1
pos = 61,-77

[State 10500, BindToParent]
type = BindToParent
trigger1 = var(9) = 420
time = 1
pos = 62,-59

[State 10500, NoShadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10500, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10500, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 10500, VarAdd-Scale]
type = VarAdd
trigger1 = time >= 3
fv = 2
value = 0.03

[State 10500, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.25+fvar(2),0.25-(fvar(2)/5)

[State 10500, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 2
value = 0

[State 10500, VarAdd-PalFX]
type = VarAdd
trigger1 = time >= 5
v = 2
value = -(time*5)

[State 10500, PalFX]
type = PalFX
trigger1 = 1
time=1
add = var(2),var(2),var(2)
persistent = 1
ignorehitpause = 1

[State 10500, End]
type = DestroySelf
trigger1 = time = 14 || (parent, stateno!=var(9)) || (parent, movetype = H)
;---------------------------------------------------------------------------
;Strong Physical Attack Energy Effect - State 250 - Kick
[StateDef 10501]
type = A
physics = N
velset = 0, 0
anim = 10500
sprpriority = 3

[State 10501, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 84,-91

[State 10501, NoShadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10501, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10501, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 10501, VarAdd-Scale]
type = VarAdd
trigger1 = time >= 3
fv = 2
value = 0.03

[State 10501, AngleSet]
type = AngleSet
trigger1 = !time
value = 24

[State 10501, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.36+fvar(2),0.36-(fvar(2)/5)

[State 10501, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 2
value = 0

[State 10501, VarAdd-PalFX]
type = VarAdd
trigger1 = time >= 5
v = 2
value = -(time*5)

[State 10501, PalFX]
type = PalFX
trigger1 = 1
time=1
add = var(2),var(2),var(2)
persistent = 1
ignorehitpause = 1

[State 10501, End]
type = DestroySelf
trigger1 = time = 14 || (parent, movetype = H) || !(parent, stateno = 250 || parent, stateno = [1350,1352])
;---------------------------------------------------------------------------
;Strong Physical Attack Energy Effect - State 260 - Launcher
[StateDef 10502]
type = A
physics = N
velset = 0, 0
anim = 10500
sprpriority = 3

[State 10502, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 24,-127

[State 10502, NoShadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10502, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10502, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 10502, VarAdd-Scale]
type = VarAdd
trigger1 = time >= 3
fv = 2
value = 0.03

[State 10502, AngleSet]
type = AngleSet
trigger1 = !time
value = 85

[State 10502, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.35+fvar(2),0.3-(fvar(2)/5)

[State 10502, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 2
value = 0

[State 10502, VarAdd-PalFX]
type = VarAdd
trigger1 = time >= 5
v = 2
value = -(time*5)

[State 10502, PalFX]
type = PalFX
trigger1 = 1
time=1
add = var(2),var(2),var(2)
persistent = 1
ignorehitpause = 1

[State 10502, End]
type = DestroySelf
trigger1 = time = 14 || (parent, movetype = H) || (parent, stateno != 260 && parent, stateno != 1310)
;---------------------------------------------------------------------------
;Strong Physical Attack Energy Effect - State 450 - Crouch Kick
[StateDef 10503]
type = A
physics = N
velset = 0, 0
anim = 10500
sprpriority = 3

[State 10503, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 58,1

[State 10503, NoShadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10503, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10503, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 10503, VarAdd-Scale]
type = VarAdd
trigger1 = time >= 3
fv = 2
value = 0.03

[State 10503, AngleSet]
type = AngleSet
trigger1 = !time
value = -25

[State 10503, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.36+fvar(2),0.36-(fvar(2)/5)

[State 10503, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 2
value = 0

[State 10503, VarAdd-PalFX]
type = VarAdd
trigger1 = time >= 5
v = 2
value = -(time*5)

[State 10503, PalFX]
type = PalFX
trigger1 = 1
time=1
add = var(2),var(2),var(2)
persistent = 1
ignorehitpause = 1

[State 10503, End]
type = DestroySelf
trigger1 = time = 14 || (parent, movetype = H) || (parent, stateno != 450)
;---------------------------------------------------------------------------
;Strong Physical Attack Energy Effect - State 620 - Jump Punch/Kick
[StateDef 10504]
type = A
physics = N
velset = 0, 0
anim = 10500
sprpriority = 3

[State 10500, VarSet-ParentState]
type = VarSet
trigger1 = !time
v = 9
value = (parent, stateno)

[State 10504, BindToParent]
type = BindToParent
trigger1 = var(9) = 620
time = 1
pos = 49,-68

[State 10504, BindToParent]
type = BindToParent
trigger1 = var(9) = 650
time = 1
pos = 53,-22

[State 10504, NoShadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10504, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10504, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 10504, VarAdd-Scale]
type = VarAdd
trigger1 = time >= 3
fv = 2
value = 0.03

[State 10504, AngleSet]
type = AngleSet
trigger1 = !time
value = -40

[State 10504, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.35+fvar(2),0.33-(fvar(2)/5)

[State 10504, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 2
value = 0

[State 10504, VarAdd-PalFX]
type = VarAdd
trigger1 = time >= 5
v = 2
value = -(time*5)

[State 10504, PalFX]
type = PalFX
trigger1 = 1
time=1
add = var(2),var(2),var(2)
persistent = 1
ignorehitpause = 1

[State 10504, End]
type = DestroySelf
trigger1 = time = 14 || (parent, movetype = H) || (parent, stateno != var(9))
;---------------------------------------------------------------------------
;Air Dash Upwards Effect: Used in States [109]
[StateDef 11609]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 11600
ctrl = 0
sprpriority = 2
poweradd = 0

[State 11609, Trans]
type = Trans
trigger1 = 1
trans = add

[State 11609, AngleSet]
type = AngleSet
trigger1 = !time
value = 90

[State 11609, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 11609, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Ki Blast : Used in State 1801
[StateDef 12100]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12105
ctrl = 0
sprpriority = 4

[State 12100, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.4,0.28

[State 12100, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12100, GreenAura]
type = Explod
trigger1 = time%3=2
Anim = 12505
Pos = -15,0
Id = 12505
sprpriority = 4
removeongethit = 0
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 1, 1

[State 15010, Dust]
type = Explod
triggerall = Pos Y > -80
trigger1 = (timemod = 3,0)
Anim = 15010
Pos = -35, -Floor(Pos Y)
Id = 15010
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.3, 0.3

[State 12100, AfterImage]
type = AfterImage
trigger1 = !time
time = 40
length = 15
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = -30,-30,-30
timegap = 1
framegap = 1
trans = Add

[State 12100, VelSet]
type = VelSet
trigger1 = !time
x = 6
y = 0

[State 12100, VelAdd]
type = VelAdd
trigger1 = time && vel x < 16
x = 0.75
y = 0.05

[State 12100, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12100, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow

[State 12100, Explosion]
type = HitDef
trigger1 = !time 
attr = S, HP
animtype  = Hard
Damage = 185,41
hitflag = MAFD
guardflag = MA
pausetime = 1,12
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -12, -6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -12, -5.8
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
p2stateno = 95000

[State 12100, ElecA]
type = Explod
trigger1 = !time
Anim = 10021
Pos = -45,-25
Id = 10021
velocity = 3,0
sprpriority = 5
removeongethit = 1
removetime = 14
bindtime = 8
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.65, 0.65

[State 12100, ElecB]
type = Explod
trigger1 = time = 14
Anim = 10021
Pos = -35,22
Id = 10021
velocity = 3,0
sprpriority = 5
removeongethit = 1
removetime = 14
bindtime = 8
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.65, 0.65

[State 12100, ElecC]
type = Explod
trigger1 = time = 1
Anim = 10021
Pos = -50,5
Id = 10021
velocity = 4,0
sprpriority = 5
removeongethit = 1
removetime = 14
bindtime = 8
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.65, 0.65

[State 12100, ElecD]
type = Explod
trigger1 = time = 8
Anim = 10020
Pos = -20,21
Id = 10020
velocity = 4,0
sprpriority = 5
removeongethit = 1
removetime = 14
bindtime = 8
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.65, 0.65

[State 12100, Smoke.Helper]
type = null;Helper
trigger1 = movecontact
name = "Smoke"
stateno = 15300
postype = p2
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 15300

[State 12100, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 12100, Next]
type = Changestate
trigger1 = Movecontact
value = 13101

[State 12100, DestroySelf]
type = DestroySelf
trigger1 = time = 38
;---------------------------------------------------------------------------
;Ki Blast Explosion: Used in State 1801
[StateDef 12101]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13100
ctrl = 0
sprpriority = 4

[State 12101, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;Ki Blast 2 :2101
[StateDef 12105]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12106
ctrl = 0
sprpriority = 4

[State 12100, GreenAura]
type = Explod
trigger1 = time%3=2
Anim = 12505
Pos = -15,0
Id = 12505
sprpriority = 4
removeongethit = 0
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 1.5, 1.5

[State 12105, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.6,0.5

[State 12105, Trans]
type = Trans
trigger1 = 1
trans = add

[State 15010, Dust]
type = Explod
triggerall = Pos Y > -80
trigger1 = (timemod = 3,0)
Anim = 15010
Pos = -35, -Floor(Pos Y)
Id = 15010
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.3, 0.3

[State 12105, AfterImage]
type = AfterImage
trigger1 = !time
time = 40
length = 15
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = -30,-30,-30
timegap = 1
framegap = 1
trans = Add

[State 12105, VelSet]
type = VelSet
trigger1 = !time
x = 9
y = 3.5

[State 12105, VelAdd]
type = VelAdd
trigger1 = time
x = 0.5
y = 0

[State 12105, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12105, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow

[State 12105, Explosion]
type = HitDef
trigger1 = !time 
attr = S, HP
animtype  = Back
Damage = 310,47
numhits = 2
hitflag = MAF
guardflag = MA
pausetime = 1,32
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -14, -6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -13, -5.8
fall = 1
fall.recover = 1

[State 12105, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 12105, Next]
type = Changestate
trigger1 = Movecontact
value = 13103

[State 12105, DestroySelf]
type = DestroySelf
trigger1 = time = 38
;---------------------------------------------------------------------------
;Ki Blast 2 :2101
[StateDef 12106]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12106
ctrl = 0
sprpriority = 4

[State 12106, AngleSet]
type = AngleSet
trigger1 = !time
value = 12

[State 12106, AngleAdd]
type = AngleSet
trigger1 = time
value = -1

[State 12106, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.50,0.4

[State 12106, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12106, AfterImage]
type = AfterImage
trigger1 = !time
time = 40
length = 15
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = -30,-30,-30
timegap = 1
framegap = 1
trans = Add

[State 12105, VelSet]
type = VelSet
trigger1 = !time
x = 5
y = -3.5

[State 12105, VelAdd]
type = VelAdd
trigger1 = time
x = 0.5
y = 0.35

[State 12105, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12105, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow

[State 12105, Explosion]
type = HitDef
trigger1 = !time 
attr = S, HP
animtype  = Hard
Damage = 140,30
hitflag = MAF
guardflag = MA
pausetime = 1,12
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -13, -6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -13, -5.8
fall = 1
fall.recover = 1

[State 12105, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 12105, Next]
type = Changestate
trigger1 = Movecontact
value = 13100

[State 12105, DestroySelf]
type = DestroySelf
trigger1 = time = 38
;---------------------------------------------------------------------------
;Ki Beam : Used in State 1901
[StateDef 12400]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12400
ctrl = 0
sprpriority = 3

[State 12400, BindToParent]
type = BindToParent
trigger1 = 1
pos = 24, -82

[State 12400, Sound]
type = PlaySnd
trigger1 = time = 22
value = 1801,1
volume = 200

[State 1801, Shake]
type = EnvShake
trigger1 = time = 22
Time = 28

[State 12400, BurstOfPower.Helper]
type = Helper
trigger1 = time = 22
name = "Blast"
stateno = 10055
postype = p1
pos = 40, 0
keyctrl = 0
ownpal = 1
id = 10055
size.xscale = 0.4
size.yscale = 0.4

[State 12400, AllPalFX]
type = AllPalFX
trigger1 = time < 28
add = ifelse(time<13,26-(time*2), 0),ifelse(time<13,26-(time*2), 0),ifelse(time<13,26-(time*2), 0)
color = (time*9)
time = 1

[State 12400, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
pausemovetime = 999
supermovemovetime = 999
ignorehitpause = 1

[State 12400, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
pausemovetime = 999
supermovemovetime = 999
ignorehitpause = 1

[State 12400, VarSet]
type = VarSet
triggerall = numhelper(10055)!=0 && var(5)=0
trigger1 = helper(10055),stateno=13101 || helper(10055), movecontact
v=5
value = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999

[State 12400, HitDef]
type = HitDef
trigger1 = time % 3=0
attr = S, HP
animtype  = Hard
Damage = 2,1
guardflag = MA
pausetime = 1,1
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 20
ground.hittime  = 18
ground.velocity = -5,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -5,0
kill = 1
fall = 0
fall.recover = 0

[State 12400, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 12400, ChangeState]
type = ChangeState
triggerall = numhelper(10055)!=0
trigger1 = helper(10055),stateno=13101 || var(5)=1
value = 12405

[State 12400, ChangeState2]
type = ChangeState
trigger1 = time = 57 || parent, stateno != 1801
value = 12405
;---------------------------------------------------------------------------
;Energy Wave Sparkles
[StateDef 12401]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 3

[State 12401, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12401, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12401, Pos-VarSetX]
type = VarRandom
trigger1 = 1
v = 21
range = 1, 100

[State 12401, Pos-VarSetY]
type = VarRandom
trigger1 = 1
v = 22
range = -27, 27

[State 12401, Pos-VarSetX]
type = VarRandom
trigger1 = 1
v = 23
range = 1, 100

[State 12401, Pos-VarSetY]
type = VarRandom
trigger1 = 1
v = 24
range = -27, 27

[State 12401, Sparkle-1]
type = Explod
trigger1 = timemod = 2,0
anim = 11550
id = 11550
postype = p1
pos = var(21)*2+10, floor(var(22)/((time+8)*0.15))
vel = 4, 0
accel = -0.15,0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12401, Sparkle-2]
type = Explod
trigger1 = timemod = 2,0
anim = 11555
id = 11555
postype = p1
pos = var(23)*2+10, floor(var(24)/((time+8)*0.15))
vel = 4, 0
accel = -0.15,0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12401, DestroySelf]
type = DestroySelf
trigger1 = time = 18
;---------------------------------------------------------------------------
;Energy Wave Die Out
[StateDef 12405]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12401
ctrl = 0
sprpriority = 3

[State 12405, NotHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
pausemovetime = 999
supermovemovetime = 999
ignorehitpause = 1

[State 12405, Sparkles.Helper]
type = Helper
trigger1 = !time
name = "Sparkley"
stateno = 12401
postype = p1
pos = 20, 0
keyctrl = 0
ownpal = 1
id = 12401

[State 12405, BindToParent]
type = BindToParent
trigger1 = 1
pos = 24, -82

[State 12405, Scale]
type = AngleDraw
trigger1 = time
scale = 1+(time*0.05),1

[State 14550, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1
pausemovetime=999
supermovetime=999

[State 12400, HitDef]
type = HitDef
trigger1 = !time
attr = S, HP
animtype  = Hard
Damage = 8,2
guardflag = MA
pausetime = 1,15
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 20
ground.hittime  = 18
ground.velocity = -9,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -9,-5
kill = 1
fall = 1
fall.recover = 1

[State 12401, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12405, DestroySelf]
type = DestroySelf
trigger1 = !animtime
;---------------------------------------------------------------------------
;Ki Barrier
[StateDef 12500]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12500
ctrl = 0
sprpriority = 3

[State 12800, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 999
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12500, BindToParent]
type = BindToParent
trigger1 = 1
pos = 34, -81

[State 12500, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12500, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
pausemovetime = 9999
supermovetime = 9999
ignorehitpause = 1

[State 12500, Hitdef]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = Hard
Damage = 25,5
hitflag = MAFP
guardflag = MA
pausetime = 1,12
sparkno = S11020
sparkxy = -15,-20
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -9, -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -9, -5
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
id = 12500
nochainid = 12500
p1sprpriority = 3

[State 12500, ChangeState]
type = ChangeState
triggerall = time >= 36 && parent, movetype != H
trigger1 = parent, stateno != 1150
value = 12501

[State 12500, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 1150
;----------------------------------------------------------------------------
;Ki Barrier End
[StateDef 12501]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12501
ctrl = 0
sprpriority = 3

[State 12501, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
pausemovetime = 9999
supermovetime = 9999
ignorehitpause = 1

[State 12500, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Charge-Push Forward
[StateDef 12650]
type = A
physics = N
movetype = I
velset = 9, 0
anim = 12650
ctrl = 0

[State 12650, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.20

[State 12650, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12650, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12650, End]
type = DestroySelf
trigger1 = time = 12
;---------------------------------------------------------------------------
;Charge-Push Back
[StateDef 12651]
type = A
physics = N
movetype = I
velset = -9, 0
anim = 12650
ctrl = 0

[State 12651, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.20

[State 12651, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12651, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12651, End]
type = DestroySelf
trigger1 = time = 12

;---------------------------------------------------------------------------
;Charge-Push Still
[StateDef 12652]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 12650
ctrl = 0

[State 12652, BindToParent]
type = BindToParent
trigger1 = 1
time = 1

[State 12652, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12652, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12652, End]
type = DestroySelf
trigger1 = time = 7
;---------------------------------------------------------------------------
;Charge- Kick Push Forward
[StateDef 12655]
type = A
physics = N
movetype = I
velset = 6+(parent, var(27)*0.04), 0
anim = 12650
ctrl = 0

[State 12655, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.15-(parent, var(27)*0.002)

[State 12655, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12655, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12655, End]
type = DestroySelf
trigger1 = time = 16
;---------------------------------------------------------------------------
;Charge-Push Forward
[StateDef 12656]
type = A
physics = N
movetype = I
velset = 12, 0
anim = 12650
ctrl = 0

[State 12650, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.20

[State 12650, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12650, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12650, End]
type = DestroySelf
trigger1 = time = 24
;---------------------------------------------------------------------------
;Charge-Push Back
[StateDef 12657]
type = A
physics = N
movetype = I
velset = -12, 0
anim = 12650
ctrl = 0

[State 12651, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.20

[State 12651, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12651, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12651, End]
type = DestroySelf
trigger1 = time = 24
;---------------------------------------------------------------------------
;Finger Laser Fwd
[StateDef 12710]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12710
ctrl = 0
sprpriority = 3
poweradd = -100

[State 12170, VarSet]
type = VarSet
trigger1 = !time
v=27
value = parent,var(27)

[State 12710, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12710, VarSet]
type = VarRandom
trigger1 = !time
v = 5
range = -50,50

[State 12710, VelSet]
type = VelSet
trigger1 = !time
x = 15
y = ifelse(var(27)<50,0,0+(var(5)*0.01))

[State 12710, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12710, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12710, VarSet]
type = VarRandom
trigger1 = Time
v = 6
range = -10,10

[State 12710, Sparkle-1]
type = Explod
trigger1 = Time && var(27)<50
trigger2 = Time%2 && var(27)=[50,74]
trigger3 = Time%3=0 && var(27)>=75
anim = 11557
id = 11550
postype = p1
pos = var(6), floor(var(6)*0.2)
vel = (vel x)*0.033, 0
accel = (vel x)*0.003, abs(var(6)*0.025)
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12710, HitDef]
type = HitDef
trigger1 = time = 0 
attr = S, SP
animtype  = Hard
Damage = 32,8
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 0,10
guard.pausetime = 0,5
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = S1302,0
guardsound = S1302,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -7      
air.velocity = -5.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12710, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12710, VarSet]
type = VarSet
trigger1 = movecontact && numtarget >0
v = 17
value = target, ID
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12710, VarSet]
type = VarRandom
trigger1 = time
v = 7
range = 0,3

[State 12710, HitSpark]
type = Explod
trigger1 = movehit = 1 && PlayerIDExist(var(17))
anim = 12715+var(7)
id = 12715
postype = p1
pos = floor(abs((playerID(var(17)), pos x)-(pos x))),0
vel = 0, 0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 4

[State 12710, DestroySelf]
type = DestroySelf
trigger1 = time = 25 || frontedgebodydist < -50
;---------------------------------------------------------------------------
;Finger Laser Up
[StateDef 12711]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12710
ctrl = 0
sprpriority = 3
poweradd = -100

[State 12171, VarSet]
type = VarSet
trigger1 = !time
v=27
value = parent,var(27)

[State 12711, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12711, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 12711, AngleSet]
type = AngleSet
trigger1 = !time
value = 24

[State 12711, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12711, VarSet]
type = VarRandom
trigger1 = !time
v = 5
range = -50,50

[State 12711, VelSet]
type = VelSet
trigger1 = !time
x = 12.8
y = -4.1+ifelse(var(27)<50,0,0+(var(5)*0.01))

[State 12711, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12711, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12711, VarSet]
type = VarRandom
trigger1 = Time
v = 6
range = -10,5

[State 12711, Sparkle-1]
type = Explod
trigger1 = Time && var(27)<50
trigger2 = Time%2 && var(27)=[50,74]
trigger3 = Time%3=0 && var(27)>=75
anim = 11557
id = 11550
postype = p1
pos = var(6), -floor(var(6)*0.5)
vel = (vel x)*0.033, 0
accel = (vel x)*0.003, abs(var(6)*0.025)
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12711, HitDef]
type = HitDef
trigger1 = time = 0 
attr = S, SP
animtype  = Hard
Damage = 32,8
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 0,10
guard.pausetime = 0,5
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = S1302,0
guardsound = S1302,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -7      
air.velocity = -5.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12711, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12710, VarSet]
type = VarSet
trigger1 = movecontact && numtarget >0
v = 17
value = target, ID
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12711, VarSet]
type = VarRandom
trigger1 = time
v = 7
range = 0,3

[State 12711, HitSpark]
type = Explod
trigger1 = movehit = 1 && PlayerIDExist(var(17))
anim = 12715+var(7)
id = 12715
postype = p1
pos = floor(abs((playerID(var(17)), pos x)-(pos x))),0
vel = 0, 0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 4

[State 12711, DestroySelf]
type = DestroySelf
trigger1 = time = 25 || frontedgebodydist < -50
;---------------------------------------------------------------------------
;Finger Laser Down
[StateDef 12712]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12710
ctrl = 0
sprpriority = 3
poweradd = -100

[State 12171, VarSet]
type = VarSet
trigger1 = !time
v=27
value = parent,var(27)

[State 12712, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12712, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 12712, AngleSet]
type = AngleSet
trigger1 = !time
value = -18

[State 12712, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12712, VarSet]
type = VarRandom
trigger1 = !time
v = 5
range = -50,50

[State 12712, VelSet]
type = VelSet
trigger1 = !time
x = 13.3
y = 3.3+ifelse(var(27)<50,0,0+(var(5)*0.01))

[State 12712, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12712, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12712, VarSet]
type = VarRandom
trigger1 = Time
v = 6
range = -10,5

[State 12712, Sparkle-1]
type = Explod
trigger1 = Time && var(27)<50
trigger2 = Time%2 && var(27)=[50,74]
trigger3 = Time%3=0 && var(27)>=75
anim = 11557
id = 11550
postype = p1
pos = var(6), floor(var(6)*0.5)
vel = (vel x)*0.033, 0
accel = (vel x)*0.003, abs(var(6)*0.025)
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12712, HitDef]
type = HitDef
trigger1 = time = 0 
attr = S, SP
animtype  = Hard
Damage = 32,8
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 0,10
guard.pausetime = 0,5
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = S1302,0
guardsound = S1302,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -7      
air.velocity = -5.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12712, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12710, VarSet]
type = VarSet
trigger1 = movecontact && numtarget >0
v = 17
value = target, ID
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12712, VarSet]
type = VarRandom
trigger1 = time
v = 7
range = 0,3

[State 12712, HitSpark]
type = Explod
trigger1 = movehit = 1 && PlayerIDExist(var(17))
anim = 12715+var(7)
id = 12715
postype = p1
pos = floor(abs((playerID(var(17)), pos x)-(pos x))),0
vel = 0, 0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 4

[State 12712, DestroySelf]
type = DestroySelf
trigger1 = time = 25 || frontedgebodydist < -50
;---------------------------------------------------------------------------
;Recoome Meteor Ground Damage
[StateDef 12800]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12800
ctrl = 0
sprpriority = 3

[State 12800, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12800, SoundPoom]
type = PlaySnd
trigger1 = !time
value = 1150,0
volume = 255

[State 12800, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12800, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 12800, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.05

[State 12800, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.05, 0.05

[State 12800, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.25+fvar(1),0.25+fvar(1)

[State 12800, Shake]
type = EnvShake
trigger1 = (!time)
Time = 17
freq = 90
ampl = -3
phase = 0

[State 12800, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12800, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12800, Disperse Effect]
type = Helper
trigger1 = time = 12
name = "DisperseEffect"
stateno = 14500
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 12800, Explosion]
type = HitDef
trigger1 = !time
attr = S, ST
animtype  = Hard
Damage = 10,10
hitflag = MAFD
guardflag = MA
pausetime = 1,6
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -7, 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -7, 0
fall = 1
fall.recover = 0

[State 12800, Pos-VarSetX]
type = VarRandom
trigger1 = 1
v = 4
range = -12, 12

[State 12800, Pos-VarSetY]
type = VarRandom
trigger1 = 1
v = 5
range = -15, 20

[State 12800, Rock_Helpers]
type = Helper
triggerall = !(time%2)
trigger1 = time = [0,8]
name = "Rocks"
stateno = 15203
id = 15203
postype = p1
pos = var(4),40
ownpal = 1
ignorehitpause = 1

[State 12800, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Recoome Falling Star Ground Damage
[StateDef 12801]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12800
ctrl = 0
sprpriority = 3

[State 12801, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12801, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12801, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 12801, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.05

[State 12801, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 1
ownpal = 1
scale = 0.05, 0.05

[State 12801, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.25+fvar(1),0.25+fvar(1)

[State 12801, Shake]
type = EnvShake
trigger1 = (!time)
Time = 17
freq = 90
ampl = -3
phase = 0

[State 12801, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12801, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12801, Disperse Effect]
type = Helper
trigger1 = time = 12
name = "DisperseEffect"
stateno = 14500
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 12801, AllPalFX]
type = AllPalFX
trigger1 = time < 13
add = 26-(time*2),26-(time*2),26-(time*2)
color = 70+(time*10)
time = 1

[State 12801, SmallExplosions]
type = Helper
trigger1 = time = 0
trigger2 = time = 4
trigger3 = time = 8
trigger4 = time = 12
trigger5 = time = 16
trigger6 = time = 20
name = "SmallExplode"
stateno = 13010
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 13010
bindtime = 0

[State 12801, Explosion]
type = HitDef
trigger1 = !time
attr = S, ST
animtype  = Hard
Damage = 50,50
hitflag = MAFD
guardflag = MA
pausetime = 1,15
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0, -10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = 0, 0
fall = 1
fall.recover = 0

[State 12801, PlaySND]
type = PlaySnd
trigger1 = !time
value = 185,0
volume = 255

[State 12801, Pos-VarSetX]
type = VarRandom
trigger1 = 1
v = 4
range = -15, 15

[State 12801, Pos-VarSetY]
type = VarRandom
trigger1 = 1
v = 5
range = -20, 20

[State 12801, Rock_Helpers]
type = Helper
triggerall = !(time%2)
trigger1 = time = [0,10]
name = "Rocks"
stateno = 15203
id = 15203
postype = p1
pos = var(4),50
ownpal = 1
ignorehitpause = 1

[State 12801, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Small Explosion (From Basic FireBall)
[StateDef 13000]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13000, Sound]
type = PlaySnd
trigger1 = time = 0
value = 1100,0

[State 13000, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13000, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13000, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.01

[State 13000, SmallExplosion]
type = Explod
trigger1 = (!time)
Anim = 13000
Pos = 0,0
Id = 13000
velocity = 0,0
sprpriority = 5
removeongethit = 0
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.5, 0.5

[State 13000, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 13000, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+fvar(1),0.1+fvar(1)

[State 13000, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13000, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14501
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13000, DestroySelf]
type = DestroySelf
trigger1 = time = 13
;---------------------------------------------------------------------------
;Small Explosion (From Ki Barrage)
[StateDef 13001]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13001, Sound]
type = PlaySnd
trigger1 = time = 0
value = 1100,0

[State 13001, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13001, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13001, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.01

[State 13001, SmallExplosion]
type = Explod
trigger1 = (!time)
Anim = 13000
Pos = 0,0
Id = 13000
velocity = 0,0
sprpriority = 5
removeongethit = 0
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.5, 0.5

[State 13001, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 13001, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+fvar(1),0.1+fvar(1)

[State 13001, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13001, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13001, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14503
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13001, DestroySelf]
type = DestroySelf
trigger1 = time = 13
;---------------------------------------------------------------------------
;Small Explosion (From Homing Ki Ball)
[StateDef 13002]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13002, Sound]
type = PlaySnd
trigger1 = time = 0
value = 1100,1

[State 13002, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13002, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13002, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.02

[State 13002, SmallExplosion]
type = Explod
trigger1 = (!time)
Anim = 13000
Pos = 0,0
Id = 13000
velocity = 0,0
sprpriority = 5
removeongethit = 0
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 1, 1

[State 13002, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 13002, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+fvar(1),0.1+fvar(1)

[State 13002, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13002, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13002, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14501
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13002, DestroySelf]
type = DestroySelf
trigger1 = time = 13
;---------------------------------------------------------------------------
;Small Explosion (From Big Exposion)
[StateDef 13010]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13000
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13010, VarSet]
type = VarRandom
trigger1 = !time
v = 17
range = -7, 7

[State 13010, VarSet]
type = VarRandom
trigger1 = !time
v = 18
range = -8, 4

[State 13010, VelSet]
type = VelSet
trigger1 = !time
x = Var(17)
y = Var(18)

[State 13010, VelAdd]
type = VelAdd
trigger1 = 1
x = (-Var(17)*.01)
y = .44;ifelse(var(18)=0, 0.2, abs(Var(18)*.05))

[State 13010, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13010, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13010, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 20
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add
;--------------------------
[State 13010, Vel-VarSet]
type = VarSet
trigger1 = !time
fv = 19
value = var(17)

[State 13010, Vel-VarSet]
type = VarSet
trigger1 = !time
fv = 20
value = var(18)

[State 13010, VelAdd]
type = VarAdd
trigger1 = 1
fv = 19 
value = (-FVar(19)*.01)

[State 13010, VelAdd]
type = VarAdd
trigger1 = 1
fv = 20
value = ifelse(fvar(20)=0, 0.2, abs(fVar(20)*.05))

[State 13010, Pos-VarSet]
type = VarRandom
trigger1 = 1
v = 21
range = -13, 13

[State 13010, Pos-VarSet]
type = VarRandom
trigger1 = 1
v = 22
range = -13, 13

[State 13010, Pos-VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = -13, 13

[State 13010, Pos-VarSet]
type = VarRandom
trigger1 = 1
v = 24
range = -13, 13

[State 13010, Sparkle-1]
type = Explod
triggerall = time = [1,17]
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = var(21), var(22)
vel = fvar(19)*.5, fvar(20)*.25
accel = -fvar(19)*.01, ifelse(fvar(20)=0, 0.1, abs(fvar(20))*.025)
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 13010, Sparkle-2]
type = Explod
triggerall = time = [2,18]
trigger1 = Time % 2
anim = 11555
id = 11555
postype = p1
pos = var(23), var(24)
vel = fvar(19)*.5, fvar(20)*.25
accel = -fvar(19)*.01, ifelse(fvar(20)=0, 0.1, abs(fvar(20))*.025)
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3
;-----------------------
[State 13010, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Big Explosion (From Big FireBall)
[StateDef 13100]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13100
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13100, SoundPoom]
type = PlaySnd
trigger1 = !time
value = 1150,0
volume = 255

[State 13100, Sound]
type = PlaySnd
trigger1 = !time
value = 1100,1

[State 13100, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13100, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13100, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.05

[State 13100, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.05, 0.05

[State 13100, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.25+fvar(1),0.25+fvar(1)

[State 13100, Shake]
type = EnvShake
trigger1 = (!time)
Time = 17
freq = 90
ampl = -3
phase = 0

[State 13100, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13100, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13100, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14500
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13100, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Big Explosion (From Massive FireBall)
[StateDef 13101]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13100
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13101, AllPalFX]
type = AllPalFX
trigger1 = time < 13
add = 26-(time*2),26-(time*2),26-(time*2)
color = 70+(time*10)
time = 1

[State 13101, SoundPoom]
type = PlaySnd
trigger1 = !time
value = 1150,0
volume = 255

[State 13101, SoundBigBoom]
type = PlaySnd
trigger1 = !time
value = 1100,2

[State 13101, SoundMediumBoom]
type = PlaySnd
trigger1 = time = 7
trigger2 = time = 18
value = 1100,0
volume = 100

[State 13101, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13101, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13101, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.09

[State 13101, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.1, 0.1

[State 13101, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.25+fvar(1),0.25+fvar(1)

[State 13101, Shake]
type = EnvShake
trigger1 = (!time)
Time = 28
freq = 90
ampl = ifelse((parent, stateno = 5150),-8,-5)
phase = 0

[State 13101, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13101, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13101, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14500
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13100, SmallExplosions]
type = Helper
trigger1 = time = 0
trigger2 = time = 4
trigger3 = time = 8
trigger4 = time = 12
trigger5 = time = 16
trigger6 = time = 20
name = "SmallExplode"
stateno = 13010
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 13010
bindtime = 0

[State 13101, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Big Electric Spark Explosion
[StateDef 13102]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13101, AllPalFX]
type = AllPalFX
trigger1 = time < 10
add = 20-(time*2),20-(time*2),20-(time*2)
color = 70+(time*10)
time = 1

[State 13101, SoundPoom]
type = PlaySnd
trigger1 = !time
value = 1150,0
volume = 255

[State 13101, SoundBigBoom]
type = PlaySnd
trigger1 = !time
value = 1100,2

[State 13101, SoundMediumBoom]
type = PlaySnd
trigger1 = time = 7
trigger2 = time = 18
value = 1100,0
volume = 100

[State 13101, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13101, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13101, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.09

[State 13101, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.1, 0.1

[State 13101, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.25+fvar(1),0.25+fvar(1)

[State 13101, Shake]
type = EnvShake
trigger1 = (!time)
Time = 28
freq = 90
ampl = -5
phase = 0

[State 13102, Electricity]
type = Explod
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
Anim = 16010+(random%4)
Pos = 0, 0
Id = 16010
sprpriority = 3
removeongethit = 0
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 0
scale = 0.4, 0.4

[State 14500, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 14500, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,2

[State 14500, Sparkle-1]
type = Explod
trigger1 = time < 30
anim = 11550
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.75, var(15)*0.75
accel = -Var(14)*0.05, 0.44
scale = 0.25, 0.25
sprpriority = 3

[State 14500, RandomVariable-A]
type = VarRandom
trigger1 = 1
v = 16
range = -8,8

[State 14500, RandomVariable-B]
type = VarRandom
trigger1 = 1
v = 17
range = -8,2

[State 14500, Sparkle-2]
type = Explod
trigger1 = time < 30
anim = 11550
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(16)*0.75, var(17)*0.75
accel = -Var(16)*0.05, 0.44
scale = 0.25, 0.25
sprpriority = 3

[State 13101, DestroySelf]
type = DestroySelf
trigger1 = time = 30
;---------------------------------------------------------------------------
;Big Explosion (From Double Ki Blast Fireball)
[StateDef 13103]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13103
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13103, Slow-Mo]
type = Pause
trigger1 = time%2
time=1
persistant=1

[State 13103, AllPalFX]
type = AllPalFX
trigger1 = time < 36
add = 36-(time),36-(time),36-(time)
color = 75+floor(time*5)
time = 1
pausemovetime=999
supermovetime=999

[State 13103, SoundPoom]
type = PlaySnd
trigger1 = !time
value = 2103,0
volume = 255

[State 13103, SoundBigBoom]
type = PlaySnd
trigger1 = !time
value = 1100,2

[State 13103, SoundMediumBoom]
type = PlaySnd
trigger1 = time = 7
trigger2 = time = 18
value = 1100,0
volume = 100

[State 13103, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13103, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13103, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.09

[State 13103, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
;supermovetime  = 999
;pausemovetime  = 999
persistent = 0
ownpal = 1
scale = 0.1, 0.1

[State 13103, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
;supermovetime = 9999
;pausemovetime = 9999
scale = 0.25+fvar(1),0.25+fvar(1)

[State 13103, Shake]
type = EnvShake
trigger1 = (!time)
Time = 44
freq = 90
ampl = -8
phase = 0

[State 13103, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13103, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13103, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14500
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13103, SmallExplosions]
type = Helper
trigger1 = time = 0
trigger2 = time = 4
trigger3 = time = 8
trigger4 = time = 12
trigger5 = time = 16
trigger6 = time = 20
name = "SmallExplode"
stateno = 13010
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 13010
bindtime = 0

[State 13103, DestroySelf]
type = DestroySelf
trigger1 = time = 48
;---------------------------------------------------------------------------
;Big Explosion (From Massive FireBall)
[StateDef 13104]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13100
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13104, Dust]
type = Explod
trigger1 = (!time)
Anim = 15170
Pos = 0,-floor(pos y)
Id = 15170
sprpriority = 3
removeongethit = 0
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
ownpal = 1
scale = 0.5, 0.5

[State 13104, AllPalFX]
type = AllPalFX
trigger1 = time < 13
add = 26-(time*2),26-(time*2),26-(time*2)
color = 70+(time*10)
time = 1

[State 13104, SoundPoom]
type = PlaySnd
trigger1 = !time
value = 5101,0
volume = 255

[State 13104, SoundBigBoom]
type = PlaySnd
trigger1 = !time
value = 1100,2

[State 13104, SoundBigBoom2]
type = PlaySnd
trigger1 = !time
value = 2103,0
volume = 50

[State 13104, SoundMediumBoom]
type = PlaySnd
trigger1 = time = 7
trigger2 = time = 18
value = 1100,0
volume = 100

[State 13104, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13104, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13104, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.1

[State 13104, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.1, 0.1

[State 13104, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.25+fvar(1),0.25+fvar(1)

[State 13104, Shake]
type = EnvShake
trigger1 = (!time)
Time = 32
freq = 90
ampl = -8
phase = 0

[State 13104, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13104, AfterImage]
type = AfterImage
trigger1 = !time
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13104, Disperse Effect]
type = Helper
trigger1 = !time
name = "DisperseEffect"
stateno = 14500
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13104, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Light Flash
[StateDef 13110]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 5
poweradd = 0

[State 13110, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,-60

[State 13110, FVarset-Scale]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13110, FVarset-Scale]
type = VarAdd
trigger1 = time
fv = 1
value = 0.1

[State 13110, Light]
type = Explod
trigger1 = !time
anim = 13110
id = 13110
ownpal = 0
postype = p1
pos = 0,0
scale = 0.005, 0.005
sprpriority = 5
ontop = 1
bindtime = -1

[State 13110, Light-Expand]
type = ModifyExplod
trigger1 = time < 50
id = 13110
scale = fvar(1), fvar(1)

[State 13110, Light-Expand]
type = RemoveExplod
trigger1 = var(2) < -248
id = 13110
scale = fvar(1), fvar(1)

[State 13110, Varset-PalAdd]
type = VarSet
trigger1 = (!time)
v = 2
value = 0

[State 13110, VarAdd-PalAdd]
type = VarAdd
trigger1 = time >= 80 && var(2) >= -248  
v = 2
value = -8

[State 13110, PalFX]
type = PalFX
trigger1 = time >= 80
add = var(2),var(2),var(2)
time = 1

[State 13110, DestroySelf]
type = DestroySelf
trigger1 = time = 140
trigger2 = parent,stateno!=191
;---------------------------------------------------------------------------
;Light Flash Small
[StateDef 13111]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 5
poweradd = 0

[State 13111, BindToParent]
type = BindToParent
trigger1 = time < 2
time = 1
pos = 10,-79

[State 13111, FVarset-Scale]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13111, FVarset-Scale]
type = VarAdd
trigger1 = time
fv = 1
value = 0.015

[State 13111, Light]
type = Explod
trigger1 = !time
anim = 13110
id = 13110
ownpal = 0
postype = p1
pos = 0,0
scale = 0.005, 0.005
sprpriority = 5
ontop = 1
bindtime = -1

[State 13111, Light-Expand]
type = ModifyExplod
trigger1 = time < 16
id = 13110
scale = fvar(1), fvar(1)

[State 13111, Light-Remove]
type = RemoveExplod
trigger1 = time = 16
id = 13110
scale = fvar(1), fvar(1)

[State 13111, Varset-PalAdd]
type = VarSet
trigger1 = (!time)
v = 2
value = 0

[State 13111, VarAdd-PalAdd]
type = VarAdd
trigger1 = time >= 8
v = 2
value = -32

[State 13111, PalFX]
type = PalFX
trigger1 = time >= 8
add = var(2),var(2),var(2)
time = 1

[State 13111, DestroySelf]
type = DestroySelf
trigger1 = time = 17
;---------------------------------------------------------------------------
;Light Flash Small
[StateDef 13112]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 5
poweradd = 0

[State 13112, BindToParent]
type = BindToParent
trigger1 = time < 2
time = 1
pos = 10,-79

[State 13112, FVarset-Scale]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13112, FVarset-Scale]
type = VarAdd
trigger1 = time
fv = 1
value = 0.025

[State 13112, Light]
type = Explod
trigger1 = !time
anim = 13110
id = 13110
ownpal = 0
postype = p1
pos = 0,0
scale = 0.01, 0.01
sprpriority = 5
ontop = 1
bindtime = -1

[State 13112, Light-Expand]
type = ModifyExplod
trigger1 = time < 16
id = 13110
scale = fvar(1), fvar(1)

[State 13112, Light-Remove]
type = RemoveExplod
trigger1 = time = 16
id = 13110
scale = fvar(1), fvar(1)

[State 13112, Varset-PalAdd]
type = VarSet
trigger1 = (!time)
v = 2
value = 0

[State 13112, VarAdd-PalAdd]
type = VarAdd
trigger1 = time >= 8
v = 2
value = -32

[State 13112, PalFX]
type = PalFX
trigger1 = time >= 8
add = var(2),var(2),var(2)
time = 1

[State 13112, DestroySelf]
type = DestroySelf
trigger1 = time = 17
;---------------------------------------------------------------------------
;Intro Fire-1
[StateDef 13600]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 13600, RandomVariable-Anim]
type = VarRandom
trigger1 = 1
v = 10
range = 0,5

[State 13600, RandomVariable-Scale]
type = VarRandom
trigger1 = 1
v = 11
range = 25,45

[State 13600, RandomVariable-X]
type = VarRandom
trigger1 = 1
v = 12
range = -20,20

[State 13600, RandomVariable-Y]
type = VarRandom
trigger1 = 1
v = 13
range = -92,-8

[State 13600, Fire-1]
type = Explod
trigger1 = 1
anim = 13600+var(10)
id = 13600
ownpal = 1
postype = p1
pos = var(12), var(13)
velocity = 0,0
scale = var(11)*0.01, var(11)*0.01
sprpriority = 3

[State 13600, RandomVariable-Anim2]
type = VarRandom
trigger1 = 1
v = 14
range = 0,5

[State 13600, RandomVariable-Scale]
type = VarRandom
trigger1 = 1
v = 15
range = 35,55

[State 13600, RandomVariable-X2]
type = VarRandom
trigger1 = 1
v = 16
range = -20,20

[State 13600, RandomVariable-Y2]
type = VarRandom
trigger1 = 1
v = 17
range = -94,-6

[State 13600, Fire-2]
type = Explod
triggerall = time > 20
trigger1 = time%2
anim = 13600+var(14)
id = 13601
ownpal = 1
postype = p1
pos = var(16), var(17)
velocity = 0,0
scale = var(15)*0.01, var(15)*0.01
sprpriority = 3

[State 13600, RandomVariable-Anim2]
type = VarRandom
trigger1 = 1
v = 18
range = 0,5

[State 13600, RandomVariable-Scale]
type = VarRandom
trigger1 = 1
v = 19
range = 45,65

[State 13600, RandomVariable-X2]
type = VarRandom
trigger1 = 1
v = 20
range = -20,20

[State 13600, RandomVariable-Y2]
type = VarRandom
trigger1 = 1
v = 21
range = -94,-6

[State 13600, Fire-3]
type = Explod
triggerall = time > 40
trigger1 = !(time%2)
anim = 13600+var(18)
id = 13601
ownpal = 1
postype = p1
pos = var(20), var(21)
velocity = 0,0
scale = var(19)*0.01, var(19)*0.01
sprpriority = 3

[State 13600, DestroySelf]
type = DestroySelf
trigger1 = time = 220
trigger2 = parent,stateno!=191
trigger3 = parent,animelem=3
;---------------------------------------------------------------------------
;Circular Disperse Effect 1
[StateDef 14500]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14500, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 14500, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,4

[State 14500, Sparkle-1]
type = Explod
trigger1 = time < 15
anim = 11550
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.75, var(15)*0.75
accel = -var(14)*0.05, 0.44
scale = 0.25, 0.25
sprpriority = 3

[State 14500, RandomVariable-A]
type = VarRandom
trigger1 = 1
v = 16
range = -8,8

[State 14500, RandomVariable-B]
type = VarRandom
trigger1 = 1
v = 17
range = -8,4

[State 14500, Sparkle-2]
type = Explod
trigger1 = time < 15
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(16)*0.75, var(17)*0.75
accel = -var(16)*0.05, 0.44
scale = 0.25, 0.25
sprpriority = 3

[State 14500, DestroySelf]
type = DestroySelf
trigger1 = time = 20
;---------------------------------------------------------------------------
;Circular Disperse Effect 2
[StateDef 14501]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14501, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 14501, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,8

[State 14501, Sparkle-1]
type = Explod
triggerall = time < 14
trigger1 = Time%2=0
anim = 11550
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.5, var(15)*0.5
accel = 0, 0.44
scale = 0.25, 0.25
sprpriority = 3

[State 14501, Sparkle-2]
type = Explod
triggerall = time < 14
trigger1 = Time%2=1
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.5, var(15)*0.5
accel = 0, 0.44
scale = 0.25, 0.25
sprpriority = 3

[State 14501, DestroySelf]
type = DestroySelf
trigger1 = time = 16
;---------------------------------------------------------------------------
;Circular Disperse Effect 3 (For Ki Barrage)
[StateDef 14503]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14501, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 14501, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,8

[State 14501, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Time%2
anim = 11550
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.25, var(15)*0.25
scale = 0.25, 0.25
sprpriority = 3

[State 14501, Sparkle-2]
type = Explod
triggerall = time < 12 
trigger1 = Time%2
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.4, var(15)*0.4
scale = 0.25, 0.25
sprpriority = 3

[State 14501, DestroySelf]
type = DestroySelf
trigger1 = time = 13
;---------------------------------------------------------------------------
;Sparkle Perse Effect 1
[StateDef 14505]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14505, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,-99

[State 14505, RandomVariable-Scale]
type = VarRandom
trigger1 = 1
v = 13
range = 1,2

[State 14505, RandomVariable-PosX]
type = VarRandom
trigger1 = 1
v = 14
range = -40,40

[State 14505, RandomVariable-PosY]
type = VarRandom
trigger1 = 1
v = 15
range = -40,40

[State 14505, Sparkle-1]
type = Explod
trigger1 = !(time%2)
anim = 11550
id = 11550
postype = p1
pos = var(14)+35, var(15)
ownpal = 1
velocity = -var(14)*0.04, -var(15)*0.04
scale = 0.125*var(13), 0.125*var(13)
sprpriority = 1
supermovetime  = 9999
pausemovetime  = 9999

[State 14505, Sparkle-2]
type = Explod
trigger1 = time%2
anim = 11555
id = 11555
postype = p1
pos = var(14)+35, var(15)
ownpal = 1
velocity = -var(14)*0.04, -var(15)*0.04
scale = 0.125*var(13), 0.125*var(13)
sprpriority = 0
supermovetime  = 9999
pausemovetime  = 9999

[State 14505, RandomVariable-Scale]
type = VarRandom
trigger1 = 1
v = 16
range = 1,2

[State 14505, RandomVariable-PosX]
type = VarRandom
trigger1 = 1
v = 17
range = -40,40

[State 14505, RandomVariable-PosY]
type = VarRandom
trigger1 = 1
v = 18
range = -40,40

[State 14505, Sparkle-A]
type = Explod
trigger1 = !(time%2)
anim = 11550
id = 11550
postype = p1
pos = var(17)-49, var(18)
ownpal = 1
velocity = -var(17)*0.04, -var(18)*0.04
scale = 0.125*var(16), 0.125*var(16)
sprpriority = 1
supermovetime  = 9999
pausemovetime  = 9999

[State 14505, Sparkle-B]
type = Explod
trigger1 = time%2
anim = 11555
id = 11555
postype = p1
pos = var(17)-49, var(18)
ownpal = 1
velocity = -var(17)*0.04, -var(18)*0.04
scale = 0.125*var(16), 0.125*var(16)
sprpriority = 0
supermovetime  = 9999
pausemovetime  = 9999

[State 14505, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 14505, FVarset]
type = VarAdd
trigger1 = time>5
fv = 1
value = 0.003

[State 14505, DestroySelf]
type = DestroySelf
trigger1 = time = 79 
trigger2 = parent,stateno!= 2100
;---------------------------------------------------------------------------
;Spinny Circle
[StateDef 14550]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 14550
ctrl = 0
sprpriority = 4

[State 14550, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 6,-43

;-----------------------
[State 14550, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14550, VarSet]
type = VarSet
trigger1 = time = 0
v = 4
value = 0

[State 14550, VarSet]
type = VarAdd
trigger1 = time > 18
v = 4
value = 20

[State 14550, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -Var(4),-Var(4),-Var(4)
persistent = 1
ignorehitpause = 1
;------------------------

[State 14550, VarSet]
type = VarSet
trigger1 = !time
v = 5
value = 1

[State 14550, VarSet]
type = VarAdd
trigger1 = time < 7
v = 5
value = 1

[State 14550, AngleSet]
type = AngleSet
trigger1 = 1
value = -(time*5)

[State 14550, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = var(5)*0.045,var(5)*0.045

[State 14550, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14550, End]
type = DestroySelf
trigger1 = time = 28
;--------------------------------------------------------------------------------------
;Ki String Initial Shot
[StateDef 14700]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 14700
ctrl = 0
sprpriority = 3

[State 14700, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1330,0
volume = 255

[State 14700, BindToParent]
type = BindToParent
trigger1 = !time
time = 1
pos = 38,-86

[State 14700, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14700, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14700, VelSet]
type = VelSet
trigger1 = !time
x = ifelse(parent, var(28)=2,15,13)
y = 6-(parent, var(28)*3)

[State 14700, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 14700, VarSet]
type = VarRandom
trigger1 = Time
v = 6
range = -10,10

[State 14700, VarSet]
type = VarRandom
trigger1 = Time
v = 7
range = -5,5

[State 14700, Sparkle]
type = Explod
trigger1 = Time
anim = 11559
id = 11559
postype = p1
pos = var(6), var(7)
vel = 0, 0
accel = 0, 0.05
ownpal = 0
scale = 0.125, 0.125
sprpriority = 3

[State 14700, HitDef]
type = HitDef
trigger1 = !time
attr = S, HP
animtype  = Hard
Damage = 1,1
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,12
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = 0      
air.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 14700
kill = 0
p2facing = 1
p2stateno = 95028

[State 14700, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != [1100,1102]) && (parent, stateno != 2001)
trigger2 = moveguarded
trigger3 = frontedgebodydist < -10

[State 14700, ChangeState]
type = ChangeState
trigger1 = movehit
value = 14701
;--------------------------------------------------------------------------------------
;Ki Strings 1
[StateDef 14701]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 14712
ctrl = 0
sprpriority = 3

[State 14701, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1330,1
volume = 255

[State 14701, BindToParent]
type = BindToParent
trigger1 = parent, stateno=1100 && parent, anim != 1105
time = 1
pos = 38,-86

[State 14701, BindToParent]
type = BindToParent
trigger1 = parent, stateno=1100 && parent, anim = 1105
time = 1
pos = -10,-76

[State 14701, BindToParent]
type = BindToParent
trigger1 = parent, stateno=2001 && parent, anim != 1105
time = 1
pos = 38,-86

[State 14701, BindToParent]
type = BindToParent
trigger1 = parent, stateno=2001 && parent, anim = 1105
time = 1
pos = -10,-76

[State 14701, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14701, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14701, GetTargetID]
type = VarSet
trigger1 =  numtarget > 0
v = 3
value = target, ID
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 14701, VarSet]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 5
value = abs(((playerID(var(3)), pos x)-(pos x))/320)

[State 14701, DistX]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 20
value = abs((playerID(var(3)), pos x)-(pos x))

[State 14701, DistY]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 21
value = -(((playerID(var(3)), pos y)-53)-(pos y))

[State 14701, Angle]
type = VarSet
trigger1 = 1
fv = 22
value = (atan(fvar(21)/fvar(20))*(180/3.142))

[State 14701, AngleSet]
type = AngleSet
trigger1 = 1
value = fvar(22)

[State 14701, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14701, VarSet]
type = VarRandom
trigger1 = !(Time%3)
v = 6
range = 0,floor(p2bodydist x)

[State 14701, VarSet]
type = VarRandom
trigger1 = !(Time%3)
v = 7
range = -5,5

[State 14701, BojackUpperTrigger]
type = VarSet
triggerall = time
trigger1 = ifelse((parent, stateno=2001),fvar(20) < 10,fvar(20) < 40)
v = 29
value = 1

[State 14701, String Wrap]
type = Explod
trigger1 = !time && parent, stateno != 2001
anim = 14720
id = 14720
postype = p2
pos = -4, -53
removetime = 200
vel = 0, 0
accel = 0, 0
ownpal = 0
scale = 0.5, 0.5
sprpriority = 3
bindtime = -1

[State 14701, String Wrap2]
type = Explod
trigger1 = !time && parent, stateno = 2001
anim = 14722
id = 14720
postype = p2
pos = -4, -53
vel = 0, 0
accel = 0, 0
ownpal = 0
scale = 0.5, 0.5
sprpriority = 3
bindtime = -1

[State 14701, VarSet]
type = VarRandom
trigger1 = !(Time%3)
v = 8
range = -25,10

[State 14701, VarSet]
type = VarRandom
trigger1 = !(Time%3)
v = 9
range = -30,30

[State 14701, Sparkle]
type = Explod
trigger1 = !(Time%3)
anim = 11559
id = 11559
postype = p2
pos = floor(var(8)), floor(var(9))-53
vel = 0, 0
accel = 0, 0.025
ownpal = 0
scale = 0.125, 0.125
sprpriority = 3

[State 14701, KiString2.Helper]
type = Helper
trigger1 = !time
name = "String2"
stateno = 14702
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 14702
size.xscale = 0.5
size.yscale = 1

[State 14701, KiString3.Helper]
type = Helper
trigger1 = !time
name = "String3"
stateno = 14703
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 14703
size.xscale = 0.5
size.yscale = 1

[State 14701, RemoveExplod]
type = RemoveExplod
trigger1 = parent, stateno = [2002,2003]
id = 14720

[State 14701, Next]
type = ChangeState
trigger1 = (parent, stateno != [1100,1102]) && (parent, stateno != 2001)
value = 14711

[State 14701, Next2]
type = ChangeState
trigger1 = time = 25
value = 14719
;--------------------------------------------------------------------------------------
;Ki Strings 2
[StateDef 14702]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 14711
ctrl = 0
sprpriority = 3

[State 14702, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 14702, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14702, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14702, VarSet]
type = VarSet
trigger1 = PlayerIDExist(parent, var(3))
fv = 5
value = abs(((playerID(parent, var(3)), pos x)-(pos x))/320)

[State 14702, AngleSet]
type = AngleSet
trigger1 = 1
value = 3+(parent,fvar(22))

[State 14702, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14702, DestroySelf]
type = ChangeState
trigger1 = parent, stateno = 14711
value = 14712
;--------------------------------------------------------------------------------------
;Ki Strings 3
[StateDef 14703]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 14710
ctrl = 0
sprpriority = 3

[State 14703, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 14703, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14703, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14703, VarSet]
type = VarSet
trigger1 = PlayerIDExist(parent, var(3))
fv = 5
value = abs(((playerID(parent, var(3)), pos x)-(pos x))/320)

[State 14703, AngleSet]
type = AngleSet
trigger1 = 1
value = -3+(parent,fvar(22))

[State 14703, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14703, DestroySelf]
type = ChangeState
trigger1 = parent, stateno = 14711
value = 14713
;--------------------------------------------------------------------------------------
;Ki Strings Die
[StateDef 14711]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 14711, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14711, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14711, VarSet]
type = PalFx
trigger1 = time
time = 1
add = -(time*12),-(time*12),-(time*12)

[State 14711, VarSet]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 5
value = abs(((playerID(var(3)), pos x)-(pos x))/320)

[State 14711, DistX]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 20
value = abs((playerID(var(3)), pos x)-(pos x))

[State 14711, DistY]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 21
value = -(((playerID(var(3)), pos y)-53)-(pos y))

[State 14711, DistY]
type = VarSet
trigger1 = 1
fv = 22
value = (atan(fvar(21)/fvar(20))*(180/3.142))

[State 14711, AngleSet]
type = AngleSet
trigger1 = 1
value = fvar(22)

[State 14711, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14711, RemoveExplod]
type = RemoveExplod
trigger1 = time = 10
trigger2 = parent, stateno = [2002,2003]
id = 14720

[State 14711, DestroySelf]
type = DestroySelf
trigger1 = Time = 20
;--------------------------------------------------------------------------------------
;Ki Strings 2 Die
[StateDef 14712]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 14712, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14712, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14712, VarSet]
type = PalFx
trigger1 = time
time = 1
add = -(time*12),-(time*12),-(time*12)

[State 14712, VarSet]
type = VarSet
trigger1 = PlayerIDExist(parent, var(3))
fv = 5
value = abs(((playerID(parent, var(3)), pos x)-(pos x))/320)

[State 14712, AngleSet]
type = AngleSet
trigger1 = 1
value = 2+(parent,fvar(22))

[State 14712, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14712, DestroySelf]
type = DestroySelf
trigger1 = Time = 20
;--------------------------------------------------------------------------------------
;Ki Strings 3 Die
[StateDef 14713]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 14713, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14713, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14713, VarSet]
type = PalFx
trigger1 = time
time = 1
add = -(time*12),-(time*12),-(time*12)

[State 14713, VarSet]
type = VarSet
trigger1 = PlayerIDExist(parent, var(3))
fv = 5
value = abs(((playerID(parent, var(3)), pos x)-(pos x))/320)

[State 14713, AngleSet]
type = AngleSet
trigger1 = 1
value = 4+(parent,fvar(22))

[State 14713, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14713, DestroySelf]
type = DestroySelf
trigger1 = Time = 20
;--------------------------------------------------------------------------------------
;Main Ki String Tighten/Pull
[StateDef 14719]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 14719, BindToParent]
type = BindToParent
trigger1 = parent, stateno=1100 && parent, anim != 1105
time = 1
pos = 38,-86

[State 14719, BindToParent]
type = BindToParent
trigger1 = parent, stateno=1100 && parent, anim = 1105
time = 1
pos = -10,-78

[State 14719, BindToParent]
type = BindToParent
trigger1 = parent, stateno=2001 && parent, anim != 1105
time = 1
pos = 38,-86

[State 14719, BindToParent]
type = BindToParent
trigger1 = parent, stateno=2001 && parent, anim = 1105
time = 1
pos = -10,-76

[State 14719, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1330,4

[State 14719, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14719, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14719, GetTargetID]
type = VarSet
trigger1 =  numtarget > 0
v = 3
value = target, ID
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 14719, VarSet]
type = VarSet
trigger1 = 1
fv = 5
value = abs(((playerID(var(3)), pos x)-(pos x))/320)

[State 14719, TargetState]
type = TargetState
trigger1=!time
value = 95029

[State 14719, DistX]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 20
value = abs((playerID(var(3)), pos x)-(pos x))

[State 14719, DistY]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 21
value = -(((playerID(var(3)), pos y)-43)-(pos y))

[State 14719, DistY]
type = VarSet
trigger1 = 1
fv = 22
value = (atan(fvar(21)/fvar(20))*(180/3.142))

[State 14719, AngleSet]
type = AngleSet
trigger1 = 1
value = fvar(22)

[State 14719, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14719, BojackUpperTrigger]
type = VarSet
triggerall = time
trigger1 = fvar(20) < 68
v = 29
value = 1

[State 14719, Next]
type = ChangeState
trigger1 = Time = 20
value = 14711
;---------------------------------------------------------------------------
;P2 Smoke/Explosions
[StateDef 15300]
type = A
physics = N
movetype = A
velset = 0, 0
anim = -1
ctrl = 0
sprpriority = 4

[State 15300, Smoke1]
type = Explod
trigger1 = time = 8
Anim = 15300
Pos = 0,-25
Id = 15300
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.9, 0.9

[State 15300, Smoke2]
type = Explod
trigger1 = time = 15
Anim = 15300
Pos = 20,-15
Id = 15301
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.9, 0.9

[State 15300, Smoke3]
type = Explod
trigger1 = time = 23
Anim = 15300
Pos = -10,-5
Id = 15302
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.7, 0.7

[State 15300, Smoke4]
type = Explod
trigger1 = time = 31
Anim = 15300
Pos = 10,-25
Id = 15303
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.9, 0.9

[State 15300, DestroySelf]
type = DestroySelf
trigger1 = p2stateno = 5120
;---------------------------------------------------------------------------
;Rock Helper 00
[StateDef 15200]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 15200 + Parent, Var(16)
ctrl = 0
sprpriority = 4

[State 15200, VelSet]
type = VelSet
triggerall = !time
trigger1 = parent, stateno = 1701
y = -2

[State 15200, VelAdd]
type = VelAdd
trigger1 = parent, stateno != 1701
y = 0.08

[State 15201, VelAdd]
type = VelAdd
triggerall = vel y > -3
trigger1 = parent, stateno = 1701
y = -0.08

[State 15200, Next]
type = ChangeState
trigger1 = pos Y < -240 && parent, stateno = 1701
value = 15255

[State 15200, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper 01
[StateDef 15201]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 15200 + Parent, Var(16)
ctrl = 0
sprpriority = 4

[State 15201, VelSet]
type = VelSet
triggerall = !time
trigger1 = parent, stateno = 1701
y = -3

[State 15201, VelAdd]
type = VelAdd
trigger1 = parent, stateno != 1701
y = 0.08

[State 15201, VelAdd]
type = VelAdd
triggerall = vel y > -3
trigger1 = parent, stateno = 1701
y = -0.08

[State 15201, Next]
type = ChangeState
trigger1 = pos Y < -240 && parent, stateno = 1701
value = 15255

[State 15201, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper 02
[StateDef 15202]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 15200 + Parent, Var(16)
ctrl = 0
sprpriority = 4

[State 15202, VelSet]
type = VelSet
triggerall = !time
trigger1 =  parent, stateno = 1701
y = -4

[State 15202, VelAdd]
type = VelAdd
trigger1 = parent, stateno != 1701
y = 0.08

[State 15201, VelAdd]
type = VelAdd
triggerall = vel y > -4
trigger1 = parent, stateno = 1701
y = -0.08

[State 15202, Next]
type = ChangeState
trigger1 = pos Y < -240 && parent, stateno = 1701
value = 15255

[State 15202, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper 03
[StateDef 15203]
type = A
physics = N
movetype = I
anim = 15200 + Parent, Var(3)
sprpriority = 2

[State 15203, StateVar]
type = VarRandom
trigger1 = 1
v = 2
range = 0, 11

[State 15203, StateVar]
type = VarRandom
trigger1 = !time
v = 3
range = 0, 75

[State 15203, VarX]
type = VarSet
trigger1 = !time
v = 4
value = parent, var(4)

[State 15203, VarX]
type = VarSet
trigger1 = !time
v = 5
value = parent, var(5)

[State 15203, Anim]
type = ChangeAnim
trigger1=!time
value = 15200+var(2)

[State 15203, VelSet]
type = VelSet
trigger1 = !time
x = var(4)*0.25
y = -10+var(5)*0.25

[State 15203, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.44

[State 15203, AngleSet]
type = AngleAdd
trigger1 = 1
value = var(4)

[State 15203, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1-(var(3)/100),1-(var(3)/100)

[State 15203, Pos-VarSetY]
type = VarRandom
trigger1 = 6
v = 25
range = -10, 10

[State 15203, Pos-VarSetY]
type = VarRandom
trigger1 = 7
v = 25
range = -10, 10

[State 15203, VarRandom]
type = VarRandom
trigger1 = time
v = 41
range = 0,3

[State 15203, MakeDust]
type = Explod
trigger1 = time
Anim = 15310+Var(41)
Pos = Var(6), var(7)
Id = 15310
sprpriority = 2
removeongethit = 0
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5,0.5
velocity = 0, 0

[State 15203, PosSet]
type = Posset
trigger1 = pos y > 0
y = 0

[State 15203, Next]
type = ChangeState
trigger1 = pos y = 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper Die
[StateDef 15255]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 15255
ctrl = 0
sprpriority = 4

[State 15202, PlaySND]
type = PlaySnd
trigger1 = time= 0
value = 1720,0

[State 15255, DestroySelf]
type = DestroySelf
trigger1 = time = 4
;---------------------------------------------------------------------------
;Dust Helper
[StateDef 15000]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 2

[State 15000, Bind]
type = BindtoParent
trigger1 = 1
time = 1
pos = -50,1

[State 15000, Dust]
type = Explod
triggerall = Parent, Pos Y > -20
trigger1 = (timemod = 3,0)
Anim = 15010
Pos = 0, -Floor(Parent, Pos Y)
Id = 15010
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.35, 0.35

[State 15000, DestroySelf]
type = DestroySelf
trigger1 = (Parent, Stateno != 1300) && (Parent, Stateno != 1305)
;---------------------------------------------------------------------------
;Dust Helper Ki Blast
[StateDef 15010]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 2

[State 15010, Bind]
type = BindtoParent
trigger1 = 1
time = 1
pos = -40,1

[State 15010, Dust]
type = Explod
triggerall = Parent, Pos Y > -80
trigger1 = (timemod = 3,0)
Anim = 15010
Pos = 0, -Floor(Parent, Pos Y)
Id = 15010
sprpriority = 3
removeongethit = 0
removetime = 14
Postype = p1
;Bindtime = -1
SuperMove = 1
scale = 0.35, 0.35

[State 15010, DestroySelf]
type = DestroySelf
trigger1 = (Parent, Stateno != 12100)
;-------------------------------------------------------------------------------
;Dizzy Stars
[StateDef 15800]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 3

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x

[State 15801, Pos X]
type = VarSet
trigger1 = !time
v = 4
value = ifelse(facing=1,1,-1)

[State 15801, Pos Y]
type = VarSet
trigger1 = !time
v = 5
value = -105

;Tired Variable from Parent Dizzy State.
[State 15801, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)

;Star Start locations
;   B
;A     C
;   D

[State 15800, Star_Helper.A]
type = Helper
trigger1 = !time
name = "StarA"
stateno = 15801
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15801
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Star_Helper.B]
type = Helper
trigger1 = !time
name = "StarB"
stateno = 15802
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15802
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Star_Helper.C]
type = Helper
trigger1 = !time
name = "StarC"
stateno = 15803
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15803
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Star_Helper.D]
type = Helper
trigger1 = !time
name = "StarD"
stateno = 15804
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15804
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Die State]
type = ChangeState
trigger1 = parent, stateno != 5300
value = 15809
;-------------------------------------------------------------------------------
;Dizzy Star A
[StateDef 15801]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15801, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15801, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15801, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = time*0.05

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15801, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15801, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15801, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15801, End]
type = ChangeState
trigger1 = var(6) >= 75
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star B
[StateDef 15802]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15802, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15802, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15802, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables
[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = (time+30)*0.05

[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15802, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15802, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15802, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15802, End]
type = ChangeState
trigger1 = var(6) >= 225
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star C
[StateDef 15803]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15803, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15803, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15803, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = (time+60)*0.05

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15803, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15803, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15803, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15803, End]
type = ChangeState
trigger1 = var(6) >= 150
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star D
[StateDef 15804]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15804, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15804, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15804, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15804, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables

[State 15804, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = (time+90)*0.05

[State 15804, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15804, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15804, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15804, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15804, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15804, End]
type = ChangeState
trigger1 = var(6) >= 300
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star Remove/Pop Off/Bounce
[StateDef 15805]
type = A
physics = N
movetype = I
anim = 15800
ctrl = 0
sprpriority = 3

[State 15805, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15805, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

;Scaling(for 3d orbit effect)
[State 15805, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15805, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)

[State 15805, VelSet]
type = VelSet
trigger1 = !time
y = -4

[State 15805, VelAdd]
type = VelAdd
trigger1 = time
y = 0.3

[State 15805, PosSet-Ground]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 15805, VelSet]
type = VelSet
trigger1 = pos y = 0
y = -(vel y) * 0.5

[State 15805, End]
type = ChangeState
trigger1 = time >= 80 && random < 75
trigger2 = time = 100
value = 15806

;-------------------------------------------------------------------------------
;Dizzy Star Burst/Explode/Pop
[StateDef 15806]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9999
ctrl = 0
sprpriority = 3

[State 15806, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1003,0

[State 15806, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.005

[State 15806, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 15806, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+fvar(1),0.1+fvar(1)

[State 15806, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 15806, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,8

[State 15806, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,0
anim = 11555
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.25*((0.5-fvar(13))*0.75), var(15)*0.25*((0.5-fvar(13))*0.75)
scale = (0.5-fvar(13))*0.5, (0.5-fvar(13))*0.5
sprpriority = 3

[State 15806, Sparkle-2]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,1
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.4*((0.5-fvar(13))*0.75), var(15)*0.4*((0.5-fvar(13))*0.75)
scale = (0.5-fvar(13))*0.5, (0.5-fvar(13))*0.5
sprpriority = 3

[State 15806, End]
type = DestroySelf
trigger1 = time = 15
;-------------------------------------------------------------------------------
;Dizzy Stars End State(Used to Kill Remaining stars)
[StateDef 15809]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 3

[State 15804, End]
type = DestroySelf
trigger1 = time = 1
;---------------------------------------------------------------------------
;Ginyu BG Effect
[StateDef 16000]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 16000
ctrl = 0
sprpriority = -5

[State 16000, VarSet]
type = VarSet
trigger1 = !time
v = 2
value = 0

[State 16000, FVarSet]
type = VarSet
trigger1 = !time
fv = 2
value = 0

[State 16000, VarAdd]
type = VarAdd
trigger1 = time <= 10
v = 2
value = -18

[State 16000, FVarAdd]
type = VarAdd
trigger1 = time <= 10
fv = 2
value = 0.075

[State 16000, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 16000, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 16000, AngleSet]
type = AngleAdd
trigger1 = !(time%4)
value = 30

[State 16000, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(2),fvar(2)

[State 16000, PalFX]
type = BGPalFX
trigger1 = 1
time=1
add = var(2),var(2),var(2)
persistent = 1
ignorehitpause = 1

[State 16000, End]
type = DestroySelf
trigger1 = time = 999
;-------------------------------------------------------------------------------
;Teleport Trail
[StateDef 17900]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 17900
ctrl = 0
sprpriority = -1

[State 17900, End.X]
type = VarSet
trigger1 = time=0
fv = 3
value = parent, p2bodydist x

[State 17900, End.Y]
type = VarSet
trigger1 = time=0
fv = 4
value = parent, p2bodydist y

[State 17900, VelSet]
type = VelSet
trigger1 = time>=2
x = fvar(3)*0.1
y = fvar(4)*0.1

[State 17900, AfterImage]
type = AfterImage
trigger1 = !time
time = 10
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 0,128,118
paladd = -20,35,30
timegap = 1
framegap = 1
trans = Add

[State 17900, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 17900, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -64-time*10,48-time*10,48-time*10
persistent = 1
ignorehitpause = 1

[State 17900, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 17900, End]
type = DestroySelf
trigger1 = time = 11

;---------------------------------------------------------------------------
;Super Portrait
[Statedef 19000]
physics  = N
anim     = 9999
sprpriority = 0

[State 19000, VarSet]
type = VarSet
trigger1 = time = 0
persistent = 0
ignorehitpause = 1
fv = 1
value = 0

[State 19000, VarAdd]
type = VarAdd
trigger1 = time >= 30
persistent = 1
ignorehitpause = 1
fv = 1
value = 0.02

[State 19000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 19000, Picture]
type = Explod
trigger1 = time = 0
anim = 19000
id = 19000
pos = -30,120
postype = back
ownpal = 0
sprpriority = 0
supermovetime = 9999
pausemovetime = 9999
persistent = 1
ignorehitpause = 1
scale = 0.48,0.48

[State 19000, ModExplod]
type = ModifyExplod
trigger1 = time >= 30
id = 19000
supermovetime = 9999
pausemovetime = 9999
scale = 0.48+fvar(1),0.48+fvar(1)

[State 19000, RemoveExplod]
type = RemoveExplod
trigger1 = time = 60
id = 19000

[State 19000, DestroySelf]
type = DestroySelf
trigger1 = time = 60
;---------------------------------------------------------------------------
;Super Portrait2
[Statedef 19002]
physics  = N
anim     = 9999
sprpriority = 0

[State 19002, VarSet]
type = VarSet
trigger1 = time = 0
persistent = 0
ignorehitpause = 1
fv = 1
value = 0

[State 19002, VarAdd]
type = VarAdd
trigger1 = time >= 30
persistent = 1
ignorehitpause = 1
fv = 1
value = 0.02

[State 19002, AssertSpecial]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 19002, Picture]
type = Explod
trigger1 = time = 0
anim = 19002
id = 19002
pos = -30,120
postype = back
ownpal = 0
sprpriority = 0
supermovetime = 9999
pausemovetime = 9999
persistent = 1
ignorehitpause = 1
scale = 0.48,0.48

[State 19002, ModExplod]
type = ModifyExplod
trigger1 = time >= 30
id = 19002
supermovetime = 9999
pausemovetime = 9999
scale = 0.48+fvar(1),0.48+fvar(1)

[State 19002, RemoveExplod]
type = RemoveExplod
trigger1 = time = 60
id = 19002

[State 19002, DestroySelf]
type = DestroySelf
trigger1 = time = 60
;---------------------------------------------------------------------------
;Super Portrait3
[Statedef 19003]
physics  = N
anim     = 9999
sprpriority = 0

[State 19003, VarSet]
type = VarSet
trigger1 = time = 0
persistent = 0
ignorehitpause = 1
fv = 1
value = 0

[State 19003, VarAdd]
type = VarAdd
trigger1 = time >= 30
persistent = 1
ignorehitpause = 1
fv = 1
value = 0.02

[State 19003, AssertSpecial]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 19003, Picture]
type = Explod
trigger1 = time = 0
anim = 19003
id = 19003
pos = -30,120
postype = back
ownpal = 0
sprpriority = 0
supermovetime = 9999
pausemovetime = 9999
persistent = 1
ignorehitpause = 1
scale = 0.40,0.40

[State 19003 ModExplod]
type = ModifyExplod
trigger1 = time >= 30
id = 19003
supermovetime = 9999
pausemovetime = 9999
scale = 0.40+fvar(1),0.40+fvar(1)

[State 19003, RemoveExplod]
type = RemoveExplod
trigger1 = time = 60
id = 19003

[State 19003, DestroySelf]
type = DestroySelf
trigger1 = time = 60
;---------------------------------------------------------------------------
;Super Portrait
[Statedef 19004]
physics  = N
anim     = 9999
sprpriority = 0

[State 19004, VarSet]
type = VarSet
trigger1 = time = 0
persistent = 0
ignorehitpause = 1
fv = 1
value = 0

[State 19004, VarAdd]
type = VarAdd
trigger1 = time >= 70
persistent = 1
ignorehitpause = 1
fv = 1
value = 0.02

[State 19004, AssertSpecial]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 19004, Picture]
type = Explod
trigger1 = time = 0
anim = 19004
id = 19000
pos = -30,120
postype = back
ownpal = 0
sprpriority = 0
supermovetime = 9999
pausemovetime = 9999
persistent = 1
ignorehitpause = 1
scale = 0.48,0.48

[State 19004, ModExplod]
type = ModifyExplod
trigger1 = time >= 70
id = 19000
supermovetime = 9999
pausemovetime = 9999
scale = 0.48+fvar(1),0.48+fvar(1)

[State 19004, RemoveExplod]
type = RemoveExplod
trigger1 = time = 120
id = 19000

[State 19004, DestroySelf]
type = DestroySelf
trigger1 = time = 120
;---------------------------------------------------------------------------
;WinKO Effect by FlowaGirl! FlowaGirl receives all the credit for this code.

[Statedef 9998]
type = S
movetype = I
physics = N
anim = 9999

[State 9998: Pause]
type = Pause
trigger1 = !Time
time = 12
movetime = 12

[State 9998: EnvColor]
type = EnvColor
trigger1 = Time < 12
value = Time*4, Time*4, Time*4
time = 1
under = 1

[State 9998: EnvShake]
type = EnvShake
trigger1 = !Time
time = 12
freq = 120
ampl = -3
phase = 90

[State 9998: AllPalFX]
type = AllPalFX
trigger1 = Time < 50
time = 1
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = Time*5
