;---------------------------------------------------------------------------
; Format:
; [Statedef STATENO]
; type = ?      S/C/A/L  stand/crouch/air/liedown
; movetype = ?  I/A/H    idle/attack/gethit
; physics = ?   S/C/A/N  stand/crouch/air/none
; juggle = ?             air juggle points move requires
;
; [State STATENO, ?]     ? - any number you choose
; type = ?
; ...

;---------------------------------------------------------------------------
; Lose by Time Over
; CNS difficulty: basic
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Win pose 1

[Statedef 180]
type = S
ctrl = 0
anim = 180
velset = 7,0

[State 183, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 188, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,50]
flag = roundnotover
;---------------------------------------------------------------------------
; Introduction
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0


[State 191:		AssertSpecial]
type			= AssertSpecial
trigger1		= 1
flag			= Intro
flag2			= NoBarDisplay
flag3			= NoMusic

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 30
value = S5,6
volume = 0

[State 191, Babidi]
type = Explod
trigger1 = time = 0
anim = 192
ID =  193
pos = -30,2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 1000
supermove = 1
pausemove =1
scale = 1, 1
sprpriority = 1
ontop = 0
shadow = 255,255,255
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 191, Babidi - Chau]
type = Explod
trigger1 = time = 1000
anim = 193
ID =  194
pos = -30,2
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 46
supermove = 1
pausemove =1
scale = 1, 1
sprpriority = 1
ontop = 0
shadow = 255,255,255
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 70
value = S1,1
volume =999999999999

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 60
value = S920,5
volume =99999999

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 830
value = S920,8
volume =99999999

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 340
value = S920,4
volume =9999999

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 450
value = S920,7
volume =9999999

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 1000
value = S3,6
volume =99999999999999

[State 191, 1]
type = ChangeState
trigger1 = time = 1000
value = 0
;---------------------------------------------------------------------------
; Taunt
; CNS difficulty: easy
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 1]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S5,4
volume = 100

[State 195, 2]
type = ChangeState
trigger1 = Time = 20
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Standing Light Punch
; CNS difficulty: easy
  [Statedef 200]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 200				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.3
y = 0

[State 0, Helper]
type = Helper
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -6,-55
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 15                  ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall = time > 10
trigger1 = command = "x"
value = 201
ctrl = 1

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
; CNS difficulty: easy
  [Statedef 201]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 201				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.3
y = 0

[State 0, Helper]
type = Helper
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -6,-55
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 15                  ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall = time > 10
trigger1 = command = "x"
value = 202
ctrl = 1

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------

[Statedef 202]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  =4				;Number of air juggle points move takes                                ;Commonly-used controllers:
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 200				;Change animation (Def: no change)
poweradd = 65			;Power to add (Def: 0)
sprpriority = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.3
y = 0

[State 0, Helper]
type = Helper
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -6,-55
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 15                  ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -25, -40               ;X-offset for the "hit spark" rel. to p2,
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall = time > 10
trigger1 = command = "x"
value = 210
ctrl = 1

[State 200,5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Standing Medium Punch
; CNS difficulty: easy
[Statedef 210]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 210                       ;Change animation (Def: no change)
poweradd = 20                    ;Power to add (Def: 0)
sprpriority = 2

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.3
y = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, Helper]
type = Helper
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -10,-40
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 210, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 15                  ;Damage that move inflicts, guard damage
animtype = heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
sparkno = s82                     ;Spark anim no (Def: set above)
sparkxy = -25, -40                ;X-offset for the "hit spark" rel. to p2,             ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5            ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -1.5,-5            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12
fall = 1                 ;Time before opponent regains control in air

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 210, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Standing Strong Punch
; CNS difficulty: easy
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 220

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.3
y = 0

[State 0, Helper]
type = Helper
trigger1 = movecontact = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -10,-50
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,13
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value =0,6
volume = 9999999999
channel = -1

[State 210, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 15
animtype = heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
sparkno = -1
sparkxy = -25, -40
ground.type = High
ground.slidetime = 9999999999
ground.hittime  = 10
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 120

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Standing Light Kick
; CNS difficulty: easy
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = 0,0
anim = 230

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.3
y = 0

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -10,-60
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,11
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 15                  ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0
sparkno = s82                     ;Spark anim no (Def: set above)
sparkxy = -20, -10              ;X-offset for the "hit spark" rel. to p2,
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = low               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 6            ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.8             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 200,5]
type = ChangeState
triggerall = time > 10
trigger1 = command = "a"
value = 240
ctrl = 1

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
; CNS difficulty: easy
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 240

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.3
y = 0

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -5,-60
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,11
volume = 9999999999
channel = -1

