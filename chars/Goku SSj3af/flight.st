;kamekaze's flight code. besure to give me credit for this

[Statedef 10000]
;----------------------------------------------------------------------------------------
;Fly up (Flying Start)
type = A
movetype = I
physics = A
ctrl = 0
velset = 0,-10
facep2 = !(prevstateno = 9010)

[State 1999, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 43
value = 43

[State 1999, 2]
type = AfterImage
Trigger1 = time = 1
length = 10
PalColor = 0
TimeGap = 1
FrameGap = 3
Trans = Add1
time = 10

;This makes the jump sound effect.
[State 1999, JumpSnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

;will go to state 2000 as soon as the move has ended.
[State 1999, Fly]
type = ChangeState
trigger1 = AnimTime = 0
value = 10001
ctrl = 1

;---------------------------------------------------------------------------
;Bukuu Jutsu
[Statedef 10001]
type = S
movetype = I
physics = N
ctrl = 0
anim = 2000
velset = 0,0

[State 2000, VarSet]
type = VarSet
trigger1 = Time = 0
var(23) = 1

[State 2000, MakeDust1]
type = MakeDust
triggerall = Pos Y >= -80 && Pos Y <= -70
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 75
spacing = 3

[State 2000, MakeDust2]
type = MakeDust
triggerall = Pos Y >= -70 && Pos Y <= -60
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 60
spacing = 3

[State 2000, MakeDust3]
type = MakeDust
triggerall = Pos Y >= -60 && Pos Y <= -50
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 50
spacing = 3

[State 2000, MakeDust4]
type = MakeDust
triggerall = Pos Y >= -50 && Pos Y <= -40
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 40
spacing = 3

[State 2000, MakeDust5]
type = MakeDust
triggerall = Pos Y >= -40 
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
pos = -5, 30
spacing = 3

[State 2000, Guard]
type = ChangeState
triggerall = P2MoveType = A
triggerall = P2BodyDist X <= 120
trigger1 = Command = "holdback"
trigger2 = Command = "BB"
value = 130

[State 2000, RunSnd]
type = PlaySnd
trigger1 = command = "FF"
trigger2 = command = "BB"
trigger3 = command = "DD"
trigger4 = command = "UU"
value = 21, 0

;��~
[State 2000, Stop1]
type = VelSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "z"
trigger1 = var(2) = 0
trigger2 = Pos Y < -400
x = 0
y = 0

[State 2000, Stop2]
type = ChangeAnim
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Anim != 41
value = 41

[State 2000, Stop2]
type = ChangeAnim
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Anim != 41
value = 41

;�t���t��
[State 2000,fuwavar(1)]
type = VarSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = var(2) != 2
trigger2 = var(2) = 2
trigger2 = Vel Y >= 2.4
v = 2
value = 1

[State 2000,fuwavar(2)]
type = VarSet
triggerall = var(2) = 1
trigger1 = Vel Y <= -2.4
trigger2 = P2BodyDist Y > 400
trigger2 = Vel Y < 0
v = 2
value = 2

[State 2000,fuwaUp]
type = VelAdd
;triggerall = stateno != 315143
trigger1 = var(2) = 1
y = -0.3

[State 2000,fuwaDown]
type = VelAdd
;triggerall = stateno != 315143
trigger1 = var(2) = 2
y = 0.3

[State 2000,fuwaDown]
type = Velset
trigger1 = stateno = 315143
y = 0

[State 2000,fuwaEnd]
type = VelSet
triggerall = var(2) != 0
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
y = 0

[State 2000,fuwaEndVar]
type = VarSet
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
v = 2
value = 0

;�����̌��E
[State 2000, UpBorder1]
type = PosSet
trigger1 = Pos Y < -400
y = -400

[State 2000, UpBorder2a]
type = PosAdd
trigger1 = P2BodyDist Y > 400
trigger1 = Vel Y < 0
y = 1

[State 2000, UpBorder2b]
type = VelSet
trigger1 = P2BodyDist Y > 400
trigger1 = Vel Y < 0
y = 0

;�_�b�V�����g
[State 2000, Runeffect]
type = AfterImage
trigger1 = Command = "FF"
trigger1 = Vel X < 9
trigger2 = Command = "BB"
trigger2 = Vel X > -8.6
trigger3 = Command = "DD"
trigger3 = Vel Y < 8.6
trigger4 = Command = "UU"
trigger4 = Vel Y > -8.6
length = 13
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 10

;�_�b�V���O
[State 2000, RunFwd]
type = VelSet
trigger1 = Command = "FF"
trigger1 = Vel X < 9
x = 9

;�_�b�V����
[State 2000, RunBack]
type = VelSet
trigger1 = Command = "BB"
trigger1 = Vel X > -8.6
x = -8.6

;�_�b�V����
[State 2000, RunDown]
type = VelSet
trigger1 = Command = "DD"
trigger1 = Vel Y < 8.6
y = 8.6

;�_�b�V����
[State 2000, RunUp]
type = VelSet
trigger1 = Command = "UU"
trigger1 = Vel Y > -8.6
y = -8.6

;���~
[State 2000, GoDown1]
type = VelAdd
trigger1 = PalNo = [1, 12]
trigger1 = command = "holddown"
trigger2 = var(58) = 1
trigger2 = P2Dist Y > 0
y = 0.5

[State 2000,GoDown2]
type = VelSet
trigger1 = PalNo = [1, 12]
trigger1 = command = "holddown"
trigger1 = Vel Y < 0 
trigger2 = var(58) = 1
trigger2 = P2Dist Y > 0
trigger2 = Vel Y < 0
y = 0

;�㏸
[State 2000, GoUp1]
type = VelAdd
trigger1 = PalNo = [1, 12]
trigger1 = command = "holdup"
trigger2 = var(58) = 1
trigger2 = P2Dist Y < 0
y = -0.4

[State 2000,GoUp2]
type = VelSet
trigger1 = PalNo = [1, 12]
trigger1 = command = "holdup"
trigger1 = Vel Y > 0 
trigger2 = var(58) = 1
trigger2 = P2Dist Y < 0
trigger2 = Vel Y > 0
y = 0

[State 2000, GoUpAnim]
type = ChangeAnim
trigger1 = PalNo = [1, 12]
trigger1 = Anim != 41
trigger1 = command = "holdup"
trigger2 = var(58) = 1
trigger2 = Anim != 100
trigger2 = P2Dist Y < 0
trigger3 = PalNo = [1, 12]
trigger3 = Anim != 41
trigger3 = command = "holddown"
trigger4 = var(58) = 1
trigger4 = Anim != 41
trigger4 = P2Dist Y < 0
value = 41

;���
[State 2000, GoBack1]
type = VelAdd
trigger1 = PalNo = [1, 12]
trigger1 = command = "holdback"
trigger2 = var(58) = 1
trigger2 = P2Dist X < 0 
x = -0.4

[State 2000,GoBack2]
type = VelSet
trigger1 = PalNo = [1, 12]
trigger1 = command = "holdback"
trigger1 = Vel X > 0 
trigger2 = var(58) = 1
trigger2 = P2Dist X < 0
trigger2 = Vel X > 0
x = 0

[State 2000, GoBackAnim]
type = ChangeAnim
trigger1 = PalNo = [1, 12]
trigger1 = Anim != 105
trigger1 = command = "holdback"
trigger2 = var(58) = 1
trigger2 = Anim != 105
trigger2 = P2Dist X < -10
value = 105

;�O�i
[State 2000, GoFwd1]
type = VelAdd
trigger1 = PalNo = [1, 12]
trigger1 = command = "holdfwd"
trigger2 = var(58) = 1
trigger2 = P2Dist X > 0
x = 0.5

[State 2000,GoFwd2]
type = VelSet
trigger1 = PalNo = [1, 12]
trigger1 = command = "holdfwd"
trigger1 = Vel X < 0 
trigger2 = var(58) = 1
trigger2 = P2Dist X > 0
trigger2 = Vel X < 0
x = 0

[State 2000, GoFwdAnim]
type = ChangeAnim
trigger1 = PalNo = [1, 12]
trigger1 = Anim != 100
trigger1 = command = "holdfwd"
trigger2 = var(58) = 1
trigger2 = Anim != 100
trigger2 = P2Dist X > 0
value = 100

;�����]��
[State 2000, Turn]
type = Turn
trigger1 = P2Dist X < 0

;���n
[State 2000, Land1]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

;This ends the flying action if the command is used.
[State 2000, Land2]
type              = ChangeState
triggerall 	  = var(58) != 1
triggerall        = PalNo = [1, 12]
triggerall        = Command = "holdx"
triggerall        = Command = "holdy"
trigger1          = Command = "holdup"
trigger2          = Command = "holddown"
trigger3          = Command = "holdback"
trigger4          = Command = "holdfwd"
value             = 50
ctrl              = 1

[State 2000, Kod While Flying]
type = changestate
;triggerall = stateno = 2000
trigger1 = life <=0
trigger2 = loseko
value = 5050

[State 2000, WinLose]
type = ChangeState
trigger1 = Win
trigger2 = Lose
value = 50




