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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
; Super Androide 13
[Command]
name = "RR Blast"
command = ~F,B,DB,D,DF,F,a+b
time = 30
[Command]
name = "RR Blast"
command = ~F,B,DB,D,DF,F+a+b
time = 30


[Command]
name = "Napalm Rain"
command = ~D,DB,B,DB,D,DF,F,c
time = 30
[Command]
name = "Napalm Rain"
command = ~D,DB,B,DB,D,DF,F+c
time = 30



; Androide 13 (N0rmal)
[Command]
name = "Transformaci"
command = a+b
time = 25
[Command]
name = "Transformaci"
command = a+b
time = 25


[Command]
name = "Super RR Ball"
command = ~20$B,F,B,F,x+y
time = 30
[Command]
name = "Super RR Ball"
command = ~20$B,F,B,F+x+y
time = 30


[Command]
name = "RR Shot"
command = ~D,DF,F,D,DF,F, x
time = 20
[Command]
name = "RR Shot"
command = ~D,DF,F,D,DF,F+x
time = 20
[Command]
name = "RR Shot"
command = ~D,DF,F,D,DF,F, y
time = 20
[Command]
name = "RR Shot"
command = ~D,DF,F,D,DF,F+y
time = 20


[Command]
name = "Lanza Granadas"
command = ~D,DB,B,D,DB,B, x
time = 20
[Command]
name = "Lanza Granadas"
command = ~D,DB,B,D,DB,B+x
time = 20
[Command]
name = "Lanza Granadas"
command = ~D,DB,B,D,DB,B, y
time = 20
[Command]
name = "Lanza Granadas"
command = ~D,DB,B,D,DB,B+y
time = 20

;-| Special Ki |--------------------------------------------------------
; Super Androide 13
[Command]
name = "Meteorite"
command = ~20$D,U,c
time = 15
[Command]
name = "Meteorite"
command = ~20$D,U+c
time = 15

[Command]
name = "RR Buster"
command = ~F,DF,D,DB,B,c
time = 15
[Command]
name = "RR Buster"
command = ~F,DF,D,DB,B+c
time = 15


; Androide 13 (N0rmal)
[Command]
name = "Mina al piso"
command = ~D,DB,B, x
time = 15
[Command]
name = "Mina al piso"
command = ~D,DB,B+x
time = 15


[Command]
name = "Bomba al P2"
command = ~D,DB,B, y
time = 15
[Command]
name = "Bomba al P2"
command = ~D,DB,B+y
time = 15


[Command]
name = "Napalm Strike"
command = ~F,DF,D,DB,B,c
time = 15
[Command]
name = "Napalm Strike"
command = ~F,DF,D,DB,B+c
time = 15


[Command]
name = "Apuntar"
command = ~D,D,c
time = 15
[Command]
name = "Apuntar"
command = ~D,D+c
time = 15

;-| Special Motions |------------------------------------------------------

; Super Androide 13

[Command]
name = "Contraataque Pu"
command = ~F,DF,D,DB,B,+a
time = 15
[Command]
name = "Contraataque Pu"
command = ~F,DF,D,DB,B,a
time = 15
[Command]
name = "Contraataque Agarre"
command = ~F,DF,D,DB,B+b
time = 15
[Command]
name = "Contraataque Agarre"
command = ~F,DF,D,DB,B,b
time = 15


[Command]
name = "Potemkin Chargue"
command = ~20$B,F+y
time = 15
[Command]
name = "Potemkin Chargue"
command = ~20$B,F,y
time = 15

[Command]
name = "Rush Combo"
command = ~20$B,F+x
time = 15
[Command]
name = "Rush Combo"
command = ~20$B,F,x
time = 15


[Command]
name = "Hyper Tackle Fuerte"
command = ~20$B,F+b
time = 15
[Command]
name = "Hyper Tackle Fuerte"
command = ~20$B,F,b
time = 15

[Command]
name = "Hyper Tackle Devil"
command = ~20$B,F+a
time = 15
[Command]
name = "Hyper Tackle Devil"
command = ~20$B,F,a
time = 15


; Androide 13 (N0rmal)
[Command]
name = "Salto Agarre fuerte"
command = ~F,D,DF,y
time = 15
[Command]
name = "Salto Agarre fuerte"
command = ~F,D,DF+y
time = 15

[Command]
name = "Salto Agarre Devil"
command = ~F,D,DF,x
time = 15
[Command]
name = "Salto Agarre Devil"
command = ~F,D,DF+x
time = 15


[Command]
name = "Patada Sonica Fuerte"
command = ~20$D, U, b
time = 15
[Command]
name = "Patada Sonica Fuerte"
command = ~20$D, U+b
time = 15

[Command]
name = "Patada Sonica Devil"
command = ~20$D, U, a
time = 15
[Command]
name = "Patada Sonica Devil"
command = ~20$D, U+a
time = 15




[Command]
name = "Patada Explosiva Fuerte"
command = ~20$B,F+b
time = 15
[Command]
name = "Patada Explosiva Fuerte"
command = ~20$B,F,b
time = 15

[Command]
name = "Patada Explosiva Devil"
command = ~20$B,F+a
time = 15
[Command]
name = "Patada Explosiva Devil"
command = ~20$B,F,a
time = 15


