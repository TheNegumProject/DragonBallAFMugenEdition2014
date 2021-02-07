; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)           hold_a
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

[Command]
name = "Ataque de Espada Valiente"
command = D,DB,B,D,DB,B, a+b
time = 30

[Command]
name = "Repukken Valiente"
command = D,DF,F,D,DF,F, x+y
time = 25


[Command]
name = "Ocarina Valiente"
command = D,DB,B,DB,D,DF,F, a+b
time = 30


[Command]
name = "Can Valiente"
command = D,DB,B,D,DB,B, c
time = 25

[Command]
name = "Raging Storm"
command = D,DB,B, D,DB,B, y
time = 25

[Command]
name = "Raging Storm"
command = D,DB,B, D,DB,B, x
time = 25






;-| Special Ki |--------------------------------------------------------


[Command]
name = "Repukken"
command = D,DF, F, c
time = 15

[Command]
name = "canto de la sirena"
command = D,DB, B, c
time = 15

[Command]
name = "espadazo al piso fuerte"
command = B, DB.D, DF, F , y
time = 25

[Command]
name = "espadazo al piso devil"
command = B, DB.D, DF, F , x
time = 25


;-| Special Motions |------------------------------------------------------
[Command]
name = "espadazo moriya"
command = F,D, DF, y
time = 20

[Command]
name = "Espadazo aire"
command = D,DF, F, y
time = 15

[Command]
name = "Espadazo aire devil"
command = D,DF, F, x
time = 15


[Command]
name = "Espadazo 1"
command = D,DB, B, x
time = 15

[Command]
name = "Espadazo 2"
command = D,DB, B, y
time = 25

[Command]
name = "Patada voladora devil"
command = D,DF,F, a
time = 15

[Command]
name = "Patada voladora fuerte"
command = D,DF,F, b
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
command = /y
time = 1

[Command]
name = "charge 1"
command = /b
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
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_b"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_b"
command = /c
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_a"
command = /b
time = 1

[Command]
name = "hold_a"
command = /c
time = 1

[Command]
name = "fly"
command = x+a
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




;---------- Comandos de la Inteligencia Artificial-----------------
;Comandos activadores
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
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 1

[command]
name = "AI2"
command = b,c,b,c,b,c,b,c,b,c,b,c,c,b,c,b,c,b,c,b,c,b,c
time = 1

[command]
name = "AI3"
command = b,c,b,c,b,c,b,c,b,c,b,c,b,c,b,c,b,c,b,c,b
time = 1

[command]
name = "AI4"
command = a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a
time = 1

[command]
name = "AI5"
command = b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b
time = 1

[command]
name = "AI6"
command = b,b,b,b,z,b,z,b,z,z,z,b,b,b,z,b,z,b,z,z,z
time = 1

[command]
name = "AI7"
command = b,x,b,b,x,b,b,b,b,b,x,x,b,b,x,b,b,b,b,b,x
time = 1

[command]
name = "AI8"
command = x,y,b,b,b,y,b,b,b,b,y,b,y,b,b,b,y,b,b,b,b,y
time = 1

[command]
name = "AI9"
command = a,b,b,b,s,z,y,x,c,b,a,b,b,b,b,s,z,y,x,c,b,a
time = 1

[command]
name = "AI10"
command = z,b,x,y,b,b,c,b,b,b,a,z,b,x,y,b,b,c,b,b,b,a
time = 1

[command]
name = "AI11"
command = c,x,b,b,x,b,b,b,b,b,z,c,x,b,b,x,b,b,b,b,b,z
time = 1

[command]
name = "AI12"
command = x,y,b,s,b,y,b,b,b,b,y,y,b,s,b,y,b,b,b,b,y
time = 1

[command]
name = "AI13"
command = y,b,b,z,s,z,y,x,c,b,a,b,b,b,z,s,z,y,x,c,b,a
time = 1

[command]
name = "AI14"
command = z,b,x,y,b,b,c,b,b,c,a,z,b,x,y,b,b,c,b,b,c,a
time = 1







;===========================================================================
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

;===================================================================================
;---------------- Supers -----------------------------------------------------------
;===================================================================================

