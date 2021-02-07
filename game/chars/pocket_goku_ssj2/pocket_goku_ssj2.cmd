;  ARCHIVO DE COMANDO

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

[Command]
name = "AI Prueba"
command = a+b ; con el botón A+B activamos la AI
time = 1

[Command]
name = "AI desactivado"
command = b+c ; Con el boton B+C desactivamos la AI
time = 1

[command]
name = "genkidama"
command = x
time = 15

c = c
[command]
name = "golpe aereo"
command = a
time = 15

s = s


[command]
name = "kame hame ha"
command = z
time = 15


[command]
name = "llama"
command = y
time = 15


;-| Default Values |-------------------------------------------------------
[command]
name = "golpe ^"
command = x
time = 15

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "golpe ->"
command = b
time = 15

command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "golpe <-"
command = a
time = 15

command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

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
name = "charge"
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
;===========================================================================
;---------------------------------------------------------------------------
;ACA SE PONEN LOS ESTADOS -1 (STATES -1) QUE EXPLICO EN EL TUTORIAL PARTE 6
;===========================================================================
;---------------------------------------------------------------------------
; no remover la siguiente linea. es requerida para el CMD normal/comun.

[Statedef -1]

[state -1, verset]
type = varset
trigger1 = command = "AI Prueba"
v = 59
value = 1

;genkidama
[State -1, genkidama]
type = ChangeState
value = 4000
triggerall = command = "genkidama"
trigger1 = power = 3000
trigger1 = (statetype = s) && ctrl

;golpe aereo
[State -1, golpe aereo]
type = ChangeState
value = 240
triggerall = command = "golpe aereo"
trigger1 = (statetype = a) && ctrl

;kame hame ha
[State -1, kame hame ha]
type = ChangeState
value = 2000
triggerall = command = "kame hame ha"
trigger1 = power >= 1000
trigger1 = (statetype = s) && ctrl

;llama
[State -1, llama]
type = ChangeState
value = 210
triggerall = command = "llama"
trigger1 = power > 20
trigger1 = (statetype = s) && ctrl

;golpe ^
[State -1, golpe ^]
type = ChangeState
value = 202
triggerall = command = "golpe ^"
trigger1 = (statetype = s) && ctrl

;golpe ->
[State -1, golpe ->]
type = ChangeState
value = 201
triggerall = command = "golpe ->"
trigger1 = (statetype = s) && ctrl

;golpe <-
[State -1, golpe <-]
type = ChangeState
value = 200
triggerall = command = "golpe <-"
trigger1 = (statetype = s) && ctrl

[State -1]
type = ChangeState
value = 500 ; valor del statedef de el charge en el cns
triggerall = ctrl = 1 ; que sepueda realizar mientas tengas el control del char
trigger1 = command = "charge"
trigger1 = statetype = S ; que se realice en pose de stand


;ESPESIALES
;---------------------------------------------------------------------------

; Correr hacia adelante/dash
[State -1, DASH]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; Correr hacia atras/back dash
[State -1, DASH]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;ATAQUES
;---------------------------------------------------------------------------








