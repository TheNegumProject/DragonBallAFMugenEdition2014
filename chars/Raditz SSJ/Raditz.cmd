; _____________________________________
;| Gohan Tipo Z by Zerberus_Dante      |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===================<COMANDOS>================
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
;-| AI |---------------------------------------------------------------------

[Command]
name = "ai1"
command = x,x,x,x,x,x,x,x,x,x,a+b+c+z+x+y
time = 1

[Command]
name = "ai2"
command = y,y,y,y,y,y,y,y,y,y,a+b+c+z+x+y
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y
time = 1

[Command]
name = "ai4"
command = F,F,F,F,F,F,F,F,F,F,F,F,a+b+c+z+x+y
time = 1

[Command]
name = "ai5"
command = F,B,F,B,F,B,F,B,F,B,F,B,a+b+c+z+x+y
time = 1

[Command]
name = "ai6"
command = B,D,F,U,a+b+c+z+x+y+B+D+F+U
time = 1

[Command]
name = "ai7"
command = B,D,F,U,B,D,F,U,a+b+c+z+x+y
time = 1

[Command]
name = "ai8"
command = F,B,F,F,F,B,B,U,U,D,D,a+b+c+z+x+y
time = 1

[Command]
name = "ai9"
command = a,b,c,z,x,y,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai10"
command = F,x,B,x,D,x,U,x,F,x,B,x,D,x,U,x,a+b+c+z+x+y
time = 1

[Command]
name = "ai11"
command = x,y,z,a,b,c,x,y,z,a+b+c+z+x+y+F+B+F+B
time = 1

[Command]
name = "ai12"
command = F,F,F,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai13"
command = U,U,U,U,U,U,U,U,U,U,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai14"
command = F,B,F,B,F,a+b+c+z+x+y+U+B+D+F
time = 1

[Command]
name = "ai15"
command = D,B,D,B,D,B,D,a+b+c+z+x+y+F+F+U+U+D+D+B+B
time = 1

[Command]
name = "ai16"
command = D,B,D,B,D,B,D,a+b+c+z+x+y+F+F+U+U+D+D+B+B+B+B
time = 1

[Command]
name = "ai17"
command = x,y,z,a,b,c,x,y,z,a+b+c+z+x+y+F+B+F+B+y+F+B+F+B
time = 1

[Command]
name = "ai18"
command = x,y,z,a,b,c,x,y,z,a+b+c+z+x+y+F+B+F+B+F+B+F+B
time = 1

[Command]
name = "ai19"
command = x,y,z,a,b,c,x,y,z,a+b+c+z+x+y+F+B+F+B,c,x,y,z
time = 1

[Command]
name = "ai20"
command = F,F,F,a+b+c+z+x+y+U+D+F+B+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai21"
command = F,F,F,a+b+c+z+x+y+U+D+F+B+a+b+c+z+x
time = 1

[Command]
name = "ai22"
command = F,F,F,a+b+c+z+x+y+U+D+F+B+F,F,a+b+c
time = 1

[Command]
name = "ai23"
command = D, DF, F, c,a+b+c+x+y+U+D+F+B
time = 1

[Command]
name = "ai24"
command = D, DF, F, x,a+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai25"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai26"
command = D, DF, F, b,a+b+c+z+x+y+U+F+B
time = 1

[Command]
name = "ai27"
command = D, DF, F, b,a+b+c+x+y+U+D+F
time = 1

[Command]
name = "ai28"
command = D, DF, F, c,a+b+c+z+x+y+F+B
time = 1

[Command]
name = "ai29"
command = D, DF, F, x,a+b+x+y+U+D+F+B
time = 1

[Command]
name = "ai30"
command = D, DF, F, x,b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai31"
command = D, DF, F, x,b+c+z+x+y+U+D+F+B, DF, F, x,b+c+z
time = 1

[Command]
name = "ai32"
command = D, DF, F, x,b+c+z+x+y+U+D+F+B+x+y+U+D+F+B
time = 1

[Command]
name = "ai33"
command = D, DF, F, x,b+c+z+x+y+U+D+F+B,b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai34"
command = D, DF, F, x,b+c+z+x+y+U+D+F+B,F,x,b+c+z+x
time = 1

[Command]
name = "ai35"
command = D, DF, F, x,b+c+z+x+y+U+D+F+B+D+F+B,D,DF
time = 1


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
; Default value for the "time" parameter of a Command. Minimum 1.
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.