;Ataque de Espada Valiente
[State -1, Desesperadito]
type = ChangeState
value = 3400
triggerall = command = "Ataque de Espada Valiente"
triggerall = power >= 3000
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 431)  && (movecontact = 1)
trigger11 = (stateno = 310) && (movecontact = 1)
trigger12 = (stateno = 1200) && (movecontact = 1)
trigger13 = (stateno = 1210) && (movecontact = 1)
trigger14 = (stateno = 1220) && (movecontact = 1)
trigger15 = (stateno = 1230) && (movecontact = 1)


;Ocarina Valiente
[State -1, Ocarina Valiente]
type = ChangeState
value = 3500
triggerall = command = "Ocarina Valiente"
triggerall = power >= 2000
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 431)  && (movecontact = 1)
trigger11 = (stateno = 310) && (movecontact = 1)
trigger12 = (stateno = 1200) && (movecontact = 1)
trigger13 = (stateno = 1210) && (movecontact = 1)
trigger14 = (stateno = 1220) && (movecontact = 1)
trigger15 = (stateno = 1230) && (movecontact = 1)

;Can Valiente
[State -1, Great Ball]
type = ChangeState
value = 3000
triggerall = command = "Can Valiente"
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 431)  && (movecontact = 1)
trigger11 = (stateno = 310) && (movecontact = 1)
trigger12 = (stateno = 1200) && (movecontact = 1)
trigger13 = (stateno = 1210) && (movecontact = 1)
trigger14 = (stateno = 1220) && (movecontact = 1)
trigger15 = (stateno = 1230) && (movecontact = 1)
trigger16 =(stateno = 1100)



[State -1, Desesperadito]
type = ChangeState
value = 3200
triggerall = command = "Repukken Valiente"
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 431)  && (movecontact = 1)
trigger11 = (stateno = 310) && (movecontact = 1)
trigger12 = (stateno = 1200) && (movecontact = 1)
trigger13 = (stateno = 1210) && (movecontact = 1)
trigger14 = (stateno = 1220) && (movecontact = 1)
trigger15 = (stateno = 1230) && (movecontact = 1)

[State -1, Desesperadito]
type = ChangeState
value = 3100
triggerall = command = "Repukken Valiente"
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 431)  && (movecontact = 1)
trigger11 = (stateno = 310) && (movecontact = 1)
trigger12 = (stateno = 1200) && (movecontact = 1)
trigger13 = (stateno = 1210) && (movecontact = 1)
trigger14 = (stateno = 1220) && (movecontact = 1)
trigger15 = (stateno = 1230) && (movecontact = 1)

;Raging Stormfuerte
[State -1, Head Uppercut]
type = ChangeState
value = 3300
triggerall = command = "Raging Storm"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)
trigger13 = (stateno = 1200) && (movecontact = 1)
trigger14 = (stateno = 1210) && (movecontact = 1)
trigger15 = (stateno = 1220) && (movecontact = 1)
trigger16 = (stateno = 1230) && (movecontact = 1)
trigger17 = (stateno = 320) && (movecontact = 1)

;Raging Storm aire
[State -1, Head Uppercut]
type = ChangeState
value = 3301
triggerall = command = "Raging Storm"
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)
trigger13 = (stateno = 1200) && (movecontact = 1)
trigger14 = (stateno = 1210) && (movecontact = 1)
trigger15 = (stateno = 1220) && (movecontact = 1)
trigger16 = (stateno = 1230) && (movecontact = 1)
trigger17 = (stateno = 320) && (movecontact = 1)
trigger18 = Stateno = 1100




;===================================================================================
;---------------- Specials Ki -----------------------------------------------------------
;===================================================================================


;canto de la sirena
[State -1, RR Shield]
type = ChangeState
value = 2000
trigger1 = ctrl = 1
trigger1 = command = "canto de la sirena"
trigger1 = statetype = S
triggerall = power >= 300

;Fire Balls - en el aire
[State -1, Fire Balls - en el aire]
type = ChangeState
value = 2200
triggerall = power >= 50
triggerall = command = "Fire Balls"
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = Stateno = 1100
trigger3 = (stateno = 600) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 300) && (movecontact = 1)
trigger8 = (stateno = 500) && (movecontact = 1)
trigger9 = (stateno = 510) && (movecontact = 1)
trigger10 = (stateno = 530) && (movecontact = 1)
trigger11 = (stateno = 540) && (movecontact = 1)
trigger12 = stateno = 1350 ;Air blocking

;Repukken
[State -1, Multi Balls]
type = ChangeState
value = 1700
triggerall = command = "Repukken"
triggerall = power >= 150
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)
trigger13 = (stateno = 320) && (movecontact = 1)





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
;---------------------------------------------------------------------------

