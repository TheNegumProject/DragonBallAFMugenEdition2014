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
[Command]
name = "kamehameha"
command = ~D, DB, F, x

[Command]
name = "kamehameha2"
command = ~D, DB, F, y

[Command]
name = "kamehameha3"
command = ~D, DB, F, z

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
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_c"
command = ~D, DB, B, c

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_f"
command = ~D, DF, F, b

[Command]
name = "QCB_B"
command = ~D, DF, F, c

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
name = "DD"     ;hold B or Hold F
command = D,F,a
time = 20

[Command]
name = "DD"     ;Required (do not remove)
command = D,B,a
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



;===========================================================================
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------



;---------------------------------------------------------------------------



;---------------------------------------------------------------------------



;---------------------------------------------------------------------------




;---------------------------------------------------------------------------



;---------------------------------------------------------------------------

[State -1, kame 1]
type = ChangeState
value = 1910
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = command = "kamehameha"
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, kame 1]
type = ChangeState
value = 19100
triggerall = power >= 2000
triggerall = statetype = S
trigger1 = command = "kamehameha2"
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, kame 1]
type = ChangeState
value = 191001
triggerall = power >= 3000
triggerall = statetype = S
trigger1 = command = "kamehameha3"
trigger1 = ctrl

;===========================================================================
[State -1, teleport kamezim 1]
type = ChangeState
value = 301010
triggerall = power >= 500
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = command = "QCB_x"
trigger1 = ctrl

;---------------------------------------------------------------------------
;combitios soquitos
[State -1, soquitoy]
type = ChangeState
value = 2007
triggerall = command = "QCB_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, soquitoz]
type = ChangeState
value = 2207
triggerall = command = "QCB_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand terry y ]
type = ChangeState
value = 2103
triggerall = command = "QCF_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand terry z ]
type = ChangeState
value = 2105
triggerall = command = "QCF_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
; combitios chute
[State -1, teleport Kick]
type = ChangeState
value = 2307
triggerall = command = "QCB_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, teleport Kick]
type = ChangeState
value = 2457
triggerall = command = "QCF_c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand teleport Kick]
type = ChangeState
value = 30101
triggerall = command = "QCB_f"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand teleport Kick]
type = ChangeState
value = 301012
triggerall = command = "QCB_B"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------
;Fire ball
[State -1]
type = ChangeState
value = 7025
triggerall = command = "QCF_x"
triggerall = numproj = 0
triggerall = p2bodydist X >= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
;trigger2 = stateno = 1500

;Fire Ball 1
[State -1]
type = changestate
value = 7026
triggerall = command = "x"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7025

;Fire Ball 2
[State -1]
type = changestate
value = 7025
triggerall = command = "x"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7026
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2  = stateno = 50
trigger3  = stateno = 52

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2  = stateno = 50
trigger3  = stateno = 52
;---------------------------------------------------------------------------

;Stands
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 245
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;===============================================================================
;ZANZOKEN
[State -1]
type = ChangeState
value = 2006
triggerall = command = "DD"
trigger1 = statetype != C
trigger1 = ctrl = 1
;trigger2 = stateno = 1500; can be done air
;----------------combos-----------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = stateno = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 8

;---------------------------------------------------------------------------
;Stand Strong Punch 2
[State -1, Stand Strong Punch 2]
type = ChangeState
value = 220
triggerall = stateno = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 8
;---------------------------------------------------------------------------
;Stand Strong Punch 3
[State -1, Stand Strong Punch 3]
type = ChangeState
value = 225
triggerall = stateno = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 8
;---------------------------------------------------------------------------
;Kame 1
[State -1, kame 1]
type = ChangeState
value = 1000
triggerall = power >= 1000
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = stateno = 225
trigger1 = command = "z"
trigger1 = time >= 8
trigger2 = command = "QCB_x"
trigger2 = ctrl
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = stateno = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time > 8

;---------------------------------------------------------------------------
;Standing Strong Kick 2
[State -1, Standing Strong Kick 2]
type = ChangeState
value = 245
triggerall = stateno = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time > 8

;---------------------------------------------------------------------------
;Standing Strong Kick 3
[State -1, Standing Strong Kick 3]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 245
trigger1 = statetype = S
trigger1 = time > 14
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = statetype = C
trigger3 = stateno = 400
trigger3 = time >= 12
;---------------------------------------------------------------------------
;Standing Strong Kick 4
[State -1, Standing Strong Kick 4]
type = ChangeState
value = 255
triggerall = stateno = 250
triggerall = command = "c"
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time > 8

;Kame 1
[State -1, kame 1]
type = ChangeState
value = 1000
triggerall = power >= 1000
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = stateno = 255
trigger1 = command = "c"
trigger1 = time >= 20
trigger2 = command = "QCB_x"
trigger2 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Crouching Light kick]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


[State -1, Crouching Light kick]
type = ChangeState
value = 255
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


[State -1, Crouching Light kick]
type = ChangeState
value = 255
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;power
[State -1, power]
type = ChangeState
value = 660
triggerall = command = "holda"
triggerall = command = "holdb"
triggerall = command != "holdc"
triggerall = ctrl = 1
trigger1 = statetype = S
trigger1 = stateno = 0
trigger2 = stateno = 50
trigger3 = stateno = 52


