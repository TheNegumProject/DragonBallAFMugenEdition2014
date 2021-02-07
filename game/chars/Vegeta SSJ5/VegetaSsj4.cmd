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
; Default value for the "time" parameter of a command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;=================[Level 4]=====================================================
;[command]
;name = "Big-Bang-Kame-Hame-Ha"
;command = D,DF,F,b+c
;time = 30
;=================[Level 3]=====================================================
[command]
name = "Ultimate-Big-Bang"
command = D,DF,F,D,DB,B,x+y
time = 35
[command]
name = "Final-Shine"
command = D,DB,B,D,DF,F,a+b
time = 30
;=================[Level 2]=====================================================
[command]
name = "Super-Explosive-Wave-1"
command = D,DB,B,D,DB,B,a
time = 30
[command]
name = "Super-Explosive-Wave-2"
command = D,DB,B,D,DB,B,b
time = 30
;=================[Level 1]=====================================================
[command]
name = "Final-Flash"
command = D,DB,B,F,c
time = 30
[command]
name = "Meteor-Explosion"
command = D,DF,F,B,c
time = 30
;=================[Specials]============================================
[command]
name = "Nova-Explod"
command = D,DF,F,c
time = 20
[command]
name = "Saiyan-Blast"
command = D,DB,B,c
time = 20
[command]
name = "Ki-Geyser-1"
command = D,DB,B,a
time = 20
[command]
name = "Ki-Geyser-2"
command = D,DB,B,b
time = 20
[command]
name = "EX-Ki-Geyser"
command = D,DB,B,a+b
time = 20
[command]
name = "Kienzan-1"
command = D,DF,F,x
time = 20
[command]
name = "Kienzan-2"
command = D,DF,F,y
time = 20
[command]
name = "EX-Kienzan"
command = D,DF,F,x+y
time = 20
[command]
name = "EX-Dash-Jishin-Ha"
command = F,D,F,x+y ;~25$B, F,x+y
time = 20
[command]
name = "Dash-Jishin-Ha-1"
command = F,D,F,x;~25$B, F,x
time = 20
[command]
name = "Dash-Jishin-Ha-2"
command = F,D,F,y;~25$B, F,y
time = 20
[command]
name = "EX-Smash-Elbow"
command = D,DB,B,x+y
[command]
name = "Smash-Elbow-1"
command = D,DB,B,x
[command]
name = "Smash-Elbow-2"
command = D,DB,B,y
[command]
name = "Smash-Elbow-3"
command = D,DB,B,a
[command]
name = "Smash-Elbow-4"
command = D,DB,B,b
[command]
name = "EX-Smash-Knee"
command = F,D,F,a+b
time = 20
[command]
name = "Smash-Knee-1"
command = F,D,F,a
time = 20
[command]
name = "Smash-Knee-2"
command = F,D,F,b
time = 20
[command]
name = "Dash-Kick-1"
command = D,DF,F,a
time = 20
[command]
name = "Dash-Kick-2"
command = D,DF,F,b
time = 20
[command]
name = "EX-Dash-Kick"
command = D,DF,F,a+b
time = 20
;==================[Comandos]============================================
[command]
name = "Super Jump"
command = ~D, U
time = 10

