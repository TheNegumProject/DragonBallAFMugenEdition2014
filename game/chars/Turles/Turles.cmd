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

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.

command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.

command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
; CPU NIVEL 1
[Command]

name = "AI1"
command = a,a,a,a,b,b,b,b,b,b,b,b,b,b,a,a,a,a,a
time = 1

[Command]
name = "AI2"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,b,b,b,b,b,b,b
time = 1

;CPU NIVEL 2
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
name = "IA19"
command = D, DF, F, x,a+b+c+z+x
time = 1
[Command]
name = "IA20"
command = D, DF, F, x,a+b+c+z
time = 1
[Command]
name = "IA21"
command = D, DF, F, b,a+b+c
time = 1
[Command]
name = "IA22"
command = D, DF, F, b,a+b
time = 1
[Command]
name = "IA23"
command = D, DF, F, c,a+b+c+x+y+U+D+F+B
time = 1
[Command]
name = "IA24"
command = D, DF, F, x,a+c+z+x+y+U+D+F+B
time = 1
[Command]
name = "IA25"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F+B
time = 1
[Command]
name = "IA26"
command = D, DF, F, b,a+b+c+z+x+y+U+F+B
time = 1
[Command]
name = "IA27"
command = D, DF, F, b,a+b+c+x+y+U+D+F
time = 1
[Command]
name = "IA28"
command = D, DF, F, c,a+b+c+z+x+y+F+B
time = 1
[Command]
name = "IA29"
command = D, DF, F, x,a+b+x+y+U+D+F+B
time = 1
[Command]
name = "IA30"
command = D, DF, F, x,b+c+z+x+y+U+D+F+B
time = 1
[Command]
name = "IA31"
command = x,x,x,$F,a+x,a,a,a,b,b,b,b
time = 1
[Command]
name = "IA32"
command = /y,/z
time = 1
[Command]
name = "IA33"
command = D,DF,F,D,F,y,z,z,z,y,y,y,a+b
time = 1



 [command]
name = "KI"
command = /a
time = 15

[command]
name = "KI2"
command = /b
time = 15

[command]
name = "volar"
command = y+b
time = 15

[command]
name = "Teleport1"
command = ~$F,a+x
time = 15

[command]
name = "Teleport2"
command = ~$B,a+x
time = 15

[command]
name = "Teleport3"
command = ~$U,a+x
time = 1

[command]
name = "Teleport4"
command = ~$D,a+x
time = 15

[command]
name = "Escudo Energy"
command = /y
time = 15

[command]
name = "Escudo Energy2"
command = /z
time = 15

[command]
name = "Combo_Auto_1"
command = ~D,DF,F,x
time = 15

[command]
name = "Combo_Auto_2"
command = ~B,DB,B,y
time = 15

[command]
name = "SB STRIKE KICK"
command = ~UB,DF,c
time = 15

;-| Special Motions |------------------------------------------------------

[command]
name = "Raiyshen"
command = ~D,DF,F,D,F,y
time = 15

[command]
name = "Resplandor Fury"
command = ~B,DB,D,F,a
time = 15

[command]
name = "Super Energy Ball"
command = ~D,F,D,F,b
time = 15

[command]
name = "Rafaga"
command = ~D,DF,F,D,F,a
time = 15

[command]
name = "Energy Shoot"
command = x+y
time = 15

[command]
name = "Blaster Full Shoots"
command = ~B,F,y
time = 15

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
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
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
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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
;--------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------

;Raiyshen
[State -1, Raiyshen]
type = ChangeState
value = 1004
triggerall = command = "Raiyshen"
trigger1 = statetype = S
trigger1 = statetype != c
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
trigger3= stateno = 1500
triggerall = power > 29999

;---------------------------------------------------------------------------
; Resplandor Fury
[State -1, Resplandor Fury]
type = ChangeState
value = 2500
triggerall = command = "Resplandor Fury"
trigger1 = statetype = S
trigger1 = statetype != c
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
trigger3= stateno = 1500
triggerall = power > 1999
;---------------------------------------------------------------------------
;Super Energy Ball
[State -1, Super Energy Ball]
type = ChangeState
value = 1005
triggerall = command = "Super Energy Ball"
trigger1 = statetype = S
trigger1 = statetype != c
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
trigger3= stateno = 1500
triggerall = power > 29999
;---------------------------------------------------------------------------
;Rafaga
[State -1, Rafaga]
type = ChangeState
value = 1000
triggerall = command = "Rafaga"
trigger1 = statetype = S
trigger1 = statetype != c
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
trigger3= stateno = 1500
triggerall = power > 9999
;---------------------------------------------------------------------------
;Energy Shoot
[State -1, Energy Shoot]
type = ChangeState
value = 1001
triggerall = command = "Energy Shoot"
trigger1 = (statetype = s) && ctrl
trigger1 = statetype != c
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
trigger3= stateno = 1500
triggerall = power > 99