;RR Shield
[State -1, RR Shield]
type = ChangeState
value = 777
triggerall = power >= 500
trigger1 = ctrl = 1
trigger1 = command = "hold_x" && time > 5
trigger1 = command = "hold_y" && time > 5
trigger1 = statetype = S






;espadazo moriya
[State -1, Head Uppercut]
type = ChangeState
value = 1600
triggerall = command = "espadazo moriya"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)
trigger13 = (stateno = 1200) && (movecontact = 1)
trigger14 = (stateno = 1210) && (movecontact = 1)
trigger15 = (stateno = 1220) && (movecontact = 1)
trigger16 = (stateno = 1230) && (movecontact = 1)
trigger17 = (stateno = 320) && (movecontact = 1)


;espadazo al piso fuerte
[State -1, Head Uppercut]
type = ChangeState
value = 1800
triggerall = command = "espadazo al piso fuerte"
triggerall = power >= 300
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)
trigger13 = (stateno = 1200) && (movecontact = 1)
trigger14 = (stateno = 1210) && (movecontact = 1)
trigger15 = (stateno = 1220) && (movecontact = 1)
trigger16 = (stateno = 1230) && (movecontact = 1)
trigger17 = (stateno = 320) && (movecontact = 1)

;espadazo al piso devil
[State -1, Head Uppercut]
type = ChangeState
value = 1900
triggerall = command = "espadazo al piso devil"
triggerall = power >= 150
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)
trigger13 = (stateno = 1200) && (movecontact = 1)
trigger14 = (stateno = 1210) && (movecontact = 1)
trigger15 = (stateno = 1220) && (movecontact = 1)
trigger16 = (stateno = 1230) && (movecontact = 1)
trigger17 = (stateno = 320) && (movecontact = 1)


;Espadazo aire
[State -1, Espadazo aire]
type = ChangeState
value = 2100
triggerall = power >= 50
triggerall = command = "Espadazo aire"
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = Stateno = 1100
trigger3 = (stateno = 600) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 300) && (movecontact = 1)
trigger8 = (stateno = 500) && (movecontact = 1)
trigger9 = (stateno = 510) && (movecontact = 1)
trigger10 = (stateno = 530) && (movecontact = 1)
trigger11 = (stateno = 540) && (movecontact = 1)
trigger12 = stateno = 1350 ;Air blocking

;Espadazo aire
[State -1, Espadazo aire]
type = ChangeState
value = 2150
triggerall = power >= 50
triggerall = command = "Espadazo aire devil"
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = Stateno = 1100
trigger3 = (stateno = 600) && (movecontact = 1)
trigger4 = (stateno = 610) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 640) && (movecontact = 1)
trigger7 = (stateno = 300) && (movecontact = 1)
trigger8 = (stateno = 500) && (movecontact = 1)
trigger9 = (stateno = 510) && (movecontact = 1)
trigger10 = (stateno = 530) && (movecontact = 1)
trigger11 = (stateno = 540) && (movecontact = 1)



;espada 2
[State -1, Head Uppercut]
type = ChangeState
value = 1500
triggerall = command = "Espadazo 2"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)
trigger13 = (stateno = 1200) && (movecontact = 1)
trigger14 = (stateno = 1210) && (movecontact = 1)
trigger15 = (stateno = 1220) && (movecontact = 1)
trigger16 = (stateno = 1230) && (movecontact = 1)
trigger17 = (stateno = 320) && (movecontact = 1)


;espada 1
[State -1, Escupe Diente]
type = ChangeState
value = 1400
triggerall = command = "Espadazo 1"
triggerall = numhelper(1450) = 0
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)
trigger13 = (stateno = 320) && (movecontact = 1)



[State -1, codaso devil]
type = ChangeState
value = 1370
triggerall = command = "Patada voladora fuerte"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 431)  && (movecontact = 1)
trigger11 = (stateno = 440)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)
trigger13 = (stateno = 320) && (movecontact = 1)
trigger14 = (stateno = 320) && (movecontact = 1)

[State -1, codaso devil]
type = ChangeState
value = 1300
triggerall = command = "Patada voladora devil"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 430)  && (movecontact = 1)
trigger10 = (stateno = 431)  && (movecontact = 1)
trigger11 = (stateno = 440)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)
trigger13 = (stateno = 320) && (movecontact = 1)
trigger14 = (stateno = 320) && (movecontact = 1)




