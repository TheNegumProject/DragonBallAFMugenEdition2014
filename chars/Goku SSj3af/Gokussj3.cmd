;CMD file by Squall
;-| AI Command |--------------------------------
[Command]
name = "AI1"
command = a, a, a
time = 1

[Command]
name = "AI2"
command = c, c, c
time = 1

[Command]
name = "AI3"
command = x, x, x
time = 1

[Command]
name = "AI4"
command = z, z, z
time = 1

[Command]
name = "AI5"
command = a, c
time = 1

[Command]
name = "AI6"
command = c, a
time = 1

[Command]
name = "AI7"
command = x, z
time = 1

[Command]
name = "AI8"
command = z, x
time = 1

[Command]
name = "AI9"
command = a, c, a
time = 1

[Command]
name = "AI10"
command = c, a, c
time = 1

[Command]
name = "AI11"
command = x, z, x
time = 1

[Command]
name = "AI12"
command = z, x, z
time = 1

[Command]
name = "AI13"
command = D, DB, B ,a, a, a
time = 1

[Command]
name = "AI14"
command = D, DB, B ,c, c, c
time = 1

[Command]
name = "AI15"
command = D, DB, B ,x, x, x
time = 1

[Command]
name = "AI16"
command = D, DB, B ,z, z, z
time = 1

[Command]
name = "AI17"
command = D, DB, B ,a, c
time = 1

[Command]
name = "AI18"
command = D, DB, B ,c, a
time = 1

[Command]
name = "AI19"
command = D, DB, B ,x, z
time = 1

[Command]
name = "AI20"
command = D, DB, B ,z, x
time = 1

[Command]
name = "AI21"
command = D, DB, B ,a, c, a
time = 1

[Command]
name = "AI22"
command = D, DB, B ,c, a, c
time = 1

[Command]
name = "AI23"
command = D, DB, B ,x, z, x
time = 1

[Command]
name = "AI24"
command = D, DB, B ,z, x, z
time = 1

[Command]
name = "AI25"
command = a, a, a+b
time = 1

[Command]
name = "AI26"
command = b, c, a+b
time = 1

[Command]
name = "AI27"
command = a, c, a+b
time = 1

[Command]
name = "AI28"
command = c, a, a+b
time = 1

[Command]
name = "AI29"
command = x, x, x+y
time = 1

[Command]
name = "AI30"
command = y, y, x+y
time = 1

[Command]
name = "AI31"
command = x, y, x+y
time = 1

[Command]
name = "AI32"
command = z, x, x+y
time = 1

[Command]
name = "AI33"
command = a, a, a, a+b
time = 1

[Command]
name = "AI34"
command = x, x, x, x+y
time = 1


[Remap]
a = a
b = b
c = c

x = x
y = y
z = z
s = s

;-------------------------------------------
;Genkidama ssj4 fatality
[command]
name = "dama2"
command = ~D,F,D,F,z
time = 30

;genkidama normal desperate
[command]
name = "dama"
command =  D,B,D,B,z
time = 30

;Kamehameha
[command]
name = "kame"
command = ~D, DF, F, D, DF, F, x
time = 30

;sfera
[command]
name = "kiki"
command = ~D, DF, F, D, DF, F, a
time = 30

[command]
name = "vegeta"
command = D, DF, F, D, DF, F,b
time= 40

;-----------------------------------------------
[command]
name = "disappear"
command = D,B,x
time = 30

[command]
name = "supern"
command = ~D,B,a
time = 36

[command]
name = "ryu"
command = ~D,B,b
time = 20

[command]
name = "super kick"
command = D,B,x
time = 1

[command]
name = "vegeta"
command = D, DF, F, D, DF, F,b
time= 40

[command]
name = "long"
command = c
time = 1

[command]
name = "kiblast"
command = ~c
time = 15

[command]
name = "gohan"
command = D,F,D,F,z
time = 1

[command]
name = "fly"
command = s
time = 1



[command]
name = "combo"
command = D,B,y
time = 20



[command]
name = "gokuaf"
command = s
time = 100

[command]
name = "spin kick"
command = D,B,z
time = 15

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.

command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.




command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

;[command]
;name = "taunt"
;command = "start"
;time = 15