[Defaults]
command.time=15
command.buffer.time=1

;-| Super Motions |--------------------------------------------------------
[command]
name = "HyperKiDown"
command = D,DF,F,D,DF,F,x
time = 40

[command]
name = "UltimateHyperKikouha!!!!"
command = D,F,x+y
time = 40

[command]
name = "AerialRedKikouha"
command = D,DF,F,D,DF,F,y
time = 40

[command]
name = "Galactic Kiblast!!"
command = D,DF,F,D,DF,F,z
time = 40

[command]
name = "Another Kaioken"
command = D,DF,F,D,DF,F,a
time = 40

;-| Special Motions |------------------------------------------------------

[command]
name = "ataque Decesperacion"
command = D,B,z
time = 15

[command]
name = "Teletransporte Ade"
command = /$F,x+y
time = 30

[command]
name = "DobleEnergico"
command = D,F,z
time = 30

[command]
name = "Dashing Kick"
command = B,F,x
time = 30

[command]
name = "Terremoto"
command = D,F,x
time = 30

[command]
name = "Aura Explosion"
command = D,B,x
time = 30

[command]
name = "GunKicks"
command = D,F,y
time = 30

[command]
name = "Fast MultiKick"
command = D,B,y
time = 30

[command]
name = "Teletransporte Atr"
command = /$B,x+y
time = 30

[command]
name = "Teletransporte Junto p2"
command = x+y
time = 30

[Command]
name = "fly"
command = b+y
time = 30

[command]
name = "Triple Leg Kick"
command = D,DF,F,b
time = 30

[command]
name = "Shadow Kick"
command = D,DB,B,b
time = 30

[command]
name = "Fastmultipunch"
command = D,DF,F,a
time = 30

[command]
name = "Energia Subterranea"
command = D,DB,B,a
time = 30

[command]
name = "golpeestrellaaire1"
command = /D,z
time = 30

[command]
name = "golpeestrellaaire2"
command = /D,c
time = 30

[command]
name = "magiaaire1"
command = D,DF,F,z
time = 30

[command]
name = "Coletaso"
command = D,F,c
time = 30

[command]
name = "Kykouha!! small"
command = D,B,c
time = 30

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
name = "AI Prueba"
command = a+b ; con el botón A+B activamos la AI
time = 1

[Command]
name = "AI desactivado"
command = b+c ; Con el boton B+C desactivamos la AI
time = 1

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
name = "ki"
command = /x
time = 1

[Command]
name = "ki2"
command = /a
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
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

;==========================(Tap Rapidly)================================================
[Command]
name = "3x"
command = x, x, x,
time = 30
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

[State -1, AI]
type = VarSet
triggerall = var(6) != 1
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10= command = "ai10"
trigger11= command = "ai11"
trigger12= command = "ai12"
trigger13= command = "ai13"
trigger14= command = "ai14"
trigger15= command = "ai15"
trigger16= command = "ai16"
trigger17= command = "ai17"
trigger18= command = "ai18"
trigger19= command = "ai19"
trigger20= command = "ai20"
trigger21= command = "ai21"
trigger22= command = "ai22"
trigger23= command = "ai23"
trigger24= command = "ai24"
trigger25= command = "ai25"
trigger26= command = "ai26"
trigger27= command = "ai27"
trigger28= command = "ai28"
trigger29= command = "ai29"
trigger30= command = "ai30"
trigger31= command = "ai31"
trigger32= command = "ai32"
trigger33= command = "ai33"
trigger34= command = "ai34"
trigger35= command = "ai35"
v = 6
value = 1

[State -1, HyperKiDown]
type = ChangeState
value = 518
triggerall = command = "HyperKiDown"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1, Ataque Desesperacion]
type = ChangeState
value = 4800
triggerall = command = "ataque Decesperacion"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl

[State -1, Galactic Kiblast!!]
type = ChangeState
value = 501
triggerall = command = "Galactic Kiblast!!"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1, Aerial Red Kikouha]
type = ChangeState
value = 3609
triggerall = command = "AerialRedKikouha"
triggerall = power >= 1500
trigger1 = (statetype = a) && ctrl

[State -1, Stand to Aerial Red Kikouha]
type = ChangeState
value = 3610
triggerall = command = "AerialRedKikouha"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1,Super Armor(Another Kaioken)]
type = ChangeState
value = 7000
triggerall = command = "Another Kaioken"
triggerall = power >= 3000
triggerall = StateType != A
triggerall = StateType = S
triggerall = var (25) = 0
trigger1 = ctrl

