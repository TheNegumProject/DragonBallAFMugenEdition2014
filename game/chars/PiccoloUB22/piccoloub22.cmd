; The CMD file for Piccolo by supermystery.
;
; Three parts: 1. Command definition,  2. State entry and 3. CPU State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;  Note that if you modify the button remapping scheme here, this character will
; still be able to correctly detect the basic commands of other characters
; complying with the basic command order specified below, as long as their
; buttons haven't been remapped.  But no character (not even one with the same
; remapping scheme, not even another instance of this character) will be able to
; correctly detect this character's commands.  This shouldn't ever result in any
; false positives, but it could delay correct positives, and could erroneously
; make the helper AI activation method trigger a false negative in team simul
; modes, in which case the XOR-ed commands method would be needed to provide
; backup.  But of course, this isn't an issue in any version of Mugen prior to
; version 2002.04.14.

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
;
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

;-| Hold Button |----------------------------------------------------------

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
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
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
name = "start2"
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
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "laser"
command = ~D, DF, F, x+y

[Command]
name = "meteor"
command = ~D, DB, B, y

[Command]
name = "meteor2"
command = ~D, DB, B, a

[Command]
name = "meteor3"
command = ~F, DF, D, DB, B, a 

[Command]
name = "spark3"
command = ~D, DB, B, x+y

;-| Special Motions |------------------------------------------------------

[Command]
name = "spark"
command = ~D, DF, F, x

[Command]
name = "spark2"
command = ~D, DF, F, y

[Command]
name = "flamehand"
command = x+y

[Command]
name = "buuex"
command = a+x

[Command]
name = "fkick"
command = ~D, DF, F, a

[Command]
name = "wlaser"
command = ~D, DB, B, b

[Command]
name = "slide"
command = ~D, DF, F, b

[Command]
name = "upper"
command = b+y

[Command] ;Tap b rapidly combo attack
name = "5b"
command = b,b,b
time = 40

[Command]
name = "fbx3"
command = ~B, F, c

[Command]
name = "ab"
command = ~B, F, y


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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;---------------------------------------------------------------------------
;Human Commands
;===========================================================================
;Super Lazer
[State -1, SLazer]
type = ChangeState
value = 1200
triggerall = var(58) != 1
triggerall = command = "laser"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA 
trigger2 = var(32) != 1
trigger2 = stateno != 1010
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Meteor
[State -1, SMeteor]
type = ChangeState
value = 1500
triggerall = var(58) != 1
triggerall = command = "meteor2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = var(32) != 1
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Meteor
[State -1, SMeteor]
type = ChangeState
value = 2500
triggerall = var(58) != 1
triggerall = command = "wlaser"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = var(32) != 1
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Energy Blasts
[State -1, Energy Blasts]
type = ChangeState
value = 1020
triggerall = var(58) != 1
triggerall = command = "spark3"
triggerall = power >= 1500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = var(32) != 1
trigger2 = stateno != 1500
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;SBM2
[State -1, SBM2]
type = ChangeState
value = 2010
triggerall = var(58) != 1
triggerall = power >= 1000
triggerall = command = "meteor"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = var(32) != 1
trigger2 = movecontact
trigger3 = stateno = 2000
trigger4 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640 
trigger4 = movecontact

;---------------------------------------------------------------------------
;Flame Hand
[State -1, Flame Hand]
type = ChangeState
value = 350
triggerall = var(58) != 1
triggerall = command = "flamehand"
triggerall = power >= 40
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = var(32) != 1
trigger2 = stateno != 350
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Electric
[State -1, eheader]
type = ChangeState
value = 370
triggerall = var(58) != 1
triggerall = power >= 40
triggerall = command = "fbx3"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = var(32) != 1
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Energy Blast
[State -1, Energy Blast]
type = ChangeState
value = 1010
triggerall = var(58) != 1
triggerall = command = "spark2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = var(32) != 1
trigger2 = stateno != 1010
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Energy Blast
[State -1, Energy Blast]
type = ChangeState
value = 1000
triggerall = var(58) != 1
triggerall = command = "spark"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = var(32) != 1
trigger2 = stateno != 1000
trigger2 = movecontact
trigger3 = stateno = 2000

