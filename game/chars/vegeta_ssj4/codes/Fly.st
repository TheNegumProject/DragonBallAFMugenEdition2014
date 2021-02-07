;------------------------------------------------------------------
;MODO FLY......(Modelo del creador "Bardock").

[Statedef 910] ;numero do state
type = A
movetype = A
physics = A
velset = 0,-5.5 ; quanto ele sai do chao 
anim = 910 ; imagem no air dele indo pro alto
ctrl = 0

[State 910, 3] ; vai pro state abaixo
type = changestate
trigger1 = animtime = 0
value = 900 ; state abaixo
ctrl = 1

;-----------
;Volando
[Statedef 900] ;numero do state 
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0

[State 900, VarSet]
type = VarSet
Trigger1 = Time = 0
var(3) = 1

[State 900, Block1]
type = ReversalDef
Trigger1 = command = "holdback"
reversal.attr = SCA, NA, SA, HA
pausetime = 0,15
hitsound = S20, 3
p1stateno = 150

[State 900, Stop1]
type = VelSet
Trigger1 = command != "holdfwd"
Trigger1 = command != "holdback"
Trigger1 = command != "holdup"
Trigger1 = command != "holddown"
Trigger1 = var(2) = 0
Trigger2 = Pos Y < -405
x = 0
y = 0

[State 910, Stop2]
type = ChangeAnim
Trigger1 = command != "holdup"
Trigger1 = command != "holddown"
Trigger1 = Anim != 900 ; imagem parada no ar
value = 900 ; imagem parada no ar

[State 900,fuwavar(1)]
type = VarSet
Trigger1 = command != "holdfwd"
Trigger1 = command != "holdback"
Trigger1 = command != "holdup"
Trigger1 = command != "holddown"
Trigger1 = var(2) != 2
Trigger2 = var(2) = 2
Trigger2 = Vel Y >= 1.3 ;2.4
v = 2
value = 1

[State 900,fuwavar(2)]
type = VarSet
Triggerall = var(2) = 1
Trigger1 = Vel Y <= -1.3 ; -2.4
Trigger2 = P2BodyDist Y > 250
Trigger2 = Vel Y < 0
v = 2
value = 2

[State 900,fuwaUp]
type = VelAdd
Trigger1 = var(2) = 1
y = -0.1  ;-0.3

[State 900,fuwaDown]
type = VelAdd
Trigger1 = var(2) = 2
y = 0.1  ;0.3

[State 900,fuwaEnd]
type = VelSet
Triggerall = var(2) != 0
Trigger1 = command = "holdfwd"
Trigger2 = command = "holdback"
Trigger3 = command = "holdup"
Trigger4 = command = "holddown"
y = 0

[State 900,fuwaEndVar]
type = VarSet
Trigger1 = command = "holdfwd"
Trigger2 = command = "holdback"
Trigger3 = command = "holdup"
Trigger4 = command = "holddown"
v = 2
value = 0

[State 900, UpBorder1]
type = PosSet
Trigger1 = Pos Y < -400
y = -400

[State 900, UpBorder2a]
type = PosAdd
Trigger1 = P2BodyDist Y > 250
Trigger1 = Vel Y < 0
y = 1

[State 900, UpBorder2b]
type = VelSet
Trigger1 = P2BodyDist Y > 250
Trigger1 = Vel Y < 0
y = 0

[State 900, GoDown1]
type = VelAdd
Trigger1 = command = "holddown"
y = 0.4

[State 900,GoDown2]
type = VelSet
Trigger1 = command = "holddown"
Trigger1 = Vel Y < 0 
y = 0

[State 900, GoUp1]
type = VelAdd
Trigger1 = command = "holdup"
y = -0.3

[State 900,GoUp2]
type = VelSet
Trigger1 = command = "holdup"
Trigger1 = Vel Y > 0 
y = 0

[State 900, GoUpAnim]
type = ChangeAnim
Trigger1 = Anim != 904 ; imagem indo para cima 
Trigger1 = command = "holdup"
value = 904 ; imagem indo para cima 

[State 900, GoBack1]
type = VelAdd
Trigger1 = command = "holdback"
x = -0.3

[State 900,GoBack2]
type = VelSet
Trigger1 = command = "holdback"
Trigger1 = Vel X > 0 
x = 0

[State 900, GoBackAnim]
type = ChangeAnim
Triggerall = Anim != 902 ; imagem indo para traz
Trigger1 = command = "holdback"
Trigger2 = command = "holddown"
value = 902 ; imagem indo para traz

[State 900, GoFwd1]
type = VelAdd
Trigger1 = command = "holdfwd"
x = 0.4

[State 900,GoFwd2]
type = VelSet
Trigger1 = command = "holdfwd"
Trigger1 = Vel X < 0 
x = 0

[State 900, GoFwdAnim]
type = ChangeAnim
Trigger1 = Anim != 901 ; imagem indo para frente
Trigger1 = command = "holdfwd"
value = 901 ; imagem indo para frente

[State 900, GoDownAnim]
type = ChangeAnim
triggerall = Anim != 903 ; imagem indo para baixo
trigger1 = command = "holddown"
value = 903 ; imagem indo para baixo

[State 900, Turn]
type = Turn
Trigger1 = P2Dist X < 0

[State 900, Land1]
type = ChangeState
Trigger1 = Pos Y >= 0
value = 52
ctrl = 1

[State 900, Land2]
type = ChangeState
Trigger1 = command = "fly" ; nome do comando no CMD
Trigger1 = command = "holddown"
value = 50
ctrl = 1

[State 900,WinALose] ; quando ganhar vai pro state de baixo 
type = ChangeState
trigger1 = Win = 1
trigger2 = Lose = 1
value = 912 ;1202

;---------------------------------------------------------------------------

[Statedef 912]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
anim = 912 ; imagens dele decendo 

[State 912, 3]
type = VelAdd
trigger1 = AnimElem = 1
trigger1 = AnimElem <= 2
x = -0.3

[State 912, 3]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 912, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 900

[State 210, 3]
type = ChangeState
trigger1 = time = 60
value = 913 

;---------------------------------------------------------------------------
[Statedef 913]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0

[State 1531, 5]
type = PlaySnd
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
persistent = 0
value = 21,4

[State 52, 3]
type = PosSet
trigger1 = Vel Y = 0
y = 0

[State 209, 1]
type = ChangeAnim
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 913

[State 209, 1]
type = Velset
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 3021, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 900

[State 913, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
