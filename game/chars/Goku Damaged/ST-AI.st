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
; Var(1)  - Used in State 1000, to set the direction of the attack
; Var(2)  - State 630 and 640, to set the attacks to airborne moves
; Var(3)  - AI Randomizer Var for ground moves
; Var(4)  - AI Randomizer Var for air moves
; Var(5)  - AI Randomizer Var for combo finishers/launchers
; Var(57) - GameTime var
; Var(59) - AI variable
;===========================================================================
;[AI ST]--------------------------------------------------------------------
;===========================================================================
;-------------------------------------------------------------------------------
; AI Activation Helper State - Primary Version
;
; var(1) - First tick button activation prevention.
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Persistent direction command detection enabler (due to 2002.04.14).
; var(9) - AutoTurn bug fixer.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(59) - Parent's primary AI variable.
;
[StateDef 9741]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9741, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 5050

[State 9741, UglyHack]
type = VarSet
trigger1 = !var(1)
var(2) = 2

[State 9741, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(59)
trigger5 = var(3):=0
var(2) = (var(3):=1)+(var(4):=0)

[State 9741, Facing]
type = Turn
trigger1 = var(9):=(Facing != Parent,Facing)
trigger1 = !(var(4):=0)

[State 9741, DirTurnOnAI]
type = ParentVarSet
triggerall = !(var(3) || var(9))
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = !(var(4):=1)
var(59) = var(4)

[State 9741, DirTurnOffAI]
type = ParentVarSet
triggerall = !var(3)
triggerall = Parent,var(59)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(59) = var(4):=0

[State 9741, ButtonTurnOnAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
var(59) = 1

[State 9741, ButtonTurnOffAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(59) = -1

[State 9741, UnPauseCheck]
type = VarSet
triggerall = var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(2) = 2
trigger8 = var(2):=0
var(2) = 2

[State 9741, Goodbye]
type = DestroySelf
triggerall = var(1):=1
trigger1 = Parent,var(59)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2

;-------------------------------------------------------------------------------
; AI Activation Helper State - Compatibly Partnered Version
;
; var(1) - First tick activation prevention
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Hitpause check.
; var(5) - No button on previous tick.
; var(6) - Any dir on this tick.
; var(7) - Any button on this tick.
; var(8) - Matching partner button detected.
; var(9) - AutoTurn bug fixer.
; var(10)- Buffered dir detection disabler.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(59) - Parent's primary AI variable.
;
[StateDef 9742]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9742, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 5050

[State 9742, UglyHack]
type = VarSet
trigger1 = !var(1)
var(2) = var(3):=2

[State 9742, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(59)
trigger5 = var(1)
trigger5 = var(3):=0
var(2) = var(3):=1

[State 9742, Facing]
type = Turn
trigger1 = var(9):=(Facing != Parent,Facing)

[State 9742, ParentDirCheck]
type = VarSet
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = var(6):=0
var(6) = 1

[State 9742, BufferCheck]
type = VarSet
trigger1 = var(3) || var(4) || var(10)
var(10) = var(6)

[State 9742, ParentButtonCheck]
type = VarSet
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(7):=0
var(7) = 1

[State 9742, SameButtonCheck]
type = VarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = NumPartner
trigger1 = Parent,command = "a"
trigger1 = Partner,command = "a"
trigger2 = Parent,command = "b"
trigger2 = Partner,command = "b"
trigger3 = Parent,command = "c"
trigger3 = Partner,command = "c"
trigger4 = Parent,command = "x"
trigger4 = Partner,command = "x"
trigger5 = Parent,command = "y"
trigger5 = Partner,command = "y"
trigger6 = Parent,command = "z"
trigger6 = Partner,command = "z"
trigger7 = Parent,command = "start"
trigger7 = Partner,command = "start"
trigger8 = var(8):=0
var(8) = 1

[State 9742, DirTurnOnAI]
type = ParentVarSet
trigger1 = var(6)
trigger1 = !(var(9) || var(10))
var(59) = 1

[State 9742, DirTurnOffAI]
type = ParentVarSet
triggerall = var(6)
triggerall = !var(3)
triggerall = Parent,var(59)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(59) = 0

[State 9742, ButtonTurnOnAI]
type = ParentVarSet
trigger1 = var(5) && var(7)
trigger1 = !(var(2) || var(8))
var(59) = 1

[State 9742, ButtonTurnOffAI]
type = ParentVarSet
triggerall = var(7)
triggerall = !(var(2) || var(8))
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(59) = -1

[State 9742, UnPauseCheck]
type = VarSet
triggerall = var(2)
triggerall = !var(4)
trigger1 = var(7)
trigger2 = var(2) = 2
trigger2 = var(2):=0
var(2) = 2

[State 9742, Goodbye]
type = DestroySelf
trigger1 = Parent,var(59)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2

[State 9742, HitPauseCheck]
type = VarSet
trigger1 = var(6) || var(7)
trigger2 = !(Parent,HitPauseTime)
var(4) = Parent,HitPauseTime

[State 9742, Delay]
type = VarSet
trigger1 = var(1):=1
var(5) = !var(7)

;---------------------------------------------------------------------------
[Statedef -2];States that are always executed
;---------------------------------------------------------------------------
;---------------[AI]---------------
[State -2, StopAI]
type = VarSet
triggerall = var(59) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !Alive
var(59) = -2
IgnoreHitPause = 1
;------------[End of AI]------------

;Anti-steal protection
[State -2, VelAdd]
type = VelAdd
trigger1 = (Timemod = 10,0)
trigger1 = P1Name != "Goku by ynvaser"
x = -15

[State -2, VelAdd]
type = VelAdd
trigger1 = (Timemod = 15,5)
trigger1 = P1Name != "Goku by ynvaser"
x = 10

[State -2, VelAdd]
type = VelAdd
trigger1 = (Timemod = 20,0)
trigger1 = P1Name != "Goku by ynvaser"
y = -5

[State -2, BGPalFX]
type = BGPalFX
trigger1 = (Timemod = 20,0)
trigger1 = P1Name != "Goku by ynvaser"
time = 21
add = 50,50,50
mul = 250,250,250
sinadd = 40,40,40,10
invertall = 1
color = 256
ignorehitpause = 1
persistent = 1

[State -2, EnvShake]
type = EnvShake
trigger1 = (Timemod = 20,0)
trigger1 = P1Name != "Goku by ynvaser"
time = 21
freq = 140
ampl = -4
phase = 160
ignorehitpause = 1
persistent = 1

[State -2, Turn]
type = Turn
triggerall = 1
trigger1 = P1Name != "Goku by ynvaser"

[State -2, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = P1Name != "Goku by ynvaser"
text = "NAME IT BACK, BITCH!"

;Power-regeneration
[State -2, PowerAdd]
type = PowerAdd
triggerall = anim = 8
triggerall = ctrl
trigger1 = (Timemod = 2,0)
value = 1

;---------------------------------------------------------------------------
[Statedef -3];States that are executed when in self's state file
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;=====[AI]==================================================================
;---------------------------------------------------------------------------
[State -3, SetAI]
type = VarSet
triggerall = Alive && RoundState = 2
triggerall = IsHomeTeam && !IsHelper
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(59) = 1

[State -3, AI Helper - Compatibly Partnered Version]
type = Helper
trigger1 = !var(59) && !IsHelper
trigger1 = !NumHelper(9742)
trigger1 = Alive && RoundState = 2
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "AI Helper (Simul Version)"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, AI Helper]
type = Helper
triggerall = !var(59) && !IsHelper
triggerall = !NumHelper(9741)
triggerall = Alive && RoundState = 2
trigger1 = !NumPartner
trigger2 = !(Partner,SelfAnimExist(9741))
HelperType = normal
name = "AI Helper"
ID = 9741
pos = 9999999,99999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = var(59) = -2 && !IsHelper
trigger1 = Alive && RoundState = 2
var(59) = 1

[State -3, XOR]
type = VarSet
triggerall = var(59)!=1 && !IsHelper
triggerall = !var(56)
triggerall = var(57) = GameTime-1
trigger1 = command = "a" ^^ command = "a2"
trigger2 = command = "b" ^^ command = "b2"
trigger3 = command = "c" ^^ command = "c2"
trigger4 = command = "x" ^^ command = "x2"
trigger5 = command = "y" ^^ command = "y2"
trigger6 = command = "z" ^^ command = "z2"
trigger7 = command = "start" ^^ command = "start2"
trigger8 = command = "holda" ^^ command = "holda2"
trigger9 = command = "holdb" ^^ command = "holdb2"
trigger10 = command = "holdc" ^^ command = "holdc2"
trigger11 = command = "holdx" ^^ command = "holdx2"
trigger12 = command = "holdy" ^^ command = "holdy2"
trigger13 = command = "holdz" ^^ command = "holdz2"
trigger14 = command = "holdstart" ^^ command = "holdstart2"
trigger15 = command = "holdfwd" ^^ command = "holdfwd2"
trigger16 = command = "holdback" ^^ command = "holdback2"
trigger17 = command = "holdup" ^^ command = "holdup2"
trigger18 = command = "holddown" ^^ command = "holddown2"
trigger19 = command = "recovery" ^^ command = "recovery2"
var(59) = 1

[State -3, fiXOR]
type = VarAdd
trigger1 = var(56) > 0 && !IsHelper
var(56) = -1

[State -3, fuXOR]
type = VarSet
trigger1 = var(57) < GameTime-1 && !IsHelper
var(56) = 31
IgnoreHitPause = 1

[State -3, CPU]
type = VarSet
triggerall = var(59)!=1 && !IsHelper
triggerall = !var(56)
triggerall = var(57) = GameTime-1
trigger1 = command = "cpu1"

var(59) = 1

[State -3, Reset]
type = VarAdd
trigger1 = var(56) > 0 && !IsHelper
var(56) = -1

[State -3, Delay]
type = VarSet
trigger1 = var(57) < GameTime-1 && !IsHelper
var(56) = 31
IgnoreHitPause = 1

[State -3, GameTimeVar]
type = VarSet
trigger1 = !IsHelper
var(57) = GameTime
IgnoreHitPause = 1

;---------------[AI Code]---------------
[State -3, VarRandom] ;Standing Var
type = VarRandom
triggerall = (var(59) > 0)
trigger1 = (Timemod = 2,0)
v = 3
range = 800,-100

[State -3, VarRandom] ;Air Var
type = VarRandom
triggerall = (var(59) > 0)
trigger1 = (Timemod = 2,0)
v = 4
range = 400,0

[State -3, VarRandom] ;Finisher Var
type = VarRandom
triggerall = (var(59) > 0)
trigger1 = (Timemod = 2,0)
v = 5
range = 150,0

;Guard
[State 120, Guard]
type     = ChangeState
triggerall = var(59) > 0
triggerall = random < 400 && random >=0
trigger1 = inguarddist
trigger1 = ctrl
value    = 120

;Walk
[State 20, How gangsta's walk]
type = ChangeState
triggerall = var(59)>0
triggerall = ctrl
triggerall = statetype != A
triggerall = var(3) >= -100
triggerall = var(3) < -50
trigger1 = p2bodydist x > 80
trigger1 = p2bodydist x < -80
value = 20

;Jump
[State 40, Jump]
type = ChangeState
triggerall = var(59)>0
triggerall = ctrl
triggerall = statetype != A
triggerall = var(3) >= -50
triggerall = var(3) < 0
triggerall = p2statetype != L
trigger1 = P2BodyDist Y < (-52)
trigger2 = p2bodydist x < 30
trigger2 = p2bodydist x >= -30
value = 40

;Quick KameHameHa
[State 1000, Quick Kame]
type = ChangeState
triggerall = power >= 1000
triggerall = var(59)>0
trigger1 = p2statetype != L
trigger1 = !inguarddist
trigger1 = var(3) >= 0
trigger1 = var(3) < 50
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -65
trigger2 = stateno = 440
trigger2 = movecontact
trigger2 = random< 999
trigger2 = random>= 875
value = 1000

;Combo Rush X
[State 500, Combo Rush X]
type = ChangeState
triggerall = power >= 1000
triggerall = var(59)>0
trigger1 = p2statetype != L
trigger1 = var(3) >= 50
trigger1 = var(3) < 100
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x < 170
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -55
trigger2 = stateno = 440 || stateno = 441
trigger2 = movecontact
trigger2 = random< 875
trigger2 = random>= 750
value = 500

;Standing Uppercut
[State 204, Stand X+Y]
type = ChangeState
triggerall = var(59)>0
trigger1 = p2statetype != L
trigger1 = var(3) >= 100
trigger1 = var(3) < 150
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x < 55
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -95
trigger2 = stateno = 210 || stateno = 211
trigger2 = movecontact
trigger2 = random< 100
trigger2 = random>= 0
trigger3 = stateno = 230 || stateno = 231
trigger3 = movecontact
trigger3 = random< 650
trigger3 = random>= 500
trigger4 = stateno = 430 || stateno = 431
trigger4 = movecontact
trigger4 = random< 450
trigger4 = random>= 200
value = 204

;Standing Launcher Kick
[State 206, Stand A+B]
type = ChangeState
triggerall = var(59)>0
trigger1 = p2statetype != L
trigger1 = var(3) >= 150
trigger1 = var(3) < 200
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x < 50
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -55
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger2 = random< 150
trigger2 = random>= 100
trigger3 = stateno = 240 || stateno = 241
trigger3 = movecontact
trigger3 = random< 450
trigger3 = random>= 250
trigger4 = stateno = 440 || stateno = 441
trigger4 = movecontact
trigger4 = random< 750
trigger4 = random>= 450
value = 206

;Stand Light Punch
[State 200, Stand X]
type = ChangeState
triggerall = var(59)>0
trigger1 = p2statetype != L
trigger1 = var(3) >= 200
trigger1 = var(3) < 250
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x < 73
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -56
value = 200

;Crouching Light Punch
[State 400, Chrouch X]
type = ChangeState
triggerall = var(59)>0
trigger1 = p2statetype != L
trigger1 = var(3) >= 250
trigger1 = var(3) < 300
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x < 52
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -46
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
value = 400

;Stand Light Kick
[State 230, Stand A]
type = ChangeState
triggerall = var(59)>0
trigger1 = p2statetype != L
trigger1 = var(3) >= 300
trigger1 = var(3) < 350
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x < 81
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -45
trigger2 = stateno = 400 || stateno = 401
trigger2 = movecontact
value = 230

;Crouching Light Kick
[State 430, Chrouch A]
type = ChangeState
triggerall = var(59)>0
trigger1 = var(3) >= 350
trigger1 = var(3) < 400
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x < 63
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -30
trigger2 = stateno = 230 || stateno = 231
trigger2 = movecontact
value = 430

;Crouching Light Kick 2
[State 431, Stand A2]
type = ChangeState
triggerall = var(59)>0
trigger1 = stateno = 430
trigger1 = movecontact
value = 431

;Stand Medium Punch
[State 210, Stand Y]
type = ChangeState
triggerall = var(59)>0
trigger1 = p2statetype != L
trigger1 = var(3) >= 400
trigger1 = var(3) < 450
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x < 81
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -58
trigger2 = stateno = 431
trigger2 = movecontact
value = 210

;Crouch Medium Punch
[State 410, Crouch Y]
type = ChangeState
triggerall = var(59)>0
trigger1 = p2statetype != L
trigger1 = var(3) >= 450
trigger1 = var(3) < 500
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x < 62
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -47
trigger2 = stateno = 210 || stateno = 211
trigger2 = movecontact
value = 410

;Standing Medium Kick
[State 240, Stand B]
type = ChangeState
triggerall = var(59)>0
trigger1 = p2statetype != L
trigger1 = var(3) >= 500
trigger1 = var(3) < 550
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x < 93
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -72
trigger2 = stateno = 410 || stateno = 411
trigger2 = movecontact
value = 240

;Standing Medium Kick 2
[State 241, Stand B2]
type = ChangeState
triggerall = var(59)>0
trigger1 = stateno = 240
trigger1 = movecontact
value = 241

;Standing Medium Kick 3
[State 242, Stand B3]
type = ChangeState
triggerall = var(59)>0
triggerall = var(5) >= 0
triggerall = var(5) < 50
trigger1 = stateno = 241
trigger1 = movecontact
trigger2 = stateno = 440
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 450
trigger4 = movecontact
value = 242

;Crouching Medium Kick
[State 440, Crouch B]
type = ChangeState
triggerall = var(59)>0
trigger1 = var(3) >= 550
trigger1 = var(3) < 600
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x < 85
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -10
trigger2 = stateno = 241
trigger2 = movecontact
value = 440

;Chrouching KI Shot
[State 420, Chrouch Z]
type = ChangeState
triggerall = power >= 200
triggerall = var(59)>0
trigger1 = var(3) >= 600
trigger1 = var(3) < 650
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -55
trigger2 = stateno = 440 || stateno = 441
trigger2 = movecontact
trigger2 = random< 550
trigger2 = random>= 400
value = 420

;Stand Strong Kick
[State 250, Stand C]
type = ChangeState
triggerall = var(59)>0
trigger1 = p2statetype != L
trigger1 = var(3) >= 650
trigger1 = var(3) < 700
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x < 87
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -50
trigger2 = stateno = 440 || stateno = 441
trigger2 = movecontact
trigger2 = random< 750
trigger2 = random>= 550
value = 250

;Chrouching Legsweep
[State 450, Crouch C]
type = ChangeState
triggerall = var(59)>0
trigger1 = var(3) >= 700
trigger1 = var(3) < 750
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist x < 70
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 10
trigger1 = p2bodydist y > -12
trigger2 = stateno = 250 || stateno = 251
trigger2 = movecontact
value = 450

;Jump Light Kick
[State 630, Jump A]
type = ChangeState
triggerall = var(59)>0
trigger1 = p2statetype != L
trigger1 = var(4) >= 0
trigger1 = var(4) < 100
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x < 60
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 70
trigger1 = p2bodydist y >= 10
trigger2 = stateno = 1350 ;Air blocking
trigger3 = Stateno = 640
trigger3 = movecontact
value = 630

;Jump Medium Kick
[State 640, Jump B]
type = ChangeState
triggerall = var(59)>0
trigger1 = p2statetype != L
trigger1 = var(4) >= 100
trigger1 = var(4) < 200
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x < 65
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 70
trigger1 = p2bodydist y >= 0
trigger2 = stateno = 630
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
value = 640

;Jump Light Smackdown
[State 600, Jump X]
type = ChangeState
triggerall = var(59)>0
triggerall = pos y < -15
trigger1 = p2statetype != L
trigger1 = var(4) >= 200
trigger1 = var(4) < 250
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x < 50
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 80
trigger1 = p2bodydist y >= -10
trigger2 = stateno = 1350 ;Air blocking
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 640
trigger4 = movecontact
value = 600

;Jump Strong Smackdown
[State 610, Jump Y]
type = ChangeState
triggerall = var(59)>0
triggerall = pos y < -25
trigger1 = p2statetype != L
trigger1 = var(4) >= 250
trigger1 = var(4) < 300
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x < 50
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 70
trigger1 = p2bodydist y >= -30
trigger2 = stateno = 1350 ;Air blocking
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 640
trigger4 = movecontact
value = 610

;Jump Hard Kick
[State 650, Jump C]
type = ChangeState
triggerall = var(59)>0
triggerall = pos y < -10
trigger1 = p2statetype != L
trigger1 = var(4) >= 300
trigger1 = var(4) < 350
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x < 60
trigger1 = p2bodydist x >= 0
trigger1 = p2bodydist y < 40
trigger1 = p2bodydist y >= -50
trigger2 = stateno = 1350 ;Air blocking
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 640
trigger4 = movecontact
value = 650

;---------------------------------------------------------------------------
;=====[End of AI]===========================================================
;---------------------------------------------------------------------------
;Anim-smoother afterimage sctrl
[State -3, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = -1
trans = add
TimeGap  = 1
FrameGap = 1
length = 10
PalContrast = 96,96,97
PalAdd      =   5,  5,  5
PalBright = 30,30,31
palpostbright = 3,3,3
palmul = .50,.50,.51

;===========================================================================
;[End of file]--------------------------------------------------------------
;===========================================================================
