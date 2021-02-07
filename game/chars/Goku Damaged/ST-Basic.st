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
;[Basic ST]-----------------------------------------------------------------
;===========================================================================
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 0
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181

;---------------------------------------------------------------------------
; Win pose 1 - Nothing
[Statedef 181]
type = S
ctrl = 0
anim = 0
velset = 0,0

[State 181, PowerAdd]
type = PowerAdd
trigger1 = Time = 0
value = 500

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;Stand Light Punch (Stand X)
[Statedef 200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 5                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200                       ;Change animation (Def: no change)
poweradd = 20                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 200, SlideFwd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = Time = 0
trigger1 = var(59)<1
x = 6

[State 200, SlideFwd]
type = VelAdd
trigger1 = Time = 0
trigger1 = var(59)>0
x = 6

[State 200, SlideBack]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = Time = 0
trigger1 = var(59)<1
x = -5

[State 200, Swing]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 200, Gokuvoice]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 5
value = 3, 1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 10, 5                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 5, 8                 ;Time attacker pauses, time opponent shakes
sparkno = 0                      ;Spark anim no (Def: set above)
sparkxy = -10, -49               ;X-offset for the "hit spark" rel. to p2,
hitsound = S1, 0                  ;Sound to play on hit
guardsound = S1, 10                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -2             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-2           ;X-velocity at which opponent is pushed,
air.hittime = 12                 ;Time before opponent regains control in air
envshake.time = 4
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Uppercut (Stand X+Y)
[Statedef 204]
type    = S
movetype= A
physics = S
juggle  = 16
poweradd= ifelse(prevstateno = 501, 0, 30)
ctrl = 0
velset = 0,0
anim = 204
sprpriority = 2

[State 204, AssertSpecial]
type = AssertSpecial
triggerall = prevstateno = 501
trigger1 = 1
flag = unguardable

[State 204, SlideFwd]
type = VelAdd
triggerall = prevstateno != 501
trigger1 = command = "holdfwd"
trigger1 = Time = 0
trigger1 = var(59)<1
x = 6

[State 204, SlideBack]
type = VelAdd
triggerall = prevstateno != 501
trigger1 = command = "holdback"
trigger1 = Time = 0
trigger1 = var(59)<1
x = -5

[State 204, 1]
type = PlaySnd
trigger1 = Time = 6
value = 0, 4

[State 204, Gokuvoice]
type = PlaySnd
triggerall = random < 280
trigger1 = Time = 8
value = 3, 1