[Command]
name = "Taco Explosivo Devil"
command = ~D,DB,B,a
time = 15
 [Command]
name = "Taco Explosivo Fuerte"
command = ~D,DB,B,b
time = 15
;-| Comands  |-----------------------------------------------------------

[Command]
name = "Fire Balls"
command = c
time = 15

[Command]
name = "Super Jump"
command = ~D, U
time = 10

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
name = "charge"
command = /a
time = 1

[Command]
name = "charge 1"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "fly"
command = y+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10



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

;---------- Comandos de la Inteligencia Artificial-----------------
; Comandos activadores
;[Command]
;name = "AI Prueba"
;command = b+c ; con el bot A+B activamos la AI
;time = 10

;[Command]
;name = "AI desactivado"
;command = y+z ; Con el boton B+C desactivamos la AI
;time = 10

;---------- comandos para que la PC active la IA -------------------------
[command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b
time = 1

[command]
name = "AI2"
command = b,c,b,c,b,c,b,c,b,c,b,c
time = 1

[command]
name = "AI3"
command = b,c,b,c,b,c,b,c,b,c,b
time = 1

[command]
name = "AI4"
command = a,b,a,b,a,b,a,b,a,b,a
time = 1

[command]
name = "AI5"
command = b,a,b,a,b,a,b,a,b,a,b
time = 1

[command]
name = "AI6"
command = b,b,b,b,z,b,z,b,z,z,z
time = 1

[command]
name = "AI7"
command = b,x,b,b,x,b,b,b,b,b,x
time = 1

[command]
name = "AI8"
command = b,y,b,b,b,y,b,b,b,b,y
time = 1

[command]
name = "AI9"
command = b,b,b,b,s,z,y,x,c,b,a
time = 1

[command]
name = "AI10"
command = z,b,x,y,b,b,c,b,b,b,a
time = 1

[command]
name = "AI11"
command = b,x,b,b,x,b,b,b,b,b,z
time = 1

[command]
name = "AI12"
command = b,y,b,s,b,y,b,b,b,b,y
time = 1

[command]
name = "AI13"
command = b,b,b,z,s,z,y,x,c,b,a
time = 1

[command]
name = "AI14"
command = z,b,x,y,b,b,c,b,b,c,a
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
;Run Fwd super 13
[State -1: 		Run Fwd]
type = ChangeState
value = 103
triggerall = Var(3)= 1
triggerall = (Command = "FF")
trigger1 = (StateType != A) && (Ctrl)

;Run Back en el aire
[State -1: 		Run Back]
type = ChangeState
value = 109
triggerall = Var(3)= 1
triggerall = (Command = "BB")
trigger1   = (StateType = A) && (Ctrl)

;---------------------------------------------------------------------------
;Run Fwd en el aire
[State -1: 		Run Fwd]
type 			= ChangeState
value 		        = 107
triggerall 		= (Command = "FF")
trigger1		= (StateType = A) && (Ctrl)

;Run Back en el aire
[State -1: 		Run Back]
type 			= ChangeState
value 		        = 108
triggerall 		= (Command = "BB")
trigger1		= (StateType = A) && (Ctrl)


;===================================================================================
;---------------- Supers -----------------------------------------------------------
;===================================================================================
;---------- Super Androide 13 -------------------------------------------
;RR Blast
[State -1, RR Blast]
type = ChangeState
value = 3600
triggerall = command = "RR Blast"
triggerall = Var(3) = 1
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger2 = (stateno = 11200) && (movecontact = 1)
trigger3 = (stateno = 11201) && (movecontact = 1)
trigger4 = (stateno = 11210) && (movecontact = 1)
trigger5 = (stateno = 11230)  && (movecontact = 1)
trigger6 = (stateno = 11240)  && (movecontact = 1)
trigger7 = (stateno = 11400)  && (movecontact = 1)
trigger8 = (stateno = 11410)  && (movecontact = 1)
trigger9 = (stateno = 11430)  && (movecontact = 1)
trigger10 = (stateno = 11440)  && (movecontact = 1)
trigger11 = (stateno = 4101)  && (time > 10)
trigger12 = (stateno = 4154)  && (time > 10)
trigger13 = (stateno = 11320)  && (movecontact = 1) && (Var(3)= 1)
trigger14 = (stateno = 4361)  && (time > 10)
trigger15 = (stateno = 4200)  && (time > 10)
trigger16 = (stateno = 4410)  && (time > 12)




;Napalm Rain
[State -1, Napalm Rain]
type = ChangeState
value = 3500
triggerall = command = "Napalm Rain"
triggerall = Var(3) = 1
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = (stateno = 11200) && (movecontact = 1)
trigger3 = (stateno = 11201) && (movecontact = 1)
trigger4 = (stateno = 11210) && (movecontact = 1)
trigger5 = (stateno = 11230)  && (movecontact = 1)
trigger6 = (stateno = 11240)  && (movecontact = 1)
trigger7 = (stateno = 11400)  && (movecontact = 1)
trigger8 = (stateno = 11410)  && (movecontact = 1)
trigger9 = (stateno = 11430)  && (movecontact = 1)
trigger10 = (stateno = 11440)  && (movecontact = 1)
trigger11 = (stateno = 4101)  && (time > 10)
trigger12 = (stateno = 4154)  && (time > 10)
trigger13 = (stateno = 11320)  && (movecontact = 1) && (Var(3)= 1)
trigger14 = (stateno = 4361)  && (time > 10)
trigger15 = (stateno = 4200)  && (time > 10)
trigger16 = (stateno = 4410)  && (time > 20)


;Napalm Rain Aire
[State -1, Napalm Rain Aire]
type = ChangeState
value = 3510
triggerall = command = "Napalm Rain"
triggerall = Var(3) = 1
triggerall = statetype = A
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = (stateno = 11600) && (movecontact = 1)
trigger3 = (stateno = 11601) && (movecontact = 1)
trigger4 = (stateno = 11610) && (movecontact = 1)
trigger5 = (stateno = 11630)  && (movecontact = 1)
trigger6 = (stateno = 11640)  && (movecontact = 1)
trigger7 = (stateno = 11500) && (movecontact = 1)
trigger8 = (stateno = 11501) && (movecontact = 1)
trigger9 = (stateno = 11510) && (movecontact = 1)
trigger10 = (stateno = 11530)  && (movecontact = 1)
trigger11 = (stateno = 11540)  && (movecontact = 1)
trigger12 = (stateno = 11320)  && (movecontact = 1)
trigger13 = (stateno = 4250)  && (time > 20)




;Super RR Ball
[State -1, Super RR Ball]
type = ChangeState
value = 3400
triggerall = command = "Super RR Ball"
triggerall = Var(3) = 1
triggerall = statetype != A
triggerall = power >= 1000
triggerall = numhelper(3355) = 0
triggerall = numhelper(3350) = 0
trigger1 = ctrl = 1
trigger2 = (stateno = 11200) && (movecontact = 1)
trigger3 = (stateno = 11201) && (movecontact = 1)
trigger4 = (stateno = 11210) && (movecontact = 1)
trigger5 = (stateno = 11230)  && (movecontact = 1)
trigger6 = (stateno = 11240)  && (movecontact = 1)
trigger7 = (stateno = 11400)  && (movecontact = 1)
trigger8 = (stateno = 11410)  && (movecontact = 1)
trigger9 = (stateno = 11430)  && (movecontact = 1)
trigger10 = (stateno = 11440)  && (movecontact = 1)
trigger11 = (stateno = 4101)  && (time > 10)
trigger12 = (stateno = 4154)  && (time > 10)
trigger13 = (stateno = 11320)  && (movecontact = 1) && (Var(3)= 1)
trigger14 = (stateno = 4361)  && (time > 10)
trigger15 = (stateno = 4200)  && (time > 10)
trigger16 = (stateno = 4410)  && (time > 20)

;---------- Androide 13 Normal -------------------------------------------
;Transformaci
[State -1, Transformaci]
type = ChangeState
value = 3000
triggerall = Var(3)= 0
triggerall = command = "Transformaci"
triggerall = power >= 2000
trigger1 = ctrl
trigger1 = statetype = S

;Super RR Ball
[State -1, Super RR Ball]
type = ChangeState
value = 3300
triggerall = command = "Super RR Ball"
triggerall = Var(3) = 0
triggerall = power >= 2000
triggerall = numhelper(3355) = 0
triggerall = numhelper(3350) = 0
trigger1 = statetype!=A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310)  && (movecontact = 1)
trigger12 = (stateno = 2001)  && (time > 16)

