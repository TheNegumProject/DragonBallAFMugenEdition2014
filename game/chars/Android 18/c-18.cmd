[Command]
name = "IA1"
command = D, DF, F, b,a
time = 1
[Command]
name = "IA2"
command = D, DF, F, b,a+b
time = 1
[Command]
name = "IA3"
command = D, DF, F, c,a+b+c
time = 1
[Command]
name = "IA4"
command = D, DF, F, x,a+b+c+z
time = 1
[Command]
name = "IA5"
command = D, DF, F, x,a+b+c+z+x
time = 1
[Command]
name = "IA6"
command = D, DF, F, b,a+b+c+z+x+y
time = 1
[Command]
name = "IA7"
command = D, DF, F, b,a+b+c+z+x+y+U
time = 1
[Command]
name = "IA8"
command = D, DF, F, c,a+b+c+z+x+y+U+D
time = 1
[Command]
name = "IA9"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F
time = 1
[Command]
name = "IA10"
command = D, DF, F, x
time = 1
[Command]
name = "IA11"
command = D, DF, F, b
time = 1
[Command]
name = "IA12"
command = D, DF, F, b
time = 1
[Command]
name = "IA13"
command = D, DF, F, c,D, DF, F
time = 1
[Command]
name = "IA14"
command = D, DF, F ,D, DF, F
time = 1
[Command]
name = "IA15"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F
time = 1
[Command]
name = "IA16"
command = D, DF, F, b,a+b+c+z+x+y+U+D
time = 1
[Command]
name = "IA17"
command = D, DF, F, b,a+b+c+z+x+y+U
time = 1
[Command]
name = "IA18"
command = D, DF, F, c,a+b+c+z+x+y
time = 1
[Command]
name = "qcf_xy"
command = ~D, DB, B, F, y
[Command]
name = "Hypercombo"
command = ~D, DB, B, F, x
[Command]
name = "qcbf_c"
command = ~D, DB, B, F, c
[Command]
name = "qcbf_x"
command = ~D, DF, F, B,y
[Command]
name = "qcfb_b"
command = D, DB, B, F,b
time = 30
[Command]
name = "3disc"
command = ~D, DF, F, B, c
[Command]
name = "qcfb_x"
command = ~D, DF, F, B, x
[Command]
name = "qcbf_y"
command = ~D, DB, B, F, a
[Command]
name = "qcb_a"
command = ~D, DB, B, y
[Command]
name = "qcb_b"
command = D, DB, B, b
time = 15
[Command]
name = "disc"
command = ~D, DB, B, c
[Command]
name = "qcb_x"
command = ~D, DB, B, x
[Command]
name = "qcb_y"
command = ~D, DB, B, a
[Command]
name = "qcb_z"
command = ~D, DB, B, z
[Command]
name = "ki explode"
command = ~D, DF, F, a
[Command]
name = "qcf_b"
command = ~D, DF, F, b
[Command]
name = "3ball"
command = ~D, DF, F, c
[Command]
name = "qcf_x"
command = ~D, DF, F, x
[Command]
name = "qcf_y"
command = ~D, DF, F, y
[Command]
name = "qcf_z"
command = ~D, DB, B, b
[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10
[Command]
name = "FlyUP"
command = U, U
time = 10
[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "fly"
command = b+y
time = 1
[Command]
name = "velocidade"
command = x+a
time = 1
[Command]
name = "down_a"
command = /$D,a
time = 1
[Command]
name = "down_b"
command = /$D,b
time = 1
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
time =
[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1
[Command]
name = "holdfwd"
command = /$F
time = 1
[Command]
name = "holdback"
command = /$B
time = 1
[Command]
name = "holdup"
command = /$U
time = 1
[Command]
name = "holddown"
command = /$D
time = 1
[Command]
name = "hold_x"
command = /x
time = 1
[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "hold_a"
command = /a
time = 1
[Command]
name = "hold_b"
command = /b
time = 1
[Command]
name = "hold_c"
command = /c
time = 1
[Command]
name = "ufire"
command = /UF
time = 1
[Command]
name = "dfire"
command = /DF
time = 1
[Command]
name = "bufire"
command = /UB
time = 1
[Command]
name = "bdfire"
command = /DB
time = 1
[Command]
name = "hold_start"
command = /s
time = 1
[Statedef -1]
[State -1]
type = varset
triggerall = var(6) != 1
trigger1 = command = "IA1"
trigger2 = command = "IA2"
trigger3 = command = "IA3"
trigger4 = command = "IA4"
trigger5 = command = "IA5"
trigger6 = command = "IA6"
trigger7 = command = "IA7"
trigger8 = command = "IA8"
trigger9 = command = "IA9"
trigger10 = command = "IA10"
trigger11 = command = "IA11"
trigger12 = command = "IA12"
trigger13 = command = "IA13"
trigger14 = command = "IA14"
trigger15 = command = "IA15"
trigger16 = command = "IA16"
trigger17= command = "IA17"
trigger18= command = "IA18"
v = 6
value = 1
[State -1, Energy Wave]
type = ChangeState
value = 2010
triggerall = command = "qcfb_b" && Power >= 1500 && command != "fly"
trigger1 = (statetype = S ) && ctrl || statetype = A
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Ball]
type = ChangeState
value = 2005
triggerall = command = "qcbf_y" && Power >= 1000 && command != "fly"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Hypercombo]
type = ChangeState
value = 3400
triggerall = command = "Hypercombo" && power >= 2000 && command != "fly"
trigger1 = (statetype = S && ctrl || statetype = A)
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, ab]
type = ChangeState
value = 241
triggerall = (command = "a") && (command = "b") && stateno = 240
trigger1 = statetype = S  && movecontact
[State -1, xy]
type = ChangeState
value = 201
triggerall = (command = "x") && (command = "y") && stateno = 210
trigger1 = statetype = S  && movecontact
[State -1, Fly]
type = ChangeState
value = 116
triggerall = command = "fly"
trigger1 = statetype != A && ctrl
[State -1, Air Dash Foward]
type = ChangeState
value = 109
triggerall = command = "FF"
trigger1 = statetype = A && ctrl
[State -1, Air Dash Backwards]
type = ChangeState
value = 111
triggerall = command = "BB"
trigger1 = statetype = A && ctrl
[State -1]
type = ChangeState
value = 78963
triggerall = (power >= 300)
triggerall = command = "velocidade"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = [200,300]
trigger2 = MoveContact
trigger3= stateno = 107
[State -1, Fly UP]
type = ChangeState
value = 112
triggerall = command = "FlyUP"
trigger1 = statetype = A && ctrl
[State -1, Fly Light Punch]
type = ChangeState
value = 260
triggerall = command = "x"
trigger1 = stateno = 107 || stateno = 110
[State -1, Fly Strong Punch]
type = ChangeState
value = 270
triggerall = command = "y"
trigger1 = stateno = 107 || stateno = 110
trigger2 = stateno = 260 || stateno = 280
[State -1, Fly Light Kick]
type = ChangeState
value = 280
triggerall = command = "a"
trigger1 = stateno = 107 || stateno = 110
trigger2 = stateno = 260
[State -1, Fly Strong Kick]
type = ChangeState
value = 290
triggerall = command = "b"
trigger1 = stateno = 107 || stateno = 110
trigger2 = stateno = 260 || stateno = 270 || stateno = 280
[State -1, KiShield]
type = ChangeState
value = 2015
triggerall = command = "qcf_z" && power >= 200
trigger1 = (statetype = S && ctrl || statetype = A)
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Hyper Beam]
type = ChangeState
value = 2006
triggerall = command = "qcf_xy" && Power >= 2500 && command != "fly"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Fast Move]
type = ChangeState
value = 1000
triggerall = command = "z" && command != "holdback" && movetype != H && power >= 250
trigger1 = (statetype = A || statetype = S) && ctrl
trigger2 = stateno = 107 || stateno = 108 || stateno = 110
trigger3 = (stateno = 1000 || stateno = 1001) && ctrl = 0
[State -1, Fast Move Back]
type = ChangeState
value = 1001
triggerall = command = "z" && command = "holdback" && movetype != H && power >= 250
trigger1 = (statetype = A || statetype = S) && ctrl
trigger2 = stateno = 107 || stateno = 108 || stateno = 110
trigger3 = (stateno = 1000 || stateno = 1001) && ctrl = 0
trigger4 = stateno = [200,400]
trigger4 = (movecontact)
[State -1, Air Kick Fast Move]
type = ChangeState
value = 1112
triggerall = command = "z" && power >= 100
trigger1 = stateno = 231
[State -1, Balls Fury]
type = ChangeState
value = 2003
triggerall = command = "qcbf_c" && Power >= 2000 && command != "fly"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, 3Disc]
type = ChangeState
value = 2002
triggerall = command = "3disc" && Power >= 2000 && command != "fly"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Disc]
type = ChangeState
value = 2001
triggerall = command = "disc" && Power >= 500 && command != "fly"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Beam]
type = ChangeState
value = 2004
triggerall = command = "qcbf_x" && Power >= 1000 && command != "fly"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Ray]
type = ChangeState
value = 2007
triggerall = command = "qcb_x" && Power >= 500 && command != "fly"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Super Ray]
type = ChangeState
value = 2008
triggerall = command = "qcfb_x" && Power >= 1500 && command != "fly"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 109
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Ki explode]
type = ChangeState
value = 2000
triggerall = command = "qcb_a" && Power >= 500 && command != "fly"
trigger1 = (statetype = S) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Air Kick Down]
type = ChangeState
value = 1100
triggerall = command = "ki explode"
trigger1 = (statetype = A) && ctrl
trigger2 = Stateno = 107
[State -1, Air High Kick Down]
type = ChangeState
value = 1114
triggerall = command = "qcf_b"
trigger1 = (statetype = A) && ctrl
trigger2 = Stateno = 107
[State -1, 3Fireball]
type = ChangeState
value = 251
triggerall = command = "3ball" && Power >= 200 && command != "fly"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Fireball]
type = ChangeState
value = 250
triggerall = command = "c" && Power >= 200 && command != "fly"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Combo x]
type = ChangeState
value = 1117
triggerall = command = "qcf_x"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Combo y]
type = ChangeState
value = 1118
triggerall = command = "qcf_y"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Combo a]
type = ChangeState
value = 1119
triggerall = command = "ki explode"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Combo b]
type = ChangeState
value = 1120
triggerall = command = "qcf_b"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
trigger3 = stateno = [200,400]
trigger3 = (movecontact)
[State -1, Run Combo Punch]
type = ChangeState
value = 201
triggerall = command = "x"
trigger1 = statetype = S && ctrl
trigger1 = stateno = 100
trigger2 = stateno = 108
[State -1, Patada Salto]
type = ChangeState
value = 3410
triggerall = command = "qcb_y" && power >= 500 && command != "fly"
trigger1 = (statetype = S) && ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1, Run Head Hit]
type = ChangeState
value = 211
triggerall = command = "y"
trigger1 = statetype = S && ctrl
trigger1 = stateno = 100
trigger2 = stateno = 108
[State -1, Run Kick]
type = ChangeState
value = 231
triggerall = command = "a"
trigger1 = statetype = S && ctrl
trigger1 = stateno = 100
trigger2 = stateno = 108
[State -1, Run Air Kick]
type = ChangeState
value = 241
triggerall = command = "b"
trigger1 = statetype = S && ctrl
trigger1 = stateno = 100
trigger2 = stateno = 108
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
[State -1, Knee]
type = ChangeState
value = 1123
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 230
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 230
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && command = "holddown"
trigger1 = statetype = C && ctrl
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)
trigger2 = (time > 9) || (movecontact && time > 5)
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = stateno = 1350
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = stateno = 1350