[State 204, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Up
damage    = 20, 10
priority  = 5
guardflag = MA
pausetime = 10,12
sparkxy = 0,-95
hitsound   = S1,5
guardsound = S1, 10
ground.type = Low
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -1,-9.5
guard.velocity = -6
air.velocity = -1,-7.5
airguard.velocity = -4,-4.5
p2facing = 1
fall = 1
fall.recovertime = 60
getpower = 0
envshake.time = 8
envshake.freq = 120
envshake.ampl = -3
envshake.phase = 140

[State 204, Switch to Quick Kame]
type = ChangeState
triggerall = power >= 1000
triggerall = command = "QuickKame"
trigger1 = movecontact
value = 1000

[State 204, 5]
type = ChangeState
trigger1 = prevstateno = 501
trigger1 = AnimTime = 0
value = 502
ctrl = 0

[State 204, 5]
type = ChangeState
trigger1 = prevstateno != 501
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Medium Punch (Stand Y)
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 8
poweradd= 30
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 2

[State 210, SlideFwd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = Time = 0
trigger1 = var(59)<1
x = 6

[State 210, SlideFwd]
type = VelAdd
trigger1 = Time = 0
trigger1 = var(59)>0
x = 6

[State 210, SlideBack]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = Time = 0
trigger1 = var(59)<1
x = -5

[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 0, 3

[State 210, Gokuvoice]
type = PlaySnd
triggerall = random < 280
trigger1 = Time = 8
value = 3, 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 20, 10
guardflag = MA
pausetime = 7,11
sparkno = 1
sparkxy = -10,-50
hitsound   = S1,1
guardsound = S1, 10
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -2
air.velocity = -2.5,-4
envshake.time = 5
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing light kick (Stand A)
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd= 25
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 230, SlideFwd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = Time = 0
trigger1 = var(59)<1
x = 6

[State 230, SlideFwd]
type = VelAdd
trigger1 = Time = 0
trigger1 = var(59)>0
x = 6

[State 230, SlideBack]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = Time = 0
trigger1 = var(59)<1
x = -5

[State 230, 1]
type = PlaySnd
trigger1 = Time = 7
value = 0, 4

[State 230, Gokuvoice]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 9
value = 3, 1

[State 230, 2]
type = HitDef
trigger1 = Animelem = 2
attr = S, NA
animtype  = Medium
damage    = 15, 7
guardflag = MA
pausetime = 6,8
sparkno = 0
sparkxy = -10,-35
hitsound   = S1,3
guardsound = S1, 10
ground.type = Low
ground.slidetime = 12
ground.hittime  = 11
ground.velocity = -4
air.velocity = -2.5,-3.5
envshake.time = 5
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Launcher Kick (Stand A+B)
[Statedef 206]
type    = S
movetype= A
physics = S
juggle  = 24
poweradd= 35
ctrl = 0
velset = 0,0
anim = 206
sprpriority = 2

[State 206, SlideFwd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = Time = 0
trigger1 = var(59)<1
x = 6

[State 206, SlideBack]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = Time = 0
trigger1 = var(59)<1
x = -5

[State 206, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0, 3

[State 206, Gokuvoice]
type = PlaySnd
triggerall = random < 280
trigger1 = Time = 6
value = 3, 1

[State 206, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Up
damage    = 30, 15
priority  = 5
guardflag = MA
pausetime = 10,12
sparkxy = -10,-100
hitsound   = S1,9
guardsound = S1, 10
ground.type = Low
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -1.5,-10.5
guard.velocity = -6
air.velocity = -1.5,-8.5
airguard.velocity = -4.5,-5.5
p2facing = 1
fall = 1
fall.recovertime = 65
envshake.time = 6
envshake.freq = 120
envshake.ampl = -3
envshake.phase = 140

[State 206, Switch to Quick Kame]
type = ChangeState
triggerall = power >= 1000
triggerall = command = "QuickKame"
trigger1 = movecontact
value = 1000

[State 206, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Medium Kick (Stand B)
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 9
poweradd= 30
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 240, SlideFwd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = Time = 0
trigger1 = var(59)<1
x = 6

[State 240, SlideFwd]
type = VelAdd
trigger1 = Time = 0
trigger1 = var(59)>0
x = 6

[State 240, SlideBack]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = Time = 0
trigger1 = var(59)<1
x = -5

[State 240, 1]
type = PlaySnd
trigger1 = Time = 9
value = 0, 5

[State 240, Gokuvoice]
type = PlaySnd
triggerall = random < 300
trigger1 = Time = 10
value = 3, 2

[State 240, 2]
type = HitDef
trigger1 = Animelem = 2
attr = S, NA
animtype  = Medium
damage    = 25, 12
guardflag = MA
pausetime = 8,10
sparkno = 1
sparkxy = -10,-70
hitsound   = S1,4
guardsound = S1, 10
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2
envshake.time = 6
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Medium Kick 2 (Stand B2)
[Statedef 241]
type    = S
movetype= A
physics = S
juggle  = 9
poweradd= 30
ctrl = 0
velset = 0,0
anim = 241
sprpriority = 2

[State 241, SlideFwd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = Time = 0
trigger1 = var(59)<1
x = 6

[State 241, SlideFwd]
type = VelAdd
trigger1 = Time = 0
trigger1 = var(59)>0
x = 6

[State 241, SlideBack]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = Time = 0
trigger1 = var(59)<1
x = -5

[State 241, 1]
type = PlaySnd
trigger1 = Time = 9
value = 0, 4

[State 241, Gokuvoice]
type = PlaySnd
triggerall = random < 300
trigger1 = Time = 10
value = 3, 2

[State 241, 2]
type = HitDef
trigger1 = Animelem = 3
attr = S, NA
animtype  = Medium
damage    = 25, 12
guardflag = MA
pausetime = 8,10
sparkno = 1
sparkxy = -10,-45
hitsound   = S1,2
guardsound = S1, 10
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2
envshake.time = 6
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 241, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Medium Kick 3 (Stand B3)
[Statedef 242]
type    = S
movetype= A
physics = S
juggle  = 9
poweradd= 30
ctrl = 0
velset = 0,0
anim = 242
sprpriority = 2

[State 241, SlideFwd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = Time = 0
trigger1 = var(59)<1
x = 6

[State 241, SlideFwd]
type = VelAdd
trigger1 = Time = 0
trigger1 = var(59)>0
x = 6

[State 241, SlideBack]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = Time = 0
trigger1 = var(59)<1
x = -5

[State 241, 1]
type = PlaySnd
trigger1 = Time = 9
value = 0, 4

[State 241, Gokuvoice]
type = PlaySnd
triggerall = random < 300
trigger1 = Time = 10
value = 3, 2

[State 241, 2]
type = HitDef
trigger1 = Animelem = 2
attr = S, NA
animtype  = Medium
damage    = 30, 15
guardflag = MA
pausetime = 10,10
sparkno = 1
sparkxy = -10,-70
hitsound   = S1,5
guardsound = S1, 10
fall = 1
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3,-6
air.velocity = -3,-6
envshake.time = 8
envshake.freq = 120
envshake.ampl = -3
envshake.phase = 140

[State 241, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Hard Kick (Stand C)
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 10
poweradd= 40
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2

[State 250, SlideFwd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = Time = 0
trigger1 = var(59)<1
x = 6

[State 250, SlideBack]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = Time = 0
trigger1 = var(59)<1
x = -5

[State 240, 1]
type = PlaySnd
trigger1 = Time = 15
value = 0, 1

[State 230, Gokuvoice]
type = PlaySnd
triggerall = random < 300
trigger1 = Time = 16
value = 3, 2

[State 240, 2]
type = HitDef
trigger1 = Animelem = 4
attr = S, NA
animtype  = Hard
damage    = 35, 17
guardflag = MA
pausetime = 8,8
sparkno = 1
sparkxy = -10,-40
hitsound   = S1,2
guardsound = S1, 10
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5, 0
air.velocity = -5,-2
envshake.time = 5
envshake.freq = 120
envshake.ampl = -3
envshake.phase = 140

[State 240, 3]
type = VelAdd
trigger1 = AnimElem = 4
x = 5

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light punch (Chrouch X)
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
anim = 400
sprpriority = 2

[State 400, Swing]
type = PlaySnd
trigger1 = Time = 4
value = 0, 0

[State 400, Gokuvoice]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 6
value = 3, 1

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 10, 5
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 5,6
sparkno = 0
sparkxy = -10,-35
hitsound   = S1,0
guardsound = S1, 10
ground.type = Low
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -2
air.velocity = -1.5,-3
envshake.time = 4
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 400, 4]
type = ChangeState
triggerall = command = "holddown"
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 400, 4]
type = ChangeState
triggerall = command != "holddown"
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching medium punch (Chrouch Y)
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 20
ctrl = 0
anim = 410
sprpriority = 2

[State 410, Swing]
type = PlaySnd
trigger1 = Time = 6
value = 0, 4

[State 410, Gokuvoice]
type = PlaySnd
triggerall = random < 280
trigger1 = Time = 5
value = 3, 1

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 8, 10
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 12,10
sparkno = 1
sparkxy = -10,-40
hitsound   = S1,1
guardsound = S1, 10
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
air.velocity = -3,-4
envshake.time = 5
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 410, 4]
type = ChangeState
triggerall = command = "holddown"
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 410, 4]
type = ChangeState
triggerall = command != "holddown"
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;Chrouch Ki Shot (Chrouch Z)
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 0
ctrl = 0
anim = 420
sprpriority = 2

[State 420, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
value = S4,9
volume = 250

[State 420, PlaySnd]
type = PlaySnd
trigger1 = Time = 11
value = S4,6
volume = 250

[State 420, Helper]
type = Helper
trigger1 = Time = 11
helpertype = normal
name = "Renzoku Projectile"
ID = 9001
stateno = 9001
pos = 50, -30
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 420, Explod]
type = Explod
trigger1 = Time = 9
anim = 9013
ID = 9013
pos = 30,-45
postype = p1
facing = 1
vfacing = 1
bindtime = 9
removetime = 9
scale = 1,1
sprpriority = 9
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 420, PowerAdd]
type = PowerAdd
trigger1 = Time = 7
trigger2 = Time = 8
trigger3 = Time = 9
trigger4 = Time = 10
trigger5 = Time = 11
value = -40

[State 420, ChangeState]
type = ChangeState
triggerall = power >= 1000
trigger1 = command = "z"
trigger1 = time >= 14
value = 420
ctrl = 0

[State 420, 4]
type = ChangeState
triggerall = command = "holddown"
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 420, 4]
type = ChangeState
triggerall = command != "holddown"
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light kick (Chrouch A)
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 20
ctrl = 0
anim = 430
sprpriority = 2

[State 430, Swing]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 430, Gokuvoice]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 6
value = 3, 1

[State 430, 2]
type = HitDef
trigger1 = Animelem = 2
attr = C, NA
damage    = 15, 7
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 8,10
sparkno = 0
sparkxy = -10,-22
hitsound   = S1,3
guardsound = S1, 10
ground.type = Low
ground.slidetime = 6
ground.hittime  = 10
ground.velocity = -2
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20
envshake.time = 5
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 430, 4]
type = ChangeState
triggerall = command = "holddown"
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 430, 4]
type = ChangeState
triggerall = command != "holddown"
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light kick 2 (Chrouch A2)
[Statedef 431]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 20
ctrl = 0
anim = 431
sprpriority = 2

[State 431, VelSet]
type = VelSet
trigger1 = Time = 0
x = 2

[State 431, Swing]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 431, Gokuvoice]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 6
value = 3, 1

[State 431, 2]
type = HitDef
trigger1 = Animelem = 2
attr = C, NA
damage    = 15, 7
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 8,10
sparkno = 0
sparkxy = -10,-43
hitsound   = S1,3
guardsound = S1, 10
ground.type = Low
ground.slidetime = 6
ground.hittime  = 10
ground.velocity = -3
air.velocity = -2,-5
down.velocity = -5,0
down.hittime = 20
envshake.time = 5
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 431, 4]
type = ChangeState
triggerall = command = "holddown"
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 431, 4]
type = ChangeState
triggerall = command != "holddown"
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Medium Kick (Chrouch B)
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 9
poweradd= 30
ctrl = 0
anim = 440
sprpriority = 2