;-----------------------------------------------------------------------
;Counter
[State -1, Kick Counter]
type =ChangeState
value = 3434
triggerall = var(58) != 1
triggerall = stateno != 3434
triggerall = p2bodydist x = [0,30]
triggerall = p2bodydist y = [-5,5]
triggerall = P2MoveType = A
trigger1 = stateno >= 150 && stateno <= 153
trigger1 = command = "holda" || command = "a" || command = "meteor"

;---------------------------------------------------------------------------
;Fireball
[State -1]
type = ChangeState
value = 300
triggerall = var(58) != 1
triggerall = command = "c"
triggerall = numproj = 0
triggerall = power >= 100 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 300
trigger3 = stateno = 2000

;----------------------------------------------------------------------------
; Ki Burn
[State -1, Ki Burn]
type = ChangeState
value = 740
triggerall = var(58) != 1
triggerall = command = "holda"
triggerall = command = "holdb"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 2000
;----------------------------------------------------------------------------
; CHARGE
[State -1, Charge]
type = ChangeState
value = 730
triggerall = var(58) != 1
triggerall = Power < 3000
triggerall = command = "holdz"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 2000

;Warp 
[State -1]
type = ChangeState
value = 3005
triggerall = var(58) != 1
triggerall = command = "ab"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000

;------------------------------------------------------
;Combo + Special Hits
;------------------------------------------------------
;---------------------------------------------------------------------------
;Flash Kick
[State -1, Flash Kick]
type = ChangeState
value = 250
triggerall = var(58) != 1
triggerall = command = "fkick"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = var(32) != 1
trigger2 = stateno != 270
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Uppercut
[State -1, Uppercut]
type = ChangeState
value = 215
triggerall = var(58) != 1
triggerall = command = "upper"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = var(32) != 1
trigger2 = stateno != 270
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Dive Kick Combo
[State -1, Diving Kick]
type = ChangeState
value = 641
triggerall = var(58) != 1
triggerall = command = "slide"
triggerall = stateno != 641
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 640 || stateno = 610
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Slide
[State -1, Slide]
type = ChangeState
value = 245
triggerall = var(58) != 1
triggerall = command = "slide"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = var(32) != 1
trigger2 = stateno != 270
trigger2 = movecontact

;===========================================================================
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 70
triggerall = var(58) != 1 
triggerall = command = "DD"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

;Fly Up Air Command
[State -1]
type = ChangeState
value = 2000
triggerall = var(58) != 1
triggerall = command = "start"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Fly up
[State -1]
type = ChangeState
value = 1999
triggerall = var(58) != 1
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(58) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(58) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(58) != 1
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 7
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400 || stateno = 410 || stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 430 || stateno = 440 || stateno = 220 || stateno = 245 || stateno = 215
trigger2 = movecontact
var(1) = 1

[State -1,AI Combo condition Reset]
type = varset
triggerall = var(58) = 1
trigger1 = 1
var(28) = 0

[State -1, AI Combo condition Check]
type = VarRandom
trigger1 = statetype != A
triggerall = var(58) = 1
trigger1 = stateno = 245
trigger1 = movecontact
v = 28
range = 10,11

;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(58) != 1 
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) ;Use combo condition (above)
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(58) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) ;Use combo condition (above)
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(58) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) ;Use combo condition (above)
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(58) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) ;Use combo condition (above)
trigger2 = movecontact
trigger3 = stateno = 2000

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(58) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(1) ;Use combo condition (above)
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(58) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(1) ;Use combo condition (above)
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(58) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(1) ;Use combo condition (above)
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(58) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(1) ;Use combo condition (above)
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(58) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(58) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640 
trigger2 = movecontact


;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(58) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(58) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640 
trigger2 = movecontact