;===================================================================================
;---------------- Comands -------------------------------------------------------
;===================================================================================
;charge ki
[State -1]
type = ChangeState
value = 700
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = (power < 3000)
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger2 = Stateno = 1100


;Flying Start
[State -1]
type = ChangeState
value = 1110
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = A

;Flying Start
[State -1]
type = ChangeState
value = 1110
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = s

;Super Jump
[State -1:      Super Jump]
type            = ChangeState
value      = 60
triggerall      = command = "Super Jump"
trigger1        = (statetype = S) && (ctrl)

;Zanzouken
[State -1: 		Zanzouken]
type 	= ChangeState
value 	= 1090
triggerall = (Command = "z")
triggerall = (power > 200)
triggerall = alive = 1
trigger1 = ctrl = 1
trigger2 = stateno = 990 || stateno = 991 || stateno = 992 || stateno = 994 || stateno = 995
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
trigger20 = (stateno = 200) && (movecontact = 1)
trigger21 = (stateno = 201) && (movecontact = 1)
trigger22 = (stateno = 210) && (movecontact = 1)
trigger23 = (stateno = 220) && (movecontact = 1)
trigger24 = (stateno = 230)  && (movecontact = 1)
trigger25 = (stateno = 400)  && (movecontact = 1)
trigger26 = (stateno = 410)  && (movecontact = 1)
trigger27 = (stateno = 420)  && (movecontact = 1)
trigger28 = (stateno = 430)  && (movecontact = 1)
trigger29 = (stateno = 440) && (movecontact = 1)
trigger30 = (stateno = 1200) && (time >= 16)
trigger31 = (stateno = 1250) && (time >= 16)

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Fwd en el aire
[State -1: 		Run Fwd]
type 			= ChangeState
value 		        = 107
triggerall 		= (Command = "FF")
trigger1		= (StateType = A) && (Ctrl)

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;Run Back en el aire
[State -1: 		Run Back]
type 			= ChangeState
value 		        = 108
triggerall 		= (Command = "BB")
trigger1		= (StateType = A) && (Ctrl)

;===================================================================================
;---------------- Corriendo --------------------------------------------------------
;===================================================================================
;Runing knee
[State -1, Runing knee]
type = ChangeState
value = 300
triggerall = stateno = 100
triggerall = command = "a" || command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;Runing Headshake
[State -1, Headshake]
type = ChangeState
value = 310
triggerall = stateno = 100
triggerall = command = "x" || command = "y"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl



;===================================================================================
;---------------- B疽icos ----------------------------------------------------------
;===================================================================================
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
trigger2 = (stateno = 310) && (movecontact = 1)

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
trigger5 = (stateno = 241) && (movecontact = 1)
trigger6 = (stateno = 310) && (movecontact = 1)

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
trigger2 = (stateno = 241) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 310) && (movecontact = 1)

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
trigger5 = (stateno = 400)  && (movecontact = 1)
trigger6 = (stateno = 410)  && (movecontact = 1)
trigger7 = (stateno = 430)  && (movecontact = 1)
trigger8 = (stateno = 431)  && (movecontact = 1)
trigger9 = (stateno = 440)  && (movecontact = 1)
trigger10 = (stateno = 310) && (movecontact = 1)

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430)  && (movecontact = 1)
trigger3 = (stateno = 431)  && (movecontact = 1)

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
trigger2 = (stateno = 400)  && (movecontact = 1)
trigger3 = (stateno = 430)  && (movecontact = 1)
trigger4 = (stateno = 431)  && (movecontact = 1)

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
trigger2 = (stateno = 400)


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
trigger2 = (stateno = 400)  && (movecontact = 1)
trigger3 = (stateno = 431)  && (movecontact = 1)


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
trigger3 = (stateno = 300) && (movecontact = 1)

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 630) && (movecontact = 1)
trigger4 = (stateno = 300) && (movecontact = 1)

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 300) && (movecontact = 1)
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
trigger4 = (stateno = 300) && (movecontact = 1)

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
trigger3 = Stateno = 1100

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
trigger4 = Stateno = 1100
;---------------------------------------------------------------------------
;Fly Light Kick
[State -1, Fly Light Kick]
type = ChangeState
value = 530
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 1100
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
trigger5 = Stateno = 1100
