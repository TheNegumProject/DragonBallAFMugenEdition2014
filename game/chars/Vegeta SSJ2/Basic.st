;================================
;Vegeta Type-R
;================================

;------------------------------------------------------
;Author:	ZGTE
;	http://www.zgtm.tk
;------------------------------------------------------

;-Stateno 170-999

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
;sprpriority     = 2
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
; Lose by Time Over
[Statedef 170]
type            = S
ctrl            = 0
anim            = 170+(10000*var(1))
velset          = 0,0

[State 170:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type            = S

[State 180:     1]
type            = ChangeState
trigger1        = (!Time)
value           = ifelse(random > 500,182,181)

;---------------------------------------------------------------------------
; Win pose 1
[Statedef 181]
type            = S
ctrl            = 0
anim            = 181+(10000*var(1))
velset          = 0,0

;---------------
;Sound
;---------------

;You haven't a clue
;[State 181, ]
;type            = PlaySnd
;trigger1        = animelem = 3
;value           = 60, 1
;volume          = 255
;channel         = 2

;---------------

[State 181:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1
;---------------------------------------------------------------------------
; Win pose 2
[Statedef 182]
type            = S
ctrl            = 0
anim            = 182+(10000*var(1))
velset          = 0,0

[State 191:     Win 2]
type            = AssertSpecial
trigger1        = (1)
flag            = NoBarDisplay

;---------------
;Sound
;---------------

;Did you come all the way here just to get killed
[State 181, ]
type            = PlaySnd
trigger1        = animelem = 3
value           = 60, 1
volume          = 255
channel         = 2

[State 181:     SUBS- Did you come..]
type            = Explod
trigger1        = (animelem = 3)
anim            = 8901
ID              = 8901
pos             = 50, 220
postype         = left
facing          = ifelse(teamside = 1, 1, 1)
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1
;---------------

[State 182:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1
;---------------------------------------------------------------------------
; Intro Decider
[Statedef 190]
type            = S

[State 190:     3]
type            = ChangeState
trigger1        = (Random >= 500)
value           = 191

;---------------------------------------------------------------------------
; Transforming intro
[Statedef 191]
type            = S
movetype        = I
physics         = N
anim            = 191  
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 191:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 191

[State 191:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

[State 191:     Screen Flash]
type            = EnvColor
trigger1        = (Time = 220)
value           = 255,255,255
time            = 5
under           = 0

[State 191:     Screen Flash]
type            = EnvColor
trigger1        = (AnimTime = 0)
value           = 255,255,255
time            = 8
under           = 0

[State 191:     BGPalFX]
type            = BGPalFX
trigger1        = ((Time > 220)&& ((GameTime%70) = 0))
time		    = 1
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 191:		BGPalFX]
type			= BGPalFX
trigger1		= ((Time > 220) && ((GameTime%70) = 0))
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 191:     EnvShake]
type 			= EnvShake
trigger1 		= ((Time > 220) && (TimeMod = 10, 0))
time 			= 10
freq 			= 90
ampl 			= ifelse(power < 2000, 3, 6)
;phase 		    = 

;---------------
;Sound
;---------------

[State 191:  I am Vegeta]
type 		    = PlaySnd
trigger1        = (Time = 90)
value           = 60,0
volume          = 255
channel         = 1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 191:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 225)
value           = 700, 0
volume		    = 255
channel	        = 3
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 191:     PlaySND]
type            = PlaySnd
trigger1        = (AnimTime = 0)
value           = 700, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 191:     PlaySND]
type            = PlaySnd
trigger1        = ((Time > 225) && (TimeMod = 24, 0))
value           = 700, 1
volume		    = 255
channel	        = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

;---------------
;Effects
;---------------

[State 191:     SUBS- I AM PRINCE VEGETA!!]
type            = Explod
trigger1        = (Time = 90)
anim            = 8900
ID              = 8900
postype         = left
pos             = 120, 220
facing          = ifelse(teamside = 1, 1, 1)
bindtime        = 1
removetime      = -2
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1