;---------------------------------------------------------------------------
; 3. The AI Section
; --------------
;---------------------------------------------------------------------------
;CPU Commands
;===========================================================================

[State -1, counter]
type = varset
trigger1 = prevstateno = 215 ;&& animtime = 0
var(27) = 0

[State -1, AI Kick Counter]
type = ChangeState
value = 3434
triggerall = var(58) = 1
triggerall = stateno != 3434 && stateno != 215 && stateno != 1000
triggerall = p2bodydist x = [0,30]
triggerall = p2bodydist y = [-5,5]
triggerall = P2MoveType = A
trigger1 = stateno >= 150 && stateno <= 153

[State -1, AI Standing Guard]
type = ChangeState
triggerall = var(58) = 1  
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
triggerall = var(58) = 1 
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -1, AI Crouching Guard]
type = ChangeState
triggerall = var(58) = 1 
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 800
value = 131

[State -1, AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall = var(58) = 1 
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1,AI Aerial Guard]
type = ChangeState
triggerall = var(58) = 1 
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 800
value = 132

[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = var(58) = 1
triggerall = stateno != 100
trigger1 = statetype = S && ctrl
trigger1 = ProjContact1011 = 1 || ProjContact301 = 1 || ProjContact1001 = 1
trigger1 = p2bodydist x < 82
trigger1 = p2bodydist y = [-5,5]
trigger2 = statetype = S && ctrl
trigger2 = P2Movetype = I
trigger2 = P2Movetype != A
trigger2 = enemy,numproj = 0 
trigger2 = p2bodydist x = [51,79]

[State -1, AI Run Fwd Stop]
type = ChangeState
triggerall = var(58) = 1
triggerall = stateno = 100
trigger1 = p2bodydist x = [10,50]
trigger2 = P2movetype = A
value = 0
ctrl = 1

[State -1,shield]
type = ChangeState
value = 740
triggerall = MoveType != H && movetype !=A && Var(33) != 1
triggerall = var(58) = 1 && Life != 0 && P2Life != 0 
triggerall = statetype = S
triggerall = stateno != 740
trigger1 = p2dist x = [20, 79] 
trigger1 = random < 999 && p2movetype = A && ctrl = 1 
trigger2 = p2dist x = [20, 79] 
trigger2 = p2movetype = A && random < 999
trigger2 = stateno = 2000 
trigger2 = p2bodydist y = [-7,7]

[State -1,AI.Sair.do.shield]
type = ChangeState
triggerall = var(58) = 1 
triggerall = stateno = 740
trigger1 = p2movetype = H 
trigger2 = p2movetype != A
value = 0
ctrl = 1

[State -1,warp]
type = ChangeState
value = 3005
triggerall = var(58) = 1
triggerall = statetype = S
triggerall = MoveType != H 
triggerall = Life != 0 && P2Life != 0 
triggerall = stateno != 3005 && prevstateno != 3007
trigger1 = p2dist x = [80, 900] 
trigger1 = movetype !=A 
trigger1 = random < 999 && p2movetype = A && ctrl = 1 
trigger1 = enemy,numproj = 1
trigger2 = p2dist x = [80, 900] 
trigger2 = movetype !=A 
trigger2 = enemy,numproj = 1
trigger2 = random < 999 && p2movetype = A && stateno = 2000
trigger2 = enemy,numproj = 1
trigger3 = ProjContact1011 = 1 || Projcontact301 = 1 || ProjContact1001 = 1 
trigger3 = p2bodydist x = [82,900]
trigger3 = p2bodydist y = [-5,5]
trigger3 = p2movetype != A
trigger3 = random < 999 
trigger4 = p2dist x = [20, 79]
trigger4 = enemy,numproj = 0 
trigger4 = p2movetype = A && random < 999
trigger4 = stateno = 2000 
trigger4 = p2bodydist y = [-70,70]

[State -1, AI mega beam]
type = changestate
value = 1200
triggerall = var(58) = 1 && stateno != 1200 && stateno != 2010 && stateno != 1021 && stateno != 1020 && stateno != 1013
triggerall = var(32) != 1
triggerall = power >= 2000
trigger1 = P2BodyDist X >= 80 && random <= 700 && statetype = S && ctrl
trigger1 = p2stateno = 5120 || p2stateno = 5100 || p2stateno = 5050
trigger2 = P2BodyDist X >= 90 && random <= 800 && stateno = 2000
trigger2 = P2BodyDist Y = [-10, 10]
trigger3 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240
trigger3 = movehit && ProjContact1022 != 1
trigger4 = P2BodyDist X >= 80 && random <= 800
trigger4 = P2BodyDist Y = [-10, 10]
trigger4 = statetype = S && ctrl

[State -1, 3 Large Energy Balls]
type = ChangeState
value = 1020
triggerall = p2life != 0 && var(58) = 1 && stateno != 1020 && stateno != 1021 
triggerall = power >= 1500
triggerall = var(32) != 1
trigger1 = p2bodydist x >=50
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = p2bodydist x >=50
trigger2 = stateno = 2000

[State -1, AI mega beam]
type = changestate
value = 2010
triggerall = var(58) = 1 && stateno != 1200 && stateno != 2010 && stateno != 1020 && stateno != 1021 && stateno != 1013
triggerall = P2MoveType != A
triggerall = var(32) != 1
triggerall = power >= 1000
trigger1 = P2BodyDist X >= 80 && random <= 700 && statetype = S && ctrl
trigger1 = p2stateno = 5120 || p2stateno = 5100 || p2stateno = 5050
trigger2 = P2BodyDist X >= 80 && random <= 800 && stateno = 2000
trigger2 = P2BodyDist Y = [-10, 10]
trigger3 = stateno = 210 || stateno = 240 
trigger3 = movehit && ProjContact1022 != 1
trigger4 = P2BodyDist X >= 80 && random <= 800
trigger4 = P2BodyDist Y = [-10, 10]
trigger4 = statetype = S && ctrl
trigger5 = stateno = 250
trigger5 = movecontact && animelem = 7

[State -1, AI Fireball]
type = changestate
value = 1010
triggerall = var(58) = 1 && movetype != A
triggerall = var(32) != 1
triggerall = p2movetype != A
triggerall = power = [500, 999]
trigger1 = p2bodydist x = [80, 300] 
trigger1 = random < 800
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000 && p2bodydist x = [80, 300] 
trigger2 = random < 800

[State -1, AI Fireball]
type = changestate
value = 1000
triggerall = var(58) = 1 && movetype != A
triggerall = var(32) != 1
triggerall = p2movetype != A
triggerall = power = [500, 999] 
trigger1 = p2bodydist x = [80, 300] 
trigger1 = random < 800
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2000 && p2bodydist x = [80, 300] 
trigger2 = random < 800

[State -1, AI Fireball]
type = changestate
value = 300
triggerall = var(58) = 1 && movetype != A
triggerall = var(32) != 1
triggerall = p2movetype != A
triggerall = power = [50, 499] 
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x = [80, 300] 
trigger1 = random < 700
trigger2 = stateno = 2000 && p2bodydist x = [80, 300] 
trigger2 = random < 700

[State -1,AI Flame]
type = ChangeState
value = 350
triggerall = var(58) = 1
triggerall = power >= 40
triggerall = var(32) != 1
trigger1 = p2bodydist x = [10,70]
trigger1 = p2bodydist y = [-5,5]
trigger1 = p2stateno = 100
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = hitcount > 7
trigger2 = random < 999 
trigger3 = var(28) = 10;movecontact
trigger3 = random < 999 
trigger4 = random < 999 && life < 300
trigger4 = stateno = 350
trigger4 = projhit = 1

[State -1,AI Hypermove]
type = ChangeState
value = 1500
triggerall = var(58) = 1
triggerall = p2movetype != A
trigger1 = p2bodydist x = [60,69]
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = p2bodydist x = [60,69]
trigger2 = p2bodydist y = [-5,5]
trigger2 = stateno = 2000
trigger3 = ProjContact1011 = 1 || ProjContact301 = 1 || ProjContact1001 = 1 || ProjContact351 = 1
trigger3 = p2bodydist x = [60,69]
trigger3 = p2bodydist y = [-5,5]
trigger4 = stateno = 400 
trigger4 = moveguarded
trigger5 = stateno = 210 || stateno = 230 || stateno = 240
trigger5 = moveguarded
trigger5 = p2bodydist x = [5,69]
;trigger6 = stateno = 210 || stateno = 240 
trigger6 = ProjContact2312 = 1 && stateno != 1500 && ctrl

[State -1,AI Hypermove 2]
type = ChangeState
value = 2500
triggerall = var(58) = 1
triggerall = p2movetype != A
trigger1 = random < 999 
trigger1 = p2bodydist x = [70,82]
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = p2bodydist x = [70,82]
trigger2 = p2bodydist y = [-5,5]
trigger2 = stateno = 2000
trigger3 = ProjContact1011 = 1 || ProjContact301 = 1 || ProjContact1001 = 1
trigger3 = p2bodydist x = [60,79]
trigger3 = p2bodydist y = [-5,5]
trigger4 = enemy,vel X > 0
trigger4 = enemy,vel Y = 0
trigger4 = p2bodydist X = [20,50]
trigger4 = statetype = S
trigger4 = ctrl

[State -1,AI Dash kick]
type = ChangeState
value = 245
triggerall = var(58) = 1
trigger1 = stateno = 215 && var(27) != 1
trigger1 = movecontact
trigger1 = random < 999 
trigger2 = p2movetype = A && statetype = S && ctrl
trigger2 = p2bodydist x = [60,69]
trigger2 = p2bodydist y = [-5,5]
trigger3 = p2movetype = A
trigger3 = random < 999 
trigger3 = p2bodydist x = [70,82]
trigger3 = p2bodydist y = [-5,5]
trigger3 = statetype = S
trigger3 = ctrl

[State -1, AI Handattack]
type = ChangeState
value = 215
triggerall = var(58) = 1
trigger1 = stateno = 240 
trigger1 = hitcount >= 7
trigger1 = random < 999 

[State -1, AI Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(58) = 1 
triggerall = statetype = S
triggerall = ctrl
triggerall = p2bodydist y = [-4,4]
triggerall = stateno != 100
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = stateno = 210 || stateno = 230 || stateno = 240 
trigger3 = moveguarded
trigger3 = p2bodydist x = [5,69]
trigger4 = stateno = 740
trigger4 = p2movetype = A
trigger4 = p2bodydist X < 5

[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(58) = 1
trigger1 = p2bodydist x = [10,50]
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1040 
trigger2 = movehit && animtime = 0
trigger2 = p2bodydist x = [0,40]
trigger2 = p2bodydist y = [-5,5]
trigger2 = pos y = 0
trigger3 = p2bodydist x = [0,50]
trigger3 = p2bodydist y = [-5,5]
trigger3 = stateno = 2000
trigger4 = stateno = 240
trigger4 = movecontact ;hitcount <= 4
trigger4 = random < 800
trigger5 = stateno = 215 && var(27) = 1
trigger5 = movecontact ;hitcount <= 4
trigger5 = random < 999

[State -1, AI Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(58) = 1
triggerall = P2MoveType != A
trigger1 = p2bodydist x = [10,40]
trigger1 = p2bodydist y = [-5,5]
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 999 
trigger2 = p2bodydist x = [10,40]
trigger2 = p2bodydist y = [-5,5]
trigger2 = statetype = C
trigger2 = ctrl
trigger2 = random < 999 
trigger3 = stateno = 200 
trigger3 = moveguarded
trigger3 = pos y = 0
trigger3 = random < 999 
trigger4 = stateno = 440
trigger4 = hitcount <= 6
trigger4 = random < 999 

[State -1,AI Crouch Weak Kick]
type = ChangeState
value = 430
triggerall = var(58) = 1
trigger1 = stateno = 400 
trigger1 = movehit
trigger1 = random < 999 
trigger2 = p2bodydist x = [10,40]
trigger2 = p2bodydist y = [-5,5]
trigger2 = random <= 700 && statetype = S && ctrl
trigger2 = p2stateno = 5120

[State -1,AI Crouch Strong Punch]
type = ChangeState
value = 410
triggerall = var(58) = 1
trigger1 = stateno = 430
trigger1 = movecontact
trigger1 = random < 999 
trigger2 = var(28) = 11
;trigger2 = stateno = 245
;trigger3 = var(29) = 11

[State -1,AI Crouch Strong Kick]
type = ChangeState
value = 440
triggerall = var(58) = 1
trigger1 = stateno = 410
trigger1 = moveguarded
trigger1 = random < 999 

[State -1,AI Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(58) = 1
trigger1 = stateno = 200 
trigger1 = movehit

[State -1,AI Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(58) = 1
trigger1 = stateno = 210 
trigger1 = movehit

[State -1, AI Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(58) = 1
trigger1 = stateno = 230
trigger1 = movecontact

[State -1, AI eheader]
type = ChangeState
value = 370
triggerall = var(58) = 1
triggerall = power >= 100 && stateno != 370
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x = [5,8]
trigger1 = p2bodydist y <= -8

[State -1, AI R Knee]
type = ChangeState
value = 250
triggerall = var(58) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x = [9,10]
trigger1 = p2bodydist y <= -8

[State -1,AI charge]
type = ChangeState
value = 730
triggerall = var(58) = 1 && Life != 0 && P2Life != 0 && power < 3000 && StateNo != 105 
triggerall = stateno != 730 && stateno != 735 && stateno != 3005 && stateno != 3007
triggerall = p2movetype != A && statetype = S && movetype != A && movetype != H
trigger1 = p2stateno = 5150 && random < 999 && p2bodydist x > 60
trigger2 = p2movetype = H && movetype != A && p2bodydist x > 60

[State -1,AI.Sair.do.Charge]
type = ChangeState
triggerall = var(58) = 1 
triggerall = stateno = 735 || stateno = 730 
trigger1 = p2movetype != H 
trigger2 = p2movetype = A
trigger3 = power >= 3000 
value = 0
ctrl = 1

[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = p2life != 0 && var(58) = 1 && stateno != 2001
trigger1 = p2bodydist x = [0,30]
trigger1 = P2BodyDist Y = [-30, 30]
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 250
trigger2 = hitcount > 4
trigger3 = stateno = 255
trigger3 = movecontact
trigger4 = stateno = 1040 
trigger4 = movehit && animtime = 0
trigger4 = p2bodydist x = [0,30]
trigger4 = p2bodydist y = [-5,5]
trigger4 = pos y < 0

[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = p2life != 0 && var(58) = 1 && stateno != 2001
trigger1 = p2bodydist x = [0,30]
trigger1 = P2BodyDist Y = [-10, 10]
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 250
trigger2 = hitcount > 4
trigger3 = stateno = 255
trigger3 = movecontact
trigger4 = stateno = 1040 
trigger4 = movehit && animtime = 0
trigger4 = p2bodydist x = [0,30]
trigger4 = p2bodydist y = [-5,5]
trigger4 = pos y < 0

[State -1, AI Jump Strong Punch]
type = ChangeState
value = 610
triggerall = p2life != 0 && var(58) = 1 && stateno != 2001
trigger1 = stateno = 600
trigger1 = movecontact
trigger1 = random < 999

[State -1, AI Jump light likck]
type = ChangeState
value = 630
triggerall = p2life != 0 && var(58) = 1 
trigger1 = stateno = 610
trigger1 = movecontact
trigger1 = random < 999

[State -1, AI Jump strong likck]
type = ChangeState
value = 640
triggerall = p2life != 0 && var(58) = 1 
trigger1 = stateno = 630
trigger1 = movecontact
trigger1 = random < 999 

[State -1, Beam Attack in air]
type = ChangeState
value = 2010
triggerall = p2life != 0 && var(58) = 1 && stateno != 2010
triggerall = power >= 1000
trigger1 = stateno = 640 || stateno = 630 || stateno = 610
trigger1 = movecontact
trigger1 = pos y <= -2

[State -1, Diving Combo]
type = ChangeState
value = 641
triggerall = p2life != 0 && var(58) = 1 && stateno != 641
trigger1 = stateno = 640 
trigger1 = movecontact
trigger1 = pos y <= -2
trigger2 = statetype = A
trigger2 = ctrl = 1  
trigger2 = p2bodydist x = [ 20, 50]
trigger2 = p2bodydist y = [ 1, 80]

[State -1, Jump]
type = ChangeState
value = 40
triggerall = p2life != 0 && var(58) = 1 && stateno != 641
triggerall = P2MoveType != A
trigger1 = statetype = S
trigger1 = ctrl = 1  
trigger1 = p2bodydist x = [20, 40]
trigger1=  p2bodydist y = 0

[State -1, Fly]
type = ChangeState
triggerall = var(58) = 1
triggerall = P2Life > 0
triggerall = MoveType != H
triggerall = MoveType != A 
triggerall = P2MoveType != A
triggerall = random < 999
triggerall = StateNo != [3000, 4100]
triggerall = Pos Y >= 0
trigger1 = P2Name = "Goku-n-hd by EmuBoarding"
trigger1 = P2StateNo = 1500
trigger2 = P2Name = "Mystic Gohan by Zero_X"
trigger2 = P2StateNo = 2000
trigger3 = P2Name = "Freeza by OverMind"
trigger3 = P2StateNo = 3001
trigger4 = P2Name = "Kurilin by EmuBoarding"
trigger4 = P2StateNo = 1500
trigger5 = P2Name = "Trunks por ssonic"
trigger5 = P2StateNo = 1900
trigger6 = P2Name = "Vegeta Super Sayjin 4 by EB and BS"
trigger6 = P2StateNo = 1500
trigger7 = P2Name = "N-Trunks by EmuBoarding"
trigger7 = P2StateNo = 1500
trigger8 = P2Name = "Mr.Boo by OverMind"
trigger8 = P2StateNo = 3001
trigger9 = P2Name = "Vegeta by OverMind"
trigger9 = P2StateNo = 3001
trigger10 = P2Name = "Broli Remix ver1.2"
trigger10 = P2StateNo = 2000
trigger11 = P2Name = "Mew Two"
trigger11 = P2StateNo = 1051
trigger12 = P2Name = "Raditz"
trigger12 = P2StateNo = 1510
trigger13 = P2Name = "C-Trunks by EmuBoarding"
trigger13 = P2StateNo = 1500
trigger14 = P2Name = "Piccolo por Ssonic"
trigger14 = P2StateNo = 1900
trigger15 = P2Name = "M. Bison"
trigger15 = P2StateNo = 89598
trigger16 = P2Name = "Cell por Ssonic"
trigger16 = P2StateNo = 1900
trigger17 = P2Name = "Recoom by Lucifer"
trigger17 = P2StateNo = 1500
trigger18 = P2Name = "Vegetto EX by Shishi-Ryu"
trigger18 = P2StateNo = 2000
trigger19 = P2Name = "Goku Super Sayajin 2 by ribeiro"
trigger19 = P2StateNo = 2000
trigger20 = P2Name = "Pan Dragonball GT por Ssonic"  
trigger20 = P2StateNo = 1900
trigger21 = P2Name = "The Necromancer"
trigger21 = P2StateNo = 2000
trigger22 = P2StateType = S
trigger22 = P2MoveType != H
trigger22 = P2BodyDist Y < -1
value = 1999

[State -1,AI.Sair.do.Voa]
type = ChangeState
triggerall = var(58) = 1
triggerall = stateno = 2000
triggerall = MoveType != A 
trigger1 = p2statetype = S
trigger1 = p2bodydist Y > 30
value = 50
ctrl = 1