[State 440, VelAdd]
type = VelAdd
trigger1 = Time = 6
x = 8

[State 20, Dust2]
type = Explod
trigger1 = time = 5
anim = 9006
ID = 9006
pos = -20,0
postype = p1
facing = 1
removetime = 13
scale = 1,1
sprpriority = 0
ontop = 0
shadow = -1
ownpal = 1
removeongethit = 0

[State 430, Swing]
type = PlaySnd
trigger1 = Time = 5
value = 0, 5

[State 430, Gokuvoice]
type = PlaySnd
triggerall = random < 300
trigger1 = Time = 5
value = 3, 2

[State 440, DashSND]
type = PlaySnd
trigger1 = Time = 6
value = 40, 3

[State 440, 3]
type = HitDef
trigger1 = Animelem = 2
attr = C, NA
damage    = 20,10
hitflag = MAFD
guardflag = L
pausetime = 7,8
sparkno = 1
sparkxy = -10,-5
hitsound   = S1,4
guardsound = S1, 10
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3.5,-2
guard.velocity = -2
envshake.time = 6
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 440, VelAdd]
type = VelAdd
trigger1 = movehit
trigger1 = animelem = 2
x = -4

[State 440, 4]
type = ChangeState
triggerall = command = "holddown"
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 440, 4]
type = ChangeState
triggerall = command != "holddown"
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Legsweep (Chrouch C)
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 20
poweradd= 40
ctrl = 0
anim = 450
sprpriority = 3