;-| Double Tap |-----------------------------------------------------------
[command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[command]
name = "Launcher-1"
command = x+y
time = 1
[command]
name = "Launcher-2"
command = a+b
time = 1
[command]
name = "Zero-Counter"
command = b+y
time = 1
[command]
name = "USSJ"
command = c+z
time = 1
[command]
name = "charge"
command = /b
time = 1

[command]
name = "charge 1"
command = /y
time = 1

[command]
name = "hold_a"
command = /a
time = 1

[command]
name = "hold_b"
command = /b
time = 1

[command]
name = "hold_c"
command = /c
time = 1

[command]
name = "hold_x"
command = /x
time = 1

[command]
name = "hold_y"
command = /y
time = 1

[command]
name = "fly"
command = a+x
time = 1

[command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[command]
name = "holda"
command = /a
time = 1

[command]
name = "holdb"
command = /b
time = 1

[command]
name = "FF"
command = F, F
time = 15

[command]
name = "BB"
command = B, B
time = 15

[command]
name = "UU"
command = U, U
time = 15

[command]
name = "DD"
command = D, D
time = 15



;-| Dir + Button |---------------------------------------------------------
[command]
name = "down_a"
command = /$D,a
time = 1

[command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[command]
name = "a"
command = a
time = 1

[command]
name = "b"
command = b
time = 1

[command]
name = "c"
command = c
time = 1

[command]
name = "x"
command = x
time = 1

[command]
name = "y"
command = y
time = 1

[command]
name = "z"
command = z
time = 1

[command]
name = "start"
command = s
time = 1

[command]
name = "forward"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name = "down"
command = D
time = 1
;-| Hold Dir |--------------------------------------------------------------
[command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[command]
name = "holddf";Required (do not remove)
command = /$DF
time = 1

[command]
name = "holddb";Required (do not remove)
command = /$DB
time = 1

[command]
name = "holdub";Required (do not remove)
command = /$UB
time = 1

[command]
name = "holduf";Required (do not remove)
command = /$UF
time = 1

[command]
name = "holda";Required (do not remove)
command = /a
time = 1

[command]
name = "holdb";Required (do not remove)
command = /b
time = 1

[command]
name = "holdc";Required (do not remove)
command = /c
time = 1

[command]
name = "holdx";Required (do not remove)
command = /x
time = 1

[command]
name = "holdy";Required (do not remove)
command = /y
time = 1

[command]
name = "holdz";Required (do not remove)
command = /z
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

[Statedef -1]
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

;Ultimate-Big-Bang
[State -1,Ultimate-Big-Bang]
type = ChangeState
value = 3400
triggerall = power >= 3000
triggerall = command = "Ultimate-Big-Bang"
triggerall = roundstate = 2
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;Final-Shine
[State -1,Final-Shine]
type = ChangeState
value = 3300
triggerall = power >= 3000
triggerall = command = "Final-Shine"
triggerall = roundstate = 2
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;Final-Flash
[State -1,Final-Flash]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "Final-Flash"
triggerall = roundstate = 2
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;Super-Explosive-Wave-1-2
[State -1,"Super-Explosive-Wave-1-2"]
type = ChangeState
value = 3200
triggerall = power >= 2000
triggerall = command = "Super-Explosive-Wave-1" || command = "Super-Explosive-Wave-2"
triggerall = roundstate = 2
triggerall = command != "holddown"
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact

;Meteor-Explosion
[State -1,Meteor-Explosion]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = command = "Meteor-Explosion"
triggerall = roundstate = 2
;triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 630) && movecontact
trigger3 = (stateno = 640 || stateno = 1300 || stateno = 2060) && movecontact
trigger4 = (stateno = 1205) && movecontact

;-------------------------------------------------------------------------------
[State -1, SSJ2-Off]
type = ChangeState
triggerall = var(56)=1
trigger1 = command = "USSJ"
trigger1 = statetype = S && ctrl
value = 4002
ctrl = 0
;-------------------------------------------------------------------------------
[State -1, SSJ2-On]
type = ChangeState
triggerall = var(56)=0 && power >= 2000
trigger1 = command = "USSJ"
trigger1 = statetype = S && ctrl
value = 4000
ctrl = 0

;===================================================================================
;---------------- Specials Ki -----------------------------------------------------------
;===================================================================================
;Nova-Explod
[State -1, Nova-Explod]
type = ChangeState
value = 2100
triggerall = numhelper(2130) = 0
triggerall = power >= 250
triggerall = command = "Nova-Explod"
;triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610) && movecontact
trigger3 = (stateno = 630 || stateno = 640) && movecontact
trigger4 = (stateno = 1205 || stateno = 1300) && movecontact

;EX-Dash-Jishin-Ha
[State -1, EX-Dash-Jishin-Ha]
type = ChangeState
value = 1490
triggerall = power >= 500
triggerall = command = "EX-Dash-Jishin-Ha"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;Jishin-Ha-1
[State -1, Jishin-Ha-1]
type = ChangeState
value = 1400
triggerall = command = "Dash-Jishin-Ha-1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;Jishin-Ha-2
[State -1, Jishin-Ha-2]
type = ChangeState
value = 1450
triggerall = command = "Dash-Jishin-Ha-2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;EX-Kienzan
[State -1, EX-Kienzan]
type = ChangeState
value = 2290
triggerall = numhelper(2295) = 0
triggerall = power >= 500
triggerall = command = "EX-Kienzan"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;Kienzan-1-2
[State -1, Kienzan-1-2]
type = ChangeState
value = 2200
triggerall = numhelper(2240) = 0
triggerall = power >= 250
triggerall = command = "Kienzan-1" || command = "Kienzan-2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;EX-Ki-Geyser
[State -1, EX-Ki-Geyser]
type = ChangeState
value = 2390
triggerall = power >= 500
triggerall = command = "EX-Ki-Geyser"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger6 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

; Ki-Geyser-1
[State -1, Ki-Geyser-1]
type = ChangeState
value = 2300
triggerall = power >= 250
triggerall = command = "Ki-Geyser-1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1202 || stateno = 1204) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

; Ki-Geyser-2
[State -1, Ki-Geyser-2]
type = ChangeState
value = 2350
triggerall = power >= 250
triggerall = command = "Ki-Geyser-2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

; Saiyan-Blast
[State -1, Saiyan-Blast]
type = ChangeState
value = 2400
triggerall = power >= 500
triggerall = command =  "Saiyan-Blast"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;Fire Balls
[State -1, Fire Balls]
type = ChangeState
value = 2050
triggerall = power >= 150
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 600 || stateno = 610) && movecontact
trigger3 = (stateno = 630 || stateno = 640) && movecontact

;Fire Balls
[State -1, Fire Balls]
type = ChangeState
value = 2000
triggerall = power >= 150
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact

;EX-Smash-Elbow
[State -1, EX-Smash-Elbow]
type = ChangeState
value = 1290
triggerall = power >= 500
triggerall = command = "EX-Smash-Elbow"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger6 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;Smash-Elbow-1
[State -1, Smash-Elbow-1]
type = ChangeState
value = 1200
triggerall = command = "Smash-Elbow-1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger6 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;Smash-Elbow-2
[State -1, Smash-Elbow-2]
type = ChangeState
value = 1250
triggerall = command = "Smash-Elbow-2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger6 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;EX-Smash-Knee
[State -1, EX-Smash-Knee]
type = ChangeState
value = 1390
triggerall = power >= 500
triggerall = command = "EX-Smash-Knee"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;Smash-Knee-1
[State -1, Smash-Knee-1]
type = ChangeState
value = 1300
triggerall = command = "Smash-Knee-1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;Smash-Knee-2
[State -1, Smash-Knee-2]
type = ChangeState
value = 1350
triggerall = command = "Smash-Knee-2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger7 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger8 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger9 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;EX-Dash-Kick
[State -1, EX-Dash-Kick]
type = ChangeState
value = 1590
triggerall = command = "EX-Dash-Kick"
triggerall = command != "holddown"
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = (stateno = 1205 || stateno = 1300) && movecontact
trigger7 = (stateno = 600 || stateno = 610) && movecontact
trigger8 = (stateno = 630 || stateno = 640) && movecontact
trigger9 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger10 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger11 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger12 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1

;Dash-Kick-1
[State -1, Dash-Kick-1]
type = ChangeState
value = 1500
triggerall = command = "Dash-Kick-1"
triggerall = command != "holddown"
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = (stateno = 1205 || stateno = 1300) && movecontact
trigger7 = (stateno = 600 || stateno = 610) && movecontact
trigger8 = (stateno = 630 || stateno = 640) && movecontact
trigger9 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger10 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger11 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger12 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1


;Dash-Kick-2
[State -1, Dash-Kick-2]
type = ChangeState
value = 1550
triggerall = command = "Dash-Kick-2"
triggerall = command != "holddown"
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = (stateno = 1201 || stateno = 1202 || stateno = 1204) && movecontact
trigger6 = (stateno = 1205 || stateno = 1300) && movecontact
trigger7 = (stateno = 600 || stateno = 610) && movecontact
trigger8 = (stateno = 630 || stateno = 640) && movecontact
trigger9 = ((prevstateno = [1200,1201]) && movecontact) && var(56)=1
trigger10 = ((prevstateno = [1250,1290]) && movecontact) && var(56)=1
trigger11 = ((prevstateno = [1400,1459]) && movecontact) && var(56)=1
trigger12 = ((prevstateno = [1490,1492]) && movecontact) && var(56)=1


;==================================================================================
;---------------- Comands -------------------------------------------------------
;===================================================================================
;Ki Charge
[State -1,Ki Charge]
type 			= ChangeState
value 		= 730
triggerall = var(56)=0
triggerall = (power < 3000) || power > 3000
trigger1 = command = "charge" && time > 5
trigger1 = command = "charge 1" && time > 5
trigger1 = (StateType = S) && (Ctrl)
;-------------------------------------------------------------------------------
;Launcher-1
[State -1, Launcher-1]
type = ChangeState
value = 500
triggerall = command = "Launcher-1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist X > 5
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
;---------------------------------------------------------------------------
; Shoulder Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "Launcher-1") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H

