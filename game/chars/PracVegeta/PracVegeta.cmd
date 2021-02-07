((Practice Vegeta by Detah and mugen mundo))

;Var(20) = boost
;Var(21) = permaboost
;Var(25) = Ki Rain
;Var(30) & Var(31) = renzoku
;Var(40) = AI
;Var(55-57) = MSM
;Var(58) = Rage
;Fvar(all) = renzoku
;-| Super Motions |--------------------------------------------------------

[Command]
name = "renmsm"
command = s
time = 1
;-| AI |--------------------------------------------------------
[Command]
name = "AI1"
command = F, F, F, F
Time = 1

[Command]
name = "AI2"
command = F, F, F, F
Time = 1

[Command]
name = "AI3"
command = F, F, F, F
Time = 1

[Command]
name = "AI4"
command = F, F, F, F
Time = 1

[Command]
name = "AI5"
command = F, F, F, F
Time = 1

[Command]
name = "AI6"
command = F, F, F, F
Time = 1

[Command]
name = "AI7"
command = F, F, F, F
Time = 1

[Command]
name = "AI8"
command = F, F, F, F
Time = 1

[Command]
name = "AI9"
command = F, F, F, F
Time = 1

[Command]
name = "AI10"
command = F, F, F, F
Time = 1

[Command]
name = "AI11"
command = F, F, F, F
Time = 1

[Command]
name = "AI12"
command = F, F, F, F
Time = 1

[Command]
name = "AI13"
command = F, F, F, F
Time = 1

[Command]
name = "AI14"
command = F, F, F, F
Time = 1

[Command]
name = "AI15"
command = F, F, F, F
Time = 1

[Command]
name = "AI16"
command = F, F, F, F
Time = 1

[Command]
name = "AI17"
command = F, F, F, F
Time = 1
;-| Special Motions |------------------------------------------------------

[Command]
name = "world"
command = D, DF, F, x

[Command]
name = "place"
command =D,F,B,y
time = 50

[Command]
name = "zanzokencombo"
command = D, DF, F, z

[Command]
name = "zanzokenpunch"
command = y+z

[Command]
name = "smack"
command = D,B,a

[Command]
name = "take"
command = D,DF,F,b
time = 50

[Command]
name = "elbow"
command = D, DF, F, b

[Command]
name = "M-elbow"
command = D, DB, B, b

[Command]
name = "trikick"
command = D, DF, F, a

[Command]
name = "multikick"
command = D, DB, B, a

[Command]
name = "kishot"
command = D, DF, F, y

[Command]
name = "renzoku"
command = D, DB, B, D, DB, B, y
time = 50

[Command]
name = "instant"
command = a+x

[Command]
name = "ufire"
command = /UF
time = 1

[Command]
name = "dfire"
command = /DF
time = 1

[Command]
name = "bufire"
command = /UB
time = 1

[Command]
name = "bdfire"
command = /DB
time = 1

[Command]
name = "carregar ki"
command = /a

[Command]
name = "carregar ki2"
command = /b
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "DD";Required (do not remove)
command = D, D
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

[Command]
name = "UU";Required (do not remove)
command = U, U
time = 10
;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x
time = 1

[Command]
name = "fly"
command = b+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
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
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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

[Command]
name = "chainplace"
command = a+b+c

[Command]
name = "chaintake"
command = x+c

[Command]
name = "chainM-elbow"
command = x+y+z

[Command]
name = "chainmultikick"
command = x+b+z

;-| Hold Dir |--------------------------------------------------------------
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
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
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
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
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
; PermaBoost
[State -1]
type = ChangeState
value = 1702
trigger1 = Power <= 1000
triggerall = Var(21) = 0
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Var(58) > 1990
trigger1 = Life > 100
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
; MSM renzoku
[State -1]
type = ChangeState
value = 4000
triggerall = Var(40) = 0
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "renmsm"
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;---------------------------------------------------------------------------

 
;===========================================================================
;---------------------------------------------------------------------------
;Smash upper
[State -1]
type = ChangeState
value = 204
triggerall = (Var(20) = 1) || (Var(21) = 1)
triggerall = command = "c";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1