;RR Shot
[State -1, RR Shot]
type = ChangeState
value = 3200
triggerall = command = "RR Shot"
triggerall = Var(3) = 0
triggerall = power >= 1000
triggerall = numhelper(3350) < 1
trigger1 = statetype!=A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310)  && (movecontact = 1)
trigger12 = (stateno = 2001)  && (time > 16)

;RR Shot en el aire
[State -1, RR Shot en el aire]
type = ChangeState
value = 3210
triggerall = command = "RR Shot"
triggerall = Var(3) = 0
triggerall = power >= 1000
triggerall = numhelper(3350) < 1
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 601) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)
trigger5 = (stateno = 630)  && (movecontact = 1)
trigger6 = (stateno = 640)  && (movecontact = 1)
trigger7 = (stateno = 500) && (movecontact = 1)
trigger8 = (stateno = 501) && (movecontact = 1)
trigger9 = (stateno = 510) && (movecontact = 1)
trigger10 = (stateno = 530)  && (movecontact = 1)
trigger11 = (stateno = 540)  && (movecontact = 1)
trigger12 = (stateno = 2100)  && (time >= 18)
trigger13 = (stateno = 2150)  && (time >= 18)


;"Lanza Granadas"
[State -1, Lanza Granadas]
type = ChangeState
value = 3100
triggerall = command = "Lanza Granadas"
triggerall = Var(3) = 0
triggerall = power >= 1000
triggerall = numhelper(3150) = 0
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 601) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)
trigger5 = (stateno = 630)  && (movecontact = 1)
trigger6 = (stateno = 640)  && (movecontact = 1)
trigger7 = (stateno = 500) && (movecontact = 1)
trigger8 = (stateno = 501) && (movecontact = 1)
trigger9 = (stateno = 510) && (movecontact = 1)
trigger10 = (stateno = 530)  && (movecontact = 1)
trigger11 = (stateno = 540)  && (movecontact = 1)
trigger12 = (stateno = 2100)  && (time >= 18)
trigger13 = (stateno = 2150)  && (time >= 18)