[State 450, Swing]
type = PlaySnd
trigger1 = Time = 3
trigger2 = animelem = 4
value = 0, 4

[State 450, 3]
type = HitDef
trigger1 = Animelem = 2
attr = C, NA
damage    = 20,10
hitflag = MAFD
guardflag = L
pausetime = 5,6
sparkno = 1
sparkxy = -5,-10
hitsound   = S1,2
guardsound = S1, 10
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3.5,-2
guard.velocity = -2
fall = 1
envshake.time = 4
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 450, 3]
type = HitDef
trigger1 = Animelem = 4
attr = C, NA
damage    = 10,5
hitflag = MAFD
guardflag = L
pausetime = 6,6
sparkno = 1
sparkxy = -5,-10
hitsound   = S1,2
guardsound = S1, 10
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3.5,-2
guard.velocity = -2
envshake.time = 4
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 450, SprPriority]
type = SprPriority
trigger1 = Time > 12
value = -1

[State 450, ChangeAnim]
type = ChangeAnim
trigger1 = time = 12
trigger1 = command != "holdc"
value = 450
elem = 5

[State 450, 4]
type = ChangeState
triggerall = command = "holddown"
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 450, 4]
type = ChangeState
triggerall = command != "holddown"
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Jump Light Smackdown (Jump X)
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 50
poweradd= 30
ctrl = 0
anim = 600
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 0, 4

