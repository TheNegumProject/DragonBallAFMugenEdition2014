;================================
;Vegeta Type-R
;================================

;------------------------------------------------------
;Author:	ZGTE
;	http://www.zgtm.tk
;------------------------------------------------------

;=============================================================

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
name = "recovery"
command = x+y
time = 1

[Command]
name = "nothing"
command = b+y
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
;-| Hold Single Button |-----------------------------------------------------
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
name = "holds"
command = /s
time = 1
;-| Circle |-----------------------------------------------------------
[Command]
name = "QCF_A"     ;Required (do not remove)
command = ~D, F, a
time = 10

[Command]
name = "QCF_B"     ;Required (do not remove)
command = ~D, F, b
time = 10

[Command]
name = "QCF_C"     ;Required (do not remove)
command = ~D, F, c
time = 10

[Command]
name = "QCF_X"     ;Required (do not remove)
command = ~D, F, x
time = 10

[Command]
name = "QCF_Y"     ;Required (do not remove)
command = ~D, F, y
time = 10

[Command]
name = "QCF_Z"     ;Required (do not remove)
command = ~D, F, z
time = 10
;-----------------------
[Command]
name = "QCB_A"     ;Required (do not remove)
command = ~D, B, a
time = 10

[Command]
name = "QCB_B"     ;Required (do not remove)
command = ~D, B, b
time = 10

[Command]
name = "QCB_C"     ;Required (do not remove)
command = ~D, B, c
time = 10

[Command]
name = "QCB_X"     ;Required (do not remove)
command = ~D, B, x
time = 10

[Command]
name = "QCB_Y"     ;Required (do not remove)
command = ~D, B, y
time = 10

[Command]
name = "QCB_Z"     ;Required (do not remove)
command = ~D, B, z
time = 10
;-| Specials |--------------------------------------------------------------
[Command]
name = "Super Jump"
command = ~D, U
time = 30

[Command]
name = "Launching kick"
command = ~D, F, b
time = 30

[Command]
name = "Rushing gut punches"
command = ~D, F, y
time = 30

[Command]
name = "Launching uppercut"
command = ~D, F, x
time = 30

;-| Ki Specials |--------------------------------------------------------------

[Command]
name = "Buksuda"
command = ~D, F, z
time = 30

[Command]
name = "Renzenko"
command = ~D, B, F, z
time = 30

[Command]
name = "Shyougeki Ha"
command = ~D, B, z
time = 30

;-| Supers |----------------------------------------------------------------


[Command]
name = "Zenshin kara no Shyougeki Ha"
command = ~D, B, D, B, z
time = 30

[Command]
name = "Final Flash Orb"
command = ~D, B, F, x
time = 30

[Command]
name = "Final Flash Orb"
command = ~D, B, F, y
time = 30

[Command]
name = "GalickHo"
command = ~D, F, D, F, x
time = 30

[Command]
name = "BBA"
command = ~D, F, D, F, a
time = 30

[Command]
name = "FSA"
command = ~D, F, D, F, b
time = 30

