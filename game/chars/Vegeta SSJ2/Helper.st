;================================
;Vegeta Type-R
;================================

;------------------------------------------------------
;Author:	ZGTE
;	http://www.zgtm.tk
;------------------------------------------------------

;-Stateno 8000-8999

;=============================================================
;---------------------------------------------------------------------------
; Format:
;[Statedef ?]
;type            = 
;movetype        = 
;physics         = 
;anim            = 
;velset          = 0,0,0
;ctrl            = 0
;poweradd        = 0
;juggle          = 0
;facep2          = 0
;hitdefpersist   = 0
;movehitpersist  = 0
;hitcountpersist = 0
;sprpriority     = 0
;---------------

;[State 0:     VelSet]
;type            = VelSet
;trigger1        = (!Time)
;x		        = 0
;y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


;---------------

;---------------
;[State 0:     ChangeState]
;type            = ChangeState
;trigger1        = (!AnimTime)
;value           = 0
;ctrl		    = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Ki Shot Helper
[Statedef 8000]
type            = S
movetype        = A
physics         = S
anim            = 8000
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 8000:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 13
y               = 0

[State 8000:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 8000:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 8000:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8005
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

;---------------
;Sound
;---------------

[State 8000:    Sound]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8000,0
channel         = 2
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects
;---------------

[State 8000:    Visible]
type            = Explod
trigger1        = (!Time)
anim            = 9000
ID              = 8000
pos             = 0,0
postype         = p1
facing          = 1
bindtime        = 999999999999999
removetime      = -1
scale           = 1, .5
sprpriority     = 3
removeongethit  = 0
ignorehitpause  = 1

[State 8000:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 5
under           = 0

[State 8000: Dust]
type            = MakeDust
trigger1        = (1)
pos             = 20,57
;pos2           = 0,0
spacing         = 2

[State 8000: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100, 100, 100
trans 		    = add

;---------------
;Hit Details
;---------------

[State 8000: 	HitDef]
type            = HitDef
trigger1        = (1)
attr            = S, NP
hitflag         = MAF
guardflag       = MAF
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 60, 20
pausetime       = 0, 15
guard.pausetime = 0, 15
sparkno         = -1
guard.sparkno   = -1
sparkxy         = 0, 0
hitsound        = 0, 0
guardsound      = 0, 0
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 7
ground.velocity = -7, -1
air.velocity    = -7, 0
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
getpower        = 10, 0
givepower       = 35, 0
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

[State 8000:    Sound Stop]
type            = StopSnd
trigger1        = (Movehit)
channel         = 2

;---------------
[State 8000:    End]
type            = ChangeState
trigger1        = (movecontact)
value           = 8005

[State 8000:    End]
type            = ChangeState
trigger1        = (moveguarded) || ((frontedgedist <= -75) || (backedgedist <= -75))
value           = 8010

;---------------------------------------------------------------------------
; Ki Shot Explode
[Statedef 8005]
type            = S
movetype        = I
physics         = S
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 4
;---------------

[State 8005:    Shake]
type            = EnvShake
trigger1        = 1
time            = 6
freq            = 60
ampl            = -4
phase           = 4

;---------------
;Sound
;---------------

[State 8005:    Sound]
type            = PlaySnd
trigger1        = (!Time)
value           = 8000,1
channel         = 2
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects
;---------------

[State 8005:     Hitspark]
type            = Explod
trigger1        = (!Time)
anim            = 8100
ID              = 8100
pos             = 45,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

;---------------

[State 8005:    Remove]
type            = RemoveExplod
trigger1        = (!Time)
id 		        = 8000

[State 8005:    Remove]
type            = RemoveExplod
trigger1        = (!Time)
id              = 8005

;---------------
[State 8005:    Done]
type            = DestroySelf
trigger1        = (!Time)

;---------------------------------------------------------------------------
; Ki Shot Destroy
[Statedef 8010]
type            = S
movetype        = I
physics         = N
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------

[State 8010:    RemoveExplod]
type            = RemoveExplod
trigger1        = (!Time)

;---------------
[State 8010:    DestroySelf]
type            = DestroySelf
trigger1        = (!Time)

;---------------------------------------------------------------------------
; Buksuda Helper
[Statedef 8120]
type            = S
movetype        = A
physics         = S
anim            = 8010
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 8120:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 17
y               = 0

[State 8120:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 8120:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 8120:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8005
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

;---------------
;Sound
;---------------

[State 8120:    Sound]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8000,0
channel         = 2
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects
;---------------

[State 8120:    Visible]
type            = Explod
trigger1        = (!Time)
anim            = 9015
ID              = 8000
pos             = 0,0
postype         = p1
facing          = 1
bindtime        = 999999999999999
removetime      = -1
scale           = 1, .5
sprpriority     = 3
removeongethit  = 0
ignorehitpause  = 1

[State 8120:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 5
under           = 0

[State 8120: Dust]
type            = MakeDust
trigger1        = (1)
pos             = 20,57
;pos2           = 0,0
spacing         = 1

[State 8120: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .80, .80, .80
palcontrast 	= 100, 100, 100
trans 		    = add

;---------------
;Hit Details
;---------------

[State 8120: 	HitDef]
type            = HitDef
trigger1        = (1)
attr            = S, NP
hitflag         = MAF
guardflag       = MAF
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 100, 40
pausetime       = 0, 65
guard.pausetime = 0, 15
sparkno         = -1
guard.sparkno   = -1
sparkxy         = 0, 0
hitsound        = 0, 0
guardsound      = 0, 0
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 7
ground.velocity = -2, 0
air.velocity    = -3, 0
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
getpower        = 10, 0
givepower       = 35, 0
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

[State 8120:    Sound Stop]
type            = StopSnd
trigger1        = (Movehit)
channel         = 2

;---------------
[State 8120:    End]
type            = ChangeState
trigger1        = (movecontact)
value           = 8125

[State 8120:    End]
type            = ChangeState
trigger1        = (moveguarded) || ((frontedgedist <= -75) || (backedgedist <= -75))
value           = 8130

;---------------------------------------------------------------------------
; Buksuda Explode
[Statedef 8125]
type            = S
movetype        = I
physics         = S
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 4
;---------------

[State 8125:    Shake]
type            = EnvShake
trigger1        = 1
time            = 6
freq            = 60
ampl            = -4
phase           = 4

;---------------
;Sound
;---------------

[State 8125:    Sound]
type            = PlaySnd
trigger1        = (!Time)
value           = 8000,1
channel         = 2
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects
;---------------

[State 8125:     Hitspark]
type            = Explod
trigger1        = (!Time)
anim            = 8110
ID              = 8110
pos             = 45,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 8125:     Hitspark2]
type            = Explod
trigger1        = p2movetype = H && time = 0
anim            = 8100
ID              = 8100
pos             = 45,-65
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 42
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 10
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 8125:     Hitspark3]
type            = Explod
trigger1        = p2movetype = H && time = 0
anim            = 8100
ID              = 8100
pos             = 0,-40
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 42
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 10
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1


;---------------

[State 8125:    Remove]
type            = RemoveExplod
trigger1        = (!Time)
id 		        = 8120

[State 8125:    Remove]
type            = RemoveExplod
trigger1        = (!Time)
id              = 8025

;---------------
[State 8125:    Done]
type            = DestroySelf
trigger1        = (!Time)

;---------------------------------------------------------------------------
; Buksuda Destroy
[Statedef 8130]
type            = S
movetype        = I
physics         = N
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------

[State 8130:    RemoveExplod]
type            = RemoveExplod
trigger1        = (!Time)

;---------------
[State 8130:    DestroySelf]
type            = DestroySelf
trigger1        = (!Time)

;---------------------------------------------------------------------------
; Zanzouken After Image
[Statedef 8020]
type            = S
movetype        = I
physics         = N
anim            = 500
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 8020:    AssertSpecial]
type            = AssertSpecial
trigger1        = (1)
flag            = NoShadow
flag2           = Invisible

[State 8000:     Screen Flash]
type            = EnvColor
trigger1        = p2movetype = H && time = 10
value           = 255,255,255
time            = 5
under           = 0

[State 8020:    PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 0
ignorehitpause  = 1
persistent      = 1

[State 8020:    ScreenBound]
type            = ScreenBound
trigger1        = (1)
value           = 0
movecamera      = 0,0
ignorehitpause  = 1
persistent      = 1

[State 8020:    Bind2Parent]
type            = BindToParent
trigger1        = (1)
time            = 0
facing          = 0
pos             = 0,0

[State 8020:    Fooled!]
type            = HitOverride
trigger1        = (1)
slot            = 1
attr            = SCA, NA, SA, HA, NP, SP, HP
stateno         = 8025
time            = 1
forceair        = 0

[State 8020:    Fooled!]
type            = HitOverride
trigger1        = (1)
slot            = 2
attr            = SCA, NT, ST, HT
stateno         = 8025
time            = 1
forceair        = 0
;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 8020:    AfterImage]
type            = AfterImage
trigger1        = (1)
time            = 5
length          = 2
palcontrast     = 150,150,150
paladd          = 0,0,0
palmul          = .50,.50,.50
framegap        = 1
trans           = Add

;---------------

;---------------
[State 8020:    ChangeState]
type            = ChangeState
trigger1        = (Time > 10)
value           = 8025
ctrl            = 1

;---------------------------------------------------------------------------
; Zanzouken AfterImage Fade
[Statedef 8025]
type            = S
movetype        = I
physics         = N
anim            = 500
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 8025:    AssertSpecial]
type            = AssertSpecial
trigger1        = (1)
flag            = NoShadow
flag2           = Invisible
flag3           = NoAutoTurn

[State 8025:    PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 0

[State 8025:    Screenbound]
type            = ScreenBound
trigger1        = (1)
value           = 0
movecamera      = 0,0

[State 8025:    NotHitBy]
type            = NotHitBy
trigger1        = (1)
value           = SCA, NA, SA, HA, NP, SP, HP

[State 8025:    Bind2Parent]
type            = BindToParent
trigger1        = (1)
time            = 0
pos             = 0,0

[State 8025:    VarSet]
type            = VarSet
trigger1        = (!Time)
var(20)         = 150

[State 8025:    VarSet]
type            = VarSet
trigger1        = (var(20) = 150)
var(21)         = 0

[State 8025:    VarSet]
type            = VarSet
trigger1        = (var(20) = 35)
var(21)         = 1

[State 8025:    VarAdd]
type            = VarAdd
trigger1        = (1)
var(20)         = IfElse(var(21) = 0, -1, 1)

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------
[State 8025:    AfterImage]
type            = AfterImage
trigger1        = (1)
time            = 5
length          = 2
palcontrast     = var(20),var(20),var(20)
paladd          = 0,0,0
palmul          = .50,.50,.50
framegap        = 1
trans           = Add

;---------------

;---------------
[State 8025:    End]
type            = DestroySelf
trigger1        = (Time > 101)

;---------------------------------------------------------------------------
; Push Effect
[Statedef 8030]
type            = S
movetype        = I
physics         = S
anim            = 8030
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

[State 8030:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 15
y		        = 0

[State 8030:    PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 8030:    NotHitBy]
type            = NotHitBy
trigger1        = (1)
time            = 1
value           = SCA

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


;---------------

;---------------
[State 8030:    DestroySelf]
type            = DestroySelf
trigger1        = (Time = 20)

;---------------------------------------------------------------------------
;Rock
[Statedef 8200]
type 			= S
movetype		= I
physics		    = N
anim			= 8200
;velset		    = 0,0
ctrl			= 0
poweradd		= 0
juggle		    = 0
facep2		    = 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 0

[State 8200:	SprPriority]
type			= SprPriority
trigger1		= (!Time)
value			= (IfElse(Random <= 499,3,-3))

[State Spinning the Rocks]
type        = VelAdd
trigger1    = (vel y < 50)
x           = ifelse(parentdist x<=0,-3,3)
y           = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 8200:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			    = 0
range			= -200,200

[State 8200:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(1)		    = (Parent, StateNo)

[State 8200:	PosSet]
type			= PosSet
trigger1		= (!Time)
x			    = var(0)
y			    = 0

[State 8200:	VelSet]
type			= VelSet
trigger1		= (Time = 1)
x			    = (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			    = (IfElse(Random <= 499,-.5,-1))

[State 8200:	VelAdd]
type			= VelAdd
trigger1		= (Parent, StateNo != Var(1))
y			    = .5

[State 8200:	PlaySnd]
type			= PlaySnd
trigger1		= (!Time) && (Const(Size.XScale) <= 1)
value			= S0,3

[State 8200:	PlaySnd]
type			= PlaySnd
trigger1		= (!Time) && (Const(Size.XScale) > 1)
value			= S0,1

[State 8200:	PlaySnd]
type			= PlaySnd
trigger1		= (Pos Y >= 1)
value			= S0,2

[State 8200:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 15
timegap		    = 1
framegap 		= 2
length 		    = 10
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 110,110,110
trans 		    = add

[State 8200:	DestroySelf]
type			= DestroySelf
trigger1		= (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)

;---------------------------------------------------------------------------
;Rock 1
[Statedef 8210]
type 			= S
movetype		= I
physics		    = N
anim			= 8210
;velset		    = 0,0
ctrl			= 0
poweradd		= 0
juggle		    = 0
facep2		    = 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 0

[State 8210:	SprPriority]
type			= SprPriority
trigger1		= (!Time)
value			= (IfElse(Random <= 499,3,-3))

[State Spinning the Rocks]
type        = VelAdd
trigger1    = (vel y < 50)
x           = ifelse(parentdist x<=0,-3,3)
y           = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 8210:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			    = 0
range			= -200,200

[State 8210:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(1)		    = (Parent, StateNo)

[State 8210:	PosSet]
type			= PosSet
trigger1		= (!Time)
x			    = var(0)
y			    = 0

[State 8210:	VelSet]
type			= VelSet
trigger1		= (Time = 1)
x			    = (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			    = (IfElse(Random <= 499,-1.5,-2.5))

[State 8210:	VelAdd]
type			= VelAdd
trigger1		= (Parent, StateNo != Var(1))
y			    = .1

[State 8210:	PlaySnd]
type			= PlaySnd
trigger1		= (!Time)
value			= S2,2

[State 8210:	PlaySnd]
type			= PlaySnd
trigger1		= (Pos Y >= 1)
value			= S1,9

[State 8210:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 15
timegap		    = 1
framegap 		= 2
length 		    = 10
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 110,110,110
trans 		    = add

[State 8210:	DestroySelf]
type			= DestroySelf
trigger1		= (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)

;---------------------------------------------------------------------------
;Rock 2
[Statedef 8220]
type 			= S
movetype		= I
physics		    = N
anim			= 8220
;velset		    = 0,0
ctrl			= 0
poweradd		= 0
juggle		    = 0
facep2		    = 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 0

[State 8220:	SprPriority]
type			= SprPriority
trigger1		= (!Time)
value			= (IfElse(Random <= 499,3,-3))

[State Spinning the Rocks]
type        = VelAdd
trigger1    = (vel y < 50)
x           = ifelse(parentdist x<=0,-3,3)
y           = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 8220:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			= 0
range			= -200,200

[State 8220:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(1)		= (Parent, StateNo)

[State 8220:	PosSet]
type			= PosSet
trigger1		= (!Time)
x			= var(0)
y			= 0

[State 8220:	PosSet]
type			= PosSet
trigger1		= (!Time)
y			= 0

[State 8220:	VelSet]
type			= VelSet
trigger1		= (Time = 1)
x			= (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			= (IfElse(Random <= 499,-2,-3))

[State 8220:	VelAdd]
type			= VelAdd
trigger1		= (Parent, StateNo != Var(1))
y			= .1

[State 8220:	PlaySnd]
type			= PlaySnd
trigger1		= (!Time)
value			= S2,2

[State 8220:	PlaySnd]
type			= PlaySnd
trigger1		= (Pos Y >= 1)
value			= S1,9

[State 8220:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 15
timegap		= 1
framegap 		= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 8220:	DestroySelf]
type			= DestroySelf
trigger1		= (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)

;---------------------------------------------------------------------------
; Renzenko Helper
[Statedef 8500]
type            = S
movetype        = A
physics         = S
anim            = 8000
velset          = 0,0,0
ctrl            = 0
poweradd        = -150
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 8500:	VelSet]
type			= VelSet
trigger1		= (!time)
y			    = ifelse(random>500,0,ifelse(random>500,-2,2))

[State 8500:	VelSet]
type			= VelSet
trigger1		= (time > 1)
x			    = 13

[State 8500:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 8500:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 8500:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8505
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

;---------------
;Sound
;---------------

[State 8500:    Sound]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8000,0
channel         = 2
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects
;---------------

[State 8500:    Visible]
type            = Explod
trigger1        = (!Time)
anim            = 9000
ID              = 8500
pos             = 0,0
postype         = p1
facing          = 1
bindtime        = 999999999999999
removetime      = -1
scale           = 1, .5
sprpriority     = 3
removeongethit  = 0
ignorehitpause  = 1

[State 8500:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 5
under           = 0

[State 8500: Dust]
type            = MakeDust
trigger1        = (1)
pos             = 20,floor(-pos y)
;pos2           = 0,0
spacing         = 2

[State 8500: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100, 100, 100
trans 		    = add

;---------------
;Hit Details
;---------------

[State 8500: 	HitDef]
type            = HitDef
trigger1        = (1)
attr            = S, NP
hitflag         = MAFPD
guardflag       = MAFP
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 30, 10
pausetime       = 0, 15
guard.pausetime = 0, 15
sparkno         = -1
guard.sparkno   = -1
sparkxy         = 0, 0
hitsound        = 0, 0
guardsound      = 0, 0
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -2, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

[State 8500:    Sound Stop]
type            = StopSnd
trigger1        = (Movehit)
channel         = 2

;---------------
[State 8500:    End]
type            = ChangeState
trigger1        = (movecontact)
value           = 8505

[State 8500:    End]
type            = ChangeState
trigger1        = (moveguarded) || ((frontedgedist <= -75) || (backedgedist <= -75))
value           = 8510

;---------------------------------------------------------------------------
; Renzenko Explode
[Statedef 8505]
type            = S
movetype        = I
physics         = S
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 4
;---------------

[State 8505:    Shake]
type            = EnvShake
trigger1        = 1
time            = 6
freq            = 60
ampl            = -4
phase           = 4

;---------------
;Sound
;---------------

[State 8505:    Sound]
type            = PlaySnd
trigger1        = (!Time)
value           = 8000,1
channel         = 2
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects
;---------------

[State 8505:     Hitspark]
type            = Explod
trigger1        = (!Time)
anim            = 8100
ID              = 8100
pos             = 45,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

;---------------

[State 8505:    Remove]
type            = RemoveExplod
trigger1        = (!Time)
id 		        = 8500

[State 8505:    Remove]
type            = RemoveExplod
trigger1        = (!Time)
id              = 8505

;---------------
[State 8505:    Done]
type            = DestroySelf
trigger1        = (!Time)

;---------------------------------------------------------------------------
; Renzenko Destroy
[Statedef 8510]
type            = S
movetype        = I
physics         = N
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------

[State 8510:    RemoveExplod]
type            = RemoveExplod
trigger1        = (!Time)

;---------------
[State 8510:    DestroySelf]
type            = DestroySelf
trigger1        = (!Time)

;---------------------------------------------------------------------------
; Final flash orb Helper
[Statedef 8520]
type            = S
movetype        = A
physics         = S
anim            = 7046
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 8520:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 16
y               = 0

[State 8520:    Veladd]
type            = Veladd
trigger1        = (Time > 5)
x               = 2

[State 8520:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 8520:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 8520:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8525
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

;---------------
;Sound
;---------------

[State 8520:    Sound]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8050,2
channel         = 2
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects
;---------------

[State 8520:    Visible]
type            = Explod
trigger1        = (!Time)
anim            = 9000
ID              = 8000
pos             = 0,0
postype         = p1
facing          = 1
bindtime        = 999999999999999
removetime      = -1
scale           = 1, .5
sprpriority     = 3
removeongethit  = 0
ignorehitpause  = 1

[State 8520:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 10
under           = 1

[State 8520: Dust]
type            = MakeDust
trigger1        = (1)
pos             = 20,57
;pos2           = 0,0
spacing         = 1

[State 8520: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .80, .80, .80
palcontrast 	= 100, 100, 100
trans 		    = add

;---------------
;Hit Details
;---------------

[State 8520: 	HitDef]
type            = HitDef
trigger1        = (1)
attr            = S, NP
hitflag         = MAF
guardflag       = MAF
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 180, 40
pausetime       = 0, 15
guard.pausetime = 0, 15
sparkno         = -1
guard.sparkno   = -1
sparkxy         = 0, 0
hitsound        = 0, 0
guardsound      = 0, 0
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 7
ground.velocity = -7, -1
air.velocity    = -7, 0
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
getpower        = 10, 0
givepower       = 35, 0
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

[State 8520:    Sound Stop]
type            = StopSnd
trigger1        = (Movehit)
channel         = 2

;---------------
[State 8520:    End]
type            = ChangeState
trigger1        = (movecontact)
value           = 8525

[State 8520:    End]
type            = ChangeState
trigger1        = (moveguarded) || ((frontedgedist <= -75) || (backedgedist <= -75))
value           = 8526

;---------------------------------------------------------------------------
; Final flash orb Explode
[Statedef 8525]
type            = S
movetype        = I
physics         = S
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 4
;---------------

[State 8525:    Shake]
type            = EnvShake
trigger1        = 1
time            = 6
freq            = 60
ampl            = -4
phase           = 4

;---------------
;Sound
;---------------

[State 8525:    Sound]
type            = PlaySnd
trigger1        = (!Time)
value           = 8050,3
channel         = 2
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects
;---------------

[State 8525:     Hitspark]
type            = Explod
trigger1        = (!Time)
anim            = 8055
ID              = 8055
pos             = 45,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

;---------------

[State 8525:    Remove]
type            = RemoveExplod
trigger1        = (!Time)
id 		        = 8520

[State 8525:    Remove]
type            = RemoveExplod
trigger1        = (!Time)
id              = 8525

;---------------
[State 8525:    Done]
type            = DestroySelf
trigger1        = (!Time)

;---------------------------------------------------------------------------
; Final flash orb Destroy
[Statedef 8526]
type            = S
movetype        = I
physics         = N
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------

[State 8526:    RemoveExplod]
type            = RemoveExplod
trigger1        = (!Time)

;---------------
[State 8526:    DestroySelf]
type            = DestroySelf
trigger1        = (!Time)

;---------------------------------------------------------------------------
;Charge ball
[Statedef 7045]
type            = S
movetype        = I
physics         = N
anim            = 7045
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 60
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100, 100, 100
trans 		    = add

[State 0:    DestroySelf]
type 			= DestroySelf
trigger1 		= (Time = 60)

;---------------------------------------------------------------------------
; GalicHo Projectile Helper
[Statedef 73002]
type            = S
movetype        = A
physics         = S
anim            = 8050
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 16
y               = 0

[State 0:    Veladd]
type            = Veladd
trigger1        = (Time > 5)
x               = 2

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 0:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8525
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

;---------------
;Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = (time = 0)
value           = 3000 ,1
volume          = 255
channel         = 4

;---------------
;Effects
;---------------

[State 0:    Visible]
type            = Explod
trigger1        = (!Time)
anim            = 9000
ID              = 8000
pos             = 0,0
postype         = p1
facing          = 1
bindtime        = 999999999999999
removetime      = -1
scale           = 1, .5
sprpriority     = 3
removeongethit  = 0
ignorehitpause  = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 10
under           = 1

[State 0: Dust]
type            = MakeDust
trigger1        = (1)
pos             = 20,57
;pos2           = 0,0
spacing         = 1

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .80, .80, .80
palcontrast 	= 100, 100, 100
trans 		    = add

;---------------
;Hit Details
;---------------

[State      0: 	HitDef]
type            = HitDef
trigger1        = (1)
attr            = S, NP
hitflag         = MAF
guardflag       = MAF
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 160, 60
pausetime       = 0, 15
guard.pausetime = 0, 15
sparkno         = -1
guard.sparkno   = -1
sparkxy         = 0, 0
hitsound        = 0, 0
guardsound      = 0, 0
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 7
ground.velocity = -7, -1
air.velocity    = -7, 0
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
getpower        = 10, 0
givepower       = 35, 0
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

[State 0:    Sound Stop]
type            = StopSnd
trigger1        = (Movehit)
channel         = 2

;---------------
[State 0:    End]
type            = ChangeState
trigger1        = (movecontact)
value           = 73525

[State 0:    End]
type            = ChangeState
trigger1        = (moveguarded) || ((frontedgedist <= -75) || (backedgedist <= -75))
value           = 73526

;---------------------------------------------------------------------------
; GH Explode
[Statedef 73525]
type            = S
movetype        = I
physics         = S
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 4
;---------------

[State 0:    Shake]
type            = EnvShake
trigger1        = 1
time            = 6
freq            = 60
ampl            = -4
phase           = 4

;---------------
;Sound
;---------------

[State 0:    Sound]
type            = PlaySnd
trigger1        = (!Time)
value           = 8050,3
channel         = 2
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects
;---------------

[State 0:     Hitspark]
type            = Explod
trigger1        = (!Time)
anim            = 8052
ID              = 8052
pos             = 65,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

;---------------

[State 0:    Remove]
type            = RemoveExplod
trigger1        = (!Time)
id 		        = 73002

[State 0:    Remove]
type            = RemoveExplod
trigger1        = (!Time)
id              = 73525

;---------------
[State 0:    Done]
type            = DestroySelf
trigger1        = (!Time)

;---------------------------------------------------------------------------
; GH Destroy
[Statedef 73526]
type            = S
movetype        = I
physics         = N
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------

[State 0:    RemoveExplod]
type            = RemoveExplod
trigger1        = (!Time)

;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (!Time)

;---------------------------------------------------------------------------
;BBA Charge ball
[Statedef 7147]
type            = S
movetype        = I
physics         = N
anim            = 7146
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .80, .80, .80
palcontrast 	= 100, 100, 100
trans 		    = add

[State 0:    DestroySelf]
type 			= DestroySelf
trigger1 		= (Time = 50)

;---------------------------------------------------------------------------
; BBA Projectile Helper
[Statedef 73100]
type            = S
movetype        = A
physics         = S
anim            = 8153
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 16
y               = 0

[State 0:    Veladd]
type            = Veladd
trigger1        = (Time > 5)
x               = 2

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 0:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8525
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

;---------------
;Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = (time = 0)
value           = 3000 ,1
volume          = 255
channel         = 4

;---------------
;Effects
;---------------

[State 0:    Visible]
type            = Explod
trigger1        = (!Time)
anim            = 9000
ID              = 8000
pos             = 0,0
postype         = p1
facing          = 1
bindtime        = 999999999999999
removetime      = -1
scale           = 1, .5
sprpriority     = 3
removeongethit  = 0
ignorehitpause  = 1

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 10
under           = 1

[State 0: Dust]
type            = MakeDust
trigger1        = (1)
pos             = 20,57
;pos2           = 0,0
spacing         = 1

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .80, .80, .80
palcontrast 	= 100, 100, 100
trans 		    = add
;---------------
;Hit Details
;---------------

[State      0: 	HitDef]
type            = HitDef
trigger1        = (1)
attr            = S, NP
hitflag         = MAF
guardflag       = MAF
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 220, 80
pausetime       = 0, 15
guard.pausetime = 0, 15
sparkno         = -1
guard.sparkno   = -1
sparkxy         = 0, 0
hitsound        = 0, 0
guardsound      = 0, 0
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 7
ground.velocity = -7, -1
air.velocity    = -7, 0
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
getpower        = 10, 0
givepower       = 35, 0
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

[State 0:    Sound Stop]
type            = StopSnd
trigger1        = (Movehit)
channel         = 2

;---------------
[State 0:    End]
type            = ChangeState
trigger1        = (movecontact)
value           = 73101

[State 0:    End]
type            = ChangeState
trigger1        = (moveguarded) || ((frontedgedist <= -75) || (backedgedist <= -75))
value           = 73102

;---------------------------------------------------------------------------
; BBA orb Explode
[Statedef 73101]
type            = S
movetype        = I
physics         = S
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 4
;---------------

[State 0:    Shake]
type            = EnvShake
trigger1        = 1
time            = 6
freq            = 60
ampl            = -4
phase           = 4

;---------------
;Sound
;---------------

[State 0:    Sound]
type            = PlaySnd
trigger1        = (!Time)
value           = 8050,3
channel         = 2
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects
;---------------

[State 0:     Hitspark]
type            = Explod
trigger1        = (!Time)
anim            = 8055
ID              = 8055
pos             = 65,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Hitspark2]
type            = Explod
trigger1        = p2movetype = H && time = 0
anim            = 8100
ID              = 8100
pos             = 45,-65
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 42
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 10
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Hitspark3]
type            = Explod
trigger1        = p2movetype = H && time = 0
anim            = 8100
ID              = 8100
pos             = 0,-40
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 42
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 10
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

;---------------

[State 0:    Remove]
type            = RemoveExplod
trigger1        = (!Time)
id 		        = 73100

[State 0:    Remove]
type            = RemoveExplod
trigger1        = (!Time)
id              = 73101

;---------------
[State 0:    Done]
type            = DestroySelf
trigger1        = (!Time)

;---------------------------------------------------------------------------
; BBA orb Destroy
[Statedef 73102]
type            = S
movetype        = I
physics         = N
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------

[State 0:    RemoveExplod]
type            = RemoveExplod
trigger1        = (!Time)

;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (!Time)

;---------------------------------------------------------------------------
;FSA Charge ball
[Statedef 7148]
type            = S
movetype        = I
physics         = N
anim            = 7041
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 9999999
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .80, .80, .80
palcontrast 	= 100, 100, 100
trans 		    = add


[State 0:        DestroySelf]
type 			= DestroySelf
trigger1 		= (Time=ifelse(parent,stateno=3110,-1,51))
trigger2 		= (parent,stateno=3105)
trigger3 		= (parent,movetype=H)

;---------------------------------------------------------------------------
; Final Shine attack Beam
[Statedef 8060]
type            = S
movetype        = A
physics         = S
anim            = 7042
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 8060:    Velset]
type            = VelSet
trigger1        = (!Time)
x               = 0
y               = 0

[State 8060:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 8060:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 8060:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8065
attr            = SCA, NP, SP, HP
ignorehitpause  = 1


;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 8060:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 20
timegap		    = 2
framegap 		= 3
length 		    = 8
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100,100,100
trans 		    = add

[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
facing          = 0
pos             = 60, -60
;ignorehitpause = 0
;persistent = 1

;---------------
;Hit Details
;---------------

[State 8060: 	HitDef]
type            = HitDef
trigger1        = (!Time)
attr 			= S, SP
hitflag 		= MAF
guardflag 		= MA
animtype 		= Hard
air.animtype 	= Hard
fall.animtype 	= Back
priority 		= 4,Hit
damage 		    = 200,85
pausetime 		= 0,5
guard.pausetime =  0,10
sparkno 		= S7043
guard.sparkno 	= S7043
sparkxy 		= 0, 0
hitsound 		= S3200 ,2
guardsound 		= S3200 ,2
ground.type 	= High
air.type 		= High
ground.slidetime =  0
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
ground.slidetime    = 25
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -15, -4
air.velocity    = -15, -4
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
getpower        = 30, 0
givepower       = 50, 10
envshake.time   = 10
envshake.freq   = 80
envshake.ampl   = -3
envshake.phase  = 2

[State 8060:     Hitspark1]
type            = Explod
trigger1        = p2movetype = H && time = 10
anim            = 8100
ID              = 8100
pos             = 45,-45
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 42
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 10
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 8060:     Hitspark2]
type            = Explod
trigger1        = p2movetype = H && time = 10
anim            = 8100
ID              = 8100
pos             = 0,-10
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 42
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 10
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 8060:     Hitspark3]
type            = Explod
trigger1        = p2movetype = H && time = 10
anim            = 8100
ID              = 8100
pos             = 15,-75
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 42
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 10
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 8060:     Hitspark4]
type            = Explod
trigger1        = p2movetype = H && time = 10
anim            = 8100
ID              = 8100
pos             = 55,-55
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 42
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 10
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

;---------------

;---------------

[State 8060:    End]
type            = DestroySelf
trigger1        = (!Animtime)

;---------------------------------------------------------------------------
;Final Flash Charge ball
[Statedef 7150]
type            = S
movetype        = I
physics         = N
anim            = 8059
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 9999999
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .80, .80, .80
palcontrast 	= 100, 100, 100
trans 		    = add


[State 0:        DestroySelf]
type 			= DestroySelf
trigger1 		= (Time=ifelse(parent,stateno=3200,-1,51))
trigger2 		= (parent,stateno=3201)
trigger3 		= (parent,movetype=H)

;---------------------------------------------------------------------------
; Final Flash Beam
[Statedef 8061]
type            = S
movetype        = A
physics         = S
anim            = 8062
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 8061:    Velset]
type            = VelSet
trigger1        = (!Time)
x               = 0
y               = 0

[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 8061:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 8062:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8065
attr            = SCA, NP, SP, HP
ignorehitpause  = 1


;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 8062:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 20
timegap		    = 2
framegap 		= 3
length 		    = 8
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100,100,100
trans 		    = add

[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
facing          = 0
pos             = 45, -53
;ignorehitpause = 0
;persistent = 1

;---------------
;Hit Details
;---------------

[State 8062: 	HitDef]
type            = HitDef
trigger1        = (!Time)
attr 			= S, SP
hitflag 		= MAF
guardflag 		= MA
animtype 		= Hard
air.animtype 	= Hard
fall.animtype 	= Back
priority 		= 4,Hit
damage 		    = 350,155
pausetime 		= 0,15
guard.pausetime =  0,10
sparkno 		= S8055
guard.sparkno 	= S8055
sparkxy 		= 0, 0
hitsound 		= S8050 ,3
guardsound 		= S8050 ,3
ground.type 	= High
air.type 		= High
ground.slidetime =  0
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
ground.slidetime    = 25
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -15, -3
air.velocity    = -15, -3
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
getpower        = 30, 0
givepower       = 50, 10
envshake.time   = 10
envshake.freq   = 80
envshake.ampl   = -3
envshake.phase  = 2

[State 8060:     Hitspark1]
type            = Explod
trigger1        = p2movetype = H && time = 10
anim            = 8100
ID              = 8100
pos             = 45,-45
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 42
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 10
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 8060:     Hitspark2]
type            = Explod
trigger1        = p2movetype = H && time = 10
anim            = 8100
ID              = 8100
pos             = 0,-10
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 42
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 10
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 8060:     Hitspark3]
type            = Explod
trigger1        = p2movetype = H && time = 10
anim            = 8100
ID              = 8100
pos             = 15,-75
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 42
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 10
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 8060:     Hitspark4]
type            = Explod
trigger1        = p2movetype = H && time = 10
anim            = 8100
ID              = 8100
pos             = 55,-55
postype         = p2
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = 42
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 10
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

;---------------

;---------------

[State 8060:    End]
type            = DestroySelf
trigger1        = (!Animtime)

;---------------------------------------------------------------------------