[State 191:     Aura]
type            = Explod
trigger1        = (Time = 225)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 0
pausemovetime   = 0
scale           = .7, .7
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 191:    Energy Outburst]
type            = Explod
trigger1        = (Time = 225)
anim            = 7021
ID              = 7021
pos             = 3,-50
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:     Elec]
type            = Explod
trigger1        = (Time = 225)
anim            = 7049
ID              = 7049
pos             = 13,-45
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 0
pausemovetime   = 0
scale           = .5, .5
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:     Elec]
type            = Explod
trigger1        = (Time = 225)
anim            = 7049
ID              = 7049
pos             = -8,-15
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 0
pausemovetime   = 0
scale           = .5, .5
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:     Elec]
type            = Explod
trigger1        = (Time = 225)
anim            = 7049
ID              = 7049
pos             = 16,-30
postype         = p1
facing          = 1
vfacing         = -1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 0
pausemovetime   = 0
scale           = .5, .5
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 191:    Dust Left]
type            = Explod
trigger1        = (Time = 225)
anim            = 7015
ID              = 7015
pos             = -10,7
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 191:    Dust Left]
type            = Explod
trigger1        = (Time = 225)
anim            = 7015
ID              = 7015
pos             = 10,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 191:    C Dust Left]
type            = Explod
trigger1        = (time > 225) && (TimeMod = 24,0)
anim            = 7011
ID              = 705
pos             = -10,7
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 191:    C Dust Left]
type            = Explod
trigger1        = (time > 225) && (TimeMod = 24,0)
anim            = 7011
ID              = 705
pos             = 10,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 191:    CB Dust Left]
type            = Explod
trigger1        = (time > 225) && (TimeMod = 24,0)
anim            = 7012
ID              = 705
pos             = -15,7
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 191:    CB Dust Left]
type            = Explod
trigger1        = (time > 225) && (TimeMod = 24,0)
anim            = 7012
ID              = 705
pos             = 15,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 191:     Main Dust]
type            = Explod
trigger1        = (Time = 225)
anim            = 4150
ID              = 4150
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 191:     GroundWaves]
type            = Explod
trigger1        = (Time = 225)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 191:		Helper]
type			= Helper
trigger1		= (Time > 225) && ((GameTime%10) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			= 8200
pos			= 0,0
postype		= p1
facing		= 0
stateno		= 8200
keyctrl		= 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 799,0.75,3))
size.yscale		= (IfElse(Random <= 799,0.75,3))

[State 191:		Helper]
type			= Helper
trigger1		= (Time > 225) && ((GameTime%20) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			= 8210
pos			= 0,0
postype		= p1
facing		= 0
stateno		= 8210
keyctrl		= 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 499,0.75,0.50))
size.yscale		= (IfElse(Random <= 499,0.75,0.50))

[State 191:		Helper]
type			= Helper
trigger1		= (Time > 225) && ((GameTime%30) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			= 8220
pos			= 0,0
postype		= p1
facing		= 0
stateno		= 8220
keyctrl		= 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 499,0.50,0.75))
size.yscale		= (IfElse(Random <= 499,0.50,0.75))

;---------------
[State 191:     RemoveExplod]
type            = RemoveExplod
trigger1        = (AnimTime = 0)
ID              = 705
ignorehitpause  = 0
persistent      = 1

[State 191:     RemoveExplod]
type            = RemoveExplod
trigger1        = (AnimTime = 0)
ID              = 7036
ignorehitpause  = 0
persistent      = 1

[State 191:     RemoveExplod]
type            = RemoveExplod
trigger1        = (AnimTime = 0)
ID              = 7049
ignorehitpause  = 0
persistent      = 1