;---------------------------------------------------------------------------
; Shoulder Throw 2
[State -1, Throw 2]
type = ChangeState
value = 850
triggerall = (command = "Launcher-2") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H

;-------------------------------------------------------------------------------
;Super Jump
[State -1,Super Jump]
type = ChangeState
value = 60
triggerall = command = "Super Jump"
trigger1 = (statetype = S) && (ctrl)
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
; Air Dash Forward
[State -1, Air Dash Forward]
type = ChangeState
value = 102
trigger1 = command = "FF"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; Air Dash Back
[State -1, Air Dash Back]
type = ChangeState
value = 107
trigger1 = command = "BB"
trigger1 =statetype = A && ctrl

;---------------------------------------------------------------------------
; Air Dash Up
[State -1, Air Dash Up]
type = ChangeState
value = 110
trigger1 = command = "UU"
trigger1 =statetype = A && ctrl


;===================================================================================
;---------------- Corriendo --------------------------------------------------------
;===================================================================================
;Patada al correr
[State -1, Patada al correr]
type = ChangeState
value = 1205
triggerall = command = "a" || command = "b"
triggerall = stateno = 100
trigger1 = statetype != A
trigger1 = ctrl = 1

;Codazo al correr
[State -1, Codazo al correr]
type = ChangeState
value = 1201
triggerall = command = "x" || command = "y"
triggerall = stateno = 100
trigger1 = statetype != A
trigger1 = ctrl = 1