[Command]
name = "Final Flash"
command = ~D, F, D, F, y
time = 30
;-| Hold Dir |--------------------------------------------------------------

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
;---------------------------------------------------------------------------
;-------------------------------------------------------------FINISHERS-----
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; NO MERCY!!
[State -1]
type            = Changestate
value       = 9000
triggerall      = P2Life <= 1
triggerall      = NumHelper(9010) = 0
triggerall      = p2stateno != 987123
triggerall      = RoundNo != 1
triggerall      = var(59) >= 1
trigger1        = ctrl = 1
trigger1        = statetype = S
trigger1        = (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
;----------------------------------------------------------------SUPERS-----
;---------------------------------------------------------------------------
; Zenshin kara no Shyougeki Ha
[State -1:      Zenshin kara no Shyougeki Ha]
type            = ChangeState
value      = 3001
triggerall      = (command = "Zenshin kara no Shyougeki Ha")
triggerall      = (power >= 1000)
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Final Flash Orb
[State -1:      Final Flash Orb]
type            = ChangeState
value      = 3015
triggerall      = (command = "Final Flash Orb")
triggerall      = (power >= 1000)
trigger1        = (statetype = S) && (ctrl)
trigger2        = p2bodydist X < 50
trigger2        = stateno = 212
trigger2        = movecontact = 1
trigger3        = p2bodydist X < 50
trigger3        = stateno = 232
trigger3        = movecontact = 1
trigger4        = p2bodydist X < 50
trigger4        = stateno = 233
trigger4        = movecontact = 1

;---------------------------------------------------------------------------
; GalickHo
[State -1:      GalickHo]
type            = ChangeState
value      = 3000
triggerall      = (command = "GalickHo")
triggerall      = (power >= 1000)
trigger1        = (statetype = S) && (ctrl)
trigger2        = p2bodydist X < 50
trigger2        = stateno = 212
trigger2        = movecontact = 1
trigger3        = p2bodydist X < 50
trigger3        = stateno = 232
trigger3        = movecontact = 1
trigger4        = p2bodydist X < 50
trigger4        = stateno = 233
trigger4        = movecontact = 1

;---------------------------------------------------------------------------
; BBA
[State -1:      BBA]
type            = ChangeState
value      = 3100
triggerall      = (command = "BBA")
triggerall      = (power >= 1000)
trigger1        = (statetype = S) && (ctrl)
trigger2        = p2bodydist X < 50
trigger2        = stateno = 212
trigger2        = movecontact = 1
trigger3        = p2bodydist X < 50
trigger3        = stateno = 232
trigger3        = movecontact = 1
trigger4        = p2bodydist X < 50
trigger4        = stateno = 233
trigger4        = movecontact = 1

;---------------------------------------------------------------------------
; FSA
[State -1:      FSA]
type            = ChangeState
value      = 3110
triggerall      = (command = "FSA")
triggerall      = (power >= 2000)
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Final flash
[State -1:      Final flash]
type            = ChangeState
value      = 3200
triggerall      = (command = "Final Flash")
triggerall      = (power >= 2000)
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;--------------------------------------------------------------------KI-----
;---------------------------------------------------------------------------
; Renzenko
[State -1:      Renzenko]
type            = ChangeState
value      = 2500
triggerall      = (command = "Renzenko")
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Shyougeki Ha
[State -1:      Shyougeki Ha]
type            = ChangeState
value      = 2400
triggerall      = (command = "Shyougeki Ha")
triggerall      = (power >= 300)
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Buksuda
[State -1:      Buksuda]
type            = ChangeState
value      = 2300
triggerall      = (command = "Buksuda")
triggerall      = (power >= 300)
trigger1        = (statetype = S) && (ctrl)
trigger1        = P2MoveType != H
trigger2        = p2bodydist X < 15
trigger2        = stateno = 212
trigger2        = movecontact = 1

;---------------------------------------------------------------------------
; Ki Shot
[State -1:      Ki Shot]
type            = ChangeState
value      = 2000
triggerall      = (command = "z")
triggerall      = (power >= 100)
trigger1        = (statetype = S) && (ctrl)
trigger2        = p2bodydist X < 15
trigger2        = stateno = 212
trigger2        = movecontact = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------SPECIAL-----
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Launching Kick
[State -1:      Launching kick]
type            = ChangeState
value      = 1000
triggerall      = command = "Launching kick"
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Launching uppercut
[State -1:      Launching uppercut]
type            = ChangeState
value      = 1111
triggerall      = command = "Launching uppercut"
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Rushing gut punches
[State -1:  Rushing gut punches]
type            = ChangeState
value      = 1100
triggerall      = command = "Rushing gut punches"
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;----------------------------------------------------------------NORMAL-----
;---------------------------------------------------------------------------
; Zanzouken
[State -1:      Zanzouken]
type            = ChangeState
value      = 500
triggerall      = ((StateNo = 100) && (command = "c"))
triggerall      = (power >= 100)
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Power Up
[State -1:      Charge Power]
type            = ChangeState
value      = 700
triggerall      = ((command = "holda") && (command = "holdx"))
triggerall      = power < 3000
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Super Jump
[State -1:      Super Jump]
type            = ChangeState
value      = 9001
triggerall      = command = "Super Jump"
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;-----------------------------------------------------------CHAIN COMBOS----
;---------------------------------------------------------------------------
; Side kick rush combo 1
[State -1:      SKRC 1]
type            = ChangeState
value      = 235
triggerall      = command = "a"
triggerall      = p2bodydist X < 10
triggerall      = stateno = 230
trigger1        = movecontact = 1

;---------------------------------------------------------------------------
; Side kick rush combo 2
[State -1:      SKRC 2]
type            = ChangeState
value      = 236
triggerall      = command = "b"
triggerall      = p2bodydist X < 10
triggerall      = stateno = 235
trigger1        = movecontact = 1

;---------------------------------------------------------------------------
; Side kick rush combo 3
[State -1:      SKRC 3]
type            = ChangeState
value      = 260
triggerall      = (command = "b") && (command = "holdback")
triggerall      = p2bodydist X < 10
triggerall      = stateno = 236
trigger1        = movecontact = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;------------------------------------------------------------------BASIC----
;---------------------------------------------------------------------------
; Run Fwd
[State -1:      Run Fwd]
type            = ChangeState
value      = 100
triggerall      = (command = "FF")
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Run Back
[State -1:      Run Back]
type            = ChangeState
value      = 105
triggerall      = (command = "BB")
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Uppercut
[State -1:          Uppercut]
type            = ChangeState
value      = 218
triggerall      = (command = "holddown") && (command = "y")
trigger1        = (statetype = C) && (ctrl)
trigger2        = p2bodydist X < 15
trigger2        = stateno = 300
trigger2        = movecontact = 1
trigger3        = p2bodydist X < 15
trigger3        = stateno = 310
trigger3        = movecontact = 1
trigger4        = p2bodydist X < 15
trigger4        = stateno = 312
trigger4        = movecontact = 1

;---------------------------------------------------------------------------
;light Jab
[State -1:      light Jab]
type            = ChangeState
value      = 232
triggerall      = (p2bodydist X < 7) && (command = "y")
trigger1        = (statetype = S) && (ctrl)
trigger2        = p2bodydist X < 15
trigger2        = stateno = 231
trigger2        = movecontact = 1
trigger3        = p2bodydist X < 15
trigger3        = stateno = 230
trigger3        = movecontact = 1
trigger4        = p2bodydist X < 15
trigger4        = stateno = 210
trigger4        = movecontact = 1

;---------------------------------------------------------------------------
;light elbow
[State -1:      light elbow]
type            = ChangeState
value      = 231
triggerall      = (p2bodydist X < 7) && (command = "x")
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Standing Light Punch
[State -1:      Light Punch]
type            = ChangeState
value      = 200
triggerall      = (command = "x")
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Standing Hard Punch
[State -1:      Hard Punch]
type            = ChangeState
value      = 202
triggerall      = (command = "y")
trigger1        = (statetype = S) && (ctrl)
trigger2        = p2bodydist X < 15
trigger2        = stateno = 231
trigger2        = movecontact = 1
trigger3        = stateno = 200
trigger3        = movecontact = 1

;---------------------------------------------------------------------------
; Standing Knee
[State -1:           Knee]
type            = ChangeState
value      = 230
triggerall      = (p2bodydist X < 7) && (command = "a")
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Standing Light Kick
[State -1:      Light Kick]
type            = ChangeState
value      = 210
triggerall      = (command = "a")
trigger1        = (statetype = S) && (ctrl)
trigger2        = p2bodydist X < 15
trigger2        = stateno = 231
trigger2        = movecontact = 1
trigger3        = stateno = 200
trigger3        = movecontact = 1

;---------------------------------------------------------------------------
; Standing Knee
[State -1:           Knee]
type            = ChangeState
value      = 233
triggerall      = (p2bodydist X < 10) && (command = "b")
trigger1        = (statetype = S) && (ctrl)
trigger2        = stateno = 202
trigger2        = movecontact = 1
trigger3        = stateno = 210
trigger3        = movecontact = 1
trigger4        = stateno = 230
trigger4        = movecontact = 1
trigger5        = p2bodydist X < 15
trigger5        = stateno = 232
trigger5        = movecontact = 1

;---------------------------------------------------------------------------
; Standing Hard Kick
[State -1:      Hard Kick]
type            = ChangeState
value      = 212
triggerall      = (P2BodyDist Y > -8) && (command = "b")
trigger1        = (statetype = S) && (ctrl)
trigger2        = stateno = 202
trigger2        = movecontact = 1
trigger3        = stateno = 210
trigger3        = movecontact = 1
trigger4        = stateno = 230
trigger4        = movecontact = 1
trigger5        = p2bodydist X < 15
trigger5        = stateno = 232
trigger5        = movecontact = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1:      Crouch Light Punch]
type            = ChangeState
value      = 300
triggerall      = (command = "x")
trigger1        = (statetype = C) && (ctrl)
trigger2        = p2bodydist X < 15
trigger2        = stateno = 310
trigger2        = movecontact = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1:      Crouch Light Kick]
type            = ChangeState
value      = 310
triggerall      = (command = "a")
trigger1        = (statetype = C) && (ctrl)
trigger2        = p2bodydist X < 15
trigger2        = stateno = 300
trigger2        = movecontact = 1

