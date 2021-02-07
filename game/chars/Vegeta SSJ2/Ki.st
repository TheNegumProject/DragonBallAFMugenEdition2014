;================================
;Vegeta Type-R
;================================

;------------------------------------------------------
;Author:	ZGTE
;	http://www.zgtm.tk
;------------------------------------------------------

;-Stateno 2000-2999

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
; Ki Shot
[Statedef 2000]
type            = S
movetype        = A
physics         = S
anim            = 2000
;velset          = 0,0,0
ctrl            = 0
poweradd        = -200
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 2000:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 2000:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

;---------------
;Misc
;---------------

[State 2000:    Helper]
type            = Helper
trigger1        = (AnimElem = 2) 
helpertype	    = normal
name		    = "Ki Shot Straight"
id              = 8000
pos		        = 22,-57
postype         = p1
facing		    = 1
stateno	        = 8000
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1
size.yscale	    = .6

;---------------

;---------------
[State 2000:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Buksuda
[Statedef 2300]
type            = S
movetype        = A
physics         = S
anim            = 2300
;velset          = 0,0,0
ctrl            = 0
poweradd        = -400
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 2300:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 2300:     PlaySND]
type            = PlaySnd
trigger1        = (AnimElem = 4) 
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 2300:     Dust Left]
type            = Explod
trigger1        = (animelem = 4)
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
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Misc
;---------------

[State 2300:    Helper]
type            = Helper
trigger1        = (AnimElem = 4) 
helpertype	    = normal
name		    = "Buksuda"
id              = 8120
pos		        = 22,-63
postype         = p1
facing		    = 1
stateno	        = 8120
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1
size.yscale	    = 1

;---------------

;---------------
[State 2300:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Shyougeki Ha (ground ki)
[Statedef 2400]
type            = S
movetype        = A
physics         = S
anim            = 2400
;velset          = 0,0,0
ctrl            = 0
poweradd        = -200
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 2400:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 2400:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 2400:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 8000, 0
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 2400:    Dust Left]
type            = Explod
trigger1        = (time = 1)
anim            = 7015
ID              = 7015
pos             = 180,floor(-pos y)
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
sprpriority     = 7
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 2400:    Dust Left]
type            = Explod
trigger1        = (time = 1)
anim            = 7015
ID              = 7015
pos             = 180,floor(-pos y)
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
sprpriority     = 7
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1
;---------------
;Misc
;---------------

[State 2400:    Projectile]
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
offset 		    = 180,floor(-pos y)
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
damage 		    = 70,25
pausetime 		= 11,17
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
ground.velocity = 6,-7
air.velocity 	= 6,-7
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
[State 2400:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Renzenko Energy Dan - Ready
[Statedef 2500]
type            = S
movetype        = A
physics         = S
anim            = 2500
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

[State 2500:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 2501:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 60, 3
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

;---------------
;Misc
;---------------

[State 2500:    Energy]
type            = Explod
trigger1        = (time = 0)
anim            = 7099
ID              = 7099
pos             = 13,-42
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
scale           = .7, .7
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 2500:    Energy]
type            = Explod
trigger1        = (time = 0)
anim            = 7099
ID              = 7099
pos             = -5,-48
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------

;---------------

[State 0, ]
type            = RemoveExplod
trigger1        = (time = 60)
ID              = 7099
ignorehitpause  = 0
persistent      = 1

[State 0, ]
type            = RemoveExplod
trigger1        = (time > 30) && (command = "c")
ID              = 7099
ignorehitpause  = 0
persistent      = 1

[State 0, ]
type            = RemoveExplod
trigger1        = (time > 30) && (power >= 150) && (command = "z")
ID              = 7099
ignorehitpause  = 0
persistent      = 1

;---------------

[State 2500:    ChangeState]
type            = ChangeState
trigger1        = (time > 30) && (power >= 150) && (command = "z")
value           = 2501
ctrl		    = 1


[State 2500:    ChangeState]
type            = ChangeState
trigger1        = (time > 30) && (command = "c")
value           = 0
ctrl		    = 1

[State 2500:    ChangeState]
type            = ChangeState
trigger1        = (time = 60)
value           = 0
ctrl		    = 1
;---------------------------------------------------------------------------
; Reznkenko Energy Dan - Fire 1
[Statedef 2501]
type            = S
movetype        = A
physics         = S
anim            = 2501
;velset          = 0,0,0
ctrl            = 0
poweradd        = -150
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 2501:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 2501:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 2501:    C Dust Left]
type            = Explod
trigger1        = (time = 0)
anim            = 7011
ID              = 705
pos             = 20,0
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
sprpriority     = 1
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 2500:    Energy]
type            = Explod
trigger1        = (time = 0)
anim            = 7199
ID              = 7099
pos             = -8,-45
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Misc
;---------------