[command]
name = "power"
command = /b
time = 1
[command]
name = "power2"
command = /y
time=1





[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "elbow"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
;QCB_Y
command = ~D, DB, B, y

[Command]
;blast++!
name = "QCB_xy"
command = ~D, DB, B, x

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
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
time = 4

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
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

[Command]
name = "holdx";Required (do not remove)
command = /x
time = 1

[Command]
name = "holdz";Required (do not remove)
command = /z
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /y
time = 1

[Command]
name = "holdb";Required (do not remove)
command = /b
time = 1

;-----------------------------------------------------------------
[Statedef -1]

;Genkidama Fatality
[State -1, dama2]
type = ChangeState
value = 6055
triggerall = p2life <= 200 && power >= 3000
triggerall = command = "dama2"
trigger1 = (statetype = s) && ctrl

;Genkidama Desperate
[State -1, dama]
type = ChangeState
value = 6050
triggerall = life <= 200 && power >= 3000
triggerall=facing=1
triggerall = command = "dama"
trigger1 = (statetype = s) && ctrl

;Genkidama Desperate
[State -1, dama]
type = ChangeState
value = 321589
triggerall = power >= 1000
triggerall = command = "kiki"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 10001


;dispappear
[State -1, Disappear]
type = ChangeState
value = 6020
triggerall=facing=1
triggerall = command = "disappear"
trigger1 = (statetype = s) && ctrl


[State -1, supermystery]
type = ChangeState
value =  6018
triggerall = command = "supern"
trigger1 = (statetype = s) && ctrl;super kick
;ryu
[State -1, ryu]
type = ChangeState
value =  6010
triggerall = command = "ryu"
trigger1 = (statetype = s) && ctrl


[State -1, super fast kick]
type = ChangeState
value = 6000
triggerall = command = "super kick"
trigger1 = (statetype = s) && ctrl



;vegeta
[State -1, vegeta]
type = ChangeState
value = 6011
triggerall = command = "vegeta" && power >= 2000
trigger1 = (statetype = s) && ctrl


;normal blast
[State -1, long ki blast]
type = ChangeState
value = 24463
triggerall = command = "kiblast"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 10001



;fly
[State -1, fly]
type = ChangeState
value = 10000
triggerall = command = "fly"
trigger1 = (statetype = s) && ctrl




;back + kick combo
[State -1, combo]
type = ChangeState
value = 6065
;2008
triggerall = command = "combo"
trigger1 = (statetype = s) && ctrl






;SPIN KICK
[State -1, spin kick]
type = ChangeState
value =6061
;2003
triggerall = command = "spin kick"
trigger1 = (statetype = s) && ctrl











;power up
[State -1, power up]
type = ChangeState
value = 31514
triggerall = command = "z" && power < 3000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 10001




;kamehameha
[State -1, kamehameha]
type = ChangeState
value = 31414
triggerall=command="kame" && power >= 3000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 10001





;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------

;===========================================================================





[State -1, Punch]
type = changeState
value = 200
;4547
triggerall = (command = "y")  && (command != "holddown")

trigger1 = var(1) ;Use combo condition (above)
;trigger2 = (stateno = 4546) ; &&(movecontact)

trigger2 = statetype = S &&ctrl ;&& movecontact &&ctrl
trigger3 = stateno = 10001


[State -1, Standing Strong Kick]
type = ChangeState
value = 6070
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = var(1) ;Use combo condition (above)
trigger2 = statetype = S
trigger2 = ctrl
trigger3 = stateno = 10001








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








;;[State -1, Standing Strong Kick]
;;type = ChangeState
;;value = 6016
;;triggerall = command = "c"
;;triggerall = command != "holddown"
;;trigger1 = statetype = S
;;trigger1 = ctrl
;trigger2 = (stateno = 230)  &&(movecontact)
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6
;================================================
                                                 |
                                                 |
                    ;X button combo!                                                 |
                                                 |
;================================================
;-------------------------------------------






[State -1, Goku AF]
type = ChangeState
value = 6040
triggerall = command = "gokuaf"
triggerall= command!="holddown"
trigger1 = (statetype = s)
trigger1= ctrl
trigger2 = (stateno = 6041)   && movecontact


[State -1, GokuAF2]
type = changeState
value = 6041
triggerall = (command = "gokuaf");  && (command != "holddown")
trigger1 = statetype = S  && ctrl  && movecontact
trigger2 = (stateno = 6040)  &&(movecontact)




[State -1, Stand Light Punch]

type = ChangeState
value = 6007
triggerall = command = "x"    && (command != "holddown")
trigger1 = ctrl && statetype = S
trigger2 = (stateno = 210)   && movecontact
trigger2 = (stateno = 6008)  && movecontact
trigger2 = (stateno = 4547)  && movecontact
trigger3 = stateno = 10001





;---------------------------------------------------------------------------
;Stand Strong Punch

[State -1, Stand Strong Punch]
type = changeState
value = 210
triggerall = (command = "x");  && (command != "holddown")
trigger1 = statetype = S  && ctrl  && movecontact
trigger2 = (stateno = 6007)  &&(movecontact)
trigger3 = stateno = 10001



;---------------------------------------------------------------------------

[State -1, Stand Strong Punch2]
type = changeState
value = 6008
triggerall = (command = "x") ; && (command != "holddown")
trigger1 = statetype = S  && movecontact

trigger2 = (stateno = 210)  &&(movecontact)
trigger3 = stateno = 10001

;----------------


;[State -1, 3]
;type = ChangeState
;value = 230
;triggerall = p2bodydist X <= 3
;triggerall = Var(9) = 0
;triggerall = command = "a"
;triggerall = command = "holdback"
;trigger2 = movecontact
;trigger1 = statetype = S
;trigger2 = stateno = 203
;trigger1 = ctrl = 1
;triggerall = Vel Y = 0

;[State -1, 3]
;type = ChangeState
;value = 207
;triggerall = p2bodydist X <= 3
;triggerall = Var(9) = 0
;triggerall = command = "x"
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;triggerall = Vel Y = 0
;trigger2 = stateno = 203
;trigger2 = movecontact
;triggerall = p2statetype = S

;[State -1, 3]
;type = ChangeState
;value = 204
;triggerall = p2bodydist X <= 3
;triggerall = Var(9) = 0
;triggerall = command = "x"
;;triggerall = command != "holddown"
;trigger1 = movecontact
;trigger1 = statetype = S
;trigger1 = stateno = 207
;;trigger1 = ctrl = 1
;triggerall = Vel Y = 0
;triggerall = p2statetype = S
;
;[State -1, 4]
;type = ChangeState
;value = 205
;triggerall = p2bodydist X <= 3
;triggerall = Var(9) = 0
;triggerall = command = "x"
;;triggerall = command != "holddown"
;trigger1 = movecontact
;;trigger1 = statetype = S
;trigger1 = stateno = 204
;;trigger1 = ctrl = 1
;triggerall = Vel Y = 0
;triggerall = p2statetype = S

;[State -1, 434]
;type = ChangeState
;value = 209
;triggerall = p2bodydist X <= 3
;triggerall = Var(9) = 0
;triggerall = command = "x"
;triggerall = Var(9) = 0
;;triggerall = command != "holddown"
;triggerall = movecontact
;trigger1 = statetype = S
;trigger1 = stateno = 205
;;trigger1 = ctrl = 1
;triggerall = Vel Y = 0
;triggerall = p2statetype = S

















;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S   && ctrl

;trigger2 = (stateno = 200) && time > 7
;trigger3 = (stateno = 230) && time > 9

trigger2 = (stateno = 240)   && movecontact
trigger3 = stateno = 10001




















;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230)  &&(movecontact)
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6
trigger3 = stateno = 10001

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 31415
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

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
;しゃがみ強パンチ
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
;しゃがみ強キック
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
trigger3 = stateno = 1350 ;Air blocking

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
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking





[State -1, AI]
type = Varset
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
trigger32 = command = "AI32"
trigger33 = command = "AI33"
trigger34 = command = "AI34"
v = 59
value = 1

[State -1, AI]
type = Varset
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
v = 59
value = 1


;Guarding states

[State -1, AI Standing Guard]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 800
value = 130

[State -1, AI Stand to Crouch Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -1, AI Crouching Guard]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 800
value = 131

[State -1, AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1,AI Aerial Guard]
type = ChangeState
triggerall = var(59) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 800
value = 132