[State 250, 2]
type = hitdef
trigger1 = animelem =3
attr = S, NA
damage    = 50, 5
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 0
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -.5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Standing Strong Kick
; CNS difficulty: easy
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 260

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.3
y = 0

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -10,-60
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,5
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,12
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 15                  ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 15             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -3            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
; CNS difficulty: easy
[Statedef 260]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 270

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 0.3
y = 0

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -10,-60
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,5
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,12
volume = 9999999999
channel = -1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 15                  ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0
sparkno = -1                   ;Spark anim no (Def: set above)
sparkxy = -20, -30              ;X-offset for the "hit spark" rel. to p2,
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 15             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -3            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
air.hittime = 12

[State 210, 7]
type = ChangeState
triggerall = pos y < 0
trigger1 = AnimTime = 0
value = 1100
ctrl = 1

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Crouching Light Punch
; CNS difficulty: easy
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
anim = 400
velset = 0,0
sprpriority = 1;2

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -20,-30
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 400, 2]
type = HitDef
trigger1 = AnimElem =2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 23, 0			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 8, 8			;Time attacker pauses, time opponent shakes
sparkno = s82				;Spark anim no (Def: set above)
sparkxy = -20, -30		;X-offset for the "hit spark" rel. to p2,
hitsound = 5, 0			;Sound to play on hit
guardsound = 6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,
air.hittime = 12			;Time before opponent regains control in air

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -20,-30
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 35, 3			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8			;Time attacker pauses, time opponent shakes
sparkno = -1				;Spark anim no (Def: set above)
sparkxy = -20, -30		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = 5, 0			;Sound to play on hit
guardsound = 6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12
fall = 1			;Time before opponent regains control in air

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 420

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90
[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 1000,2
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1000,3
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -10,-50
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 420, 2]
type = hitdef
trigger1 = animelem = 2
attr = S, NA
damage    = 40, 5
animtype = Hard
hitflag = MAF
priority = 3
pausetime = 5,5
sparkno =-1
sparkxy = -10,-50;70
hitsound = S5,2
guardsound = 5,2
ground.type = High
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -10,-5
air.velocity = -10,-5
air.hittime = 100
fall = 0
air.cornerpush.veloff = 0

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
; CNS difficulty: easy
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 430

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,5
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,11
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 1000,1
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1000,5
volume = 9999999999
channel = -1

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -20,-5
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 30, 2			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default				;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8			;Time attacker pauses, time opponent shakes
sparkno =-1			;Spark anim no (Def: set above)
sparkxy = -20, -5		;X-offset for the "hit spark" rel. to p2,				;Y-offset for the spark rel. to p1
hitsound = 5, 0			;Sound to play on hit
guardsound = 6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,			;Y-velocity at which opponent is pushed
air.hittime = 12		;Time before opponent regains control in air

