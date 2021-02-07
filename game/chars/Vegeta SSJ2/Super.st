;================================
;Vegeta Type-R
;================================

;------------------------------------------------------
;Author:	ZGTE
;	http://www.zgtm.tk
;------------------------------------------------------

;-Stateno 3000-4999

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
; Zenshin kara no Shyougeki Ha
[Statedef 3001]
type            = S
movetype        = A
physics         = S
anim            = 3001
;velset          = 0,0,0
ctrl            = 0
poweradd        = -1000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 3001:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 3001:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 40
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 40
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

;---------------
;Sounds
;---------------

[State 3001:     PlaySND]
type            = PlaySnd
trigger1        = (time = 0)
value           = 8050, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 3001:     PlaySND]
type            = PlaySnd
trigger1        = (time = 0)
value           = 3001, 1
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0

[State 3001:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 3001, 0
volume		    = 255
channel	        = 7
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 3001:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 8000, 0
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 3001:     PlaySND]
type            = PlaySnd
trigger1        = (time = 60)
value           = 8000, 0
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 3001:     PlaySND]
type            = PlaySnd
trigger1        = (time = 80)
value           = 8000, 0
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

;---------------
;Effects
;---------------

[State 3000:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 3)
value           = 255,255,255
time            = 5
under           = 1

[State 8500:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 5
under           = 1

[State 8500:     Screen Flash]
type            = EnvColor
trigger1        = (time = 60)
value           = 255,255,255
time            = 5
under           = 1

[State 8500:     Screen Flash]
type            = EnvColor
trigger1        = (time = 80)
value           = 255,255,255
time            = 5
under           = 1

[State 3001:    Energy Bring in]
type            = Explod
trigger1        = (Time = 0)
anim            = 9056
ID              = 9056
pos             = 3,-59
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
scale           = 1.5, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3001:    Energy Outburst]
type            = Explod
trigger1        = (animelem = 3)
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
sprpriority     = 6
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3001:     Main Dust]
type            = Explod
trigger1        = (animelem = 3)
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
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3001:    Dust Left]
type            = Explod
trigger1        = (animelem = 3)
anim            = 7015
ID              = 7015
pos             = -10,7
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = -6,0
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

[State 3001:    Dust Left]
type            = Explod
trigger1        = (animelem = 3)
anim            = 7015
ID              = 7015
pos             = 10,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 6,0
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

[State 3001:    GroundWaves]
type            = Explod
trigger1        = (animelem = 3)
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
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Misc
;---------------

[State 3001:    Projectile]
type 			= Projectile
trigger1 		= (animelem = 3)
ProjID 		    = 8020
projanim 		= 8020
projhitanim     = 999999
projcancelanim 	= 999999
projscale 		= 1, 1
projremovetime 	= animtime = 0
velocity 		= 0,0
remvelocity 	= 0,0
accel 		    = 0,0
projhits 		= 1
projpriority 	= 9999
projsprpriority = 4
offset 		    = 80,floor(-pos y)
postype 		= p1
supermovetime 	= 0
pausemovetime 	= 0
;---------------
attr 			= S, SP
hitflag 		= MAF
guardflag 		= MA
animtype 		= Hard
air.animtype 	= Hard
fall.animtype 	= Back
priority 		= 4,Hit
damage 		    = 60,20
pausetime 		= 11,10
guard.pausetime 	=  0,10
sparkno 		= -1
guard.sparkno 	= -1
sparkxy 		= 0, 0
hitsound 		= S8000 ,1
guardsound 		= S8000 ,1
ground.type 	= High
air.type 		= High
ground.slidetime 	=  0
guard.slidetime 	=  0
ground.hittime 	=  0
guard.hittime 	=  0
air.hittime 	=  2
ground.velocity = -6,-4
air.velocity 	= -6,-4
fall 			= 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
fall.xvelocity 	= 0
fall.yvelocity 	= 0
fall.recover 	= 0
fall.recovertime = 0
fall.damage 	= 0
air.fall 		= 1
getpower 		= 10,5
givepower 		= 10,5
envshake.time 	= 5
envshake.freq 	= 60
envshake.ampl 	= 5
;envshake.phase 	= 