[State 191:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 192
ctrl            = 1

;---------------------------------------------------------------------------
; Transforming intro
[Statedef 192]
type            = S
movetype        = I
physics         = N
anim            = 193  
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 191:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

[State 191:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 191

[State 191:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl            = 1
;---------------------------------------------------------------------------
; Standing Light Punch (x)
[Statedef 200]
type            = S
movetype        = A
physics         = S
anim            = 200
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 200:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 200:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 200:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 10
value           = 1

;---------------
;Sound/Effects
;---------------

[State 200:     PunchSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 200:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 20, 5
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10,-45
hitsound        = S200, 1
guardsound      = S201, 2
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
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;------------Comboing---

;---------------
[State 200:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
;Standing Light Elbow
[Statedef 231]
type            = S
movetype        = A
physics         = S
anim            = 220
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 231:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 231:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 231:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 12
value           = 1

;---------------
;Sound/Effects
;---------------

[State 231:     ElbowSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 231:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 30, 5
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -15, -50
hitsound        = S210, 1
guardsound      = S201, 2
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
down.hittime    = 0
down.bounce     = 0
ID              = 220
chainID         = -1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;------------Comboing---

;---------------
[State 231:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Standing Hard Punch (y)
[Statedef 202]
type            = S
movetype        = A
physics         = S
anim            = 202
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 202:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 202:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
x		        = 1.3
y		        = 0

[State 202:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 202:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 202:     PunchSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 202:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 25, 5
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -15, -45
hitsound        = S201, 1
guardsound      = S201, 2
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

;------------Comboing---

;---------------
[State 202:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1
;---------------------------------------------------------------------------
;Standing Close Light Jab
[Statedef 232]
type            = S
movetype        = A
physics         = S
anim            = 221
;velset          = 0,0,0
ctrl            = 0
poweradd        = 120
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 232:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 232:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 232:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 12
value           = 1

;---------------
;Sound/Effects
;---------------

[State 232:     JabSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 232:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 35, 8
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -15, -50
hitsound        = S210, 1
guardsound      = S201, 2
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
down.hittime    = 0
down.bounce     = 0
ID              = 220
chainID         = -1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;------------Comboing---

;---------------
[State 232:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Uppercut
[Statedef 218]
type            = S
movetype        = A
physics         = S
anim            = 218
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 218:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
x		        = 2.3
y		        = 0

[State 218:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 218:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 218:     UppercutSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 218:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = back
air.animtype    = back
priority        = 4, Hit
damage          = 35, 5
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -5, -60
hitsound        = S210, 2
guardsound      = S201, 2
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -1, -3
air.velocity    = -1, -3
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 10, 3
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;------------Comboing---

;---------------
[State 218:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Standing Light Kick (a)
[Statedef 210]
type            = S
movetype        = A
physics         = S
anim            = 210
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 210:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 210:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 210:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 12
value           = 1

;---------------
;Sound/Effects
;---------------

[State 210:     KickSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 210:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 30, 5
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -36
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -1, 0
air.velocity    = -1, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 210
chainID         = -1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;------------Comboing---

;---------------
[State 210:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Standing Knee
[Statedef 230]
type            = S
movetype        = A
physics         = S
anim            = 214
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 230:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 230:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 230:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 13
value           = 1

;---------------
;Sound/Effects
;---------------

[State 230:     KickSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 230:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 30, 5
pausetime       = 11, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -5, -45
hitsound        = S210, 2
guardsound      = S201, 2
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
down.hittime    = 0
down.bounce     = 0
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 230:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Standing Head kick
[Statedef 233]
type            = S
movetype        = A
physics         = S
anim            = 217
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 233:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 233:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 233:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 13
value           = 1

;---------------
;Sound/Effects
;---------------

[State 233:     KickSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 233:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 35, 10
pausetime       = 11, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -25, -57
hitsound        = S210, 2
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5, -2
air.velocity    = -5, -2
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 233:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Standing Hard Kick (b)
[Statedef 212]
type            = S
movetype        = A
physics         = S
anim            = 212
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 212:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 212:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 212:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 13
value           = 1

;---------------
;Sound/Effects
;---------------

[State 212:     KickSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 212:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 35, 5
pausetime       = 15, 20
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -15, -55
hitsound        = S210, 2
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5, -2
air.velocity    = -5, -2
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;------------Comboing---

;---------------
[State 212:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Roundhouse Kick
[Statedef 260]
type            = S
movetype        = A
physics         = S
anim            = 215
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 260:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 5
y		        = 0

[State 260:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 260:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 14
value           = 1

;---------------
;Sound/Effects
;---------------

[State 260:     KickSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 260, PlaySnd]
type            = PlaySnd
trigger1        = animelem = 3
value           = 60,2
channel         = 6

;---------------
;Hit Details
;---------------

[State 260:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = back
air.animtype    = back
priority        = 4, Hit
damage          = 35, 5
pausetime       = 7, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -25, -40
hitsound        = S420, 0
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -7, -7
air.velocity    = -7, -7
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 260:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;-------------------------------------------------------------------------------------------------
; Crouching Light Punch
[Statedef 300]
type            = C
movetype        = A
physics         = C
anim            = 300
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 300:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 300:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------
[State 300:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 300:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4,Hit
damage          = 20, 5
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -35
hitsound        = S200, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -4, 0
air.velocity    = -4, 0
air.juggle      = 4
fall            = 0
fall.recover    = 1
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
ID              = 300
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 300:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1
;---------------------------------------------------------------------------
; Crouching Light Kick
[Statedef 310]
type            = C
movetype        = A
physics         = C
anim            = 304
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 310:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 310:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 310:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 310:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 25, 10
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -5
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -5, 0
air.juggle      = 4
fall            = 0
fall.recover    = 1
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 310
chainID         = -1
numhits         = 1
getpower        = 5, 0
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 310:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1

;---------------------------------------------------------------------------
; Hard crouch Kick
[Statedef 312]
type            = C
movetype        = A
physics         = C
anim            = 310
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 312:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 312:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 25, 10
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -5
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -1, 0
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1
;---------------------------------------------------------------------------
; Air Light Punch
[Statedef 400]
type            = A
movetype        = A
physics         = A
anim            = 400
;velset          = 0,0
ctrl            = 0
poweradd        = 100
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 400:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 400:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 400:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4,Hit
damage          = 20, 5
pausetime       = 15, 25
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -35
hitsound        = S200, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -3, 0
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
air.velocity    = -3, 2
air.juggle      = 1
fall            = 0
fall.recover    = 1
fall.damage     = 0
air.fall        = 1
down.velocity   = -3, 2
down.hittime    = 0
down.bounce     = 0
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 400:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;---------------------------------------------------------------------------
; Air Hard Punch
[Statedef 402]
type            = A
movetype        = A
physics         = A
anim            = 402
;velset          = 0,0
ctrl            = 0
poweradd        = 100
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 402:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 402:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 402:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4,Hit
damage          = 25, 5
pausetime       = 15, 25
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -25, -35
hitsound        = S200, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -4, 0
air.velocity    = -4, 3
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 2
down.hittime    = 0
down.bounce     = 0
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 402:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;---------------------------------------------------------------------------
; Air Light Kick
[Statedef 410]
type            = A
movetype        = A
physics         = A
anim            = 404
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 410:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 410:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 410:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 25, 10
pausetime       = 15, 25
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -7, -25
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -4, 0
air.velocity    = -4, 3
air.juggle      = 1
fall            = 0
fall.recover    = 1
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 410
chainID         = -1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 410:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;---------------------------------------------------------------------------
; Air Hard Kick
[Statedef 412]
type            = A
movetype        = A
physics         = A
anim            = 410
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 412:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 412:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 412:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 30, 10
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -7, -25
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -5, 4
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 4
down.hittime    = 0
down.bounce     = 0
ID              = 412
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 412:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1
;---------------------------------------------------------------------------
; Smackdown
[Statedef 420]
type            = A
movetype        = A
physics         = A
anim            = 420
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 420, ]
type            = VelSet
trigger1        = animelem = 2
;x              = 
y               = -3
;ignorehitpause = 0
;persistent     = 1

[State 420:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 420:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 420:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 30, 10
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -7, -25
hitsound        = S420, 0
guardsound      = S201, 2 
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -5, 6
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 30
air.fall        = 1
down.velocity   = 0, 4
down.hittime    = 0
down.bounce     = 0
ID              = 412
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 420:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---- Chain Combos ---------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Side kick rush combo 1
[Statedef 235]
type            = S
movetype        = A
physics         = S
anim            = 410
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 235:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 235:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
x		        = 1.3
y		        = 0

[State 235:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 235:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 235:     PunchSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 235:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 20, 5
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -25, -15
hitsound        = S201, 1
guardsound      = S201, 2
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

;------------Comboing---

;---------------
[State 235:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1
;---------------------------------------------------------------------------
; Side kick rush combo 2
[Statedef 236]
type            = S
movetype        = A
physics         = S
anim            = 219
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 236:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 236:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
x		        = 1.3
y		        = 0

[State 236:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 236:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 236:     PunchSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 236:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 20, 5
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -15, -52
hitsound        = S201, 1
guardsound      = S201, 2
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

;------------Comboing---

;---------------
[State 236:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Zanzouken
[Statedef 500]
type            = S
movetype        = A
physics         = S
anim            = 500
;velset          = 2,0,0
ctrl            = 0
poweradd        = -200
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 2
y		        = 0

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 500:     SuperPause]
type            = SuperPause
trigger1        = (AnimElem = 1)
movetime        = 50
time            = 50
pos             = -9999, 0
darken          = 0
unhittable      = 1

[State 500:     SuperPause]
type            = SuperPause
trigger1        = (!AnimTime)
movetime        = 55
time            = 55
pos             = -9999, 0
darken          = 0
unhittable      = 1

[State 500:     Turn]
type            = Turn
trigger1        = (P2Dist X < 0)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (Time = 10)
x               = (P2BodyDist X+65)

;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 10)
value           = 500,0
volume          = 155
channel         = -1
;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 20
length          = 14
palcolor        = 256
palinvertall    = 0
palbright       = 30,30,30
palcontrast     = 120,120,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

[State 500:     Helper]
type            = Helper
trigger1        = (Time = 8)
helpertype      = player
name            = "After Image"
id              = 500
pos             = 0,0
postype         = p1
facing          = 0
stateno	        = 8020
keyctrl	        = 0
ownpal          = 1
supermovetime   = 0
pausemovetime   = 0
;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (Time = 30)
value           = 0
ctrl            = 1

;---------------------------------------------------------------------------
; Power Up - Start
[Statedef 700]
type            = S
movetype        = I
physics         = N
anim            = 700
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 700:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

[State 700:     PlaySND]
type            = PlaySnd
trigger1        = (!Time)
value           = 700, 0
volume		    = 255
channel	        = -1
lowpriority	    = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

;---------------
;Effects
;---------------


;---------------

[State 700:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime); && (Pos Y >= 0)
value           = 705

[State 700:     ChangeState] ;Air
type            = Null;ChangeState
trigger1        = (!AnimTime) && (Pos Y < 0)
value           = 710
;---------------------------------------------------------------------------
; Power Up (Charge)
[Statedef 705]
type            = S
movetype        = A
physics         = S
;anim            = 705
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 705:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 705:     ChangeAnim]
type            = ChangeAnim
triggerall      = (Power <= 2000)
trigger1        = (Time = 0) && (Anim != 705)
value           = 705

[State 705:     ChangeAnim]
type            = ChangeAnim
trigger1        = (Power > 2000) && (Anim != 710)
value           = 710

[State 705:     Screen Flash]
type            = EnvColor
trigger1        = (!Time)
value           = 255,255,255
time            = 5
under           = 0

[State 705:     Screen Flash]
type            = EnvColor
trigger1        = ((command != "holda") && (command !="holdx"))
value           = 255,255,255
time            = 5
under           = 1

[State 705:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 1
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 705:		BGPalFX]
type			= BGPalFX
trigger1		= ((Time > 20) && ((GameTime%70) = 0))
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 705:     PowerAdd]
type            = PowerAdd
trigger1        = (1)
value           = 8

z;---------------
;Sound
;---------------

[State 705:     PlaySND]
type            = PlaySnd
trigger1        = (TimeMod = 24, 0)
value           = 700, 1
volume		    = 255
channel	        = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 700:     PlaySND]
type            = PlaySnd
trigger1        = ((command != "holda") && (command !="holdx"))
value           = 700, 0
volume		    = 255
channel	        = -1
lowpriority	    = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 705:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 2)
value           = 700, 2
volume		    = 255
channel	        = -1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

;---------------
;Effects
;---------------

[State 705:    Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7015
ID              = 7015
pos             = -10,7
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:    Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7015
ID              = 7015
pos             = 10,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:    C Dust Left]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7011
ID              = 705
pos             = -10,7
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:    C Dust Left]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7011
ID              = 705
pos             = 10,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:    CB Dust Left]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7012
ID              = 705
pos             = -15,7
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:    CB Dust Left]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7012
ID              = 705
pos             = 15,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:     GroundWaves]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:     Aura]
type            = Explod
trigger1        = (Time = 0)
anim            = 7036
ID              = 7036
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 0
pausemovetime   = 0
scale           = ifelse(anim = 705, .6, 1), ifelse(anim = 705, .6, 1)
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:     Modify]
type 			= ModifyExplod
trigger1 		= (Anim = 710)
id              = 7036
scale 		    = .7, .7

[State 705:     Elec]
type            = Explod
trigger1        = (Time = 0)
anim            = 7049
ID              = 7049
pos             = 13,-45
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 0
pausemovetime   = 0
scale           = .5, .5
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:     Elec]
type            = Explod
trigger1        = (Time = 3)
anim            = 7049
ID              = 7049
pos             = -8,-15
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 0
pausemovetime   = 0
scale           = .5, .5
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:     Elec]
type            = Explod
trigger1        = (Time = 6)
anim            = 7049
ID              = 7049
pos             = 16,-30
postype         = p1
facing          = 1
vfacing         = -1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 0
pausemovetime   = 0
scale           = .5, .5
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 705:     Push Effect]
type            = Helper
trigger1        = (TimeMod = 30,0)
helpertype	    = normal
name		    = "Push Effect"
id              = 8030
pos		        = 0,0
postype         = p1
facing		    = 1
stateno	        = 8030
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1
size.yscale	    = 1

[State 705:     Ring]
type            = Explod
trigger1        = (!Time)
anim            = 7000
ID              = 7000
pos             = ifelse(anim = 705, 10, 3),-40
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

[State 705:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%10) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			= 8200
pos			= 0,0
postype		= p1
facing		= 0
stateno		= 8200
keyctrl		= 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 799,0.75,3))
size.yscale		= (IfElse(Random <= 799,0.75,3))

[State 705:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%20) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			= 8210
pos			= 0,0
postype		= p1
facing		= 0
stateno		= 8210
keyctrl		= 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 499,0.75,0.50))
size.yscale		= (IfElse(Random <= 499,0.75,0.50))

[State 705:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%30) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			= 8220
pos			= 0,0
postype		= p1
facing		= 0
stateno		= 8220
keyctrl		= 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 499,0.50,0.75))
size.yscale		= (IfElse(Random <= 499,0.50,0.75))

[State 705:     EnvShake]
type 			= EnvShake
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 70
ampl 			= ifelse(power < 2000, 3, 6)
;phase 		    = 

;---------------
[State 705:     RemoveExplod]
type            = RemoveExplod
trigger1        = ((command != "holda") && (command !="holdx"))
ID              = 7036
ignorehitpause  = 0
persistent      = 1

[State 705:     RemoveExplod]
type            = RemoveExplod
trigger1        = ((command != "holda") && (command !="holdx"))
ID              = 7049
ignorehitpause  = 0
persistent      = 1

;---------------
[State 705:     End]
type            = ChangeState
trigger1        = ((command != "holda") && (command !="holdx"))
value           = 0
ctrl            = 1
;---------------------------------------------------------------------------
;Super Jump
[Statedef 9001]
type            = A
movetype        = I
physics         = N
anim            = 41
velset          = 0,-11
ctrl            = 0
poweradd        = -50
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 9001, VarSet]
type            = VarSet
trigger1        = Time = 0
var(10)         = 1

[State 9001, VelSet]
type            = VelSet
trigger1        = AnimTime = 0
x               = 0
y               = -11

[State 9001, ChangeState]
type            = ChangeState
trigger1        = AnimTime = 0
value           = 50
ctrl            = 1

[State 9001, ChangeAnim]
type            = ChangeAnim
trigger1        = Time = 0
value           = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[state 9001, CtrlSet]
type            = CtrlSet
trigger1        = Time >= 1
value           = 1

[state 9001, VelSetFwd]
type            = VelSet
trigger1        = command = "holdfwd"
x               = 3 

[state 9001, VelSetBack]
type            = VelSet
trigger1        = command = "holdback"
x               = -3

[state 9001, VelAdd]
type            = VelAdd
trigger1        = Time > 10
x               = 0
y               = .40

;---------------
;Sound
;---------------

[State 9001, PlaySnd]
type            = PlaySnd
trigger1        = Time = 0
value           = 9000,0

;---------------
;Effects
;---------------

[State 9001:     Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7010
ID              = 7010
pos             = -20,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 9001:     Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 9001:     GroundWaves]
type            = Explod
trigger1        = (Time = 0)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1
;---------------

;---------------
[state 9001, End]
type            = ChangeState
trigger1        = Pos Y >= 1 
value           = 52
ctrl            = 1

;---------------------------------------------------------------------------
;Flashy kill
[Statedef 1122]
type            = S
movetype        = I
physics	        = N
velset          = 0,0,0
ctrl            = 0

[State 0, ]
type            = AssertSpecial
trigger1        = (1)
flag            = Noshadow
flag2           = Invisible
flag3           = nobardisplay
ignorehitpause  = 1

[State 0: ]
type			= AssertSpecial
trigger1		= (Time < 50)
flag			= NoMusic

[State 0, ]
type            = AllPalFX
trigger1        = time =[0,40]
add             = (255-((time)*6)),(-255+((time)*6)),(-255+((time)*6))
mul             = (80+((time)*4)),(0+((time)*4)),(0+((time)*4))
time            = 1
ignorehitpause  = 1

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 1122, 0
volume		    = 255
channel	        = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0
;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 10
value           = 0

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 11
value           = 0

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 12
value           = 0

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 13
value           = 0

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 14
value           = 0

[State -2:      StopSND] ;Stop Powerup Sound
type            = StopSnd
trigger1        = ((StateNo != 705) && (StateNo != 191) && (StateNo != 3200))
channel		    = 1

[State -2:      PosSet]
type 			= PosSet
trigger1 		= (Pos Y > 0) && (StateNo = 0)
y               = 0

[State -2:      VarRandom]
type 			= VarRandom
trigger1 		= (1)
v 			    = 40
range           = -40, -10

[State -2:      VarRandom]
type 			= VarRandom
trigger1 		= (1)
v 			    = 41
range           = 10, 40

[State -2, 0] 
type                = varset
trigger1            = Win = 1
trigger1            = NumHelper(9010) = 0
v                   = 59 
value               = 1

[State -2, 1] 
type                = varset
trigger1            = Win = 1
trigger1            = NumHelper(9010) = 1
trigger1            = p2life != 0
v                   = 59 
value               = 0

[State -2, 5] 
type                = AttackMulSet
triggerall          = !Var(59) && p2life <= 1
trigger1            = RoundNo != 1 && Win=0
trigger2            = p2stateno = 987123
value               = 9999

[state -2, 1]
type                = Helper
trigger1            = NumHelper(9010) = 1
trigger1            = NumHelper(9011) = 0
trigger1            = enemy(0), stateno = 987123
ID                  = 9011
pos                 = 160, -140
postype             = left
stateno             = 9011
helpertype          = normal
name                = "NO MERCY!! MSG"
keyctrl             = 0
ownpal              = 1

z;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3:      DisplayToClipboard]
type            = DisplayToClipboard
trigger1        = (1)
text		    = "Var(10) = %d, Var(11) = %d"
params		    = Var(10), Var(11)