[State 430, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Crouching Medium Kick
; CNS difficulty: easy
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 440
[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,11
volume = 9999999999
channel = -1

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 3
;trigger1 = Time = 0
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 40, 7			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default
					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8			;Time attacker pauses, time opponent shakes
sparkno = -1				;Spark anim no (Def: set above)
sparkxy = -30, -5		;X-offset for the "hit spark" rel. to p2,
					;Y-offset for the spark rel. to p1
hitsound = 5, 0			;Sound to play on hit
guardsound = 6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,
					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -30,-5
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 440, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 70
ctrl = 0
anim = 450

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,11
volume = 9999999999
channel = -1

[State 450, 2]
type = HitDef
trigger1 = AnimElem =2
attr = S, NA
damage = 40, 7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -20, -5
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -20,-5
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 450, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Jump Light Punch
; CNS difficulty: easy
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 11
ctrl = 0
anim = 600

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90


[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 40, 7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -10, -15
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = 5,-50
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

;---------------------------------------------------------------------------
; Jump Medium Punch
; CNS difficulty: easy
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 610

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,10
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,4
volume = 9999999999
channel = -1

[State 610, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 55, 7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -30, -45
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -30, -45
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

;---------------------------------------------------------------------------
; Jump Strong Punch
; CNS difficulty: easy
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 70
ctrl = 0
anim = 620

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 1000,2
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1000,3
volume = 9999999999
channel = -1

[State 620, 2]
type = HitDef
trigger1 = AnimElem = 2
;trigger1 = Time = 0
attr = S, NA
damage = 70, 7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -20, -50
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -15, -55
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

;---------------------------------------------------------------------------
; Jump Light Kick
; CNS difficulty: easy
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 20
ctrl = 0
anim = 630

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,5
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,11
volume = 9999999999
channel = -1

[State 630, 2]
type = HitDef
trigger1 = AnimElem =2
attr = S, NA
damage = 30, 7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -40, -50
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -10, -55
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

;---------------------------------------------------------------------------
; Jump Medium Kick
; CNS difficulty: easy
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 640

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
volume = 9999999999
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = 0,11
volume = 9999999999
channel = -1

[State 640, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 45, 3
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
sparkno = -1
sparkxy = -25, -45
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -5, -55
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

;---------------------------------------------------------------------------
; Jump Strong Kick
; CNS difficulty: easy
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 70
ctrl = 0
anim = 650

[State 0, EnvShake]
type = EnvShake
trigger1 = movehit
time = 10
freq = 60
ampl = -2
phase = 90

[State 650, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 65, 6
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
sparkxy = -40, -35
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name =  " spark "
ID = 2019
stateno = 2019
pos = -5, -55
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50
;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -3]
type = Explod
triggerall = var (19) > 1
trigger1 = timemod = 10,0
ID = 60090
anim = 60090
pos = -5,-40
postype = p1
sprpriority = 0
removetime = -2
bindtime = 999999999
ownpal = 1
scale = 0.2,0.2
ontop = 1

[State -3]
type = Explod
triggerall = var (19) > 1
trigger1 = timemod = 10,0
ID = 60091
anim = 60091
pos = 5,-40
postype = p1
sprpriority = 0
removetime = -2
bindtime = 999999999
ownpal = 1
scale = 0.2,0.2
ontop = 1

[State -3]
type = Explod
triggerall = var (19) > 1
trigger1 = timemod = 10,0
ID = 60090
anim = 60090
pos = -12,-6
postype = p1
sprpriority = 0
removetime = -2
bindtime = 999999999
ownpal = 1
scale = 0.2,0.2
ontop = 1

[State -3]
type = Explod
triggerall = var (19) > 1
trigger1 = timemod = 10,0
ID = 60091
anim = 60091
pos = 12,-6
postype = p1
sprpriority = 0
removetime = -2
bindtime = 999999999
ownpal = 1
scale = 0.2,0.2
ontop = 1

[State 0, varset]
type = varset
trigger1 = var(19) <= 0
var(19) = 0
ignorehitpause = 1

[State 0, varadd]
type = varadd
trigger1 = var(19) > 0
var(19) = -1
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno > 0
id = 60090

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno > 0
id = 60091

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno > 0
id = 60092

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno > 0
id = 60093

[State 0, PalFXWiz]
type = PalFX
trigger1 = var(19) > 1 && Timemod = 10,1
time = 30
add = 50,50,0
mul = 255,255,255
sinadd = -20,-20,0,30
invertall = 0
color = 256

[State 0, ChangeState]
type = ChangeState
trigger1 = var(19) = 1 && ctrl = 1
value = 0
ctrl = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = var(19) > 0 && Time = 1 && movetype = A && statetype = S
time = 10
freq = 80
ampl = -4

[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = var(19) > 0 && Time = 1
time = 10
value = 1.5

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = (command != "hold_x" && Time > 20) || (stateno != 2200 )
id = 6070
;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3,]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 100
trigger2 = stateno = 105
value = 1, 0

[State -3,]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
value = 1, 2

[State -3,]
type = PlaySnd
triggerall = Time =5
trigger1 = stateno = 20
trigger2 = stateno = 21
value = 1, 2

[State -3,]
type = PlaySnd
triggerall = Time =30
trigger1 = stateno = 20
trigger2 = stateno = 21
value = 1, 2

[State -3,]
type = PlaySnd
triggerall = Time =60
trigger1 = stateno = 20
trigger2 = stateno = 21
value = 1, 2

[State -3,]
type = PlaySnd
triggerall = Time =90
trigger1 = stateno = 20
trigger2 = stateno = 21
value = 1, 2

[State -3,]
type = PlaySnd
triggerall = Time =120
trigger1 = stateno = 20
trigger2 = stateno = 21
value = 1, 2

[State -3,]
type = PlaySnd
triggerall = Time =150
trigger1 = stateno = 20
trigger2 = stateno = 21
value = 1, 2

[State -3,]
type = PlaySnd
triggerall = Time =180
trigger1 = stateno = 20
trigger2 = stateno = 21
value = 1, 2

[State -3,]
type = PlaySnd
triggerall = Time =210
trigger1 = stateno = 20
trigger2 = stateno = 21
value = 1, 2

[State -3,]
type = PlaySnd
triggerall = Time =240
trigger1 = stateno = 20
trigger2 = stateno = 21
value = 1, 2

[State -3,]
type = PlaySnd
triggerall = Time =270
trigger1 = stateno = 20
trigger2 = stateno = 21
value = 1, 2