;Stand_c
[State -1]
type = ChangeState
value = 207
triggerall = (Var(20) = 1) || (Var(21) = 1)
triggerall = command = "c";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
 ;Uncomment the following if you want to be able to do a Stand_A rapidly
trigger1 = stateno = 215
trigger1 = movecontact = 1
trigger2 = stateno = 214
trigger2 = movecontact = 1
trigger3 = stateno = 213
trigger3 = movecontact = 1
trigger4 = stateno = 206
trigger4 = movecontact = 1
trigger5 = stateno = 205
trigger5 = movecontact = 1
trigger6 = stateno = 1500


;---------------------------------------------------------------------------
;Stand_b
[State -1]
type = ChangeState
value = 206
triggerall = (Var(20) = 1) || (Var(21) = 1)
triggerall = command = "b";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to do a Stand_A rapidly
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 214
trigger3 = movecontact = 1
trigger4 = stateno = 213
trigger4 = movecontact = 1
trigger5 = stateno = 207
trigger5 = movecontact = 1
trigger6 = stateno = 205
trigger6 = movecontact = 1
trigger7 = stateno = 1500
trigger8 = stateno = 101
trigger9 = stateno = 107

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 205
triggerall = (Var(20) = 1) || (Var(21) = 1)
triggerall = command = "a"
;triggerall = p2bodydist X > 20
;triggerall = p2bodydist Y >= 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command != "holddown"
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 214
trigger3 = movecontact = 1
trigger4 = stateno = 213
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 207
trigger6 = movecontact = 1
trigger7 = stateno = 1500
trigger8 = stateno = 101
trigger9 = stateno = 107

;---------------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 213
triggerall = (Var(20) = 1) || (Var(21) = 1)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 214
trigger3 = movecontact = 1
trigger4 = stateno = 207
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 205
trigger6 = movecontact = 1
trigger7 = stateno = 1500
trigger8 = stateno = 101
trigger9 = stateno = 107


;--------------------------------------------------------------------------

;Stand_x
[State -1]
type = ChangeState
value = 214
triggerall = (Var(20) = 1) || (Var(21) = 1)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 207
trigger3 = movecontact = 1
trigger4 = stateno = 213
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 205
trigger6 = movecontact = 1
trigger7 = stateno = 1500
trigger8 = stateno = 101
trigger9 = stateno = 107

;---------------------------------------------------------------------------
;Stand_z
[State -1]
type = ChangeState
value = 215
triggerall = (Var(20) = 1) || (Var(21) = 1)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger2 = stateno = 207
trigger2 = movecontact = 1
trigger3 = stateno = 214
trigger3 = movecontact = 1
trigger4 = stateno = 213
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 205
trigger6 = movecontact = 1
trigger7 = stateno = 1500
trigger8 = stateno = 101
trigger9 = stateno = 107


; Boost (get out of untrans)
[State -1]
type = PowerAdd
trigger1 = Power <= 13
trigger1 = Var(20) != 1
trigger1 = 1
value = 30

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; SUPER METEO COMBO
[State -1]
type = ChangeState
value = 1300
triggerall = ctrl = 1
triggerall = Var(58) > 1990
trigger1 = Power < 2000
trigger1 = Power > 1000
triggerall = Life > 100
trigger2 = var(21) = 1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
; energy rain
[State -1]
type = ChangeState
value = 6000
trigger1 = ctrl = 1
trigger1 = Var(58) > 1990
trigger1 = Life <= 100

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; zanzoken combo
[State -1]
type = ChangeState
value = 1155
triggerall = command = "zanzokencombo"
triggerall = command != "holddown"
triggerall = Power >= 700
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
; zanzoken punch
[State -1]
type = ChangeState
value = 1150
triggerall = command = "zanzokenpunch"
triggerall = command != "holddown"
triggerall = Power >= 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;---------------------------------------------------------------------------
; Around the world
[State -1]
type = ChangeState
value = 1160
triggerall = command = "world"
triggerall = command != "holddown"
triggerall = Power >= 200
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
; All over the place
[State -1]
type = ChangeState
value = 1165
triggerall = command = "place"
triggerall = command != "holddown"
triggerall = Power >= 1000
triggerall = Var(20) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
; All over the place chain
[State -1]
type = ChangeState
value = 1165
triggerall = command = "chainplace"
triggerall = command != "holddown"
triggerall = Power >= 1000
triggerall = Var(20) != 1
trigger1 = stateno = 1155
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500