;===================================================================================
;---------------- Specials Ki -----------------------------------------------------------
;===================================================================================
;---------- Super Androide 13 -------------------------------------------

;Meteorite
[State -1, Meteorite]
type = ChangeState
value = 4700
triggerall = command = "Meteorite"
triggerall = Var(3) = 1
triggerall = power >= 500
trigger1 = StateType = S || StateType = C
trigger2 = (stateno = 11200) && (movecontact = 1)
trigger3 = (stateno = 11201) && (movecontact = 1)
trigger4 = (stateno = 11210) && (movecontact = 1)
trigger5 = (stateno = 11230)  && (movecontact = 1)
trigger6 = (stateno = 11240)  && (movecontact = 1)
trigger7 = (stateno = 11400)  && (movecontact = 1)
trigger8 = (stateno = 11410)  && (movecontact = 1)
trigger9 = (stateno = 11430)  && (movecontact = 1)
trigger10 = (stateno = 11440)  && (movecontact = 1)
trigger11 = (stateno = 4101)  && (time > 10)
trigger12 = (stateno = 4154)  && (time > 10)
trigger13 = (stateno = 11320)  && (movecontact = 1) && (Var(3)= 1)
trigger14 = (stateno = 4361)  && (time > 10)
trigger15 = (stateno = 4200)  && (time > 10)
trigger16 = (stateno = 4410)  && (time > 20)

; RR Buster
[State -1,  RR Buster]
type = ChangeState
value = 4600
triggerall = command =  "RR Buster"
triggerall = Var(3) = 1
triggerall = statetype != A
triggerall = power >= 300
trigger1 = ctrl = 1
trigger2 = (stateno = 11200) && (movecontact = 1)
trigger3 = (stateno = 11201) && (movecontact = 1)
trigger4 = (stateno = 11210) && (movecontact = 1)
trigger5 = (stateno = 11230)  && (movecontact = 1)
trigger6 = (stateno = 11240)  && (movecontact = 1)
trigger7 = (stateno = 11400)  && (movecontact = 1)
trigger8 = (stateno = 11410)  && (movecontact = 1)
trigger9 = (stateno = 11430)  && (movecontact = 1)
trigger10 = (stateno = 11440)  && (movecontact = 1)
trigger11 = (stateno = 4101)  && (time > 10)
trigger12 = (stateno = 4154)  && (time > 10)
trigger13 = (stateno = 11320)  && (movecontact = 1) && (Var(3)= 1)
trigger14 = (stateno = 4361)  && (time > 10)
trigger15 = (stateno = 4200)  && (time > 10)
trigger16 = (stateno = 4410)  && (time > 20)

;--------------------------------------------------------------------------------
;Androide 13 Normal

;"Napalm Strike"
[State -1, Napalm Strike]
type = ChangeState
value = 2700
triggerall = command = "Napalm Strike"
triggerall = Var(3) = 0
triggerall = statetype = A
triggerall = numhelper(2799) = 0
trigger1 = ctrl = 1
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 601) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)
trigger5 = (stateno = 630)  && (movecontact = 1)
trigger6 = (stateno = 640)  && (movecontact = 1)
trigger7 = (stateno = 500) && (movecontact = 1)
trigger8 = (stateno = 501) && (movecontact = 1)
trigger9 = (stateno = 510) && (movecontact = 1)
trigger10 = (stateno = 530)  && (movecontact = 1)
trigger11 = (stateno = 540)  && (movecontact = 1)
trigger12 = (stateno = 2100)  && (time >= 18)
trigger13 = (stateno = 2150)  && (time >= 18)


;Napalm Strike
[State -1, Napalm Strike]
type = ChangeState
value = 2750
triggerall = command = "Napalm Strike"
triggerall = Var(3) = 0
triggerall = statetype != A
triggerall = numhelper(2799) = 0
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310)  && (movecontact = 1)
trigger12 = (stateno = 2000)  && (time > 14)
trigger13 = (stateno = 2001)  && (time > 16)




;Apuntar
[State -1, Apuntar]
type = ChangeState
value = 2600
triggerall = command = "Apuntar"
triggerall = Var(3) = 0
triggerall = numhelper(2660) = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310)  && (movecontact = 1)
trigger12 = (stateno = 2000)  && (time > 14)
trigger13 = (stateno = 2001)  && (time > 16)


;Mina al piso
[State -1, Mina al piso]
type = ChangeState
value = 2500
triggerall = command = "Mina al piso"
triggerall = Var(3) = 0
triggerall = numhelper(2580) < 2
triggerall = power >= 300
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310)  && (movecontact = 1)
trigger12 = (stateno = 2001)  && (time > 16)