[State 3001:    Projectile]
type 			= Projectile
trigger1 		= (time = 60)
ProjID 		    = 8020
projanim 		= 8020
projhitanim     = 999999
projcancelanim 	= 999999
projscale 		= 1, 1
projremovetime 	= animtime = 0
velocity 		= 0,0
remvelocity 	= 0,0
accel 		    = 0,0
projhits 		= 1
projpriority 	= 9999
projsprpriority = 4
offset 		    = 170,floor(-pos y)
postype 		= p1
supermovetime 	= 0
pausemovetime 	= 0
;---------------
attr 			= S, SP
hitflag 		= MAF
guardflag 		= MA
animtype 		= Hard
air.animtype 	= Hard
fall.animtype 	= Back
priority 		= 4,Hit
damage 		    = 60,20
pausetime 		= 11,10
guard.pausetime 	=  0,10
sparkno 		= -1
guard.sparkno 	= -1
sparkxy 		= 0, 0
hitsound 		= S8000 ,1
guardsound 		= S8000 ,1
ground.type 	= High
air.type 		= High
ground.slidetime 	=  0
guard.slidetime 	=  0
ground.hittime 	=  0
guard.hittime 	=  0
air.hittime 	=  2
ground.velocity = -6,-4
air.velocity 	= -6,-4
fall 			= 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
fall.xvelocity 	= 0
fall.yvelocity 	= 0
fall.recover 	= 0
fall.recovertime = 0
fall.damage 	= 0
air.fall 		= 1
getpower 		= 10,5
givepower 		= 10,5
envshake.time 	= 5
envshake.freq 	= 60
envshake.ampl 	= 5
;envshake.phase 	= 

[State 3001:    Projectile]
type 			= Projectile
trigger1 		= (time = 80)
ProjID 		    = 8020
projanim 		= 8020
projhitanim     = 999999
projcancelanim 	= 999999
projscale 		= 1, 1
projremovetime 	= animtime = 0
velocity 		= 0,0
remvelocity 	= 0,0
accel 		    = 0,0
projhits 		= 1
projpriority 	= 9999
projsprpriority = 4
offset 		    = 270,floor(-pos y)
postype 		= p1
supermovetime 	= 0
pausemovetime 	= 0
;---------------
attr 			= S, SP
hitflag 		= MAF
guardflag 		= MA
animtype 		= Hard
air.animtype 	= Hard
fall.animtype 	= Back
priority 		= 4,Hit
damage 		    = 60,20
pausetime 		= 11,10
guard.pausetime 	=  0,10
sparkno 		= -1
guard.sparkno 	= -1
sparkxy 		= 0, 0
hitsound 		= S8000 ,1
guardsound 		= S8000 ,1
ground.type 	= High
air.type 		= High
ground.slidetime 	=  0
guard.slidetime 	=  0
ground.hittime 	=  0
guard.hittime 	=  0
air.hittime 	=  2
ground.velocity = -6,-4
air.velocity 	= -6,-4
fall 			= 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
fall.xvelocity 	= 0
fall.yvelocity 	= 0
fall.recover 	= 0
fall.recovertime = 0
fall.damage 	= 0
air.fall 		= 1
getpower 		= 10,5
givepower 		= 10,5
envshake.time 	= 5
envshake.freq 	= 60
envshake.ampl 	= 5
;envshake.phase 	= 
;---------------