[State 600, Gokuvoice]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 7
value = 3, 1

[State 600, 2]
type = HitDef
trigger1 = Animelem = 2
attr = A, NA
damage    = 20, 12
guardflag = HA
priority = 8
pausetime = 7,8
sparkno = 0
sparkxy = -10,0
hitsound   = S1,2
guardsound = S1, 10
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.5,10
air.fall=1
fall.damage = 15
down.velocity = -1,-10
down.bounce = 1
envshake.time = 4
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 120
fall.envshake.time = 8
fall.envshake.freq = 120
fall.envshake.ampl = -3
fall.envshake.phase = 120

[State 600, VelAdd]
type = VelAdd
trigger1 = movecontact
trigger1 = time = 9
y = -2

[State 600, 3]
type = CtrlSet
trigger1 = Time = 22
value = 1

;---------------------------------------------------------------------------
;Jump Strong Smackdown (Jump Y)
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 50
poweradd= 40
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = Time = 18
value = 0, 5

[State 430, Gokuvoice]
type = PlaySnd
triggerall = random < 300
trigger1 = Time = 19
value = 3, 2

;[State 610, 2];Hmm maybe
;type = HitDef
;trigger1 = Animelem = 2
;attr = A, NA
;damage    = 15, 7
;guardflag = HA
;priority = 3
;pausetime = 4,6
;sparkno = 0
;sparkxy = -10,-58
;hitsound   = 5,0
;guardsound = S1, 10
;ground.type = High
;ground.slidetime = 5
;ground.hittime  = 5
;ground.velocity = -4
;air.velocity = -12,5
;air.fall=1
;fall.damage = 5
;down.velocity = -6,-6
;down.bounce = 1

[State 610, 2]
type = HitDef
trigger1 = Animelem = 3
attr = A, NA
damage    = 30, 15 ;If you enable the previous hitdef, set this to 15,7
guardflag = HA
priority = 8
pausetime = 7,8
sparkno = 0
sparkxy = -10,-3
hitsound   = S1,5
guardsound = S1, 10
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -3.5,20
air.fall=1
fall.damage = 20
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

[State 610, VelAdd]
type = VelAdd
trigger1 = movecontact
trigger1 = time = 9
y = -2

[State 610, 3]
type = CtrlSet
trigger1 = Time = 22
value = 1

;---------------------------------------------------------------------------
;Jump Light Kick (Jump A)
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 5
poweradd= 25
ctrl = 0
anim = 630
sprpriority = 2

[State 630, VarSet]
type = VarSet
triggerall = command = "holddown"
trigger1 = Time = 1
trigger1 = pos Y < (-30)
var(2) = 1

[State 630, AfterImage]
type = AfterImage
trigger1 = var(2)=1
time = 12
trans = add
TimeGap  = 1
FrameGap = 1
length = 10
PalContrast = 106,106,107
PalAdd      =   5,  5,  5
PalBright = 35,35,36
palpostbright = 3,3,3
palmul = .55,.55,.56

[State 630, VelAdd]
type = VelSet
trigger1 = var(2)=1
x = 6
y = 5

[State 630, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 0

[State 630, 2]
type = HitDef
trigger1 = Animelem = 2
attr = A, NA
damage    = 15+ifelse(var(2)=1,5,0), 7
guardflag = HA
priority = 3
pausetime = 5,6
sparkno = 0
sparkxy = -10,5
hitsound   = S1,1
guardsound = S1, 10
ground.type = High
ground.slidetime = 5
ground.hittime  = 6
ground.velocity = -4
air.velocity = -0.8,-4
envshake.time = 4
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 630, VelAdd]
type = VelAdd
trigger1 = movecontact
trigger1 = time = 5
y = -2

[State 630, 3]
type = CtrlSet
trigger1 = Time = 18
value = 1

;---------------------------------------------------------------------------
;Jump Medium Kick (Jump B)
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 5
poweradd= 30
ctrl = 0
anim = 640
sprpriority = 2

[State 640, VarSet]
type = VarSet
trigger1 = command = "holddown"
trigger1 = Time = 1
trigger1 = pos Y < (-30)
v = 2
value = 1

[State 640, AfterImage]
type = AfterImage
trigger1 = var(2)=1
trigger1 = Time = 1
time = 12
trans = add
TimeGap  = 1
FrameGap = 1
length = 10
PalContrast = 106,106,107
PalAdd      =   5,  5,  5
PalBright = 35,35,36
palpostbright = 3,3,3
palmul = .55,.55,.56

