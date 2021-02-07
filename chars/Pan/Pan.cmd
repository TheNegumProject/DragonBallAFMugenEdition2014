;-------------------------- >>> AI <<< --------------------------------
;----------------------------------------------------------------------

[Command]
name = "AI1"
command = a, a, a
time = 1

[Command]
name = "AI2"
command = a, a, b
time = 1

[Command]
name = "AI3"
command = a, a, c
time = 1

[Command]
name = "AI4"
command = a, a, x
time = 1

[Command]
name = "AI5"
command = a, a, y
time = 1

[Command]
name = "AI6"
command = a, a, z
time = 1

[Command]
name = "AI7"
command = a, b, a
time = 1

[Command]
name = "AI8"
command = a, c, a
time = 1

[Command]
name = "AI9"
command = a, x, a
time = 1

[Command]
name = "AI10"
command = a, y, a
time = 1

[Command]
name = "AI11"
command = a, z, a
time = 1

[Command]
name = "AI12"
command = b, a, a
time = 1

[Command]
name = "AI13"
command = c, a, a
time = 1

[Command]
name = "AI14"
command = x, a, a
time = 1

[Command]
name = "AI15"
command = y, a, a
time = 1

[Command]
name = "AI16"
command = z, a, a
time = 1

[Command]
name = "AI17"
command = a, a, a, a
time = 1

[Command]
name = "AI18"
command = a, a, a, b
time = 1

[Command]
name = "AI19"
command = a, a, a, c
time = 1

[Command]
name = "AI20"
command = a, a, a, x
time = 1

[Command]
name = "AI21"
command = a, a, a, y
time = 1

[Command]
name = "AI22"
command = a, a, a, z
time = 1

[Command]
name = "AI23"
command = a, a, b, a
time = 1

[Command]
name = "AI24"
command = a, a, c, a
time = 1

[Command]
name = "AI25"
command = a, a, x, a
time = 1

[Command]
name = "AI26"
command = a, a, y, a
time = 1

[Command]
name = "AI27"
command = a, a, z, a
time = 1

[Command]
name = "AI28"
command = a, b, a, a
time = 1

[Command]
name = "AI29"
command = a, c, a, a
time = 1

[Command]
name = "AI30"
command = a, x, a, a
time = 1

[Command]
name = "AI31"
command = a, y, a, a
time = 1

[Command]
name = "AI32"
command = a, z, a, a
time = 1

[Command]
name = "AI33"
command = b, a, a, a
time = 1

[Command]
name = "AI34"
command = c, a, a, a
time = 1

[Command]
name = "AI35"
command = x, a, a, a
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
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "2XQCF_x"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "Torpedos"
command = ~D, DB, B, c
time = 20

[Command]
name = "Torpedos Lanzamiento"
command = ~D, DF, F, c
time = 20

[Command]
name = "kamehameha"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "super kamehameha"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "hyper kamehameha"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "Hyper 2"
command = ~D, DF, B, a
time = 30

[Command]
name = "fireball"
command = ~D, F, c
time = 30

[Command]
name = "2XQCB_x"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "2XQCB_y"
command = ~D, DB, B, D, DB, B, y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "Ki Explosion"
command = ~D, F, D, F, b

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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

[Command]
name = "holddown_z"
command = /$D,z
time = 1

[command]
name = "superjump"
command = ~$D, D, U
time = 15
[command]
name = "superjumpF"
command = ~$D, D, UF
time = 15
[command]
name = "superjumpB"
command = ~$D, D, UB
time = 15

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
name = "holdz"
command = /z
time = 1

[Command]
name = "holdc"
command = /c
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
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
;[State -1, Smash Kung Fu Upper]
;type = ChangeState
;value = 3050
;triggerall = command = "SmashKFUpper"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3050,3100)
;trigger2 = movecontact

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
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Hyper kamehameha
[State -1, hyper kamehameha]
type = ChangeState
value = 3000
triggerall = command = "hyper kamehameha"
triggerall = power >= 3000
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Super kamehameha
[State -1, super kamehameha]
type = ChangeState
value = 3700
triggerall = command = "super kamehameha"
triggerall = power >= 2000
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Kamehameha
[State -1, kamehameha]
type = ChangeState
value = 5589
triggerall = command = "kamehameha"
triggerall = power >= 1000
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Hyper 2
[State -1, Hyper 2]
type = ChangeState
value = 3501
triggerall = command = "Hyper 2"
triggerall = power >= 500
trigger1 = var(1) 

;---------------------------------------------------------------------------
;Hyper 3
[State -1, Hyper 3]
type = ChangeState
value = 2024
triggerall = command = "Ki Explosion"
triggerall = power >= 500
triggerall = Numhelper(240) = 0
trigger1 = var(1)
;===========================================================================
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
; Super Jump Extracted on Vegeta by Duende Macabro