[State 3001:    Projectile]
type 			= Projectile
trigger1 		= (animelem = 3)
ProjID 		    = 8020
projanim 		= 8020
projhitanim     = 999999
projcancelanim 	= 999999
projscale 		= 1, 1
projremovetime 	= animtime = 0
velocity 		= 0,0
remvelocity 	= 0,0
accel 		    = 0,0
projhits 		= 1
projpriority 	= 9999
projsprpriority = 4
offset 		    = -80,floor(-pos y)
postype 		= p1
supermovetime 	= 0
pausemovetime 	= 0
;---------------
attr 			= S, SP
hitflag 		= MAF
guardflag 		= MA
animtype 		= Hard
air.animtype 	= Hard
fall.animtype 	= Back
priority 		= 4,Hit
damage 		    = 60,20
pausetime 		= 11,10
guard.pausetime 	=  0,10
sparkno 		= -1
guard.sparkno 	= -1
sparkxy 		= 0, 0
hitsound 		= S8000 ,1
guardsound 		= S8000 ,1
ground.type 	= High
air.type 		= High
ground.slidetime 	=  0
guard.slidetime 	=  0
ground.hittime 	=  0
guard.hittime 	=  0
air.hittime 	=  2
ground.velocity = -6,-4
air.velocity 	= -6,-4
fall 			= 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
fall.xvelocity 	= 0
fall.yvelocity 	= 0
fall.recover 	= 0
fall.recovertime = 0
fall.damage 	= 0
air.fall 		= 1
getpower 		= 10,5
givepower 		= 10,5
envshake.time 	= 5
envshake.freq 	= 60
envshake.ampl 	= 5
;envshake.phase 	= 

[State 3001:    Projectile]
type 			= Projectile
trigger1 		= (time = 60)
ProjID 		    = 8020
projanim 		= 8020
projhitanim     = 999999
projcancelanim 	= 999999
projscale 		= 1, 1
projremovetime 	= animtime = 0
velocity 		= 0,0
remvelocity 	= 0,0
accel 		    = 0,0
projhits 		= 1
projpriority 	= 9999
projsprpriority = 4
offset 		    = -170,floor(-pos y)
postype 		= p1
supermovetime 	= 0
pausemovetime 	= 0
;---------------
attr 			= S, SP
hitflag 		= MAF
guardflag 		= MA
animtype 		= Hard
air.animtype 	= Hard
fall.animtype 	= Back
priority 		= 4,Hit
damage 		    = 60,20
pausetime 		= 11,10
guard.pausetime 	=  0,10
sparkno 		= -1
guard.sparkno 	= -1
sparkxy 		= 0, 0
hitsound 		= S8000 ,1
guardsound 		= S8000 ,1
ground.type 	= High
air.type 		= High
ground.slidetime 	=  0
guard.slidetime 	=  0
ground.hittime 	=  0
guard.hittime 	=  0
air.hittime 	=  2
ground.velocity = -6,-4
air.velocity 	= -6,-4
fall 			= 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
fall.xvelocity 	= 0
fall.yvelocity 	= 0
fall.recover 	= 0
fall.recovertime = 0
fall.damage 	= 0
air.fall 		= 1
getpower 		= 10,5
givepower 		= 10,5
envshake.time 	= 5
envshake.freq 	= 60
envshake.ampl 	= 5
;envshake.phase 	= 

[State 3001:    Projectile]
type 			= Projectile
trigger1 		= (time = 80)
ProjID 		    = 8020
projanim 		= 8020
projhitanim     = 999999
projcancelanim 	= 999999
projscale 		= 1, 1
projremovetime 	= animtime = 0
velocity 		= 0,0
remvelocity 	= 0,0
accel 		    = 0,0
projhits 		= 1
projpriority 	= 9999
projsprpriority = 4
offset 		    = -270,floor(-pos y)
postype 		= p1
supermovetime 	= 0
pausemovetime 	= 0
;---------------
attr 			= S, SP
hitflag 		= MAF
guardflag 		= MA
animtype 		= Hard
air.animtype 	= Hard
fall.animtype 	= Back
priority 		= 4,Hit
damage 		    = 60,20
pausetime 		= 11,10
guard.pausetime 	=  0,10
sparkno 		= -1
guard.sparkno 	= -1
sparkxy 		= 0, 0
hitsound 		= S8000 ,1
guardsound 		= S8000 ,1
ground.type 	= High
air.type 		= High
ground.slidetime 	=  0
guard.slidetime 	=  0
ground.hittime 	=  0
guard.hittime 	=  0
air.hittime 	=  2
ground.velocity = -6,-4
air.velocity 	= -6,-4
fall 			= 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
fall.xvelocity 	= 0
fall.yvelocity 	= 0
fall.recover 	= 0
fall.recovertime = 0
fall.damage 	= 0
air.fall 		= 1
getpower 		= 10,5
givepower 		= 10,5
envshake.time 	= 5
envshake.freq 	= 60
envshake.ampl 	= 5
;envshake.phase 	= 
;---------------
;---------------
[State 3001:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Final Flash Orb
[Statedef 3015]
type            = S
movetype        = A
physics         = S
anim            = 3015
;velset          = 0,0,0
ctrl            = 0
poweradd        = -1000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 3015:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sounds
;---------------

[State 3015:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 3015:     PlaySND]
type            = PlaySnd
trigger1        = (time = 0)
value           = 8050, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 3015:     PlaySND]
type            = PlaySnd
trigger1        = (time = 0)
value           = 3001, 1
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0

