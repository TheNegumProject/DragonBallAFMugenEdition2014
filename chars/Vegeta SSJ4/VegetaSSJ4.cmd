; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
;

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[command]
name = "UltimateSacrifice"
command = ~D,B,D,B,x+y
time = 20

[command]
name = "MajinFinisher"
command = ~D,B,D,B,a+b
time = 20

[command]
name = "FinalFlash"
command = ~D,F,a
time = 20

[command]
name = "GalacticGun"
command = ~D,F,z
time = 20

[command]
name = "BigBang"
command = ~D,F,b
time = 20

[command]
name = "FinalShine"
command = ~D,F,x
time = 20

;-| Special Motions |------------------------------------------------------
[command]
name = "Engergy Bals1"
command = D,F,x
time = 15

[command]
name = "QuickFinalShine"
command = ~D,F,B,b+c
time = 15

[command]
name = "HyperRenzoku"
command = ~D,F,D,F,c
time = 18

[command]
name = "SuperSpecialCombo"
command = ~D,F,D,F,y
time = 16

[Command]
name = "zanzouken"
command = b+y
time = 1

[command]
name = "Combo2"
command = ~D,F, z
time = 15

[command]
name = "Combo3"
command = ~D,B, c
time = 15

[command]
name = "evade"
command = ~x+y
time = 15

[command]
name = "recovery roll"
command = ~a+b
time = 15

[Command]
name = "charge1"
command = /a

[Command]
name = "charge2"
command = /x

[command]
name = "Zanzoken"
command = D,B,x
time = 15

[command]
name = "taunt2"
command = D,s
time = 15

[command]
name = "taunt"
command = s
time = 15

[command]
name = "Zanzoken2"
command = D,B,z
time = 15

[command]
name = "Zanzoken3"
command = D,B,y
time = 15

[command]
name = "Ki-Disk"
command = D,B,F,c
time = 15

[command]
name = "BigBlast"
command = ~D, F, y
time = 14

[Command]
Name = "Counter"
Command = a+x
time = 12

[command]
name = "Engergy Bals2"
command = D,F,y
time = 15

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
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, b

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

