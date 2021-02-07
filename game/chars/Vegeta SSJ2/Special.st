;================================
;Vegeta Type-R
;================================

;------------------------------------------------------
;Author:	ZGTE
;	http://www.zgtm.tk
;------------------------------------------------------

;-Stateno 1000-1999

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
; launching kick
[Statedef 1000]
type            = A
movetype        = A
physics         = S
anim            = 216
;velset          = 0,0,0
ctrl            = 0
poweradd        = 80
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 1000:     VelSet]
type            = VelSet
trigger1        = (animelem = 3)
x		        = 6
y		        = -7

[State 1000:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 1000, PlaySnd]
type            = PlaySnd
trigger1        = Time = 0
value           = 9000,0
channel         = 5

[State 1000, PlaySnd]
type            = PlaySnd
trigger1        = animelem = 3
value           = 60,2
channel         = 6

[State 1000:     SwingSound]
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

[State 1000:     Huh!]
type            = PlaySnd
trigger1        = (!Time)
value           = 60,6
volume          = 255
channel         = 2
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 1000:     Dust Left]
type            = Explod
trigger1        = (animelem = 3)
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
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Hit Details
;---------------

[State 1000:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 50, 20
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -65
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -1, -10
air.velocity    = -1, -10
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 1000:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

;---------------------------------------------------------------------------
; Rushing Gut punches
[Statedef 1100]
type            = S
movetype        = A
physics         = S
anim            = 1100
;velset          = 0,0,0
ctrl            = 0
poweradd        = 30
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 1100:     VelSet]
type            = VelSet
trigger1        = (time = 0)
x		        = 4
y		        = 0

[State 1100:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 1100:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 1100:     PunchSound]
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

[State 1100, PlaySnd]
type            = PlaySnd
trigger1        = animelem = 2
value           = 60,2
channel         = 6

[State 1100:     Dust Left]
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
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Hit Details
;---------------