[State 2501:    Helper]
type            = Helper
trigger1        = (AnimElem = 1) 
helpertype	    = normal
name		    = "RZK Ki Shot Straight"
id              = 8500
pos		        = 15,-54
postype         = p1
facing		    = 1
stateno	        = 8500
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1
size.yscale	    = .8

;---------------

[State 0, ]
type            = RemoveExplod
trigger1        = (!AnimTime)
ID              = 7099
ignorehitpause  = 0
persistent      = 1

;---------------
[State 2501:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 2503
ctrl		    = 1

;---------------------------------------------------------------------------
; Reznkenko Energy Dan - Ready 2
[Statedef 2503]
type            = S
movetype        = A
physics         = S
anim            = 2500
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

[State 2503:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

;---------------
;Misc
;---------------
[State 2503:    Energy]
type            = Explod
trigger1        = (time = 0)
anim            = 7199
ID              = 7099
pos             = 13,-42
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
scale           = .7, .7
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 2503:    Energy]
type            = Explod
trigger1        = (time = 0)
anim            = 7199
ID              = 7099
pos             = -5,-48
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------


[State 0, ]
type            = RemoveExplod
trigger1        = (time = 60)
ID              = 7099
ignorehitpause  = 0
persistent      = 1

[State 0, ]
type            = RemoveExplod
trigger1        = (time > 30) && (command = "c")
ID              = 7099
ignorehitpause  = 0
persistent      = 1

[State 0, ]
type            = RemoveExplod
trigger1        = (power >= 150) && (command = "z")
ID              = 7099
ignorehitpause  = 0
persistent      = 1

;---------------
[State 2503:    ChangeState]
type            = ChangeState
trigger1        = (power >= 150) && (command = "z")
value           = 2502
ctrl		    = 1


[State 2503:    ChangeState]
type            = ChangeState
trigger1        = (time > 20) && (command = "c")
value           = 0
ctrl		    = 1

[State 2503:    ChangeState]
type            = ChangeState
trigger1        = (time = 60)
value           = 0
ctrl		    = 1
;---------------------------------------------------------------------------
; Reznkenko Energy Dan - Fire 2
[Statedef 2502]
type            = S
movetype        = A
physics         = S
anim            = 2502
;velset          = 0,0,0
ctrl            = 0
poweradd        = -150
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 2502:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 2502:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 2501:    C Dust Left]
type            = Explod
trigger1        = (time = 0)
anim            = 7012
ID              = 705
pos             = 15,7
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

[State 2502:    Helper]
type            = Helper
trigger1        = (AnimElem = 1) 
helpertype	    = normal
name		    = "RZK Ki Shot Straight"
id              = 8500
pos		        = 15,-54
postype         = p1
facing		    = 1
stateno	        = 8500
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1
size.yscale	    = .8

;---------------

;---------------
[State 2502:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 2504
ctrl		    = 1

;---------------------------------------------------------------------------
; Renzenko Energy Dan - Ready 1
[Statedef 2504]
type            = S
movetype        = A
physics         = S
anim            = 2500
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

[State 2503:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

;---------------
;Misc
;---------------
[State 2503:    Energy]
type            = Explod
trigger1        = (time = 0)
anim            = 7199
ID              = 7099
pos             = 13,-42
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
scale           = .7, .7
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 2503:    Energy]
type            = Explod
trigger1        = (time = 0)
anim            = 7199
ID              = 7099
pos             = -5,-48
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------


[State 0, ]
type            = RemoveExplod
trigger1        = (time = 60)
ID              = 7099
ignorehitpause  = 0
persistent      = 1

[State 0, ]
type            = RemoveExplod
trigger1        = (time > 30) && (command = "c")
ID              = 7099
ignorehitpause  = 0
persistent      = 1

[State 0, ]
type            = RemoveExplod
trigger1        = (power >= 150) && (command = "z")
ID              = 7099
ignorehitpause  = 0
persistent      = 1

;---------------
[State 2504:    ChangeState]
type            = ChangeState
trigger1        = (power >= 150) && (command = "z")
value           = 2501
ctrl		    = 1


[State 2504:    ChangeState]
type            = ChangeState
trigger1        = (time > 30) && (command = "c")
value           = 0
ctrl		    = 1

[State 2504:    ChangeState]
type            = ChangeState
trigger1        = (time = 60)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