[State 3015:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 8050, 1
volume		    = 255
channel	        = 7
freqmul	        = 1.0
loop		    = 0
pan		        = 0


[State 3016:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 55)
value           = 3015, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

;---------------
;Effects
;---------------

[State 3015:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 80
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 80
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 3015:    C Dust Left]
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

[State 3015:    C Dust Left]
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

[State 3015:    CB Dust Left]
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

[State 3015:    CB Dust Left]
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

[State 3015:    Dust Left]
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

[State 3015:    Dust Left]
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

[State 3015:    Energy Bring in]
type            = Explod
trigger1        = (Time = 0)
anim            = 9056
ID              = 9056
pos             = 3,-59
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
scale           = 1.5, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3015:    GroundWaves]
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
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3015:    Explod] ;Ring Thingy
type 			= Explod
trigger1 		= (!Time)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-45
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove 		= -1
pausemovetime 	= -1
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

; Charging ball
[State 3016:    Helper]
type            = Helper
trigger1        = (animelem = 3)
helpertype	    = normal
id              = 7045
pos		        = 40,-55
postype         = p1
facing		    = 1
stateno	        = 7045
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1
size.yscale	    = 1
ignorehitpause  = 1
persistent      = 1


;---------------
;Misc
;---------------

[State 3015, ]
type            = RemoveExplod
trigger1        = (animtime = 0)
ID              = 7045
ignorehitpause  = 0
persistent      = 1

[State 3015, ]
type            = RemoveExplod
trigger1        = (animtime = 0)
ID              = 705
ignorehitpause  = 0
persistent      = 1

;---------------

;---------------
[State 3015:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 3016
ctrl		    = 1

;---------------------------------------------------------------------------
; Final Flash Orb- Fire
[Statedef 3016]
type            = S
movetype        = A
physics         = S
anim            = 3016
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 3016:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sounds
;---------------

[State 3016:    Dust Left]
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

;---------------
;Misc
;---------------

[State 3016:    Helper]
type            = Helper
trigger1        = (AnimElem = 1) 
helpertype	    = normal
name		    = "Final flash orb"
id              = 8520
pos		        = 40,-55
postype         = p1
facing		    = 1
stateno	        = 8520
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1.3
size.yscale	    = 1

;---------------

;---------------
[State 3016:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; GalickHo - Charge
[Statedef 3000]
type            = S
movetype        = A
physics         = S
anim            = 3000
;velset          = 0,0,0
ctrl            = 0
poweradd        = -1000
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 3000:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

[State 3000, ]
type            = PlaySnd
trigger1        = (Time = 1)
value           = 8050 ,0
volume          = 255
channel         = 2

[State 3000, ]
type            = PlaySnd
trigger1        = (Time = 20)
value           = 8050 ,1
volume          = 255
channel         = 3

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 700, 0
volume		    = 255
channel	        = 4
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 10:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 2)
value           = 255,255,255
time            = 5
under           = 1


[State 0, PalFXWiz] ;Generated by MEE PalFX Editor
type            = PalFX
trigger1        = animelem = 2
time            = 60
add             = 50,-25,100
mul             = 256,256,256
sinadd          = 0,0,0,1
invertall       = 0
color           = 156
;ignorehitpause = 0
;persistent = 1

;---------------
;Effects
;---------------

[State 3000:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 70
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 70
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 3015:    C Dust Left]
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

[State 3015:    C Dust Left]
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

[State 3015:    CB Dust Left]
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

[State 3015:    CB Dust Left]
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


[State 3000:    Dust Left]
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
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3000:    Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7010
ID              = 7010
pos             = 20,0
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
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3000:    Energy Bring in]
type            = Explod
trigger1        = (Time = 0)
anim            = 9056
ID              = 9056
pos             = 3,-45
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
scale           = 1.5, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3000:    GroundWaves]
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
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3000:    Explod] ;Ring Thingy
type 			= Explod
trigger1 		= (!Time)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove 		= -1
pausemovetime 	= -1
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 3000:     Aura]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7037
ID              = 7037
pos             = 6,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermovetime 	= 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3000:     Charging ball]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7040
ID              = 7037
pos             = -10,-55
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermovetime 	= 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------