[Command]
name = "fwd_c"
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
name = "hold_a";Required (do not remove)
command = /$a
time = 1
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;===========================================================================
;---------------------------------------------------------------------------
;UltimateSacrifice
[State -1, UltimateSacrifice]
type = ChangeState
value = 2008
triggerall = command = "UltimateSacrifice" && power >= 2800
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
;MajinFinisher
[State -1, MajinFinisher]
type = ChangeState
value = 2007
triggerall = command = "MajinFinisher" && power >= 2800
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
;FinalFlash
[State -1, FinalFlash]
type = ChangeState
value = 9999
triggerall = command = "FinalFlash"  && power >= 2000
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
;HyperRenzoku
[State -1, HyperRenzoku]
type = ChangeState
value = 40000
triggerall = command = "HyperRenzoku" && power >= 500
trigger1 = (statetype = s) && ctrl
;---------------------------------------------------------------------------
;BigBang
[State -1, BigBang]
type = ChangeState
value = 999
triggerall = command = "BigBang" && power >= 2000
trigger1 = statetype = S
;---------------------------------------------------------------------------
;GalacticGun
[State -1, FinalFlash]
type = ChangeState
value = 8000
triggerall = command = "GalacticGun" && power >= 2000
trigger1 = (statetype = A) && ctrl
;---------------------------------------------------------------------------
;FinalShine
[State -1, FinalShine]
type = ChangeState
value = 1969
triggerall = command = "FinalShine" && power >= 1000
trigger1 = (statetype = S) && ctrl
;---------------------------------------------------------------------------
;BigBlastAttack!
[State -1]
type = ChangeState
value = 2040
triggerall = command = "BigBlast" && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;QuickFinalShine
[State -1, QuickFinalShine]
type = ChangeState
value = 1931
triggerall = command = "QuickFinalShine" && power >= 700
trigger1 = (statetype = S) && ctrl
;---------------------------------------------------------------------------
;SuperSpecialCombo
[State -1, SuperSpecialCombo]
type = ChangeState
value = 2047
triggerall = command = "SuperSpecialCombo" && power >= 0
trigger1 = (statetype = S) && ctrl
;---------------------------------------------------------------------------
;Combo2
[State -1, Combo2]
type = ChangeState
value = 5551
trigger1 = ctrl = 1
triggerall = command = "Combo2" && power >= 0
trigger1 = statetype = S
;---------------------------------------------------------------------------
;Combo2
[State -1, Combo2]
type = ChangeState
value = 5551
trigger1 = ctrl = 1
triggerall = command = "Combo2" && power >= 0
trigger1 = statetype = A
;---------------------------------------------------------------------------
;Combo3
[State -1, Combo3]
type = ChangeState
value = 5552
triggerall = command = "Combo3" && power >= 0
trigger1 = statetype = S
;---------------------------------------------------------------------------
;Evade
[State -1]
type = ChangeState
value = 4458
triggerall = (Command = "evade")
trigger1 = (StateType = A) && (Ctrl)
trigger2 = ((StateNo = 150) || (StateNo = 152)) && (Power >= 1000)
;---------------------------------------------------------------------------
;Zanzouken
[State -1]
type = ChangeState
value = 1600
triggerall = command = "zanzouken"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3001
;---------------------------------------------------------------------------
;Zanzouken
[State -1]
type = ChangeState
value = 1600
triggerall = command = "zanzouken"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 3001
;---------------------------------------------------------------------------
;Charge
[State -1, Charge]
type 			= ChangeState
value 			= 956
triggerall 		= command = "charge1"
triggerall 		= command = "charge2"
trigger1		= (StateType = S) && (Ctrl)
;---------------------------------------------------------------------------
;Zanzoken
[State -1, Zanzoken1]
type = ChangeState
value = 5559
triggerall = command = "Zanzoken" && power >= 200
trigger1 = statetype = S
;---------------------------------------------------------------------------
;Zanzoken
[State -1, Zanzoken1]
type = ChangeState
value = 5559
triggerall = command = "Zanzoken" && power >= 200
trigger1 = statetype = A
;---------------------------------------------------------------------------
;Zanzoken
[State -1, Zanzoken2]
type = ChangeState
value = 5859
triggerall = command = "Zanzoken2" && power >= 200
trigger1 = statetype = S
;---------------------------------------------------------------------------
;Zanzoken
[State -1, Zanzoken2]
type = ChangeState
value = 5859
triggerall = command = "Zanzoken2" && power >= 200
trigger1 = statetype = A
;---------------------------------------------------------------------------
;Zanzoken
[State -1, Zanzoken3]
type = ChangeState
value = 5259
triggerall = command = "Zanzoken3" && power >= 200
trigger1 = statetype = S
;---------------------------------------------------------------------------
;Zanzoken
[State -1, Zanzoken3]
type = ChangeState
value = 5259
triggerall = command = "Zanzoken3" && power >= 200
trigger1 = statetype = A
;---------------------------------------------------------------------------
;Ki-Disk
[State -1, Zanzoken]
type = ChangeState
value = 889
triggerall = command = "Ki-Disk" && power >= 1
trigger1 = statetype = S
;---------------------------------------------------------------------------
; Fireball Weak
[State -1, Ki Blast Charge]
type = ChangeState
value = 3765
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
;---------------------------------------------------------------------------
; Fireball Weak
[State -1, Ki Blast Charge]
type = ChangeState
value = 3766
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
;---------------------------------------------------------------------------
[State -1, Counter]
type = ChangeState
value = 7281
triggerall = command = "Counter"
triggerall = (power >= 1000)
triggerall = alive = 1
triggerall = stateno != 5110
triggerall = stateno != 5170
trigger1 = ctrl = 1
trigger1 = (power >= 100)
trigger1 = stateno = [150,153]
trigger2 = pos y = 0
trigger2 = movetype = H
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
;---------------------------------------------------------------------------
[State -1, Air Dash Fwd]
type = ChangeState
value = 60
triggerall = var(59) = 0  && var(10) < 30
trigger1 = (command = "FF") && (statetype = A) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 65
triggerall = var(59) = 0 && var(10) < 30
trigger1 = (command = "BB") && (statetype = A) && (ctrl)
;---------------------------------------------------------------------------
; Toss Up
[State -1, TossUp]
type = ChangeState
value = 810
triggerall = (command = "a" && command = "b") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
;---------------------------------------
[State -1, ComboX1]
type = ChangeState
value = 1300
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 230
;-----------------------------------------
[State -1, ComboX2]
type = ChangeState
value = 1301
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 1300
;-----------------------------------------
[State -1, ComboX3]
type = ChangeState
value = 1302
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 1301
;-----------------------------------------
[State -1, ComboY1]
type = ChangeState
value = 1400
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 240
;-----------------------------------------
[State -1, ComboY2]
type = ChangeState
value = 1401
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 1400
;-----------------------------------------
[State -1, ComboY3]
type = ChangeState
value = 1402
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = movecontact && stateno = 1401
;---------------------------------------------------------------------------
;DashElbowAttack
[State -1, DashElbowAttack]
type = ChangeState
value = 2712
triggerall = (command = "x" || command = "y" || command = "z") && command != "holddown" && stateno = 100
trigger1 = statetype = S && ctrl = 1
;-----------------------------------------
;===========================================================================
[State -1]
type = ChangeState
value = 2001
triggerall = command = "y"
triggerall = stateno = 240
triggerall = movecontact
trigger1 = statetype = S

