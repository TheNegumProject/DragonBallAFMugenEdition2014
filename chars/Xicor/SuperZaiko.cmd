;-------------------------------------------------------------------------
;----------------------|PROGRAMADO EN JUTIAPA (GUATEMALA)|----------------
;----------------------------|PROGRAMADO POR: b-gg19|---------------------
;--------------------------|e-mail: b-gg19@hotmail.com|-------------------

;-----------------------------|Sheet: amoralesdbaf|-----------------------

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;-| Comandos para Activar la AI |-----------------------------------------------------

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

;-| Supers e Hypers |-----------------------------------------------------

[Command]
name = "Bola Azul"
command = ~D, DB, B, F, a
time = 30

[Command]
name = "Bola Roja"
command = ~D, DB, B, F, b
time = 30

[Command]
name = "Combo Bolas"
command = ~D, DB, B, F, c
time = 30

[Command]
name = "Combo FireBalls"
command = ~D, DB, B, F, x
time = 30

[Command]
name = "Kame (50x)"
command = ~D, DB, B, F, y
time = 30

[Command]
name = "Kame (100x)"
command = ~D, DB, B, F, z
time = 30

[Command]
name = "Rafaga Ki"
command = ~D, DF, F, a
time = 20

[Command]
name = "Combo"
command = ~D, DF, F, b
time = 30

[Command]
name = "fire-ball"
command = ~c
time = 20

[Command]
name = "Teletransporte"
command = ~z
time = 20

;-| Dobles |-----------------------------------------------------------

[Command]
name = "FF"     ;Requerido (NO QUITAR)
command = F, F
time = 10

[Command]
name = "BB"     ;Requerido (NO QUITAR)
command = B, B
time = 10

;-| Combinados y Simples |-----------------------------------------------

[Command]
name = "recovery";Requerido (NO QUITAR)
command = x+y
time = 1

[Command]
name = "Super Jump"
command = ~D, U
time = 10

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
name = "holdfwd";Requerido (NO QUITAR)
command = /$F
time = 1

[Command]
name = "holdback";Requerido (NO QUITAR)
command = /$B
time = 1

[Command]
name = "holdup" ;Requerido (NO QUITAR)
command = /$U
time = 1

[Command]
name = "holddown";Requerido (NO QUITAR)
command = /$D
time = 1

[Command]
name = "charge"
command = /x
time = 1

[Command]
name = "charge 1"
command = /a
time = 1

;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------
;Correr Adelante
[State -1, Run Fwd]
type = ChangeState
value = 260
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Correr Atras
[State -1, Run Back]
type = ChangeState
value = 300
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air Dash Adelante
[State -1,Air Dash Adelante]
type = ChangeState
value = 3232
triggerall = command = "FF"
trigger1 = StateType = A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Air Dash Atras
[State -1,Air Dash Atras]
type = ChangeState
value = 1919
triggerall = command = "BB"
trigger1 = StateType = A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;teletransporte
[State -1, TELETRANSPORTE]
type = ChangeState
value = 830
triggerall =(command = "Teletransporte")
trigger1 = power > 500
trigger1 = ctrl

;---------------------------------------------------------------------------
;Fire Ball
[State -1]
type = ChangeState
value = 900
triggerall = power > 500
triggerall = command = "fire-ball"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Rafaga Ki
[State -1]
type = ChangeState
value = 833
triggerall = power > 500
triggerall = command = "Rafaga Ki"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Combo FireBalls
[State -1]
type = ChangeState
value = 800
triggerall = power > 4500
triggerall = command = "Combo FireBalls"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Bola Azul
[State -1]
type = ChangeState
value = 823
triggerall = power > 2000
triggerall = command = "Bola Azul"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Bola Roja
[State -1]
type = ChangeState
value = 827
triggerall = power > 4000
triggerall = command = "Bola Roja"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Combo Bolas
[State -1]
type = ChangeState
value = 818
triggerall = power > 4500
triggerall = command = "Combo Bolas"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Kame (50x)
[State -1]
type = ChangeState
value = 828
triggerall = power > 3000
triggerall = command = "Kame (50x)"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Kame (100x)
[State -1]
type = ChangeState
value = 824
triggerall = power = 5000
triggerall = Life <= 299
triggerall = command = "Kame (100x)"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Combo
[State -1, Combo]
type = ChangeState
value = 836
triggerall = power > 3000
triggerall = command = "Combo"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Puño Devil combinado puño Fuerte
[State -1, Puño Devil combinado puño Fuerte]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

;Gancho combinado puño Fuerte
[State -1, Gancho combinado puño Fuerte]
type = ChangeState
value = 210
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl

;Patada Devil
[State -1, Patada Devil]
type = ChangeState
value = 202
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

;Patada Fuerte
[State -1, Patada Fuerte]
type = ChangeState
value = 203
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Agachado Puño Fuerte
[State -1, Agachado Puño Fuerte]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Agachado Puño Medio 2
[State -1, Agachado Puño Medio]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Agachado Gancho Fuerte 2
[State -1, Agachado Gancho]
type = ChangeState
value = 440
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Agachado Patada Fuerte
[State -1, Patada Fuerte]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Agachado Patada Devil
[State -1, Agachado Patada Devil]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Saltando Puño Fuerte 1
[State -1, Saltando Puño Fuerte 1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;Saltando Patada Fuerte 1
[State -1, Saltando Patada Fuerte 1]
type = ChangeState
value = 601
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;Saltando Puño Fuerte 2
[State -1, Saltando Puño Fuerte 2]
type = ChangeState
value = 600
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;Saltando Patada Fuerte 2
[State -1, Saltando Patada Fuerte 2]
type = ChangeState
value = 601
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Saltando Puño Fuerte 3
[State -1, Saltando Puño Fuerte 3]
type = ChangeState
value = 600
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Cargar Ki
[State -1]
type = ChangeState
value = 730
triggerall = ctrl = 1
triggerall = power < 5000
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S

[State -1, PowerAdd]
type = PowerAdd
trigger1 = time%2
value = 2

;---------------------------------------------------------------------------
;Super K.O
[State -1, Helper]
type = Helper
trigger1 = (WinKO) && (NumHelper(913) = 0)
helpertype = Normal
name = "Super K.O"
id = 913
stateno = 913
postype = p1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;---------------------------------------------------------------------------
;Super Jump
[State -1: Super Jump]
type = ChangeState
value = 60
triggerall = command = "Super Jump"
trigger1 = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;Para que la PC active la AI
[State -2, Para que la PC active la AI]
type = VarSet
trigger1  = command = "AI1"
trigger2  = command = "AI2"
trigger3  = command = "AI3"
trigger4  = command = "AI4"
trigger5  = command = "AI5"
trigger6  = command = "AI6"
trigger7  = command = "AI7"
trigger8  = command = "AI8"
trigger9  = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
var(9)    = 1