;---------------------------------------------------------------------------
;Blaster Full Shoots
[State -1, Blaster Full Shoots]
type = ChangeState
value = 1003
triggerall = command = "Blaster Full Shoots"
trigger1 = (statetype = s) && ctrl
trigger1 = statetype != c
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
trigger3= stateno = 1500
triggerall = power > 1999


;---------------------------------------------------------------------------
;Teleport1
[State -1, Teleport1]
type = ChangeState
value = 702
triggerall = command = "Teleport1"
trigger1 = (statetype = s) && ctrl
triggerall = power >299
trigger2 = movecontact
trigger2 = stateno = [200,400]
trigger3 = stateno = 1500
;---------------------------------------------------------------------------
;Teleport2
[State -1, Teleport2]
type = ChangeState
value = 703
triggerall = command = "Teleport2"
trigger1 = (statetype = s) && ctrl
triggerall = power >299
trigger2 = movecontact
trigger2 = stateno = [200,400]
trigger3 = stateno = 1500
;---------------------------------------------------------------------------
;Teleport3
[State -1, Teleport3]
type = ChangeState
value = 704
triggerall = command = "Teleport3"
trigger1 = (statetype = s) && ctrl
trigger1 = statetype !=c
triggerall = power >299
trigger2 = movecontact
trigger2 = stateno = [200,400]
trigger3 = stateno = 1500
;---------------------------------------------------------------------------
;Teleport4
[State -1, Teleport4]
type = ChangeState
value = 705
triggerall = command = "Teleport4"
trigger1 = (statetype = s) && ctrl
triggerall = power >299
trigger2 = movecontact
trigger2 = stateno = [200,400]
trigger3 = stateno = 1500

;-------------------------------------------------------------------------
;Escudo Energy
[State -1, Escudo Energy]
type = ChangeState
value = 706
triggerall = command = "Escudo Energy"
triggerall = command = "Escudo Energy2"
trigger1 = (statetype = s) && ctrl
TRIGGERALL = POWER >9999

[State -1, Escudo Energy]
type = ChangeState
value = 706
triggerall = command = "Escudo Energy"
triggerall = command = "Escudo Energy2"
trigger1 = ctrl =0
trigger1 = stateno = 1500
TRIGGERALL = POWER >9999
;---------------------------------------------------------------------------
;SB STRIKE KICK
[State -1, SB STRIKE KICK]
type = ChangeState
value = 660
triggerall = command = "SB STRIKE KICK"
trigger1 = (statetype = A) && ctrl
trigger2 = movecontact
trigger2 = stateno = [600,670]
trigger3 = stateno = 1500
;---------------------------------------------------------------------------
;volar
[State -1,volar]
type = ChangeState
value = 1500
triggerall = command = "volar"
trigger1 = statetype = A
trigger1 = ctrl = 1
; volar 1
[State -1, volar]
type = ChangeState
value = 1510
triggerall = command = "volar"
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;KI
[State -1, KI]
type = ChangeState
value = 730
triggerall = command = "KI"
triggerall = command = "KI2"
trigger1 = (statetype = s) && ctrl
TRIGGERALL = POWER !=3000

[State -1, KI]
type = ChangeState
value = 730
triggerall = command = "KI"
triggerall = command = "KI2"
trigger1 = ctrl =0
trigger1 = stateno = 1500
TRIGGERALL = POWER !=3000

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "x"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, CPU(IA)]
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
trigger19= command = "IA19"
trigger20= command = "IA20"
trigger21 = command = "IA21"
trigger22 = command = "IA22"
trigger23 = command = "IA23"
trigger24 = command = "IA24"
trigger25 = command = "IA25"
trigger26 = command = "IA26"
trigger27 = command = "IA27"
trigger28 = command = "IA28"
trigger29 = command = "IA29"
trigger30 = command = "IA30"
trigger30 = command = "IA31"
trigger30 = command = "IA32"
v = 6
value = 1
;--------------------------------------------------------------------------
;Combo_Auto_1
[State -1, Combo_Auto_1]
type = ChangeState
value = 900
triggerall = command = "Combo_Auto_1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger3= stateno = 1500

;--------------------------------------------------------------------------
;Combo_Auto_2
[State -1, Combo_Auto_2]
type = ChangeState
value = 905
triggerall = command = "Combo_Auto_2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger3= stateno = 1500

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 10
trigger3= stateno = 1500
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230)
trigger3= stateno = 1500

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200)
trigger3= stateno = 1500
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200)
trigger3= stateno = 1500

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210)
trigger3= stateno = 1500

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 240)
trigger3= stateno = 1500

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 6) || (movecontact && time > 1)

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)
trigger2 = (time > 7) || (movecontact && time > 1)

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) || (stateno = 410)
trigger2 = (time > 6) || (movecontact && time > 1)

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) || (stateno = 440)
trigger2 = (time > 6) || (movecontact && time > 1)

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = (time > 6) || (movecontact && time > 1)

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger2 = (time > 6) || (movecontact && time > 1)

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = (time > 6) || (movecontact && time > 1)

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = (time > 6) || (movecontact && time > 1)

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 640
trigger2 = movecontact
trigger3 = stateno = 1350

;---------------------------------------------------------------------------

