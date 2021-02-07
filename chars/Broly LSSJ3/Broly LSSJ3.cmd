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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.

;-| Special Motions |------------------------------------------------------
[Command]
name = "Ki Ball"     ;Required (do not remove)
command = D,a
time = 20

[Command]
name = "Jump Attack"     ;Required (do not remove)
command = D,b
time = 20

[Command]
name = "Green Wave"     ;Required (do not remove)
command = D,c
time = 20

[Command]
name = "Dash Attack"     ;Required (do not remove)
command = D,x
time = 20

[Command]
name = "Ultimate Ki Ball"     ;Required (do not remove)
command = D,y
time = 20
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
name = "holda";Required (do not remove)
command = /$a
time = 1

[Command]
name = "holdx";Required (do not remove)
command = /$x
time = 1

[Command]
name = "holds";Required (do not remove)
command = /$s
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /$y
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
;---------------------------------------------------------------------------
;Ki Ball
[State -1,Ki Ball]
type = ChangeState
value = 6010
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Ki Ball"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Attack
[State -1,Jump Attack]
type = ChangeState
value = 6015
triggerall = var(10) = 0
triggerall = power >= 2000
triggerall = command = "Jump Attack"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Green Wave
[State -1,Green Wave]
type = ChangeState
value = 6075
triggerall = var(10) = 0
triggerall = power >= 2000
triggerall = command = "Green Wave"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dash Attack
[State -1,Dash Attack]
type = ChangeState
value = 6040
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Dash Attack"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Ultimate Ki Ball
[State -1,Ultimate Ki Ball]
type = ChangeState
value = 6060
triggerall = var(10) = 0
triggerall = power >= 3000
triggerall = command = "Ultimate Ki Ball"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Power up
[State -1, Power up]
type = ChangeState
value = 6000
triggerall = var(10) = 0
triggerall = command = "holds"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dash Forward
[State -1,Dash Forward]
type = ChangeState
value = 6020
triggerall = var(10) = 0
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dash Backward
[State -1,Dash Backward]
type = ChangeState
value = 6022
triggerall = var(10) = 0
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Barrier
[State -1,Barrier]
type = ChangeState
value = 6035
triggerall = var(10) = 0
triggerall = power >= 500
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Punch 1
[State -1,Air Punch 1]
type = ChangeState
value = 6055
triggerall = var(10) = 0
triggerall = command = "a" || command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Punch 2
[State -1,Air Punch 2]
type = ChangeState
value = 6056
triggerall = var(10) = 0
triggerall = command = "b" || command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Punch 1
[State -1, Punch 1]
type = ChangeState
value = 6025
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Punch 1
[State -1,Punch 1]
type = ChangeState
value = 6028
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6025
;---------------------------------------------------------------------------
;Punch 1
[State -1,Punch 1]
type = ChangeState
value = 6029
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6028
;---------------------------------------------------------------------------
;Punch 2
[State -1, Punch 2]
type = ChangeState
value = 6030
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Punch 2
[State -1,Punch 2]
type = ChangeState
value = 6031
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6030
;---------------------------------------------------------------------------
;Punch 2
[State -1,Punch 2]
type = ChangeState
value = 6032
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6031
;---------------------------------------------------------------------------
;Punch 2
[State -1,Punch 2]
type = ChangeState
value = 6033
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6032
;---------------------------------------------------------------------------
;Punch 3
[State -1, Punch 3]
type = ChangeState
value = 6045
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Punch 3
[State -1,Punch 3]
type = ChangeState
value = 6046
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6045
;---------------------------------------------------------------------------
;Punch 3
[State -1,Punch 3]
type = ChangeState
value = 6047
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6046
;---------------------------------------------------------------------------
;Punch 3
[State -1,Punch 3]
type = ChangeState
value = 6048
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6047
;---------------------------------------------------------------------------
;Punch 4
[State -1, Punch 4]
type = ChangeState
value = 6070
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Punch 4
[State -1,Punch 4]
type = ChangeState
value = 6071
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6070
;---------------------------------------------------------------------------
;Punch 4
[State -1,Punch 4]
type = ChangeState
value = 6072
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 10
trigger2 = stateno = 6071
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;AI
;---------------------------------------------------------------------------
[State -1, AI on]
type = VarSet
triggerAll = Var(10) < 1
triggerAll = RoundState = 2
trigger1 = AILevel > 0
v = 10
value = 1
Ignorehitpause = 1