;---------------------------------------------------------------------------

; ki shot
[State -1]
type = ChangeState
value = 203
triggerall = command = "kishot"
triggerall = command != "holddown"
triggerall = Power >= 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
; SUPER RENZOKU ENERGY DAN
[State -1]
type = ChangeState
value = 1055
triggerall = Power >= 2000
trigger1 = ctrl = 1
trigger1 = Var(58) > 1990


;---------------------------------------------------------------------------
; Smack down
[State -1]
type = ChangeState
value = 1040
triggerall = command = "smack"
triggerall = command != "holddown"
triggerall = Power >= 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
; Take down
[State -1]
type = ChangeState
value = 1043
triggerall = command = "take"
triggerall = command != "holddown"
triggerall = Power >= 1000
triggerall = Var(20) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
; Take down chain
[State -1]
type = ChangeState
value = 1043
triggerall = command = "chaintake"
triggerall = command != "holddown"
triggerall = Power >= 1000
triggerall = Var(20) != 1
trigger1 = stateno = 1155
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500

;---------------------------------------------------------------------------
;Elbow Smash
[State -1]
type = ChangeState
value = 1020
triggerall = command = "elbow"
triggerall = command != "holddown"
triggerall = Power >= 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
; Mega Elbow Smash
[State -1]
type = ChangeState
value = 1030
triggerall = command = "M-elbow"
triggerall = command != "holddown"
triggerall = Power >= 1000
triggerall = Var(20) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
; Mega Elbow Smash chain
[State -1]
type = ChangeState
value = 1030
triggerall = command = "chainM-elbow"
triggerall = command != "holddown"
triggerall = Power >= 1000
triggerall = Var(20) != 1
trigger1 = stateno = 1155
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500


;---------------------------------------------------------------------------
;Tri-Kick
[State -1]
type = ChangeState
value = 1000
triggerall = command = "trikick"
triggerall = command != "holddown"
triggerall = Power >= 100
trigger1 = statetype = S
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500

;Multi-Kick chain
[State -1]
type = ChangeState
value = 1010
triggerall = command = "chainmultikick"
triggerall = Power >= 1000
triggerall = Var(20) != 1
trigger1 = stateno = 1155
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;Multi-Kick
[State -1]
type = ChangeState
value = 1010
triggerall = command = "multikick"
triggerall = command != "holddown"
triggerall = Power >= 1000
triggerall = Var(20) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500


;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2001
triggerall = power > 300
triggerall = command = "instant"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1510
trigger3  = (stateno = 200) || (stateno = 205)|| (stateno = 210)|| (stateno = 215)
trigger3  = (movecontact)
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 730
triggerall = var (5) =0
triggerall = power <2800
triggerall = ctrl = 1
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = statetype = S
trigger2 = stateno = 1500
trigger2 = stateno = 207
[State -1]
type = ChangeState
value = 730
triggerall = var (5) =0
triggerall = power <3000
trigger1 = ctrl = 0
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = stateno = 1500


; Voar 
[State -1]
type = ChangeState
value = 1510
triggerall = Var(40) = !1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = command = "fly"
;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_Throw (close dir+b)
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
trigger1 = command = "fwd_b";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------------
;Air_Throw1 (close dir+b)
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"