[State -1]
type = ChangeState
value = 207
triggerall = command = "y"
triggerall = stateno = 2001
triggerall = movecontact
trigger1 = statetype = S
;---------------------------------------------------------------------------
;Taunt2
[State -1, Taunt2]
type = ChangeState
value = 2033
triggerall = command = "taunt2"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 220
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger8 = stateno = 220
trigger8 = movecontact = 1
trigger9 = stateno = 230
trigger9 = movecontact = 1
trigger10 = stateno = 240
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
triggerall=(var(59)=0&&(statetype=S))
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 220
trigger8 = movecontact = 1
trigger9 = stateno = 230
trigger9 = movecontact = 1
trigger10 = stateno = 240
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger3 = stateno = 240 && movecontact && command != "holddown"
trigger3 = stateno = 2035 && movecontact && command != "holddown"
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 220
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 220
trigger8 = movecontact = 1
trigger10 = stateno = 240
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
triggerall=(var(59)=0&&(statetype=S))
trigger1 = ctrl
;---------------------------------------------------------------------------
;Standing Medium Kick
;立ち強キック
[State -1, Standing medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 220
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 220
trigger8 = movecontact = 1
trigger9 = stateno = 230
trigger9 = movecontact = 1
trigger10 = stateno = 240
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
triggerall=(var(59)=0&&(statetype=S))
trigger1 = ctrl
;---------------------------------------------------------------------------
;Standing Medium Kick 2
;立ち強キック
[State -1, Standing medium Kick]
type = ChangeState
value = 2035
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 220
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 220
trigger8 = movecontact = 1
trigger9 = stateno = 230
trigger9 = movecontact = 1
trigger10 = stateno = 240
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
triggerall=(var(59)=0&&(statetype=S))
trigger1 = ctrl
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing medium Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 220
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 220
trigger8 = movecontact = 1
trigger9 = stateno = 230
trigger9 = movecontact = 1
trigger10 = stateno = 240
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger1 = statetype = S
triggerall=(var(59)=0&&(statetype=S))
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "taunt"
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
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 250 && movecontact
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 250 && movecontact
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 250 && movecontact
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 250 && movecontact
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 250 && movecontact
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 250 && movecontact
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 280 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 250 && movecontact
trigger1 = ctrl
;---------------------------------------------------------------------------