;Bomba al P2 - Detonaci
[State -1, Bomba al P2 - Detonaci]
type = ChangeState
value = 2551
triggerall = command = "Bomba al P2"
triggerall = Var(3) = 0
triggerall = numhelper(2590) = 1 || numhelper(3150) >= 1
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310)  && (movecontact = 1)
trigger12 = (stateno = 2000)  && (time > 14)
trigger13 = (stateno = 2001)  && (time > 16)

;Bomba al P2
[State -1, Bomba al P2]
type = ChangeState
value = 2550
triggerall = command = "Bomba al P2"
triggerall = Var(3) = 0
triggerall = numhelper(2590) = 0
triggerall = power >= 500
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310)  && (movecontact = 1)
trigger12 = (stateno = 2000)  && (time > 14)
trigger13 = (stateno = 2001)  && (time > 16)





;Fire Balls - en el aire - Super 13
[State -1, Fire Balls - en el aire - Super 13]
type = ChangeState
value = 11090
triggerall = Var(3)= 1
triggerall = power >= 50
triggerall = command = "Fire Balls"
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = Stateno = 1100
trigger3 = (stateno = 600) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 310) && (movecontact = 1)
trigger8 = (stateno = 500) && (movecontact = 1)
trigger9 = (stateno = 510) && (movecontact = 1)
trigger10 = (stateno = 530) && (movecontact = 1)
trigger11 = (stateno = 540) && (movecontact = 1)
trigger12 = stateno = 1350 ;Air blocking


;Fire Balls - en el aire
[State -1, Fire Balls - en el aire]
type = ChangeState
value = 1080
triggerall = power >= 50
triggerall = command = "Fire Balls"
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = Stateno = 1100
trigger3 = (stateno = 600) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 310) && (movecontact = 1)
trigger8 = (stateno = 500) && (movecontact = 1)
trigger9 = (stateno = 510) && (movecontact = 1)
trigger10 = (stateno = 530) && (movecontact = 1)
trigger11 = (stateno = 540) && (movecontact = 1)
trigger12 = stateno = 1350 ;Air blocking



;Fire Balls - Super 13
[State -1, Fire Balls - Super 13]
type = ChangeState
value = 11070
triggerall = Var(3)= 1
triggerall = power >= 50
trigger1 = command = "Fire Balls"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Fire Balls
[State -1, Fire Balls]
type = ChangeState
value = 1000
triggerall = power >= 50
trigger1 = command = "Fire Balls"
trigger1 = statetype != A
trigger1 = ctrl = 1


;===================================================================================
;---------------- Specials ---------------------------------------------------------
;===================================================================================
;---------- Super Androide 13 -------------------------------------------

;Potemkin Chargue
[State -1, Potemkin Chargue]
type = ChangeState
value = 4100
triggerall = command = "Potemkin Chargue"
triggerall = Var(3) = 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 11200) && (movecontact = 1)
trigger3 = (stateno = 11201) && (movecontact = 1)
trigger4 = (stateno = 11210) && (movecontact = 1)
trigger5 = (stateno = 11230)  && (movecontact = 1)
trigger6 = (stateno = 11240)  && (movecontact = 1)
trigger7 = (stateno = 11400)  && (movecontact = 1)
trigger8 = (stateno = 11410)  && (movecontact = 1)
trigger9 = (stateno = 11430)  && (movecontact = 1)
trigger10 = (stateno = 11440)  && (movecontact = 1)
trigger11 = (stateno = 11320)  && (movecontact = 1) && (Var(3)= 1)


;Rush Combo
[State -1, Rush Combo]
type = ChangeState
value = 4150
triggerall = command = "Rush Combo"
triggerall = Var(3) = 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 11200) && (movecontact = 1)
trigger3 = (stateno = 11201) && (movecontact = 1)
trigger4 = (stateno = 11210) && (movecontact = 1)
trigger5 = (stateno = 11230)  && (movecontact = 1)
trigger6 = (stateno = 11240)  && (movecontact = 1)
trigger7 = (stateno = 11400)  && (movecontact = 1)
trigger8 = (stateno = 11410)  && (movecontact = 1)
trigger9 = (stateno = 11430)  && (movecontact = 1)
trigger10 = (stateno = 11440)  && (movecontact = 1)
trigger11 = (stateno = 11320)  && (movecontact = 1) && (Var(3)= 1)

;Hyper Tackle Devil
[State -1, Hyper Tackle Devil]
type = ChangeState
value = 4200
triggerall = command = "Hyper Tackle Devil"
triggerall = Var(3) = 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 11200) && (movecontact = 1)
trigger3 = (stateno = 11201) && (movecontact = 1)
trigger4 = (stateno = 11210) && (movecontact = 1)
trigger5 = (stateno = 11230)  && (movecontact = 1)
trigger6 = (stateno = 11240)  && (movecontact = 1)
trigger7 = (stateno = 11400)  && (movecontact = 1)
trigger8 = (stateno = 11410)  && (movecontact = 1)
trigger9 = (stateno = 11430)  && (movecontact = 1)
trigger10 = (stateno = 11440)  && (movecontact = 1)
trigger11 = (stateno = 11320)  && (movecontact = 1) && (Var(3)= 1)