;---------------------------------------------------------------------------
; Crouching Hard Kick
[State -1:      Crouch Hard Kick]
type            = ChangeState
value      = 312
triggerall      = (command = "b")
trigger1        = (statetype = C) && (ctrl)
trigger2        = p2bodydist X < 15
trigger2        = stateno = 300
trigger2        = movecontact = 1
trigger3        = p2bodydist X < 15
trigger3        = stateno = 310
trigger3        = movecontact = 1

;---------------------------------------------------------------------------
; Smackdown
[State -1:      Smackdown]
type            = ChangeState
value      = 420
triggerall      = (command = "holddown") && (command = "y")
trigger1        = (statetype = A) && (ctrl)
trigger2        = p2bodydist X < 20
trigger2        = stateno = 400
trigger2        = movecontact = 1
trigger3        = p2bodydist X < 20
trigger3        = stateno = 410
trigger3        = movecontact = 1
trigger4        = p2bodydist X < 20
trigger4        = stateno = 402
trigger4        = movecontact = 1

;---------------------------------------------------------------------------
; Air Light Punch
[State -1:      Air Light Punch]
type            = ChangeState
value      = 400
triggerall      = (command = "x")
trigger1        = (statetype = A) && (ctrl)
trigger2        = p2bodydist X < 20
trigger2        = stateno = 402
trigger2        = movecontact = 1

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1:      Air Hard Punch]
type            = ChangeState
value      = 402
triggerall      = (command = "y")
trigger1        = (statetype = A) && (ctrl)
trigger2        = p2bodydist X < 20
trigger2        = stateno = 400
trigger2        = movecontact = 1
trigger3        = p2bodydist X < 20
trigger3        = stateno = 410
trigger3        = movecontact = 1

;---------------------------------------------------------------------------
; Air Light Kick
[State -1:      Air Light Kick]
type            = ChangeState
value      = 410
triggerall      = (command = "a")
trigger1        = (statetype = A) && (ctrl)
trigger2        = p2bodydist X < 20
trigger2        = stateno = 400
trigger2        = movecontact = 1

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1:      Air Hard Kick]
type            = ChangeState
value      = 412
triggerall      = (command = "b")
trigger1        = (statetype = A) && (ctrl)
trigger2        = p2bodydist X < 20
trigger2        = stateno = 400
trigger2        = movecontact = 1
trigger3        = p2bodydist X < 20
trigger3        = stateno = 410
trigger3        = movecontact = 1
trigger4        = p2bodydist X < 20
trigger4        = stateno = 402
trigger4        = movecontact = 1

;---------------------------------------------------------------------------
;KO finish
[State -1, ]
type            = Helper
trigger1        =(enemynear(0),alive=0)
trigger1        =(numhelper(1222)=0)
helpertype      = normal
name            = "Kill"
ID              = 1222
pos             = 0,500
postype         = p1
stateno         = 1122
keyctrl         = 0
ignorehitpause  = 1
persistent      = 0

;---------------------------------------------------------------------------