;===========================================================================
;---------------------------------------------------------------------------
;Stand_c
[State -1]
type = ChangeState
value = 202
triggerall = Var(20) != 1
triggerall = command = "c";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to do a Stand_A rapidly
trigger2 = stateno = 212
trigger2 = movecontact = 1
trigger3 = stateno = 211
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 1500

;---------------------------------------------------------------------------
;Stand_b
[State -1]
type = ChangeState
value = 201
triggerall = Var(20) != 1
triggerall = command = "b";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to do a Stand_A rapidly
trigger2 = stateno = 212
trigger2 = movecontact = 1
trigger3 = stateno = 211
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 1500

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall = Var(20) != 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command != "holddown"
trigger2 = stateno = 212
trigger2 = movecontact = 1
trigger3 = stateno = 211
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 1500


;---------------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 210
triggerall = Var(20) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact = 1
trigger5 = stateno = 1500


;--------------------------------------------------------------------------

;Stand_x
[State -1]
type = ChangeState
value = 211
triggerall = Var(20) != 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact = 1
trigger5 = stateno = 1500

;---------------------------------------------------------------------------
;Stand_z
[State -1]
type = ChangeState
value = 212
triggerall = Var(20) != 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact = 1
trigger5 = stateno = 1500

;---------------------------------------------------------------------------
;Crouch_a
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_b
[State -1]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Crouch_c
[State -1]
type = ChangeState
value = 400
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_y
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_z
[State -1]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Jump_a
[State -1]
type = ChangeState
value = 602
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_b
[State -1]
type = ChangeState
value = 602
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_c
[State -1]
type = ChangeState
value = 602
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_x
[State -1]
type = ChangeState
value = 610
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_y
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_z
[State -1]
type = ChangeState
value = 610
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1

; intro removeexplod
[State -1]
type = RemoveExplod
ID = 1706
trigger1 = RoundState = 2

; Intro stop sound
[State -1]
type = StopSnd
trigger1 = RoundState = 2
channel = 24

; Boost (drain)
[State -1]
type = PowerAdd
trigger1 = Power >= 0
trigger1 = 1
trigger1 = Var(20) = 1
value = -5



; AI power gain
[State -1]
type = PowerAdd
triggerall = ctrl = 1
triggerall = 1
triggerall = Var(40) = 1
trigger1 = (Var(20) != 1) || (Var(21) != 1)
trigger1 = Var(25) != 1
value = 6

; Boost (muloff)
[State -1]
type = AttackMulSet
trigger1 = (Var(20) = 1) || (Var(21) = 1)
value = .66666666

; Boost (muldef)
[State -1]
type = DefenceMulSet
trigger1 = (Var(20) = 1) || (Var(21) = 1)
value = .8

[State -1]
type = PosSet
trigger1 = Stateno = 1500
trigger1 = Time >= 0
triggerall = Var(40) = 1
y = 0

; AI move chooser
[State -1]
type = Varrandom
triggerall = Var(40) = 1
trigger1 = ctrl = 1
v = 50
range = 4

; AI changestate low power
[State -1]
type = ChangeState
triggerall = Var(40) = 1
triggerall = (Var(20) != 1) || (Var(21) != 1)
triggerall = ctrl = 1
triggerall = pos Y = 0
triggerall = StateNo != 200 || 201 || 202 || 210 || 211 || 212 || 1000 || 1020 || 1040 || 203 || 1050 || 1060 || 1010 || 1030 || 1043 || 1055 || 1155 || 1065 || 5120 
trigger1 = p2dist X < 40
trigger1 = p2dist Y = 0
trigger1 = Power < 300
value = IfElse(Var(50) = 0,200,IfElse(Var(50) = 1,201,  IfElse(Var(50) = 2,202,  IfElse(Var(50) = 3,210,  IfElse(Var(50) = 4,211, 212)))))