[State 3000:     RemoveExplod]
type            = RemoveExplod
trigger1        = (AnimTime = 0)
ID              = 7037
ignorehitpause  = 0
persistent      = 1

;---------------
[State 3000:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 3002
ctrl		    = 0;1

;---------------------------------------------------------------------------
; GalickHo - Fire
[Statedef 3002]
type            = S
movetype        = A
physics         = S
anim            = 3010
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 3002:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

[State 3002, ]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 3000 ,0
volume          = 255
channel         = 3

;---------------
;Effects/Hit Details
;---------------

[State 3002:    Dust Left]
type            = Explod
trigger1        = (animelem = 1)
anim            = 7010
ID              = 7010
pos             = -10,0
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

[State 3002:    Energy Shockwave]
type            = Explod
trigger1        = (animelem = 1)
anim            = 8051
ID              = 8051
pos             = 40,-49
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
scale           = .6, .4
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3002:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 5
under           = 0

[State 3002:    Helper]
type            = Helper
trigger1        = (AnimElem = 1) 
helpertype	    = normal
name		    = "GalicHo Projectile"
id              = 73002
pos		        = -10,-55
postype         = p1
facing		    = 1
stateno	        = 73002
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1
size.yscale	    = 1

;---------------

;---------------    
[State 3002:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Big Bang Attack
[Statedef 3100]
type            = S
movetype        = A
physics         = S
anim            = 3100
;velset          = 0,0,0
ctrl            = 0
poweradd        = -2000
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sounds
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (time = 0)
value           = 8050, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (time = 0)
value           = 3001, 1
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 8050, 1
volume		    = 255
channel	        = 7
freqmul	        = 1.0
loop		    = 0
pan		        = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 700, 0
volume		    = 255
channel	        = 3
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 10:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 2)
value           = 255,255,255
time            = 5
under           = 1

;---------------
;Effects
;---------------

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 80
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 80
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 3000:     Aura]
type            = Explod
trigger1        = (animelem = 2)
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
supermovetime 	= 999
pausemovetime   = 999
scale           = .6, .7
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    C Dust Left]
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

[State 0:    C Dust Left]
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

[State 0:    CB Dust Left]
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

[State 0:    CB Dust Left]
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

[State 0:    Dust Left]
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

[State 0:    Dust Left]
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

[State 0:    Energy Bring in]
type            = Explod
trigger1        = (Time = 0)
anim            = 9056
ID              = 9056
pos             = 3,-59
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
scale           = 1.5, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    GroundWaves]
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
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Explod] ;Ring Thingy
type 			= Explod
trigger1 		= (!Time)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-45
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove 		= -1
pausemovetime 	= -1
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

; Charging ball
[State 0:    Helper]
type            = Helper
trigger1        = (animelem = 4)
helpertype	    = normal
id              = 7147
pos		        = 42,-57
postype         = p1
facing		    = 1
stateno	        = 7147
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1
size.yscale	    = 1
ignorehitpause  = 1
persistent      = 1

;---------------

;---------------
;Misc
;---------------


[State 3000:     RemoveExplod]
type            = RemoveExplod
trigger1        = (AnimTime = 0)
ID              = 7036
ignorehitpause  = 0
persistent      = 1

[State 0, ]
type            = RemoveExplod
trigger1        = (animtime = 0)
ID              = 7045
ignorehitpause  = 0
persistent      = 1

