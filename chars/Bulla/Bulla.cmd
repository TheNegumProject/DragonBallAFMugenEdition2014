;Bulla by Szowel .cmd file


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
name = "Bura Garlic Ho"
command = B, F, D, x
time = 40

[Command]
name = "Bura Big Bang"
command = B, F, D, a
time = 40
;-| Special Motions |------------------------------------------------------
[Command]
name = "Kienzan"
command = D, F, z
time = 40

[Command]
name = "Heavy Punch Dash"
command = D, F, y
time = 25

[Command]
name = "Elbow Push"
command = D, F, x
time = 25


[Command]
name = "Rorate Kick"
command = D, F, a
time = 25

[Command]
name = "Push Knee"
command = /F, a
time = 25

[Command]
name = "Heavy Kick 1"
command = D, B, a
time = 25

[Command]
name = "Heavy Kick 2"
command = D, F, b
time = 25


;-| Basic Motions |------------------------------------------------------
[Command]
name = "charge"
command = /c
time = 1

[Command]
name = "Kikoha Ball"
command = z
time = 1

;-| AI |---------------------------------------------------------
 [Command]
name = "ai1"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai2"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai3"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai4"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai5"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai6"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai7"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai8"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai9"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai10"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai11"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai12"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai13"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai14"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai15"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai16"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai17"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai18"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai19"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai20"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai21"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai22"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai23"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai24"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai25"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai26"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai27"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai28"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai29"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai30"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

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
name = "holdx";Required (do not remove)
command = /x
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

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
 ;---------------------------------------------------------------------------
;Bura Garlic Ho
[State -1, Stand Light Punch]
type = ChangeState
value = 804
triggerall = command = "Bura Garlic Ho"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power >= 2000
 ;---------------------------------------------------------------------------
;Bura Big Bang
[State -1, Stand Light Punch]
type = ChangeState
value = 812
triggerall = command = "Bura Big Bang"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power >= 1000
;---------------------------------------------------------------------------
;Bura Garlic Ho Air
[State -1, Stand Light Punch]
type = ChangeState
value = 808
triggerall = command = "Bura Garlic Ho"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = power > 1500
 ;---------------------------------------------------------------------------
;Kikoha Ball
[State -1, Stand Light Punch]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = power > 100
trigger1 = command != "Kienzan"

 ;---------------------------------------------------------------------------
 ;Elbow Push
[State -1, Stand Light Punch]
type = ChangeState
value = 819
triggerall = command = "Elbow Push"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

 ;---------------------------------------------------------------------------
 ;Kienzan
[State -1, Stand Light Punch]
type = ChangeState
value = 815
triggerall = command = "Kienzan"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power > 499

 ;---------------------------------------------------------------------------
 ;Heavy Punch Dash
[State -1, Stand Light Punch]
type = ChangeState
value = 810
triggerall = command = "Heavy Punch Dash"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power > 150

 ;---------------------------------------------------------------------------
 ;Rorate Kick
[State -1, Stand Light Punch]
type = ChangeState
value = 817
triggerall = command = "Rorate Kick"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

 ;---------------------------------------------------------------------------
 ;Rorate Kick Air
[State -1, Stand Light Punch]
type = ChangeState
value = 818
triggerall = command = "Rorate Kick"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

 ;---------------------------------------------------------------------------
 ;Heavy Kick 2
[State -1, Stand Light Punch]
type = ChangeState
value = 822
triggerall = command = "Heavy Kick 2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

 ;---------------------------------------------------------------------------
 ;Heavy Kick 1
[State -1, Stand Light Punch]
type = ChangeState
value = 821
triggerall = command = "Heavy Kick 1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

 ;---------------------------------------------------------------------------
;Charge Up
[State -1, Stand Light Punch]
type = ChangeState
value = 700
triggerall = command = "charge"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power < 3000

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


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 9

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
triggerall = command != "Heavy Kick 2"

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

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
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

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
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

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
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

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
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
[State -1, Air Run Fwd]
type = ChangeState
value = 60
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Air Run Back]
type = ChangeState
value = 65
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;=====================================AI====================================
;---------------------------------------------------------------------------
[State -1]
type = varset
triggerall = var(36) != 1
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10 = command = "ai10"
trigger11 = command = "ai11"
trigger12 = command = "ai12"
trigger13 = command = "ai13"
trigger14 = command = "ai14"
trigger15 = command = "ai15"
trigger16 = command = "ai16"
trigger17= command = "ai17"
trigger18= command = "ai18"
trigger19= command = "ai19"
trigger20= command = "ai20"
trigger21 = command = "ai21"
trigger22= command = "ai22"
trigger23= command = "ai23"
trigger24= command = "ai24"
trigger25= command = "ai25"
trigger26 = command = "ai26"
trigger27= command = "ai27"
trigger28= command = "ai28"
trigger29= command = "ai29"
trigger30= command = "ai30"
v = 36
value = 1

;---------------------------------------------------------------------------