[State -1, Superjump]
type = changestate
triggerall = command = "superjump" && statetype!= A
trigger1 = ctrl = 1
value = 55

[State -1, SuperjumpF]
type=changestate
triggerall = command = "superjumpF" && statetype != A
trigger1 = ctrl = 1
value = 57

[State -1,SuperjumpB]
type = changestate
triggerall = command = "superjumpB" && statetype != A
trigger1 = ctrl = 1
value = 59

;----------------------------------------------------------------------------
; Ki Charge
[State -1, Charge]
type = ChangeState
value = 700
triggerall = statetype = s
triggerall = power < 3000
triggerall = command = "holdz"
triggerall = command = "holdc"
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 400) && (Movecontact)
trigger3 = (StateNo = 430) && (Movecontact)

[State -1, combo punch 2]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = stateno = 200
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)

[State -1, combo punch 3]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = stateno = 210
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && (Movecontact)

[State -1, combo punch 4]
type = ChangeState
value = 3196
triggerall = command = "z"
triggerall = stateno = 440
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 440) && (Movecontact)

[State -1, combo punch 4]
type = ChangeState
value = 897
triggerall = command = "c"
triggerall = stateno = 3196
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 3196) && (Movecontact)

;----------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 230) && (Movecontact)
trigger4 = (stateno = 400) && (Movecontact)
trigger5 = (stateno = 430) && (Movecontact)

;---------------------------------------------------------------------------
;Heavy Blow
;立ち強キック
[State -1, Heavy Blow]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 400) && (Movecontact)
trigger4 = (stateno = 210) && (Movecontact)
trigger5 = (stateno = 430) && (Movecontact)
trigger6 = (stateno = 230) && (Movecontact)

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
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 430) && (Movecontact)
trigger4 = (stateno = 400) && (Movecontact)

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

[State -1, combo kick 3]
type = ChangeState
value = 502
triggerall = command = "a"
triggerall = stateno = 230
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && (Movecontact)

;---------------------------------------------------------------------------
;After Image
[State -1, After Image]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Taunt
;挑発
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)

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
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 400) && (Movecontact)
trigger4 = (stateno = 430) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)

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
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 400) && (Movecontact)


;---------------------------------------------------------------------------
;Crouching medium Kick
;しゃがみ強キック
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 400) && (Movecontact)
trigger4 = (stateno = 430) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)

;-----------------------------------------------------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 400) && (Movecontact)
trigger4 = (stateno = 430) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (Movecontact)
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno= 610
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;----------------------------------------------------------------------------
;--------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;----------------------------- >>> AI <<< ------------------------------------
;-----------------------------------------------------------------------------

[State -1, AI]
type = Varset
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
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
trigger32 = command = "AI32"
trigger33 = command = "AI33"
trigger34 = command = "AI34"
trigger35 = command = "AI35"
v = 59
value = 1

;---------------------------------------------------------------------------
;Fireball 2
[State -1, Fireball 2]
type = ChangeState
value = 1501
triggerall = var(20) >= 0
triggerall = command = "fireball"
trigger1 = stateno = 1500
trigger1 = animelemtime(2) >= 5
triggerall = Numhelper(2250) = 0

;---------------------------------------------------------------------------
;Fireball
[State -1, Fireball]
type = ChangeState
value = 1500
triggerall = var(20) >= 0
triggerall = command = "fireball"
triggerall = power >= 200
triggerall = Numhelper(2250) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1501
trigger2 = animelemtime(2) >= 5

;-----------------------------------------------------------------------------
;Torpedos
[State -1, Torpedos]
type = ChangeState
triggerall = power >= 200
triggerall = command = "Torpedos"
triggerall = Numhelper(2250) < 1
value = ifelse(Numhelper(2250)=3,2203,ifelse(Numhelper(2250)=2,2202,ifelse(Numhelper(2250)=1, 2201, 2200)))
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 220) && (movecontact = 1)
trigger6 = (stateno = 230)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 420)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 440) && (movecontact = 1)

;------------------------------------------------------------------------------
; Air Run_Fwd
[State -1, AirRunFwd]
type = ChangeState
value = 102
triggerall = var(4) = 0
trigger1 = command = "FF" && statetype = A && ctrl && (stateno != 100 || stateno != 102)
trigger2 = command = "FF" && (stateno = [600,650]) && time > 25

; Air Run_Back
[State -1, AirRunBack]
type = ChangeState
value = 107
triggerall = var(4) = 0
trigger1 = command = "BB" && statetype = A && ctrl && stateno != 105
trigger2 = command = "BB" && (stateno = [600,650]) && time > 25