;Hyper Tackle Fuerte
[State -1, Hyper Tackle Fuerte]
type = ChangeState
value = 4250
triggerall = command = "Hyper Tackle Fuerte"
triggerall = Var(3) = 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 11200) && (movecontact = 1)
trigger3 = (stateno = 11201) && (movecontact = 1)
trigger4 = (stateno = 11210) && (movecontact = 1)
trigger5 = (stateno = 11230)  && (movecontact = 1)
trigger6 = (stateno = 11240)  && (movecontact = 1)
trigger7 = (stateno = 11400)  && (movecontact = 1)
trigger8 = (stateno = 11410)  && (movecontact = 1)
trigger9 = (stateno = 11430)  && (movecontact = 1)
trigger10 = (stateno = 11440)  && (movecontact = 1)
trigger11 = (stateno = 11320)  && (movecontact = 1) && (Var(3)= 1)




;Salto Agarre fuerte
[State -1, Salto Agarre fuerte]
type = ChangeState
value = 4350
triggerall = command = "Salto Agarre fuerte"
triggerall = Var(3) = 1
triggerall = numhelper(4399) = 0
trigger1 = statetype!=A && (stateno=[0,40])
trigger2 = (stateno = 11200) && (movecontact = 1)
trigger3 = (stateno = 11201) && (movecontact = 1)
trigger4 = (stateno = 11210) && (movecontact = 1)
trigger5 = (stateno = 11230)  && (movecontact = 1)
trigger6 = (stateno = 11240)  && (movecontact = 1)
trigger7 = (stateno = 11400)  && (movecontact = 1)
trigger8 = (stateno = 11410)  && (movecontact = 1)
trigger9 = (stateno = 11430)  && (movecontact = 1)
trigger10 = (stateno = 11440)  && (movecontact = 1)
trigger11 = (stateno = 4101)  && (time > 5)
trigger12 = (stateno = 4154)  && (time > 5)
trigger13 = (stateno = 4200)  && (time > 34)
trigger14 = (stateno = 11320)  && (movecontact = 1) && (Var(3)= 1)



;Salto Agarre Devil
[State -1, Salto Agarre Devil]
type = ChangeState
value = 4300
triggerall = command = "Salto Agarre Devil"
triggerall = Var(3) = 1
trigger1 = statetype!=A && (stateno=[0,40])
trigger2 = (stateno = 11200) && (movecontact = 1)
trigger3 = (stateno = 11201) && (movecontact = 1)
trigger4 = (stateno = 11210) && (movecontact = 1)
trigger5 = (stateno = 11230)  && (movecontact = 1)
trigger6 = (stateno = 11240)  && (movecontact = 1)
trigger7 = (stateno = 11400)  && (movecontact = 1)
trigger8 = (stateno = 11410)  && (movecontact = 1)
trigger9 = (stateno = 11430)  && (movecontact = 1)
trigger10 = (stateno = 11440)  && (movecontact = 1)
trigger11 = (stateno = 4101)  && (time > 5)
trigger12 = (stateno = 4154)  && (time > 5)
trigger13 = (stateno = 4200)  && (time > 34)
trigger14 = (stateno = 11320)  && (movecontact = 1) && (Var(3)= 1)

;Contraataque Pu
[State -1, Contraataque Pu]
type = ChangeState
value = 4400
triggerall = command = "Contraataque Pu"
triggerall = Var(3) = 1
trigger1 = statetype != A
trigger2 = (stateno = 11200) && (movecontact = 1)
trigger3 = (stateno = 11201) && (movecontact = 1)
trigger4 = (stateno = 11210) && (movecontact = 1)
trigger5 = (stateno = 11230)  && (movecontact = 1)
trigger6 = (stateno = 11240)  && (movecontact = 1)
trigger7 = (stateno = 11400)  && (movecontact = 1)
trigger8 = (stateno = 11410)  && (movecontact = 1)
trigger9 = (stateno = 11430)  && (movecontact = 1)
trigger10 = (stateno = 11440)  && (movecontact = 1)
trigger11 = (stateno = 4101)  && (time > 5)
trigger12 = (stateno = 4154)  && (time > 5)
trigger13 = (stateno = 4200)  && (time > 34)
trigger14 = (stateno = 11320)  && (movecontact = 1) && (Var(3)= 1)

;Contraataque Pu
[State -1, Contraataque Pu]
type = ChangeState
value = 4450
triggerall = command = "Contraataque Agarre"
triggerall = Var(3) = 1
trigger1 = statetype != A
trigger2 = (stateno = 11200) && (movecontact = 1)
trigger3 = (stateno = 11201) && (movecontact = 1)
trigger4 = (stateno = 11210) && (movecontact = 1)
trigger5 = (stateno = 11230)  && (movecontact = 1)
trigger6 = (stateno = 11240)  && (movecontact = 1)
trigger7 = (stateno = 11400)  && (movecontact = 1)
trigger8 = (stateno = 11410)  && (movecontact = 1)
trigger9 = (stateno = 11430)  && (movecontact = 1)
trigger10 = (stateno = 11440)  && (movecontact = 1)
trigger11 = (stateno = 4101)  && (time > 5)
trigger12 = (stateno = 4154)  && (time > 5)
trigger13 = (stateno = 4200)  && (time > 34)
trigger14 = (stateno = 11320)  && (movecontact = 1) && (Var(3)= 1)