[State -1, UltimateHyperKikouha!!!!]
type = ChangeState
value = 513
triggerall = command = "UltimateHyperKikouha!!!!"
triggerall = power >= 3000 && var(21) = 0
trigger1 = (statetype = s) && ctrl

[State -1, Dashing Kick ]
type = ChangeState
value = 1003
triggerall = p2stateno != 5001
triggerall = command = "Fastmultipunch"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl

[State -1, Dashing Punch1]
type = ChangeState
value = 1006
triggerall = command = "x"
trigger1 = (stateno = 1004 || stateno = 1005) && Time > 5 && hitcount >= 9

[State -1, Dashing Punch2]
type = ChangeState
value = 1005
triggerall = command = "x" && hitcount < 9
trigger1 = stateno = 1004 && Time > 5 && movehit

[State -1, Dashing Punch3]
type = ChangeState
value = 1004
triggerall = command = "x" && hitcount < 9 && moveguarded = 0
trigger1 = stateno = 1005 && Time > 5

[State -1, Air Dash Ade]
type = ChangeState
value = 1001
triggerall = command = "FF"
trigger1 = (statetype = A) && ctrl

[State -1, Air Dash Atras]
type = ChangeState
value = 1051
triggerall = command = "BB"
trigger1 = (statetype = A) && ctrl

[State -1,Kykouha!! small]
type = ChangeState
value = 273
triggerall = command = "Kykouha!! small"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1,Kykouha!! small aereo]
type = ChangeState
value = 292
triggerall = command = "Kykouha!! small"
triggerall = power >= 1000
trigger1 = (statetype = a) && ctrl

[State -1, Coletaso]
type = ChangeState
value = 272
triggerall = command = "Coletaso"
triggerall = power >= 100
triggerall = p2stateno!=5300
triggerall = p2stateno!=1115110
triggerall = p2stateno!=1115120
trigger1 = (statetype = s) && ctrl

[State -1, Triple Leg Kick]
type = ChangeState
value = 255
triggerall = command = "Triple Leg Kick"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl

[State -1, Shadow Kick]
type = ChangeState
value = 256
triggerall = command = "Shadow Kick"
triggerall = power >= 100
trigger1 = (statetype = s) && ctrl


[State -1, DobleEnergico]
type = ChangeState
value = 267
triggerall = command = "DobleEnergico"
triggerall = power >= 200
trigger1 = (statetype = s) && ctrl

[State -1, Onda Subterranea]
type = ChangeState
value = 262
triggerall = command = "Energia Subterranea"
triggerall = power >= 500
trigger1 = (statetype = s) && ctrl

[State -1, Fast MultiKick]
type = ChangeState
value = 264
triggerall = command = "Fast MultiKick"
triggerall = power >= 100
trigger1 = (statetype = s) && ctrl

[State -1, GunKicks]
type = ChangeState
value = 269
triggerall = command = "GunKicks"
triggerall = power >= 200
trigger1 = (statetype = s) && ctrl


[State -1, Explosion de Aura]
type = ChangeState
value = 263
triggerall = command = "Aura Explosion"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl


[State -1, Explosion de Aura]
type = ChangeState
value = 293
triggerall = command = "Aura Explosion"
triggerall = power >= 300
trigger1 = (statetype = a) && ctrl

[State -1, Terremoto]
type = ChangeState
value = 266
triggerall = command = "Terremoto"
triggerall = power >= 400
trigger1 = (statetype = s) && ctrl

[State -1, Teletransporte Atr]
type = ChangeState
value = 7099
triggerall = command = "Teletransporte Atr"
trigger1 = (statetype = s) && ctrl

[State -1, Teletransporte Ade]
type = ChangeState
value = 7098
triggerall = command = "Teletransporte Ade"
trigger1 = (statetype = s) && ctrl

[State -1, Teletransporte Junto p2]
type = ChangeState
value = 883
triggerall = command = "Teletransporte Junto p2"
triggerall = power >= 500
trigger1 =  ctrl

[State -1, Cargar KI]
type = ChangeState
value = 830
triggerall = command = "ki" && command = "ki2"
triggerall = power < 3001
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = statetype = S

;===========================================================================
;---------------------------------------------------------------------------
                      ;States Normales;
;===========================================================================
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
triggerall = command = "y" || command = "z"
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

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand fireball
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = power >= 100
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

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
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

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

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = power >= 100
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

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