[State 1100:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 25, 5
pausetime       = 3, 25
guard.pausetime = 7, 8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -5, -35
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
[State 1100:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 1101
ctrl		    = 1

;---------------------------------------------------------------------------
; Rushing Gut punches 2
[Statedef 1101]
type            = S
movetype        = A
physics         = S
anim            = 1101
;velset          = 0,0,0
ctrl            = 0
poweradd        = 30
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 1101:     VelSet]
type            = VelSet
trigger1        = (time = 0)
x		        = 4
y		        = 0

[State 1101:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 1101:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 1101:     PunchSound]
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

[State 1101, PlaySnd]
type            = PlaySnd
trigger1        = animelem = 1
value           = 60,2
channel         = 6

;---------------
;Hit Details
;---------------

[State 1101:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 1)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 15, 5
pausetime       = 3, 25
guard.pausetime = 7, 8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -5, -35
hitsound        = S201, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -4, 0
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
[State 1101:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 1102
ctrl		    = 1
;---------------------------------------------------------------------------
; Rushing Gut punches 3
[Statedef 1102]
type            = S
movetype        = A
physics         = S
anim            = 1102
;velset          = 0,0,0
ctrl            = 0
poweradd        = 30
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 1102:     VelSet]
type            = VelSet
trigger1        = (time = 0)
x		        = 4
y		        = 0

[State 1102:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 1102:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 1102:     PunchSound]
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

[State 1102, PlaySnd]
type            = PlaySnd
trigger1        = animelem = 1
value           = 60,2
channel         = 6

;---------------
;Hit Details
;---------------

[State 1102:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 1)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 15, 5
pausetime       = 3, 25
guard.pausetime = 7, 8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -5, -35
hitsound        = S201, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -4, 0
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
[State 1102:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 1103
ctrl		    = 1
;---------------------------------------------------------------------------
; Rushing Gut punches 4
[Statedef 1103]
type            = S
movetype        = A
physics         = S
anim            = 1101
;velset          = 0,0,0
ctrl            = 0
poweradd        = 30
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 1103:     VelSet]
type            = VelSet
trigger1        = (time = 0)
x		        = 4
y		        = 0

[State 1103:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 1103:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 1103:     PunchSound]
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

[State 1103, PlaySnd]
type            = PlaySnd
trigger1        = animelem = 1
value           = 60,2
channel         = 6

;---------------
;Hit Details
;---------------

[State 1103:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 1)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 15, 5
pausetime       = 15, 25
guard.pausetime = 7, 8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -5, -35
hitsound        = S201, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -10, 0
air.velocity    = -4, 1
air.juggle      = 4
fall            = 1
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
[State 1103:     Continue combo]
type            = ChangeState
trigger1        = (movecontact = 1) && (p2bodydist X < 15) && (command = "b")
value           = 1104
ctrl		    = 1

;---------------
[State 1103:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1
;---------------------------------------------------------------------------
; Gut kick
[Statedef 1104]
type            = S
movetype        = A
physics         = S
anim            = 212
;velset          = 0,0,0
ctrl            = 0
poweradd        = 20
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 1104:     VelSet]
type            = VelSet
trigger1        = (time = 0)
x		        = 4
y		        = 0

[State 1104:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 1104:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 1104:     PunchSound]
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

[State 1104:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 1)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 25, 5
pausetime       = 15, 25
guard.pausetime = 7, 8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -5, -35
hitsound        = S420, 0
guardsound      = S201, 2
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -2, -4
air.velocity    = -2, -4
air.juggle      = 1
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
[State 1104:     Continue combo]
type            = ChangeState
trigger1        = (movecontact = 1) && (p2bodydist X < 15) && (command = "y")
value           = 1105
ctrl		    = 1

;---------------
[State 1104:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1
;---------------------------------------------------------------------------
; Elbow to the head
[Statedef 1105]
type            = S
movetype        = A
physics         = S
anim            = 1103
;velset          = 0,0,0
ctrl            = 0
poweradd        = 20
juggle          = 1
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 1105:     VelSet]
type            = VelSet
trigger1        = animelem = 1
x		        = 10
y		        = 0

[State 1105, ]
type            = VelAdd
trigger1        = animelem = 2
x               = 0
ignorehitpause  = 0
persistent      = 1

[State 1105, ]
type            = Turn
trigger1        = time = 20
ignorehitpause  = 0
persistent      = 1


[State 1105:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 0

[State 1105:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 1105:     PunchSound]
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

[State 1105:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 1)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 25, 5
pausetime       = 15, 30
guard.pausetime = 7, 8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -5, -25
hitsound        = S420, 0
guardsound      = S201, 2
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -1, -2
air.velocity    = -1, -2
air.juggle      = 1
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
[State 1105:     Continue combo]
type            = ChangeState
trigger1        = (movecontact = 1) && (p2bodydist X < 15) && (command = "b")
value           = 1106
ctrl		    = 1

[State 1105:     Continue combo]
type            = ChangeState
trigger1        = (power >= 1000) && (movecontact = 1) && (p2bodydist X < 15) && (command = "z")
value           = 3015
ctrl		    = 1

;---------------
[State 1105:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Side kick
[Statedef 1106]
type            = S
movetype        = A
physics         = S
anim            = 1104
;velset          = 0,0,0
ctrl            = 0
poweradd        = 20
juggle          = 1
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 1106:     VelSet]
type            = VelSet
trigger1        = animelem = 1
x		        = 10
y		        = 0

[State 1106, ]
type            = VelAdd
trigger1        = animelem = 3
x               = 0
ignorehitpause  = 0
persistent      = 1

[State 1006, ]
type            = Turn
trigger1        = time = 20
ignorehitpause  = 0
persistent      =  1


[State 1106:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 0

[State 1106:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 1106:     KickSound]
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

[State 1106:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 1)
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
sparkxy         = -5, -35
hitsound        = S420, 0
guardsound      = S201, 2
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -8, -2
air.velocity    = -8, -2
air.juggle      = 1
fall            = 1
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
[State 1106:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1
;---------------------------------------------------------------------------
; launching Uppercut
[Statedef 1111]
type            = S
movetype        = A
physics         = S
anim            = 1111
;velset          = 0,0,0
ctrl            = 0
poweradd        = 150
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 1111:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 9
y		        = 0

[State 1111:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 1111, PlaySnd]
type            = PlaySnd
trigger1        = Time = 0
value           = 9000,0
channel         = 5

[State 1111, PlaySnd]
type            = PlaySnd
trigger1        = animelem = 2
value           = 60,2
channel         = 6

[State 1111:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 2, 1
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 1111:     Huh!]
type            = PlaySnd
trigger1        = (!Time)
value           = 60,6
volume          = 255
channel         = 2
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 1111:     Dust Left]
type            = Explod
trigger1        = (animelem = 2)
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
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Hit Details
;---------------

[State 1111:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = C, NA
hitflag         = MA
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 50, 20
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -65
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -0, -16
air.velocity    = -0, -16
air.juggle      = 4
fall            = 1
fall.recover    = 1
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = (ifelse(((RoundNo!=1)&&(Win=0)),ifelse(p2stateno!=987123,0,1),1))
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 1111:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
