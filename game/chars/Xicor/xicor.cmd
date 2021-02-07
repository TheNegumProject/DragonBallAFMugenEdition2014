; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)

;

 -;| CPU Activation Commands |-----------------------
[Command]
name = "cpu1"
command = ~D, F,s
time = 1


[Command]
name = "cpu2"
command = ~D, F, a,s
time = 1

[Command]
name = "cpu2"
command = ~D, F, a,c
time = 1


[Command]
name = "cpu3"
command = ~D, F, z,s
time = 1
[Command]

name = "cpu3"
command = ~D, F, a,s
time = 1

[Command]
name = "cpu4"
command = ~D,DB, F,s
time = 1


[Command]
name = "cpu5"
command = ~D,DB, F,s
time = 1


[Command]
name = "cpu6"
command = ~D,DB, F,s
time = 1


[Command]
name = "cpu7"
command = ~D,DB, s,s
time = 1


[Command]
name = "cpu8"
command = ~D, F,s
time = 1


[Command]
name = "cpu9"
command = ~D,DB, s, U,s
time = 1


[Command]
name = "cpu10"
command = ~D,DF, F, x,s
time = 1



;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "teleport kamehameha"
command = ~B, F, b
time = 30

; Super Kamehameha
[Command]
name = "finalk"
command = ~D, DF, F, c
time = 20

; Super Kamehameha
[Command]
name = "fury"
command = ~D, DB, B, c
time = 20

[Command]
name = "deathball"
command = ~D, DF, F, y
time = 20



;-| Special Motions |------------------------------------------------------

[Command]
name = "buuex"
command = a+x

[Command]
name = "reverse"
command = a+b+x+y
time = 1

;Dragon Kicks
[Command]
name = "Slam"
command = ~D, DF, F, b

;Elbow
[Command]
name = "MultiKick"
command = ~D,DB, B, x

;Elbow
[Command]
name = "asswhoopen"
command = ~D,DB, B, b

"asswhoopen"

;Teleport
[Command]
name = "zanzoken"
command = b+y

[Command]
name = "smack"
command = ~D, DF, F, a
time = 10

;Counter
[Command]
name = "count"
command = ~D,DB, B, a
time = 20

[Command]
name = "ax"
command= z+c
time = 1

[Command]
name = "ab"
command= a+b
time = 1

[Command]
name = "taunt"
command= D,D, z
time = 20

[Command]
name = "taunt"
command= ~D,D, z
time = 20

;Super Sweep
[Command]
name = "supersweep"
command = ~D, DF, F, b
time = 20

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery_ground"
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holds"
command = /s
time = 1

[Command]
name = "charge"
command = /z
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;-| CPU |--------------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "s2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holds2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, AI]
type = VarSet
triggerall = var(30)!= 59
trigger1  = command = "cpu1"
trigger2  = command = "cpu2"
trigger3  = command = "cpu3"
trigger4  = command = "cpu4"
trigger5  = command = "cpu5"
trigger6  = command = "cpu6"
trigger7  = command = "cpu7"
trigger8  = command = "cpu8"
trigger9  = command = "cpu9"
trigger10 = command = "cpu10"
v = 30
value = 59