[State -1, AI OFF]
type=VarSet
trigger1 = var(10) > 0
trigger1 = RoundState != 2
trigger2 = AILevel = 0
v = 10
value = 0
Ignorehitpause = 1
;---------------------------------------------------------------------------
;ai Ki Ball
[State -1,ai Ki Ball]
type = ChangeState
value = 6010
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 40 && random < 45
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 180
;---------------------------------------------------------------------------
;ai Jump Attack
[State -1,ai Jump Attack]
type = ChangeState
value = 6015
triggerall = var(10) = 1
triggerall = p2stateno != 5110
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 10
trigger1 = (p2dist x) > 180
trigger1 = (p2dist x) < 220
;---------------------------------------------------------------------------
;ai Green Wave
[State -1,ai Green Wave]
type = ChangeState
value = 6075
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 10 && random < 20
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 220
;---------------------------------------------------------------------------
;ai Barrier
[State -1,ai Barrier]
type = ChangeState
value = 6035
triggerall = var(10) = 1
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 30 && random < 32
trigger1 = (p2dist x) > 45
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Dash Attack
[State -1,ai Dash Attack]
type = ChangeState
value = 6040
triggerall = var(10) = 1
triggerall = p2stateno != 5110
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 20 && random < 30
trigger1 = (p2dist x) > 100
trigger1 = (p2dist x) < 200
trigger1 = (p2dist y) = 0
;---------------------------------------------------------------------------
;ai Ultimate Ki Ball
[State -1,ai Ultimate Ki Ball]
type = ChangeState
value = 6060
triggerall = var(10) = 1
triggerall = p2stateno != 5110
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 30 && random < 70
trigger1 = (p2dist x) > 150
trigger1 = (p2dist y) = 0
;---------------------------------------------------------------------------
;ai Power up
[State -1, ai Power up]
type = ChangeState
value = 6000
triggerall = var(10) = 1
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 10
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 200
;---------------------------------------------------------------------------
;ai Dash Forward
[State -1, ai Dash Forward]
type = ChangeState
value = 6020
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 130 && random < 132
trigger1 = (p2dist x) > 250
;---------------------------------------------------------------------------
;ai Dash Back
[State -1, ai Dash Back]
type = ChangeState
value = 6022
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 120 && random < 122
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Air Punch 1
[State -1, ai Air Punch 1]
type = ChangeState
value = 6055
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random < 25
trigger1 = (p2dist x) < 50
trigger1 = (p2dist x) > -50
;---------------------------------------------------------------------------
;ai Air Punch 2
[State -1, ai Air Punch 2]
type = ChangeState
value = 6056
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 25 && random < 50
trigger1 = (p2dist x) < 50
trigger1 = (p2dist x) > -50
;---------------------------------------------------------------------------
;ai Punch 1
[State -1, ai Punch 1]
type = ChangeState
value = 6025
triggerall = var(10) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 30
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Punch 2
[State -1, ai Punch 2]
type = ChangeState
value = 6030
triggerall = var(10) = 1
triggerall = p2stateno != 5110
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 30 && random < 60
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Punch 3
[State -1, ai Punch 3]
type = ChangeState
value = 6045
triggerall = var(10) = 1
triggerall = p2stateno != 5110
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 60 && random < 90
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Punch 4
[State -1, ai Punch 4]
type = ChangeState
value = 6070
triggerall = var(10) = 1
triggerall = p2stateno != 5110
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 90 && random < 110
trigger1 = (p2dist x) < 50