;---------- Androide 13 NOrmal -------------------------------------------
;Patada Explosiva Devil
[State -1, Patada Explosiva Devil]
type = ChangeState
value = 2000
triggerall = command = "Patada Explosiva Devil"
triggerall = Var(3) = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310)  && (movecontact = 1)


;Patada Explosiva Fuerte
[State -1, Patada Explosiva Fuerte]
type = ChangeState
value = 2050
triggerall = command = "Patada Explosiva Fuerte"
triggerall = Var(3) = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310)  && (movecontact = 1)


;Patada Sonica Devil
[State -1, Patada Sonica Devil]
type = ChangeState
value = 2100
triggerall = command = "Patada Sonica Devil"
triggerall = Var(3) = 0
trigger1 = statetype!=A && (stateno=[0,40])
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310)  && (movecontact = 1)
trigger12 = (stateno = 2001)  && (time > 16)

;Patada Sonica Fuerte
[State -1, Patada Sonica Fuerte]
type = ChangeState
value = 2150
triggerall = command = "Patada Sonica Fuerte"
triggerall = Var(3) = 0
trigger1 = statetype!=A && (stateno=[0,40])
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310)  && (movecontact = 1)
trigger12 = (stateno = 2001)  && (time > 16)


[State -1, Taco Explosivo Devil]
type = ChangeState
value = 2200
triggerall = command = "Taco Explosivo Devil"
triggerall = Var(3) = 0
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 601) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)
trigger5 = (stateno = 630)  && (movecontact = 1)
trigger6 = (stateno = 640)  && (movecontact = 1)
trigger7 = (stateno = 500) && (movecontact = 1)
trigger8 = (stateno = 501) && (movecontact = 1)
trigger9 = (stateno = 510) && (movecontact = 1)
trigger10 = (stateno = 530)  && (movecontact = 1)
trigger11 = (stateno = 540)  && (movecontact = 1)
trigger12 = (stateno = 2100)  && (time >= 18)
trigger13 = (stateno = 2150)  && (time >= 18)


[State -1, Taco Explosivo Fuerte]
type = ChangeState
value = 2250
triggerall = command = "Taco Explosivo Fuerte"
triggerall = Var(3) = 0
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 601) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)
trigger5 = (stateno = 630)  && (movecontact = 1)
trigger6 = (stateno = 640)  && (movecontact = 1)
trigger7 = (stateno = 500) && (movecontact = 1)
trigger8 = (stateno = 501) && (movecontact = 1)
trigger9 = (stateno = 510) && (movecontact = 1)
trigger10 = (stateno = 530)  && (movecontact = 1)
trigger11 = (stateno = 540)  && (movecontact = 1)
trigger12 = (stateno = 2100)  && (time >= 18)
trigger13 = (stateno = 2150)  && (time >= 18)


;Salto Agarre Devil
[State -1, Salto Agarre Devil]
type = ChangeState
value = 2300
triggerall = command = "Salto Agarre Devil"
triggerall = Var(3) = 0
trigger1 = statetype!=A && (stateno=[0,40])
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310)  && (movecontact = 1)
trigger12 = (stateno = 2001)  && (time > 16)



;Salto Agarre fuerte
[State -1, Salto Agarre fuerte]
type = ChangeState
value = 2350
triggerall = command = "Salto Agarre fuerte"
triggerall = Var(3) = 0
trigger1 = statetype!=A && (stateno=[0,40])
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310)  && (movecontact = 1)
trigger12 = (stateno = 2001)  && (time > 16)








;===================================================================================
;---------------- Comands -------------------------------------------------------
;===================================================================================
;charge ki
[State -1]
type = ChangeState
value = 730
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = (power >= 1000) && (power < 3000)
trigger1 = command = "charge" && time > 10
trigger1 = command = "charge 1"  && time > 10
trigger2 = Stateno = 1100


;Flying Start
[State -1]
type = ChangeState
value = 1110
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = S

;Super Jump
[State -1:      Super Jump]
type            = ChangeState
value      = 60
triggerall      = command = "Super Jump"
trigger1        = (statetype = S) && (ctrl)

;zanzoken
[State -1, zanzoken]
type = ChangeState
value = 900
triggerall = command = "z"
triggerall = (power > 400)
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
trigger20 = stateno = 1100

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

;===================================================================================
;---------------- B疽icos Super 13 ----------------------------------------------------------
;===================================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Taunt
;挑発
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Stand command Kick]
type = ChangeState
value = 11320
triggerall = Var(3)= 1
triggerall = command = "a" && command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 11200) && (movecontact = 1) && (Var(3)= 1)
trigger3 = (stateno = 11201) && (movecontact = 1) && (Var(3)= 1)
trigger4 = (stateno = 11300)  && (movecontact = 1) && (Var(3)= 1)
trigger5 = (stateno = 11230)  && (movecontact = 1) && (Var(3)= 1)
trigger6 = (stateno = 11240)  && (movecontact = 1) && (Var(3)= 1)


;===========================================================================
;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 11400
triggerall = Var(3)= 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 11410
triggerall = Var(3)= 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 11400)  && (movecontact = 1)
trigger3 = (stateno = 11430)  && (movecontact = 1)