[State 640, VelAdd]
type = VelSet
trigger1 = var(2)=1
trigger1 = Time = 1
x = 8
y = 2

[State 640, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 640, 2]
type = HitDef
trigger1 = Animelem = 2
attr = A, NA
damage    = 20+ifelse(var(2)=1,5,0), 10
guardflag = HA
priority = 3
pausetime = 5,6
sparkno = 0
sparkxy = -10,-6
hitsound   = S1,0
guardsound = S1, 10
ground.type = High
ground.slidetime = 6
ground.hittime  = 7
ground.velocity = -5
air.velocity = -0.9,-5
envshake.time = 5
envshake.freq = 120
envshake.ampl = -2
envshake.phase = 140

[State 640, VelAdd]
type = VelAdd
trigger1 = movecontact
trigger1 = time = 7
y = -3

[State 640, 3]
type = CtrlSet
trigger1 = Time = 22
value = 1

;---------------------------------------------------------------------------
;Jump Hard Kick (Jump C)
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 50
poweradd= 40
ctrl = 0
anim = 650
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0, 5

[State 650, 2]
type = HitDef
trigger1 = Animelem = 2
attr = A, NA
damage    = 40, 25
guardflag = HA
priority = 8
pausetime = 5,5
sparkno = 0
sparkxy = -10,-55
hitsound   = S1,5
guardsound = S1, 10
fall=1
ground.type = High
ground.slidetime = 6
ground.hittime  = 7
ground.velocity = -4,-12
air.velocity = -4,-12
fall.damage = 10
down.velocity = -1,-10
down.bounce = 1
envshake.time = 10
envshake.freq = 120
envshake.ampl = -3
envshake.phase = 140
fall.envshake.time = 10
fall.envshake.freq = 120
fall.envshake.ampl = -2
fall.envshake.phase = 140

[State 650, VelAdd]
type = VelAdd
trigger1 = movecontact
trigger1 = time = 9
y = -3

[State 650, 3]
type = CtrlSet
trigger1 = Time = 30
value = 1

;---------------------------------------------------------------------------
;Charge
[Statedef 700]
type = S
movetype = I
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 700
sprpriority = 2

[State 700, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 3

[State 700, Dust]
type = Explod
triggerall = time >= 50
trigger1 = (Timemod = 8,0)
anim = 9006
ID = 9006
pos = -20,0
postype = p1
facing = 1
removetime = 13
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0
ownpal = 1
removeongethit = 0

[State 700, Dust2]
type = Explod
triggerall = time >= 50
trigger1 = (Timemod = 8,0)
anim = 9007
ID = 9007
pos = 20,0
postype = p1
facing = 1
removetime = 13
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0
ownpal = 1
removeongethit = 0

[State 700, PowerAdd1]
type = PowerAdd
trigger1 = Time < 36
trigger1 = 1
value = 5

[State 700, PowerAdd2]
type = PowerAdd
trigger1 = Time < 90
trigger1 = Time > 35
trigger1 = 1
value = 10

[State 700, Helper]
type = Helper
trigger1 = numhelper(9004)=0
trigger1 = Time = 5
helpertype = normal
name = "Aura"
ID = 9004
stateno = 9004
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 0.75
size.yscale = 0.75

[State 700, PowerAdd3]
type = PowerAdd
trigger1 = Time >= 90
trigger1 = 1
value = 15

[State 700, PalFX]
type = PalFX
trigger1 = Time < 35
trigger1 = time >= 15
trigger1 = (Timemod = 1,0)
time = 20
add = 0,0,0
mul = 320,320,320
invertall = 0
color = 128
ignorehitpause = 1

[State 700, PalFX]
type = PalFX
trigger1 = Time <= 35
trigger1 = Time >= 34
time = 30
add = 0,0,0
mul = 432,432,432
invertall = 0
color = 128
ignorehitpause = 1

[State 700, PalFX]
type = PalFX
trigger1 = Time > 36
trigger1 = (Timemod = 1,0)
time = 30
add = 0,0,0
mul = 512,512,512
invertall = 0
color = 128
ignorehitpause = 1

[State 700, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 90
value = 701

[State 700, ChangeState]
type = ChangeState
trigger1 = command != "holdc"
trigger2 = command != "holdz"
value = 0
ctrl = 1

;===========================================================================
;[End of file]--------------------------------------------------------------
;===========================================================================