[State 0, ]
type            = RemoveExplod
trigger1        = (animtime = 0)
ID              = 705
ignorehitpause  = 0
persistent      = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 3101
ctrl		    = 1

;---------------------------------------------------------------------------
; Big Bang attack- Fire
[Statedef 3101]
type            = S
movetype        = A
physics         = S
anim            = 3101
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sounds
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = (time = 0)
value           = 3100 ,0
volume          = 255
channel         = 4


[State 0:    Dust Left]
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

[State 0:    C Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7011
ID              = 705
pos             = 10,7
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

[State 0:    CB Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7012
ID              = 705
pos             = 10,7
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

;---------------
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (time = 0) 
helpertype	    = normal
name		    = "BBA projectile"
id              = 73100
pos		        = -10,-60
postype         = p1
facing		    = 1
stateno	        = 73100
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1.3
size.yscale	    = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Final Shine attack - Charge
[Statedef 3110]
type            = S
movetype        = A
physics         = S
anim            = 3102
;velset          = 0,0,0
ctrl            = 0
poweradd        = -3000
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 3100:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

[State 3100, ]
type            = PlaySnd
trigger1        = (Time = 1)
value           = 8050 ,0
volume          = 255
channel         = 2

[State 3100, ]
type            = PlaySnd
trigger1        = (Time = 20)
value           = 8050 ,1
volume          = 255
channel         = 3

[State 3100, ]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 3102 ,0
volume          = 255
channel         = 4

;---------------
;Effects
;---------------

[State 3100:     Screen Flash]
type            = EnvColor
trigger1        = (!Time)
value           = 255,255,255
time            = 5
under           = 0

[State 3100:		BGPalFX]
type			= BGPalFX
trigger1		= ((Time > 20) && ((GameTime%70) = 0))
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 3100:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 300
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 300
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 3100:     SUBS- Shut up...]
type            = Explod
trigger1        = (animelem = 2)
anim            = 8902
ID              = 8900
postype         = left
pos             = 60, 220
facing          = ifelse(teamside = 1, 1, 1)
bindtime        = 1
removetime      = -2
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1

[State 3100:    Dust Right]
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
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3100:    Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7010
ID              = 7010
pos             = 20,0
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
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3015:    C Dust Left]
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

[State 3015:    C Dust Left]
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

[State 0:    CB Dust Left]
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

[State 0:    CB Dust Left]
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

[State 0:     Push Effect]
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

[State 0:    Energy Bring in]
type            = Explod
trigger1        = (Time = 11)
anim            = 9067
ID              = 9067
pos             = -15,-43
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
scale           = 1.5, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    GroundWaves]
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
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Electricity]
type            = Explod
trigger1        = (!Time)
anim            = 7049
ID              = 7049
pos 			= -5,-45
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = .8, .8
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (!Time)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove 		= -1
pausemovetime 	= -1
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

; Charging ball
[State 0:    Helper]
type            = Helper
trigger1        = (animelem = 2)
helpertype	    = normal
id              = 7148
pos		        = -32,-40
postype         = p1
facing		    = 1
stateno	        = 7148
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1
size.yscale	    = 1
ignorehitpause  = 1
persistent      = 1

[State 0:		Helper]
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
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,0.75,3))
size.yscale		= (IfElse(Random <= 799,0.75,3))

[State 0:		Helper]
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
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.75,0.50))
size.yscale		= (IfElse(Random <= 499,0.75,0.50))

[State 0:		Helper]
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
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.50,0.75))
size.yscale		= (IfElse(Random <= 499,0.50,0.75))

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 70
ampl 			= ifelse(power < 2000, 3, 6)
;phase 		    = 

;---------------

[State 0: ]
type 			= RemoveExplod
trigger1        = ((command != "holdb") && (time > 300))
ID 			    = 7049

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = ((command != "holdb") && (time > 300))
value           = 3105
ctrl		    = 0;1

;---------------------------------------------------------------------------
; Final shine attack - Fire
[Statedef 3105]
type            = S
movetype        = A
physics         = S
anim            = 3103
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 3105:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 3105:     Screen Flash]
type            = EnvColor
trigger1        = (!Time)
value           = 255,255,255
time            = 5
under           = 0