;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 11430
triggerall = Var(3)= 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 11400)


;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 11440
triggerall = Var(3)= 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 11400)  && (movecontact = 1)
trigger3 = (stateno = 11430)  && (movecontact = 1)

;===========================================================================
;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 11600
triggerall = Var(3)= 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 11630) && (movecontact = 1)
trigger3 = (stateno = 11320)  && (movecontact = 1)

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 11610
triggerall = Var(3)= 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 11600) && (movecontact = 1)
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 11630) && (movecontact = 1)
trigger5 = (stateno = 11320)  && (movecontact = 1)


;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 11630
triggerall = Var(3)= 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 11600) && (movecontact = 1)
trigger3 = (stateno = 11601) && (movecontact = 1)
trigger4 = (stateno = 11320)  && (movecontact = 1)


;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 11640
triggerall = Var(3)= 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 11600) && (movecontact = 1)
trigger2 = (stateno = 11610) && (movecontact = 1)
trigger3 = (stateno = 11630) && (movecontact = 1)
trigger4 = (stateno = 11320)  && (movecontact = 1)


;===================================================================================
;---------------- B疽icos  Normal ----------------------------------------------------------
;===================================================================================
;Patada Abanico
[State -1, Patada Abanico]
type = ChangeState
value = 310
triggerall = Var(3)= 0
triggerall = command = "a" && command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 240)  && (movecontact = 1)



;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 300) && (movecontact = 1)

;---------------------------------------------------------------------------
;Stand Light Punch - 2nd hit
[State -1, Stand Light Punch, 2nd hit]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 11200) && (movecontact = 1) && (Var(3)= 1)


;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 230) && (movecontact = 1)
trigger5 = (stateno = 11200) && (movecontact = 1) && (Var(3)= 1)
trigger6 = (stateno = 11201) && (movecontact = 1) && (Var(3)= 1)
trigger7 = (stateno = 11230) && (movecontact = 1) && (Var(3)= 1)

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
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 11200) && (movecontact = 1) && (Var(3)= 1)
trigger5 = (stateno = 11201) && (movecontact = 1) && (Var(3)= 1)
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230)  && (movecontact = 1)
trigger6 = (stateno = 11200) && (movecontact = 1) && (Var(3)= 1)
trigger7 = (stateno = 11201) && (movecontact = 1) && (Var(3)= 1)
trigger8 = (stateno = 11210) && (movecontact = 1) && (Var(3)= 1)
trigger9 = (stateno = 11230)  && (movecontact = 1) && (Var(3)= 1)

;---------------------------------------------------------------------------
;Taunt
;挑発
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = Var(3)= 0
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
triggerall = Var(3)= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)  && (movecontact = 1)
trigger3 = (stateno = 430)  && (movecontact = 1)


;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = Var(3)= 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)


;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = Var(3)= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)  && (movecontact = 1)
trigger3 = (stateno = 430)  && (movecontact = 1)


;===========================================================================
;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630) && (movecontact = 1)
trigger3 = (stateno = 310) && (movecontact = 1)
trigger4 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 630) && (movecontact = 1)
trigger5 = (stateno = 310) && (movecontact = 1)

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
trigger2 = (stateno = 600) && (movecontact = 1)
trigger2 = (stateno = 610) && (movecontact = 1)
trigger3 = (stateno = 630) && (movecontact = 1)
trigger4 = (stateno = 310) && (movecontact = 1)
trigger5 = stateno = 1350 ;Air blocking


;===========================================================================
;---------------------------------------------------------------------------
;Fly Light Punch
[State -1, Fly Light Punch]
type = ChangeState
value = 500
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 530) && (movecontact = 1)
trigger3 = stateno = 1350 ;Air blocking
trigger4 = Stateno = 1100

;---------------------------------------------------------------------------
;Fly Strong Punch
[State -1, Fly Strong Punch]
type = ChangeState
value = 510
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 500) && (movecontact = 1)
trigger3 = (stateno = 530) && (movecontact = 1)
trigger4 = stateno = 1350 ;Air blocking
trigger5 = Stateno = 1100
;---------------------------------------------------------------------------
;Fly Light Kick
[State -1, Fly Light Kick]
type = ChangeState
value = 530
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = Stateno = 1100
;---------------------------------------------------------------------------
;Fly Strong Kick
[State -1, Fly Strong Kick]
type = ChangeState
value = 540
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 500) && (movecontact = 1)
trigger3 = (stateno = 510) && (movecontact = 1)
trigger4 = (stateno = 530) && (movecontact = 1)
trigger5 = stateno = 1350 ;Air blocking
trigger6 = Stateno = 1100

;Taunt
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = command = "start"
triggerall = var(3) = 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; con esto la pc activa la IA

[State -2, AI activada por la PC]
type = VarSet
trigger1 = (command = "AI1") ||(Command = "AI2") || (Command = "AI3") || (Command = "AI4") || (Command = "AI5")
trigger2 = (Command = "AI6") || (Command = "AI7") || (Command = "AI8") || (Command = "AI9") || (Command = "AI10")
trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(9) = 1