;-------------------------------------------------------------------------------
;Launcher-1
[State -1, Launcher-1]
type = ChangeState
value = 720
triggerall = command = "fly"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact

[State -1, Zero-Counter]
type = ChangeState
triggerall = command = "z" && power >=1000
trigger1 = stateno = [150,155]
value = 740
ctrl = 0
;ignorehitpause = 
;persistent = 

;---------------------------------------------------------------------------
[State -1, Zanzouken]
type = ChangeState
triggerall = command = "z" && power >=250 && var(56)=0
trigger1 = ctrl &&  stateno !=[711,712]
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = stateno = [130,155]
trigger6 = stateno = 500
trigger7 = stateno = 700
value = ifelse(statetype = A,709,710)
ctrl = 0

[State -1, Zanzouken]
type = ChangeState
triggerall = command = "z" && power >=250 && var(56)=1
trigger1 = ctrl &&  stateno !=[717,718]
trigger2 = (stateno = 200 || stateno = 210 || stateno = 215) && movecontact
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger5 = stateno = [130,155]
trigger6 = stateno = 500
trigger7 = stateno = 700
value = 714
ctrl = 0

[State -1, Parry]
type = HitOverride
triggerall = statetype = S
triggerall = command = "forward" && command != "down" && command != "up" && command != "back" 
trigger1 = ctrl || stateno = 700
attr = SCA,AP,AA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 700
time = ifelse(var(56)=1,12,6)
forceair = 0
;ignorehitpause = 
;persistent = 

;===================================================================================
;---------------- B疽icos ----------------------------------------------------------
;===================================================================================
;---------------------------------------------------------------------------
;200-Punch Light-Stand
[State -1, 200-Codo-Stand]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 9
trigger3 = (stateno = 200 && movecontact) && var(56)=1
trigger4 = stateno = 711
;-------------------------------------------------------------------------------
;215-Punch Medium-Stand
[State -1, 210-Gancho-Stand]
type = ChangeState
value = 215
triggerall = command = "y" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 235) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
trigger5 = (stateno = 215 && movecontact) && var(56)=1
trigger6 = stateno = 711
;-------------------------------------------------------------------------------
;210-Punch Medium-Stand
[State -1, 210-Gancho-Stand]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
trigger5 = (stateno = 210 && movecontact) && var(56)=1
trigger6 = stateno = 711
;-------------------------------------------------------------------------------
;235-kick medium-Stand
[State -1, 240-Patadita-Stand]
type = ChangeState
value = 235
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 240) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
trigger5 = (stateno = 235 && movecontact) && var(56)=1
trigger6 = stateno = 711
;-------------------------------------------------------------------------------
;230-kick Light-Stand
[State -1, 230-Rodilla-Stand]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && time >= 8
trigger3 = (stateno = 200) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
trigger5 = (stateno = 230 && movecontact) && var(56)=1
trigger6 = stateno = 711
;-------------------------------------------------------------------------------
;240-kick medium-Stand
[State -1, 240-Patadita-Stand]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
trigger5 = (stateno = 240 && movecontact) && var(56)=1
trigger6 = stateno = 711
;-------------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;400-Punch light-crouch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time >= 7
trigger3 = (stateno = 400 && movecontact) && var(56)=1
trigger4 = stateno = 711
;---------------------------------------------------------------------------
;410-Punch medium-crouch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 || stateno = 430) && movehit
trigger3 = (stateno = 410 && movecontact) && var(56)=1
trigger4 = stateno = 711
;---------------------------------------------------------------------------
;430-kcik light-crouch
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && time >= 8
trigger3 = (stateno = 430 && movecontact) && var(56)=1
trigger4 = stateno = 711
;---------------------------------------------------------------------------
;440-kick medium-crouch
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 || stateno = 430) && movehit
trigger3 = (stateno = 440 && movecontact) && var(56)=1
trigger4 = stateno = 711
;===========================================================================
;600-Punch light-jump
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger2 = (stateno = [107,108]) && time >=10
trigger3 = (stateno = 600 && movecontact) && var(56)=1
trigger4 = stateno = 711
;---------------------------------------------------------------------------
;610-Punch medium-jump
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = (stateno = 610 && movecontact) && var(56)=1
trigger5 = stateno = 711
;---------------------------------------------------------------------------
;630-kick light-jump
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = (stateno = 630 && movecontact) && var(56)=1
trigger5 = stateno = 711
;---------------------------------------------------------------------------
;640-kick medium-jump
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = (stateno = 640 && movecontact) && var(56)=1
trigger5 = stateno = 711

;--------------------------------------------------------------------------------
; con esto la pc activa la IA

[State -2, AI activada por la PC]
type = VarSet
trigger1 = (command = "AI1") ||(Command = "AI2") || (Command = "AI3") || (Command = "AI4") || (Command = "AI5")
trigger2 = (Command = "AI6") || (Command = "AI7") || (Command = "AI8") || (Command = "AI9") || (Command = "AI10")
trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(9) = 1