;---------------
;Sound
;---------------

[State 3105, ]
type            = PlaySnd
trigger1        = (Time = 15)
value           = 3102 ,1
volume          = 255
channel         = 3

;---------------
;Effects/Hit Details
;---------------

[State 3105:     SUBS- Attack!!]
type            = Explod
trigger1        = (time = 0)
anim            = 8903
ID              = 8903
postype         = left
pos             = 150, 220
facing          = ifelse(teamside = 1, 1, 1)
bindtime        = 1
removetime      = -2
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1

[State 3105:    Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = 0,0
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

[State 0:    C Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7011
ID              = 705
pos             = 20,7
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

[State 0:    CB Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7012
ID              = 705
pos             = 20,7
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

[State 3105:    Beam head]
type            = Explod
trigger1        = (time = 0)
anim            = 7048
ID              = 7048
pos 			= 0,-47
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
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3105:    Beam head]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7148
ID              = 7148
pos 			= 60, -60
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
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3105:    Projectile Helper]
type 			= Helper
trigger1 		= (animelem = 2)
helpertype 		= normal
name 			= "Final Shine Attack Beam"
ID 			    = 3105
pos 			= 40, -56
postype 		= p1
stateno 		= 8060
keyctrl 		= 0
ownpal 		    = 1
supermovetime 	= 9999
pausemovetime 	= 9999
size.xscale 	= .5
size.yscale 	= .2

;---------------

[State 3105, 	ChangeState]
type 			= ChangeState
trigger1 		= AnimTime = 0
value 		    = 0
ctrl 			= 1
;---------------------------------------------------------------------------
; Final Flash - Charge
[Statedef 3200]
type            = S
movetype        = A
physics         = S
anim            = 3200
;velset          = 0,0,0
ctrl            = 0
poweradd        = -4000
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 3200:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0


[State 0, PalFXWiz] ;Generated by MEE PalFX Editor
type            = PalFX
trigger1        = (time > 40)&&(1)
time            = 1
add             = 41,41,0
mul             = 256,256,256
sinadd          = 0,0,0,1
invertall       = 0
color           = 256
;ignorehitpause = 0
;persistent     = 1

;---------------
;Sound
;---------------

[State 3200, ]
type            = PlaySnd
trigger1        = (Time = 1)
value           = 8050 ,0
volume          = 255
channel         = 2

[State 3200, ]
type            = PlaySnd
trigger1        = (Time = 20)
value           = 8050 ,1
volume          = 255
channel         = 3

[State 2501:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 60, 3
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 191:     PlaySND]
type            = PlaySnd
trigger1        = ((Time > 20) && (TimeMod = 24, 0))
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

[State 3200:     Screen Flash]
type            = EnvColor
trigger1        = (!Time)
value           = 255,255,255
time            = 5
under           = 0

[State 3200:		BGPalFX]
type			= BGPalFX
trigger1		= ((Time > 20) && ((GameTime%70) = 0))
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 700, 0
volume		    = 255
channel	        = 4
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 3)
value           = 255,255,255
time            = 10
under           = 1

[State 3200:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 200
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 200
darken 		    = 0
poweradd 		= 0
unhittable 		= 1


[State 3200:     Aura]
type            = Explod
trigger1        = (animelem = 3)
anim            = 8063
ID              = 7049
pos             = -5,5
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermovetime 	= 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3200:     Aura]
type            = Explod
trigger1        = (animelem = 3)
anim            = 8060
ID              = 7049
pos             = 0,-50
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermovetime 	= 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 10
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3200:    Dust Right]
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
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3200:    Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7010
ID              = 7010
pos             = 20,0
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
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3200:    C Dust Left]
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

[State 3200:    C Dust Left]
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

[State 0:    CB Dust Left]
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

[State 0:    CB Dust Left]
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

[State 0:     Push Effect]
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