; AI changestate med power
[State -1]
type = ChangeState
triggerall = Var(40) = 1
triggerall = (Var(20) != 1) || (Var(21) != 1)
triggerall = ctrl = 1
triggerall = pos Y = 0
triggerall = StateNo != 200 || 201 || 202 || 210 || 211 || 212 || 1000 || 1020 || 1040 || 203 || 1150 || 1060 || 1010 || 1030 || 1043 || 1055 || 1155 || 1065 || 5120 
trigger1 = p2dist X < 40
trigger1 = p2dist Y = 0
trigger1 = Power > 300
trigger1 = Power < 1000
value = IfElse(Var(50) = 0,1000,IfElse(Var(50) = 1,1020,  IfElse(Var(50) = 2,1040,  IfElse(Var(50) = 3,203,  IfElse(Var(50) = 4,1150, 1060)))))

; AI changestate high power
[State -1]
type = ChangeState
triggerall = Var(40) = 1
triggerall = (Var(20) != 1) || (Var(21) != 1)
triggerall = ctrl = 1
triggerall = pos Y = 0
triggerall = StateNo != 200 || 201 || 202 || 210 || 211 || 212 || 1000 || 1020 || 1040 || 203 || 1050 || 1060 || 1010 || 1030 || 1043 || 1055 || 1155 || 1065 || 5120 
trigger1 = p2dist X < 40
trigger1 = p2dist Y = 0
trigger1 = Power > 1000
value = IfElse(Var(50) = 0,1010,IfElse(Var(50) = 1,1030,  IfElse(Var(50) = 2,1043,  IfElse(Var(50) = 3,1155, IfElse(Var(50) = 4,1155, 1065)))))

; AI run to
[State -1]
type = ChangeState
triggerall = Var(40) = 1
triggerall = (Var(20) != 1) || (Var(21) != 1)
triggerall = ctrl = 1
triggerall = StateNo != 5120 
triggerall = pos Y = 0
trigger1 = p2dist X > 40
trigger1 = p2dist X < 250
trigger1 = p2dist Y = 0
value = 104

; AI zanzoken to
[State -1]
type = ChangeState
triggerall = Var(40) = 1
triggerall = Var(20) != 1
triggerall = ctrl = 1
triggerall = StateNo != 5120 
triggerall = pos Y = 0
trigger1 = p2dist X > 250
value = 2002

; AI
[State -1]
type = VarSet
triggerall = Var(40) != 1
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
v = 40
value = 1

; Antifly
[State -1]
type = ChangeState
value = 1200
triggerall = Var(40) = 1
triggerall = Time >= 12
triggerall = ctrl = 1
Triggerall = (P2Life > 0) && (P2BodyDist Y < 0) && (P2MoveType != H)
trigger1 = Var(50) = 1

; Boost AI run to
[State -1]
type = ChangeState
triggerall = Var(40) = 1
triggerall = (Var(20) = 1) || (Var(21) = 1)
triggerall = ctrl = 1
triggerall = StateNo != 5120 
triggerall = pos Y = 0
trigger1 = p2dist X > 40
trigger1 = p2dist X < 250
trigger1 = p2dist Y = 0
value = 109

; Boost AI changestate
[State -1]
type = ChangeState
triggerall = Var(40) = 1
triggerall = (Var(20) = 1) || (Var(21) = 1)
triggerall = ctrl = 1
triggerall = pos Y = 0
triggerall = StateNo != 200 || 201 || 202 || 210 || 211 || 212 || 1000 || 1020 || 1040 || 203 || 1050 || 1060 || 1010 || 1030 || 1043 || 1055 || 1155 || 1065 || 5120 || 205 || 206 || 207 || 213 || 214 || 215  
trigger1 = p2dist X < 40
trigger1 = p2dist Y = 0
trigger1 = Power < 300
value = IfElse(Var(50) = 0,205,IfElse(Var(50) = 1,206,  IfElse(Var(50) = 2,207,  IfElse(Var(50) = 3,213,  IfElse(Var(50) = 4,214, 215)))))