[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = Var(17) && Var(30) = 59&& P2Life != 0
triggerall = StateNo != 2050
triggerall = stateno != 2656
triggerall = stateno != 979898
trigger1 = p2bodydist x = [10,45]
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 750
trigger2 = p2bodydist x = [0,45]
trigger2 = p2bodydist y = [-5,5]
trigger2 = stateno = 2000
trigger3 = p2bodydist x = [0,45]
trigger3 = prevstateno = 100 && random < 750

[State -1, AI Stand Light Punch]
type = ChangeState
value = 210
triggerall = Var(17) && Var(30) = 59&& P2Life != 0
triggerall = stateno != 2656
triggerall = stateno != 979898
trigger1 = p2bodydist x = [5,25]
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 650
trigger2 = p2bodydist x = [0,25]
trigger2 = p2bodydist y = [-5,5]
trigger2 = stateno = 2000
trigger2 = random < 650
trigger3 = prevstateno = 200 && movecontact && random < 650


[State -1, AI Jump Light Punch]
type = ChangeState
value = 610
triggerall = Var(17) && Var(30) = 59
trigger1 = p2bodydist x = [0,40]
trigger1 = P2BodyDist Y = [-30, 30]
trigger1 = statetype = A
trigger1 = ctrl

[State -1, AI Jump Strong Punch]
type = ChangeState
value = 600
triggerall = p2life != 0 && Var(17) && Var(30) = 59 && stateno != 2001
trigger1 = stateno = 610
trigger1 = movecontact
trigger1 = random < 999

[State -1, AI Jump light likck]
type = ChangeState
value = 630
triggerall = p2life != 0 && Var(17) && Var(30) = 59
trigger1 = stateno = 600
trigger1 = movecontact
trigger1 = random < 999

[State -1, AI Jump strong likck]
type = ChangeState
value = 640
triggerall = p2life != 0 && Var(17)&& Var(30) = 59
trigger1 = stateno = 630
trigger1 = movecontact
trigger1 = random < 999

[State -1,warp A.I.]
type = ChangeState
value = 752
triggerall = Enemy,Authorname = "supermystery"
triggerall = Var(30) = 59 && Life != 0 && P2Life != 0 && ctrl = 1 && stateno != 300 && stateno != 300 && prevstateno != 300 && prevstateno != 300 && time < 10
triggerall = Var(17)
triggerall = stateno!=3200
trigger1 = p2bodydist x < 45 && p2movetype = A && random < 500
trigger2 = life <=800 && power >= 3000 && p2bodydist x < 45 && random <= 700

[State -1,warp A.I.]
type = ChangeState
value = 752
triggerall = Enemy,Authorname != "supermystery"
triggerall = Var(30) = 59 && Life != 0 && P2Life != 0 && ctrl = 1 && stateno != 300 && stateno != 300 && prevstateno != 300 && prevstateno != 300 && time < 10
triggerall = Var(17)
triggerall = stateno!=3200
trigger1 = p2bodydist x < 45 && p2movetype = A && random < 80
trigger2 = life <=600 && power >= 3000 && p2bodydist x < 45 && random <= 160

[State -1, Reversal Hard Punch-Stand]
type = ChangeState
value = 143
triggerall = Enemy,Authorname = "supermystery"
triggerall = Var(30) = 59 && Life != 0 && P2Life != 0 && ctrl = 1 && stateno != 300 && stateno != 300 && prevstateno != 300 && prevstateno != 300
trigger1 = prevstateno = 150
trigger1 = p2bodydist X < 50
trigger1 = random <= 800
trigger2 = prevstateno = 151
trigger2 = p2bodydist X < 50
trigger2 = random <= 800
trigger3 = prevstateno = 152
trigger3 = p2bodydist X < 50
trigger3 = random <= 800

[State -1, Reversal Hard Punch-Stand]
type = ChangeState
value = 143
triggerall = Enemy,Authorname != "supermystery"
triggerall = Var(30) = 59 && Life != 0 && P2Life != 0 && ctrl = 1 && stateno != 300 && stateno != 300 && prevstateno != 300 && prevstateno != 300
trigger1 = prevstateno = 150
trigger1 = p2bodydist X < 50
trigger1 = time < 11&& random <= 400
trigger2 = prevstateno = 151
trigger2 = p2bodydist X < 50
trigger2 = random <= 400
trigger3 = prevstateno = 152
trigger3 = p2bodydist X < 50
trigger3 = random <= 400

[State -1, Ass whoopin  A.I]
type = ChangeState
value = 2656
triggerall = Enemy,Authorname = "supermystery"
triggerall = Var(17) &&stateno != 1000 && Var(30) = 59
triggerall = power >= 4000
triggerall = stateno != 2656
triggerall = p2bodydist y = [-170, 40]
triggerall = life < 1300
trigger1 = P2BodyDist X >= 50 && ctrl = 1 && random <= 575
trigger2 = power >=6000 && random <= 950

[State -1, Ass whoopin  A.I]
type = ChangeState
value = 2656
triggerall = Enemy,Authorname != "supermystery"
triggerall = Var(17) && stateno != 1000 && Var(30) = 59
triggerall = power >= 4000
triggerall = stateno != 2656
triggerall = p2bodydist y = [-150, 20]
triggerall = life < 1200
trigger1 = P2BodyDist X >= 55 && ctrl = 1 && random <= 475
trigger2 = power >=6000 && random <= 40

[State -1,charge A.I.]
type = ChangeState
value = 730
triggerall = Enemy,Authorname = "supermystery"
triggerall = Var(30)= 59 && Life != 0 && P2Life != 0 && power < 6000 && stateno != 730 && stateno != 735 && stateno != 736 && stateno != 740 && stateno != 741 && StateNo != 105
triggerall = p2movetype != A
triggerall = movetype != A
triggerall = movetype != H
triggerall = stateno!=3200
triggerall = StateNo != 2050
triggerall = StateNo != 2060
triggerall = stateno != 2656
triggerall = stateno!=100
trigger1 = p2stateno = 5150 && random < 777
trigger2 = movetype != A && p2bodydist x > 60 && p2movetype = H
trigger3 = p2stateno = 1402 && random < 300
trigger4 = p2bodydist x >=125&& random < 90
trigger5 = p2stateno = 5657
trigger6 = stateno = 2000 && random < 90

[State -1, spinball A.I.]
type = changestate
value = 1070
triggerall = Enemy,Authorname = "supermystery"
triggerall = Var(17) && P2life != 0 && life > 0 && Var(30) = 59
triggerall = stateno!=2060
triggerall = stateno!=260
triggerall = stateno!=265
triggerall = stateno !=  2656
triggerall = stateno !=  26561
triggerall = stateno !=  26562
triggerall = stateno !=  26563
triggerall = stateno !=  26564
triggerall = StateNo != 2050
trigger1 = ctrl = 1
trigger1 = P2BodyDist X <= 85
trigger1 = P2BodyDist X >= 5
trigger1 = movetype != H && random <= 80
trigger3 = P2BodyDist X <= 80 && P2BodyDist Y > -10 && P2BodyDist Y < 5 && random <= 180

[State -1, spinball A.I.]
type = changestate
value = 1070
triggerall = Enemy,Authorname != "supermystery"
triggerall = Var(17) && P2life != 0 && life > 0 && Var(30) = 59
triggerall = stateno!=2060
triggerall = stateno!=260
triggerall = stateno!=265
triggerall = stateno !=  2656
triggerall = stateno !=  26561
triggerall = stateno !=  26562
triggerall = stateno !=  26563
triggerall = stateno !=  26564
triggerall = StateNo != 2050
trigger1 = ctrl = 1
trigger1 = P2BodyDist X <= 85
trigger1 = P2BodyDist X >= 5
trigger1 = movetype != H && random <= 65
trigger3 = P2BodyDist X <= 80 && P2BodyDist Y > -10 && P2BodyDist Y < 5 && random <= 165

[State -1, spinball A.I.]
type = changestate
value = 260
triggerall = Enemy,Authorname = "supermystery"
triggerall = Var(17) && P2life != 0 && life > 0 && Var(30) = 59
triggerall = stateno!=2060
triggerall = stateno!=260
triggerall = stateno!=265
triggerall = stateno !=  2656
triggerall = stateno !=  26561
triggerall = stateno !=  26562
triggerall = stateno !=  26563
triggerall = stateno !=  26564
triggerall = StateNo != 2050
trigger1 = ctrl = 1
trigger1 = P2BodyDist X <= 85
trigger1 = movetype != H && random <= 90&&time =3
trigger2 = movehit = 1 && stateno = 265 && random <= 20
trigger3 = P2BodyDist X <= 80 && P2BodyDist Y > -10 && P2BodyDist Y < 5 && random <= 190

[State -1, spinball A.I.]
type = changestate
value = 260
triggerall = Enemy,Authorname != "supermystery"
triggerall = Var(17) && P2life != 0 && life > 0 && Var(30) = 59
triggerall = stateno!=2060
triggerall = stateno!=260
triggerall = stateno!=265
triggerall = stateno !=  2656
triggerall = stateno !=  26561
triggerall = stateno !=  26562
triggerall = stateno !=  26563
triggerall = stateno !=  26564
triggerall = StateNo != 2050
trigger1 = ctrl = 1
trigger1 = P2BodyDist X <= 85
trigger1 = movetype != H && random <= 70&&time =3
trigger2 = movehit = 1 && stateno = 265 && random <= 10
trigger3 = P2BodyDist X <= 80 && P2BodyDist Y > -10 && P2BodyDist Y < 5 && random <= 170

[State -1, spinball A.I.]
type = changestate
value = 265
triggerall = Var(17) && P2life != 0 && life > 0 && Var(30) = 59
triggerall = stateno!=2060
triggerall = stateno!=265
triggerall = StateNo != 2050
trigger1 = ctrl = 1
trigger1 = P2BodyDist X <= 30
trigger1 = movetype != H && random <= 25
trigger1 = prevstateno = 260

[State -1, Attack Aggresively!]
type = ChangeState
value = 100
triggerall = Enemy,Authorname = "supermystery"
triggerall = Var(17) && stateno != 2102 && stateno != 1000 && stateno != 11000 && Var(30) = 59
triggerall = !Win
triggerall = stateno!=2060
triggerall = StateType = S
triggerall = StateNo != 100
triggerall = stateno != 979898
triggerall = stateno !=  2656
triggerall = stateno !=  26561
triggerall = stateno !=  26562
triggerall = stateno !=  26563
triggerall = stateno !=  26564
triggerall = StateNo != 730
triggerall = StateNo != 254
triggerall = StateNo != 2000
triggerall = StateNo != 2050
trigger1 = ctrl
trigger1 = p2bodydist x < 100
;trigger1 = p2bodydist y = [-5,5]
trigger1 = Random <= (150 - ifelse(Life < 265, 90, 0))
trigger2 = ctrl
trigger2 = P2MoveType = H
trigger2 = Random <= 400
trigger3 = statetype = S && ctrl
trigger3 = P2Movetype = I
trigger3 = P2Movetype != A
trigger3 = enemy,numproj = 0
trigger3 = p2bodydist x = [51,79]

[State -1,warp A.I.]
type = ChangeState
value = 3005
triggerall = Enemy,Authorname = "supermystery"
triggerall = Var(30) = 59 && Life != 0 && P2Life != 0 && ctrl = 1 && stateno != 3005 && stateno != 3005 && prevstateno != 3005 && prevstateno != 3005 && time < 3
triggerall = Var(17)
triggerall = stateno!=3200
triggerall = StateNo != 2050
triggerall = stateno != 979898
triggerall = stateno !=  2656
triggerall = stateno !=  26561
triggerall = stateno !=  26562
triggerall = stateno !=  26563
triggerall = stateno !=  26564
trigger1 = p2bodydist x > 85 && p2movetype = A && random < 400
trigger2 = life <=600 && power >= 3000 && p2bodydist x > 100 && random <= 999
trigger3 = P2BodyDist X = [100,200]
trigger3 = p2movetype = A && random <= 750
trigger4 = P2BodyDist X > 200
trigger4 = p2movetype = A && random < 999

[State -1,warp A.I.]
type = ChangeState
value = 3005
triggerall = Enemy,Authorname = "supermystery" || Enemy,Authorname = "gulthor"
triggerall = Var(30) = 59 && Life != 0 && P2Life != 0 && ctrl = 1 && stateno != 3005 && stateno != 3005 && prevstateno != 3005 && prevstateno != 3005
;triggerall = Var(17)
triggerall = P2Name = "Vegeta"
trigger1 = roundstate = 2 && time >=0
trigger1 = p2stateno = 3000 && P2BodyDist X = [0,300]

[State -1,warp A.I.]
type = ChangeState
value = 130
triggerall = Enemy,Authorname = "supermystery" || Enemy,Authorname = "gulthor"
triggerall = Var(30) = 59 && Life != 0 && P2Life != 0 && ctrl = 1 && stateno != 3005 && stateno != 3005
;triggerall = Var(17)
triggerall = P2Name = "Vegeta"
trigger1 = roundstate = 2 && time >=0
trigger1 = p2stateno = 704 && P2BodyDist X = [0,300]
trigger2 = roundstate = 2 && time >=0&&prevstateno = 735
trigger2 = p2stateno = 704 && P2BodyDist X = [0,300]
trigger3 = roundstate = 2 && time >=0&&prevstateno = 736
trigger3 = p2stateno = 704 && P2BodyDist X = [0,300]

[State -1, one hand Kamehameha AI]
type = ChangeState
value = 2050
triggerall = Enemy,Authorname = "supermystery"
triggerall = Var(17)
triggerall = Var(30) = 59
triggerall = stateno !=  2656
triggerall = stateno != 2060
triggerall = stateno != 2050
triggerall = power >= 1000
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = p2bodydist x >= 80 && stateno = 2000 && random <= 200
trigger1 = p2bodydist y = [-75,5]
trigger2 = p2bodydist x >= 80 && random <= 150
trigger2 = p2bodydist y = [-5,5]

[State -1, one hand Kamehameha AI]
type = ChangeState
value = 2050
triggerall = Enemy,Authorname != "supermystery"
triggerall = Var(17)
triggerall = Var(30) = 59
triggerall = stateno !=  2656
triggerall = stateno != 2060
triggerall = stateno != 2050
triggerall = power >= 1000
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = p2bodydist x >= 80 && stateno = 2000 && random <= 140
trigger1 = p2bodydist y = [-75,5]
trigger2 = p2bodydist x >= 80 && random <= 80
trigger2 = p2bodydist y = [-5,5]

[State -1, Ki Fury AI]
type = ChangeState
value = 4020
triggerall = Enemy,Authorname = "supermystery"
triggerall = Var(17)
triggerall = Var(30) = 59
triggerall = stateno !=  2656
triggerall = stateno != 2060
triggerall = stateno != 2050
triggerall = power >= 1000
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = p2bodydist x >= 80 && stateno = 2000 && random <= 200
trigger1 = p2bodydist y = [-75,5]
trigger2 = p2bodydist x >= 80 && random <= 150
trigger2 = p2bodydist y = [-5,5]

[State -1, Ki Fury AI]
type = ChangeState
value = 4020
triggerall = Enemy,Authorname != "supermystery"
triggerall = Var(17)
triggerall = Var(30) = 59
triggerall = stateno !=  2656
triggerall = stateno != 2060
triggerall = stateno != 2050
triggerall = power >= 1000
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = p2bodydist x >= 80 && stateno = 2000 && random <= 140
trigger1 = p2bodydist y = [-75,5]
trigger2 = p2bodydist x >= 80 && random <= 80
trigger2 = p2bodydist y = [-5,5]

[State -1, Lvl 1 Kamehameha]
type = ChangeState
value = 2060
triggerall = Enemy,Authorname = "supermystery"
triggerall = Var(17)
triggerall = Var(30) = 59
triggerall = stateno != 979898
triggerall = stateno != 2050
triggerall = stateno != 2060
triggerall = stateno !=  2656
triggerall = stateno !=  26561
triggerall = stateno !=  26562
triggerall = stateno !=  26563
triggerall = stateno !=  26564
triggerall = power >= 1000
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = p2bodydist x >= 80 && stateno = 2000 && random <= 200
trigger1 = p2bodydist y = [-150,5]
trigger2 = p2bodydist x >= 60 && random <= 150
trigger2 = p2bodydist y = [-5,5]

[State -1, Lvl 1 Kamehameha]
type = ChangeState
value = 2060
triggerall = Enemy,Authorname != "supermystery"
triggerall = Var(17)
triggerall = Var(30) = 59
triggerall = stateno != 979898
triggerall = stateno != 2050
triggerall = stateno != 2060
triggerall = stateno !=  2656
triggerall = stateno !=  26561
triggerall = stateno !=  26562
triggerall = stateno !=  26563
triggerall = stateno !=  26564
triggerall = power >= 1000
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = p2bodydist x >= 80 && stateno = 2000 && random <= 140
trigger1 = p2bodydist y = [-150,5]
trigger2 = p2bodydist x >= 60 && random <= 80
trigger2 = p2bodydist y = [-5,5]


[State -1, Ass whoopin  A.I]
type = ChangeState
value = 979898
triggerall = Enemy,Authorname != "supermystery"
triggerall = Var(17) && stateno != 2102 && stateno != 1000&& stateno != 2050 && stateno != 11000 && Var(30) = 59
triggerall = power >= 6000
triggerall = p2bodydist y = [-100, 15]
triggerall = life < 1200
triggerall = stateno!=3200
trigger1 = P2BodyDist X >= 30 && ctrl = 1 && random <= 500

[State -1, Ass whoopin  A.I]
type = ChangeState
value = 979898
triggerall = Enemy,Authorname = "supermystery"
triggerall = Var(17) && stateno != 2102 && stateno != 1000&& stateno != 2050 && stateno != 11000 && Var(30) = 59
triggerall = power >= 6000
triggerall = p2bodydist y = [-100, 15]
triggerall = life < 1400
triggerall = stateno!=3200
trigger1 = P2BodyDist X >= 30 && ctrl = 1 && random <= 600




;---------------------------------------------------------------------------
;Super Kamehameha (level 3)
[State -1, Kamehameha]
type = ChangeState
value = 2050
triggerall = command = "finalk"
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

;Super Kamehameha (level 3)
[State -1, Ki Fury]
type = ChangeState
value = 4020
triggerall = command = "fury"
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000

[State -1]
type = ChangeState
value = 2060
triggerall = command = "deathball"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 2062
triggerall = command = "deathball"
triggerall = statetype = S
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger2 = stateno = 2000

[State -1,warp A.I.]
type = ChangeState
value = 752
triggerall = command = "buuex"
triggerall = power  >=250
triggerall = p2bodydist x <= 41
;triggerall = MoveType = H
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000

;---------------------------------------------------------------------------

;=====================================================================

;----------------------------------------------------------------------
;Warp
[State -1]
type = ChangeState
value = 3005
triggerall = command = "ab"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000


[State -1]
type = ChangeState
value = 3005
triggerall = command = "ab"
triggerall = alive = 1
trigger1 = ctrl = 1
trigger1 = stateno >= 150        
trigger2 = Stateno <= 153
trigger3 = stateno = 5000       
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071

;-------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Warp Kamehameha
[State -1,Teleport KameHameHa]
type = changestate
value = 979898
triggerall = StateNo != 7535
triggerall = StateNo != 7536
triggerall = StateNo != 7800
triggerall = StateNo != 7537
triggerall = command = "teleport kamehameha"
triggerall = power >= 6000
trigger1 = ctrl
trigger2 = stateno = 1500
trigger3 = stateno = 2000
;---------------------------------------------------------------------------
;Fly Up Air Command
[State -1]
type = ChangeState
value = 2000
triggerall = command = "s"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-----------------------------------------------------------------------------
;Fly up
[State -1]
type = ChangeState
value = 767
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = var(12) = 0

;Fly down
[State -1]
type = ChangeState
value = 777
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = var(12) = 1
;==============================================================================

;------------------------------------------------------------

;===========================================================================
; Zero/Alpha Counter X
[State -1]
type = ChangeState
value = 960
triggerall = command = "count"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Grapple Punch
[State -1, Grab atempt AI]
type = ChangeState
value = 275
triggerall = Enemy,Authorname = "supermystery"
triggerall = p2bodydist x <=20
triggerall != stateno = 275
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000
trigger3 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = random <= 800

[State -1, Grab atempt AI]
type = ChangeState
value = 275
triggerall = Enemy,Authorname != "supermystery"
triggerall = p2bodydist x <=20
triggerall = p2bodydist y = [-100,0]
triggerall != stateno = 275
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000
trigger3 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = random <= 400

;Grapple Punch
[State -1, Grab atempt]
type = ChangeState
value = 275
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = p2bodydist x <=20
triggerall = p2bodydist y = [-100,0]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000
trigger3 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 205
triggerall = command = "smack"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 2000


;----------------------------------------------------------------------
; slam
[State -1]
type = ChangeState
value =1070
triggerall = StateNo != 7535
triggerall = StateNo != 7536
triggerall = StateNo != 7800
triggerall = StateNo != 7537
triggerall = StateNo != 2001
triggerall = command = "Slam"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2435
trigger2 = ctrl = 1
trigger3 = stateno = 2435
trigger3 = ctrl = 1
trigger3 = stateno = 2435
trigger4 = ctrl = 1
trigger4 = stateno = 2435
trigger5 = ctrl = 1
trigger5 = stateno = 2435
trigger6 = ctrl = 1
trigger6 = stateno = 2435
trigger8 = ctrl = 1
trigger8 = stateno = 2435
trigger9 = stateno = 2435
trigger9 = ctrl = 1
trigger10 = stateno = 2435
trigger10 = ctrl = 1
trigger11 = stateno = 2435
trigger11 = ctrl = 1
trigger12 = stateno = 2435
trigger12 = ctrl = 1
trigger13 = stateno = 2435
trigger13 = ctrl = 1
trigger14 = stateno = 2435
trigger14 = ctrl = 1
trigger15 = stateno = 2435
trigger15 = stateno = 2435
trigger16 = ctrl = 1
trigger16 = stateno = 2435
trigger17 = ctrl = 1
trigger17 = stateno = 2435
trigger18 = stateno = 2435
trigger18 = movecontact = 1

[State -1, Reversal Hard Punch-Stand]
type = ChangeState
value = 143
triggerall = !var(17)
triggerall = command = "reverse"
trigger1 = p2bodydist X < 50
trigger1 = stateno = 150
trigger1 = time < 11

[State -1, Reversal Hard Punch-Crouch]
type = ChangeState
value = 143
triggerall = !var(17)
triggerall = command = "reverse"
trigger1 = p2bodydist X < 50
trigger1 = stateno = 152
trigger1 = time < 11
;---------------------------------------------------------------------------
;------------------------------------------------------------------------------
; Elbow
[State -1]
type = ChangeState
value =260
triggerall = StateNo != 7534
triggerall = StateNo != 7535
triggerall = StateNo != 7536
triggerall = StateNo != 7800
triggerall = StateNo != 7537
triggerall = StateNo != 2001
triggerall = command = "MultiKick"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 260
trigger2 = ctrl = 1
trigger3 = MoveContact
trigger4 = stateno = 2000

[State -1, asswhoopen]
type = ChangeState
value =2656
triggerall = power >=4000
triggerall = StateNo != 7534
triggerall = StateNo != 7535
triggerall = StateNo != 7536
triggerall = StateNo != 7800
triggerall = StateNo != 7537
triggerall = StateNo != 2001
triggerall = command = "asswhoopen"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 260
trigger2 = ctrl = 1
trigger3 = MoveContact
trigger4 = stateno = 2000
;------------------------------------------------------------------------------

;Stand Light Punch
;立ち弱パンチ
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "taunt"
trigger1 = statetype != A
trigger1 = ctrl = 1
;trigger2 = stateno = 2000
;trigger3 = stateno = 200
;trigger3 = time > 7

;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000
trigger3 = stateno = 200
trigger3 = time > 7

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000
trigger3 = stateno = 200
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000
trigger3 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 =  stateno = 200
;---------------------------------------------------------------------------
;High Kick
[State -1, Standing High Kick]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000
trigger3 = stateno = 230
;---------------------------------------------------------------------------

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = statetype = S
trigger1 = stateno = 230 && animelemtime(2) > 1
trigger2 = (stateno = 200) && time > 5
trigger2 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;High Kick
[State -1, Standing High Kick]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000
trigger3 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;CHARGE
[State -1, Charge]
type = ChangeState
value = 730
triggerall = StateNo != 7534
triggerall = StateNo != 7535
triggerall = StateNo != 7536
triggerall = StateNo != 7800
triggerall = StateNo != 7537
triggerall = StateNo != 2001
triggerall = StateNo != 2003
triggerall = Power < 6000
triggerall = command = "charge"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 2000

;---------------------------------------------------------------------------
;Super Sweep
[State -1]
type = ChangeState
value = 406
triggerall = StateNo != 7535
triggerall = StateNo != 7536
triggerall = StateNo != 7800
triggerall = StateNo != 7537
triggerall = StateNo != 2001
triggerall = StateNo != 2003
triggerall = command = "supersweep"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Fireball
[State -1]
type = ChangeState
value = 4000
triggerall =  p2bodydist y <=75
triggerall = stateno = 2000
triggerall = StateNo != 7535
triggerall = StateNo != 7535
triggerall = StateNo != 7536
triggerall = StateNo != 7800
triggerall = StateNo != 7537
triggerall = StateNo != 2001
triggerall = StateNo != 2003
triggerall = command = "c"
triggerall = numproj = 0
triggerall = power >= 100 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 2000
;------------------------------------

[State -1]
type = ChangeState
value = 4005
triggerall =  p2bodydist y >=75
triggerall = StateNo != 7535
triggerall = StateNo != 7535
triggerall = StateNo != 7536
triggerall = StateNo != 7800
triggerall = StateNo != 7537
triggerall = StateNo != 2001
triggerall = StateNo != 2003
triggerall = command = "c"
triggerall = numproj = 0
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 2000

;------------------------------

[State -1]
type = ChangeState
value = 4010
triggerall =  p2bodydist y <-20
triggerall = StateNo != 7535
triggerall = StateNo != 7535
triggerall = StateNo != 7536
triggerall = StateNo != 7800
triggerall = StateNo != 7537
triggerall = StateNo != 2001
triggerall = StateNo != 2003
triggerall = command = "c"
triggerall = numproj = 0
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl

;-----------------------------------

[State -1]
type = ChangeState
value = 4015
triggerall = StateNo != 7535
triggerall = StateNo != 7535
triggerall = StateNo != 7536
triggerall = StateNo != 7800
triggerall = StateNo != 7537
triggerall = StateNo != 2001
triggerall = StateNo != 2003
triggerall = command = "c"
triggerall = numproj = 0
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl





