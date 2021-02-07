((Commands Gohan Zeta by MugenMundo Team e Spirit z Team))

----------------------Super Atakes-------------------------

[command]
name = "Fireball"
command =B,F,b
time = 10

[command]
name = "Fireball2"
command =c
time = 45

[command]
name = "Kame"
command =B,D,F,x
time = 55

[command]
name = "Kame69"
command =B,D,F,a+b
time = 80

[command]
name = "corte"
command =D,F,x
time = 35

[command]
name = "Mini"
command =D,F,y
time =15

[command]
name = "Masenku"
command =B,D,F,y
time = 65

[command]
name = "Combo"
command =D,F,z
time =15

[command]
name = "Combo2"
command =B,D,F,z
time =35

[command]
name = "Combo Espada"
command =D,F,a
time = 15

[command]
name = "Combo Pé"
command =D,F,b
time = 15

[command]
name = "Combosaiyan"
command =D,B,F,b
time = 45

[command]
name="Super Maisencú"
command=D,B,F,a
time=60

;-| Super Motions |--------------------------------------------------------
[Command]
name = "carregar ki"
command = /a

[Command]
name = "carregar ki2"
command = /b
;-| Special Motions |------------------------------------------------------
[Command]
name = "fly"
command = b+y
time = 1
command.buffer.time = 1
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
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

;===========================================================================
 Supers
 
 ;Fly
[State -1, Fly]
type = ChangeState
value = 1500
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1
;Fly
[State -1, Fly]
type = ChangeState
value = 1510
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1
 ;
[State -1,Combo]
type = ChangeState
value = 254
triggerall = command = "Combo"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 3000
trigger3= stateno = 1500

[State -1,Combo Espada]
type = ChangeState
value = 6789
triggerall = command = "Combo Espada"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 3000
trigger3= stateno = 1500

[State -1,Combo Pé]
type = ChangeState
value = 5678
triggerall = command = "Combo Pé"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 3000
trigger3= stateno = 1500

[State -1,Combo2]
type = ChangeState
value = 244
triggerall = command = "Combo2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall = power >= 3000
trigger2 = time > 18
trigger3= stateno = 1500




[State -1,corte]
type = ChangeState
value = 8873
triggerall = command = "corte"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 3000
trigger3= stateno = 1500

[State -1,combo Saiyan]
type = ChangeState
value = 8842
triggerall = command = "Combosaiyan"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 3000
trigger3= stateno = 1500

[State -1,Super Maisencú]
type = ChangeState
value = 1358
triggerall = command = "Super Maisencú"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 2500
trigger3= stateno = 1500

[State -1,Mini]
type = ChangeState
value = 8891
triggerall = command = "Mini"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno =5000
trigger2 = time > 18
triggerall = power >= 2500
trigger3= stateno = 1500

 ;Fireball2
[State -1,Fireball2]
type = ChangeState
value = 998
triggerall = command = "Fireball2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall = power >= 0
trigger2 = time > 100
trigger3= stateno = 1500

 ;Fireball
[State -1,Fireball]
type = ChangeState
value = 999
triggerall = command = "Fireball"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 1500
trigger3= stateno = 1500
 ;Kame
[State -1,Kame]
type = ChangeState
value = 1999
triggerall = command = "Kame"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 2000
trigger3= stateno = 1500
 ;Kame
[State -1,Kame69]
type = ChangeState
value = 12999
triggerall = command = "Kame69"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 2000
triggerall=roundstate=2
trigger3= stateno = 1500

 ;"Masenku"
[State -1,Masenku]
type = ChangeState
value = 2999
triggerall = command ="Masenku"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 2000
trigger3= stateno = 1500
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 730
triggerall = var (5) =0
triggerall = power <2800
triggerall = ctrl = 1
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = statetype = S

[State -1]
type = ChangeState
value = 730
triggerall = var (5) =0
triggerall = power <3000
trigger1 = ctrl = 0
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = stateno = 1500


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
trigger2 = stateno = 200
trigger2 = time > 18
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
trigger2 = time > 18
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
trigger2 = stateno = 200
trigger2 = time > 18
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
trigger2 = stateno = 200
trigger2 = time > 18
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
trigger2 = stateno = 200
trigger2 = time > 18
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
trigger2 = stateno = 200
trigger2 = time > 18
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
trigger2 = stateno = 200
trigger2 = time > 18
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
