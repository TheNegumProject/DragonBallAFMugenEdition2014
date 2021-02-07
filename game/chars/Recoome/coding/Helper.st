;===========================================================================
;Helpers
;===========================================================================
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
pos = -5,-45

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

[State 10500, VarSet-PalFX]
type = VarSet
trigger1 = !time
v = 3
value = 0

[State 10500, VarAdd-PalFX]
type = VarAdd
trigger1 = time >= 10
v = 3
value = (time-10)*20

[State 10500, PalFX]
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
range = 0, 82

[State 10200, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 10,0

[State 10200, DashLine]
type = Explod
trigger1 = !(time%2)
Anim = 10200
Postype = p1
Pos = -45+floor(Var(10)*0.5), -var(10)
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
range = 0, 82

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
trigger1 = var(9) = 220 || var(9) = 300
time = 1
pos = 85,-63

[State 10500, BindToParent]
type = BindToParent
trigger1 = var(9) = 240
time = 1
pos = 89,-70

[State 10500, BindToParent]
type = BindToParent
trigger1 = var(9) = 410
time = 1
pos = 70,-53

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
scale = 0.35+fvar(2),0.3-(fvar(2)/5)

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
;Strong Physical Attack Energy Effect - State 310 - Recoome Kick
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
pos = 87,-90

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
value = 20

[State 10501, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.35+fvar(2),0.3-(fvar(2)/5)

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
trigger1 = time = 14 || (parent, movetype = H)
;---------------------------------------------------------------------------
;Strong Physical Attack Energy Effect - State 250 - Launcher Kick
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
pos = 26,-121

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
value = 60

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
trigger1 = time = 14 || (parent, movetype = H) || (parent, stateno != 250)
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
pos = 74,-67

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
value = 24

[State 10503, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.45+fvar(2),0.42-(fvar(2)/5)

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
pos = 54,-34

[State 10504, BindToParent]
type = BindToParent
trigger1 = var(9) = 640
time = 1
pos = 70,-14

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
value = ifelse(var(9)=620,-50,-40)

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

[State 12100, Dust.Helper]
type = null;Helper
trigger1 = Time = 1
name = "Dust2"
stateno = 15010
postype = p1
pos = -40, 1
keyctrl = 0
ownpal = 1
id = 15010

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
time = 30
length = 20
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12100, HyperComboVelSet.FWD]
type = VelSet
triggerall = (p2bodydist y = 0) && (Parent, prevstateno = 2015)
trigger1 = 1
x = 15
y = 0.0

[State 12100, HyperComboVelSet.UP]
type = VelSet
triggerall = (p2bodydist y < 0) && (Parent, prevstateno = 2015)
trigger1 = 1
x = 15
y = -1.9

[State 12100, HyperComboVelSet.DWN]
type = VelSet
triggerall = (p2bodydist y > 0) && (Parent, prevstateno = 2015)
trigger1 = 1
x = 15
y = 1.9

[State 12100, VelSet.FWD]
type = VelSet
triggerall = (Parent, Var(13) = 0) && (Parent, prevstateno != 2015)
trigger1 = 1
x = 13
y = 0.0

[State 12100, VelSet.UP]
type = VelSet
triggerall = Parent, Var(13) = 1 && (Parent, prevstateno != 2015)
trigger1 = 1
x = 12
y = -1.9

[State 12100, VelSet.DWN]
type = VelSet
triggerall = Parent, Var(13) = 2 && (Parent, prevstateno != 2015)
trigger1 = 1
x = 12
y = 1.9

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
triggerall = (Parent, prevstateno = 2015)
trigger1 = !time 
attr = S, HP
animtype  = Hard
Damage = 120,25
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
ground.velocity = -10, -5.8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -10, -5.8
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1

[State 12100, Explosion]
type = HitDef
triggerall = (Parent, prevstateno != 2015)
trigger1 = !time 
attr = S, HP
animtype  = Hard
Damage = 210,35
guardflag = MA
pausetime = 1,12
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -10, -5.8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -10, -5.8
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1

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
trigger1 = time = 30
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
;Laser : Used in State 1100
[StateDef 12210]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12210
ctrl = 0
sprpriority = 3
juggle = 5

[State 12100, AfterImage]
type = AfterImage
trigger1 = !time
time = 3
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 2
framegap = 2
trans = Add

[State 12210, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 12210, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12210, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow

[State 12210, Penetration]
type = HitDef
trigger1 = !time
attr = S, HP
animtype  = Hard
Damage = 65,15
guardflag = MA
pausetime = 5,15
sparkno = S12220
sparkxy = -25,0
hitsound   = S1100,0
guardsound = S1100,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -11, -4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -11, -4
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1

[State 12210, Next]
type = null;Changestate
trigger1 = Movecontact
value = 12220

[State 12210, DestroySelf]
type = DestroySelf
trigger1 = time = 24
;---------------------------------------------------------------------------
;Laser Hit : Used in State 1100
[StateDef 12220]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12220
ctrl = 0
sprpriority = 3

[State 12220, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 12220, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12220, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow

[State 12220, DestroySelf]
type = DestroySelf
trigger1 = time = 16
;---------------------------------------------------------------------------
;Swirly Balls Effect (LOL BALLS!)
[StateDef 12320]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12320
ctrl = 0
sprpriority = 1

[State 12320, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,-43

[State 12320, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 12320, VarSet]
type = VarSet
trigger1 = time = 0
v = 4
value = 0

[State 12320, VarSet]
type = VarAdd
trigger1 = time > 20
v = 4
value = 25

[State 12320, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -Var(4),-Var(4),-Var(4)
persistent = 1
ignorehitpause = 1
;------------------------

[State 12320, VarSet]
type = VarSet
trigger1 = !time
v = 5
value = 100

[State 12320, VarSet]
type = VarAdd
trigger1 = time > 8
v = 5
value = -5

[State 12320, AngleSet]
type = AngleSet
trigger1 = 1
value = -(time*12)

[State 12320, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = var(5)*0.01,var(5)*0.01

[State 12320, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 12320, DestroySelf]
type = DestroySelf
trigger1 = time = 30 || (parent,stateno!= 300 && parent,stateno!= 4100)
;---------------------------------------------------------------------------
;Counter Effect
[StateDef 12330]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12330
ctrl = 0
sprpriority = 3

[State 12330, BindToParent]
type = BindToParent
trigger1 = !time
time = 1
pos = 30,-73

[State 12330, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 12330, VarSet]
type = VarSet
trigger1 = time = 0
v = 4
value = 0

[State 12330, VarSet]
type = VarAdd
trigger1 = time > 17
v = 4
value = 40

[State 12330, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -Var(4),-Var(4),-Var(4)
persistent = 1
ignorehitpause = 1
;------------------------

[State 12330, AngleSet]
type = AngleSet
trigger1 = 1
value = -time*2

[State 12330, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = time*0.05,time*0.05

[State 12330, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 12330, DestroySelf]
type = DestroySelf
trigger1 = time = 25
;---------------------------------------------------------------------------
;Ki Beam : Used in State 1901
[StateDef 12400]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12400
ctrl = 0
sprpriority = 4

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

[State 12400, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow

[State 12400, Explosion]
type = HitDef
triggerall = (Parent, prevstateno = 2015)
trigger1 = time >= 0
attr = S, HP
animtype  = Hard
Damage = 10,2
guardflag = MAFD
guardflag = MA
pausetime = 1,12
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -15, -4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -15, -4
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1

[State 12400, Explosion]
type = HitDef
triggerall = (Parent, prevstateno != 2015)
trigger1 = time >= 0
attr = S, HP
animtype  = Hard
Damage = 16,4
guardflag = MA
pausetime = 1,12
sparkno = -1
sparkxy = -5,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -15, -4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -15, -4
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1

[State 12400, ElecA1]
type = Explod
trigger1 = !time
Anim = 10021
Pos = 25,-25
Id = 10021
velocity = 0,0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.7, 0.7

[State 12400, ElecA2]
type = Explod
trigger1 = time = 3
Anim = 10021
Pos = 225,-20
Id = 10021
velocity = 0,0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.7, 0.7

[State 12400, ElecA3]
type = Explod
trigger1 = time = 6
Anim = 10021
Pos = 425,-10
Id = 10021
velocity = 0,0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.7, 0.7

[State 12400, ElecB1]
type = Explod
trigger1 = !time
Anim = 10021
Pos = 145,30
Id = 10021
velocity = 0,0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.7, 0.7

[State 12400, ElecB2]
type = Explod
trigger1 = !time
Anim = 10021
Pos = 345,30
Id = 10021
velocity = 0,0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.7, 0.7

[State 12400, ElecB3]
type = Explod
trigger1 = !time
Anim = 10021
Pos = 545,30
Id = 10021
velocity = 0,0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.7, 0.7

[State 12400, ElecC1]
type = Explod
trigger1 = !time
Anim = 10022
Pos = 95,-20
Id = 10022
velocity = 0,0
sprpriority = 5
removeongethit = 1
removetime = 20
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.7, 0.7

[State 12400, ElecC2]
type = Explod
trigger1 = time = 4
Anim = 10022
Pos = 295,-20
Id = 10022
velocity = 0,0
sprpriority = 5
removeongethit = 1
removetime = 20
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.7, 0.7

[State 12400, ElecC3]
type = Explod
trigger1 = time = 10
Anim = 10022
Pos = 495,-20
Id = 10022
velocity = 0,0
sprpriority = 5
removeongethit = 1
removetime = 20
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.7, 0.7

[State 12400, Sparkles.Helper]
type = Helper
trigger1 = time = 2
name = "Sparkley"
stateno = 12401
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12401

[State 12400, Explosion.Sound1]
type = PlaySND
trigger1 = movehit && !numhelper(13101)
value = 1100,2

[State 12400, Explosion.Sound2]
type = PlaySND
trigger1 = moveguarded && !numhelper(13101)
value = 1100,1

[State 12400, Explosion.Helper]
type = Helper
trigger1 = movecontact && !numhelper(13101)
name = "Explosion"
stateno = 13101
postype = p2
pos = 0, -60
keyctrl = 0
ownpal = 1
id = 13101

[State 12400, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 12400, DestroySelf]
type = DestroySelf
trigger1 = time = 22
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
;Charge-Push Forward
[StateDef 12650]
type = A
physics = N
movetype = I
velset = 12, 0
anim = 12650
ctrl = 0

[State 12650, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.25

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
velset = -12, 0
anim = 12650
ctrl = 0

[State 12651, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.25

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

[State 12651, BindToParent]
type = BindToParent
trigger1 = 1
time = 1

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
trigger1 = time = 7
;---------------------------------------------------------------------------
;Advance Guard-Push Forward
[StateDef 12700]
type = A
physics = N
movetype = A
velset = 20, 0
anim = 12700
ctrl = 0

[State 12700, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.5

[State 12700, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12700, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12700, End]
type = DestroySelf
trigger1 = time = 20
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
range = -5, 5

[State 13010, VarSet]
type = VarRandom
trigger1 = !time
v = 18
range = -7, 4

[State 13010, VelSet]
type = VelSet
trigger1 = !time
x = Var(17)
y = Var(18)

[State 13010, VelAdd]
type = VelAdd
trigger1 = 1
x = (-Var(17)*.01)
y = ifelse(var(18)=0, 0.2, abs(Var(18)*.05))

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

[State 13101, SoundPoom]
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
value = 0.1

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
scale = 0.35+fvar(1),0.35+fvar(1)

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
;Recoome Bomber Explosion
[StateDef 13102]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13102
ctrl = 0
sprpriority = 2
poweradd = 0

[State 13102, SoundPoom]
type = PlaySnd
trigger1 = !time
value = 1150,0
volume = 255

[State 13102, SoundBigBoom]
type = PlaySnd
trigger1 = !time
trigger2 = time = 52
value = 1100,2
volume = 0-time*2

[State 13102, SoundMediumBoom]
type = PlaySnd
trigger1 = time = 7
trigger2 = time = 16
trigger3 = time = 25
trigger4 = time = 34
trigger5 = time = 43
value = 1100,2
volume = 0

[State 13102, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13102, FVarset]
type = VarSet
trigger1 = (!time)
trigger2 = time = 21
fv = 1
value = 0
[State 13102, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.1

[State 13102, FVarset]
type = VarSet
trigger1 = (!time)
trigger2 = time = 27
fv = 2
value = 0
[State 13102, FVarset]
type = VarAdd
trigger1 = time>=6
fv = 2
value = 0.1

[State 13102, FVarset]
type = VarSet
trigger1 = (!time)
trigger2 = time = 33
fv = 3
value = 0
[State 13102, FVarset]
type = VarAdd
trigger1 = time>=12
fv = 3
value = 0.1

[State 13102, FVarset]
type = VarSet
trigger1 = (!time)
trigger2 = time = 39
fv = 4
value = 0
[State 13102, FVarset]
type = VarAdd
trigger1 = time>=18
fv = 4
value = 0.1

[State 13102, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
trigger2 = time = 23
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
[State 13102, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.35+fvar(1),0.35+fvar(1)

[State 13102, Flash! AhhAHHHH!]
type = Explod
trigger1 = (time=6)
Anim = 13105
Pos = -35,-45
Id = 13106
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
[State 13102, Flash! AhhAHHHH!]
type = Explod
trigger1 = (time=28)
Anim = 13105
Pos = -35,-45
Id = 13106
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
[State 13102, ModifyExplod]
type = ModifyExplod
trigger1 = (time>6)
id = 13106
supermovetime = 9999
pausemovetime = 9999
scale = 0.35+fvar(2),0.35+fvar(2)

[State 13102, Flash! AhhAHHHH!]
type = Explod
trigger1 = (time=12)
Anim = 13105
Pos = 0,-70
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
[State 13102, Flash! AhhAHHHH!]
type = Explod
trigger1 = (time=34)
Anim = 13105
Pos = 0,-70
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
[State 13102, ModifyExplod]
type = ModifyExplod
trigger1 = (time>12)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.35+fvar(3),0.35+fvar(3)

[State 13102, Flash! AhhAHHHH!]
type = Explod
trigger1 = (time=18)
Anim = 13105
Pos = 45,30
Id = 13108
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
[State 13102, Flash! AhhAHHHH!]
type = Explod
trigger1 = (time=40)
Anim = 13105
Pos = 45,30
Id = 13108
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
[State 13102, ModifyExplod]
type = ModifyExplod
trigger1 = (time>18)
id = 13108
supermovetime = 9999
pausemovetime = 9999
scale = 0.35+fvar(4),0.35+fvar(4)

[State 13102, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13102, AfterImage]
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

[State 13102, Disperse Effect]
type = Helper
trigger1 = time = 14
name = "DisperseEffect"
stateno = 14500
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13102, SmallExplosions]
type = Helper
trigger1 = time = 44
trigger2 = time = 48
trigger3 = time = 52
trigger4 = time = 56
trigger5 = time = 60
trigger6 = time = 64
name = "SmallExplode"
stateno = 13010
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 13010
bindtime = 0

[State 13102, Explosions0]
type = Explod
trigger1 = time = 0
trigger2 = time = 22
Anim = 13100
Pos = 35,130
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13102, Explosions0]
type = Explod
trigger1 = time = 2
trigger2 = time = 24
Anim = 13100
Pos = -40,100
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13102, Explosions1]
type = Explod
trigger1 = time = 3
trigger2 = time = 26
Anim = 13100
Pos = 60,-40
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13102, Explosions2]
type = Explod
trigger1 = time = 6
trigger2 = time = 28
Anim = 13100
Pos = -55,-45
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13102, Explosions3]
type = Explod
trigger1 = time = 9
trigger2 = time = 31
Anim = 13100
Pos = 0,-75
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13102, Explosions4]
type = Explod
trigger1 = time = 12
trigger2 = time = 34
Anim = 13100
Pos = 0,70
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13102, Explosions5]
type = Explod
trigger1 = time = 15
trigger2 = time = 37
Anim = 13100
Pos = 65,30
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13102, Explosions6]
type = Explod
trigger1 = time = 18
trigger2 = time = 40
Anim = 13100
Pos = -60,40
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13102, Explosions7]
type = Explod
trigger1 = time = 21
trigger2 = time = 44
Anim = 13100
Pos = 0,0
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75

[State 13102, DestroySelf]
type = DestroySelf
trigger1 = time = 60
;---------------------------------------------------------------------------
;Recoome Bomber Explosion-Old
[StateDef 13103]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13102
ctrl = 0
sprpriority = 2
poweradd = 0

[State 13103, SoundPoom]
type = PlaySnd
trigger1 = !time
value = 1150,0
volume = 255

[State 13103, SoundBigBoom]
type = PlaySnd
trigger1 = !time
trigger2 = time = 34
value = 1100,2
volume = 0-time*3

[State 13103, SoundMediumBoom]
type = PlaySnd
trigger1 = time = 7
trigger2 = time = 16
trigger3 = time = 25
value = 1100,2
volume = 0

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
value = 0.1

[State 13103, FVarset]
type = VarSet
trigger1 = (!time)
fv = 2
value = 0
[State 13103, FVarset]
type = VarAdd
trigger1 = time>=6
fv = 2
value = 0.1

[State 13103, FVarset]
type = VarSet
trigger1 = (!time)
fv = 3
value = 0
[State 13103, FVarset]
type = VarAdd
trigger1 = time>=12
fv = 3
value = 0.1

[State 13103, FVarset]
type = VarSet
trigger1 = (!time)
fv = 4
value = 0
[State 13103, FVarset]
type = VarAdd
trigger1 = time>=18
fv = 4
value = 0.1

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
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.1, 0.1
[State 13103, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.35+fvar(1),0.35+fvar(1)

[State 13103, Flash! AhhAHHHH!]
type = Explod
trigger1 = (time=6)
Anim = 13105
Pos = -35,-45
Id = 13106
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
[State 13103, ModifyExplod]
type = ModifyExplod
trigger1 = (time>6)
id = 13106
supermovetime = 9999
pausemovetime = 9999
scale = 0.35+fvar(2),0.35+fvar(2)

[State 13103, Flash! AhhAHHHH!]
type = Explod
trigger1 = (time=12)
Anim = 13105
Pos = 0,-70
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
[State 13103, ModifyExplod]
type = ModifyExplod
trigger1 = (time>12)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.35+fvar(3),0.35+fvar(3)

[State 13103, Flash! AhhAHHHH!]
type = Explod
trigger1 = (time=18)
Anim = 13105
Pos = 45,30
Id = 13108
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
[State 13103, ModifyExplod]
type = ModifyExplod
trigger1 = (time>18)
id = 13108
supermovetime = 9999
pausemovetime = 9999
scale = 0.35+fvar(4),0.35+fvar(4)

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
trigger1 = time = 14
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
trigger1 = time = 22
trigger2 = time = 26
trigger3 = time = 30
trigger4 = time = 34
trigger5 = time = 38
trigger6 = time = 42
name = "SmallExplode"
stateno = 13010
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 13010
bindtime = 0

[State 13103, Explosions0]
type = Explod
trigger1 = time = 0
Anim = 13100
Pos = 35,130
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13103, Explosions0]
type = Explod
trigger1 = time = 2
Anim = 13100
Pos = -40,100
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13103, Explosions1]
type = Explod
trigger1 = time = 3
Anim = 13100
Pos = 60,-40
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13103, Explosions2]
type = Explod
trigger1 = time = 6
Anim = 13100
Pos = -55,-45
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13103, Explosions3]
type = Explod
trigger1 = time = 9
Anim = 13100
Pos = 0,-75
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13103, Explosions4]
type = Explod
trigger1 = time = 12
Anim = 13100
Pos = 0,70
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13103, Explosions5]
type = Explod
trigger1 = time = 15
Anim = 13100
Pos = 65,30
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13103, Explosions6]
type = Explod
trigger1 = time = 18
Anim = 13100
Pos = -60,40
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75
[State 13103, Explosions7]
type = Explod
trigger1 = time = 21
Anim = 13100
Pos = 0,0
Id = 13100
sprpriority = 3
removeongethit = 0
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.75, 0.75

[State 13103, DestroySelf]
type = DestroySelf
trigger1 = time = 35
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
range = -8,8

[State 14500, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,0
anim = 11550
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.5, var(15)*0.5
scale = 0.25, 0.25
sprpriority = 3

[State 14500, Sparkle-2]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,1
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.75, var(15)*0.75
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
triggerall = time < 12
trigger1 = Timemod = 2,0
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
trigger1 = Timemod = 2,1
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
pos = 0,-45

[State 14505, RandomVariable-Scale]
type = VarRandom
trigger1 = 1
v = 13
range = 1,2

[State 14505, RandomVariable-PosX]
type = VarRandom
trigger1 = 1
v = 14
range = -120,120

[State 14505, RandomVariable-PosY]
type = VarRandom
trigger1 = 1
v = 15
range = -120,120

[State 14505, Sparkle-1]
type = Explod
trigger1 = !(time%2)
anim = 11550
id = 11550
postype = p1
pos = var(14), var(15)
ownpal = 1
velocity = -var(14)*0.04, -var(15)*0.04
scale = 0.25*var(13), 0.25*var(13)
sprpriority = 1

[State 14505, Sparkle-2]
type = Explod
trigger1 = time%2
anim = 11555
id = 11555
postype = p1
pos = var(14), var(15)
ownpal = 1
velocity = -var(14)*0.04, -var(15)*0.04
scale = 0.25*var(13), 0.25*var(13)
sprpriority = 0

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

[State 14505, Ball]
type = Explod
trigger1 = (time=5)
Anim = 11590
Pos = 0,0
Id = 11590
velocity = 0,0
sprpriority = 1
removeongethit = 0
bindtime = 999
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.001, 0.001

[State 14505, ModifyExplod]
type = ModifyExplod
trigger1 = (time>5)
id = 11590
supermovetime = 9999
pausemovetime = 9999
scale = 0.001+fvar(1),0.001+fvar(1)

[State 14505, RemoveExplod]
type = RemoveExplod
trigger1 = time = 154 
trigger2 = parent,stateno!= 1600 && parent,stateno!= 4100 && parent,stateno!= 1601
id = 11590

[State 14505, DestroySelf]
type = DestroySelf
trigger1 = time = 155 
trigger2 = parent,stateno!= 1600 && parent,stateno!= 4100 && parent,stateno!= 1601
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
value = ifelse(facing=1,18,-19)

[State 15801, Pos Y]
type = VarSet
trigger1 = !time
v = 5
value = -82

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
palcontrast = 120,0,0
paladd = 15,0,0
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
add = 0-time*10,-64-time*10,-64-time*10
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