[State 0:    Energy Bring in]
type            = Explod
trigger1        = (Time = 11)
anim            = 9067
ID              = 9067
pos             = -15,-43
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
scale           = 1.5, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    GroundWaves]
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
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Electricity]
type            = Explod
trigger1        = (animelem = 3)
anim            = 7049
ID              = 7049
pos 			= -5,-45
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = .8, .8
sprpriority     = 10
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (!Time)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-27
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove 		= -1
pausemovetime 	= -1
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

; Charging ball
[State 0:    Helper]
type            = Helper
trigger1        = (time = 60)
helpertype	    = normal
id              = 7150
pos		        = 42,-50
postype         = p1
facing		    = 1
stateno	        = 7150
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1
size.yscale	    = 1
ignorehitpause  = 1
persistent      = 1

[State 0:		Helper]
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
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 799,0.75,3))
size.yscale		= (IfElse(Random <= 799,0.75,3))

[State 0:		Helper]
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
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.75,0.50))
size.yscale		= (IfElse(Random <= 499,0.75,0.50))

[State 0:		Helper]
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
supermovetime	= 999
pausemovetime	= 999
size.xscale		= (IfElse(Random <= 499,0.50,0.75))
size.yscale		= (IfElse(Random <= 499,0.50,0.75))

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 70
ampl 			= ifelse(power < 2000, 3, 6)
;phase 		    = 

;---------------

[State 0: ]
type 			= RemoveExplod
trigger1        = ((command != "holdy") && (time > 250))
ID 			    = 7049

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = ((command != "holdy") && (time > 250))
value           = 3201
ctrl		    = 0;1

;---------------------------------------------------------------------------
; Final Flash - Fire
[Statedef 3201]
type            = S
movetype        = A
physics         = S
anim            = 3201
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 3201:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 3201:     Screen Flash]
type            = EnvColor
trigger1        = (!Time)
value           = 255,255,255
time            = 5
under           = 0

[State 3200:     Screen Flash]
type            = EnvColor
trigger1        = (Time = 0)
value           = 255,255,255
time            = 5
under           = 0

[State 0, ]
type            = BGPalFX
trigger1        = (time = 0)
time            = 25
add             = 41,41,0
mul             = 256,256,256
sinadd          = 0,0,0,1
color           = 106
invertall       = 0
ignorehitpause  = 0
persistent      = 1

;---------------
;Sound
;---------------

[State 3201, ]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 3200 ,0
volume          = 255
channel         = 8

[State 3201, ]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 3200 ,1
volume          = 255
channel         = 4

;---------------
;Effects/Hit Details
;---------------

[State 3201:    Dust Left]
type            = Explod
trigger1        = (animelem = 1)
anim            = 7010
ID              = 7010
pos             = 0,0
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

[State 0:    C Dust Left]
type            = Explod
trigger1        = (animelem = 1)
anim            = 7011
ID              = 705
pos             = 20,7
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

[State 0:    CB Dust Left]
type            = Explod
trigger1        = (animelem = 1)
anim            = 7012
ID              = 705
pos             = 20,7
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

[State 3201:    Beam head]
type            = Explod
trigger1        = (animelem = 1)
anim            = 8061
ID              = 8061
pos 			= 20,-56
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 3201:    Projectile Helper]
type 			= Helper
trigger1 		= (animelem = 1)
helpertype 		= normal
name 			= "Final Flash Beam"
ID 			    = 8061
pos 			= 45, -56
postype 		= p1
stateno 		= 8061
keyctrl 		= 0
ownpal 		    = 1
supermovetime 	= 9999
pausemovetime 	= 9999
size.xscale 	= .5
size.yscale 	= .4

[State 0, ScreenBound]
type            = ScreenBound
trigger1        = 1
value			= 0
movecamera		= 0,1

[State 0: ]
type 			= RemoveExplod
trigger1        = (time = 50)
ID 			    = 8061

;---------------
[State 0, 	ChangeState]
type 			= ChangeState
trigger1 		= AnimTime = 0 && BackEdgeBodyDist <= 0
value 		    = 100

[State 0, 	ChangeState]
type 			= ChangeState
trigger1 		= AnimTime = 0 && FrontEdgeBodyDist > 0
value 		    = 0
ctrl 			= 1
;---------------------------------------------------------------------------
