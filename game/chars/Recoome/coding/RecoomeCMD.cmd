;Recoome's CMD
;-| Super Motions |--------------------------------------------------------

[Command]
name = "KiBlast1"
command = ~D, DB, B, x+y
time = 25

[Command]
name = "KiBlast2"
command = ~D, DB, B, y+z
time = 25

[Command]
name = "KiBlast3"
command = ~D, DB, B, x+z
time = 25

[Command]
name = "KiBeam1"
command = ~D, DB, B, a+b
time = 25

[Command]
name = "KiBeam2"
command = ~D, DB, B, b+c
time = 25

[Command]
name = "KiBeam3"
command = ~D, DB, B, a+c
time = 25

[Command]
name = "HyperC1"
command = ~D, DF, F, D, DF, F, x+y
time = 30

[Command]
name = "HyperC2"
command = ~D, DF, F, D, DF, F, y+z
time = 30

[Command]
name = "HyperC3"
command = ~D, DF, F, D, DF, F, x+z
time = 30

[Command]
name = "Bomber1"
command = ~B, D, F, B, a+b
time = 30

[Command]
name = "Bomber2"
command = ~B, D, F, B, b+c
time = 30

[Command]
name = "Bomber3"
command = ~B, D, F, B, a+c
time = 30

[Command]
name = "Bomber1a"
command = ~B,DB, D,DF, F, B, x+y
time = 30

[Command]
name = "Bomber2a"
command = ~B,DB, D,DF, F, B, y+z
time = 30

[Command]
name = "Bomber3a"
command = ~B,DB, D,DF, F, B, x+z
time = 30

[Command]
name = "Armor"
command = ~D, DF, F, a+b
time = 25

[Command]
name = "FallingStar1"
command = ~D, DB, B, F, a+b

[Command]
name = "FallingStar2"
command = ~D, DB, B, F, b+c

[Command]
name = "FallingStar3"
command = ~D, DB, B, F, a+c

;-| Special Motions |------------------------------------------------------
;--| Half Circle  |--------------------------------------------------------
[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, x
time = 15

[Command]
name = "HCF_y"
command = ~B, DB, D, DF, F, y
time = 15

[Command]
name = "HCF_z"
command = ~B, DB, D, DF, F, z
time = 15

[Command]
name = "HCF_x2"
command = ~B, D, F, x
time = 15

[Command]
name = "HCF_y2"
command = ~B, D, F, y
time = 15

[Command]
name = "HCF_z2"
command = ~B, D, F, z
time = 15

;-| Quarter Circle |----------------------------------------------------

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCBF_a"
command = ~D, DB, B, F, a

[Command]
name = "QCBF_b"
command = ~D, DB, B, F, b

[Command]
name = "QCBF_c"
command = ~D, DB, B, F, c

;-| Misc Special |----------------------------------------------------

[Command]
name = "FBF_x"
command = ~F, B, F, x

[Command]
name = "FBF_y"
command = ~F, B, F, y

[Command]
name = "FBF_z"
command = ~F, B, F, z

[Command]
name = "DD_a"
command = D, D, a
time = 15

[Command]
name = "DD_b"
command = D, D, b
time = 15

[Command]
name = "DD_c"
command = D, D, c
time = 15

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

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "fly"
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
name = "s"
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
;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_yb"
command = /y+b
time = 1

[Command]
name = "hold_xa"
command = /x+a
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
name = "hold_s"
command = /s
time = 1
;-| AI Activate |--------------------------------------------------------------
; Artificial Intelligence
[Command]
name = "AI_01"
command = ~D, DF, F, F, DF, D, DB, B, a
time = 1

[Command]
name = "AI_02"
command = ~D, DF, F, F, DF, D, DB, B, b
time = 1

[Command]
name = "AI_03"
command = ~D, DF, F, F, DF, D, DB, B, c
time = 1

[Command]
name = "AI_04"
command = ~D, DF, F, F, DF, D, DB, B, x
time = 1

[Command]
name = "AI_05"
command = ~D, DF, F, F, DF, D, DB, B, y
time = 1

[Command]
name = "AI_06"
command = ~D, DF, F, F, DF, D, DB, B, z
time = 1

[Command]
name = "AI_07"
command = ~D, DB, B, B, DB, D, DF, F, a
time = 1

[Command]
name = "AI_08"
command = ~D, DB, B, B, DB, D, DF, F, b
time = 1

[Command]
name = "AI_09"
command = ~D, DB, B, B, DB, D, DF, F, c
time = 1

[Command]
name = "AI_10"
command = ~D, DB, B, B, DB, D, DF, F, x
time = 1

[Command]
name = "AI_11"
command = ~D, DB, B, B, DB, D, DF, F, y
time = 1

[Command]
name = "AI_12"
command = ~D, DB, B, B, DB, D, DF, F, z
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
;                move, you'll want ctrl
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
;AI Activation
;---------------------------------------------------------------------------
[State -1, ArtificialIntelligence]
type = VarSet	
triggerall = Var(39) != 1
trigger1 = command = "AI_01" 
trigger2 = command = "AI_02"
trigger3 = command = "AI_03"
trigger4 = command = "AI_04"
trigger5 = command = "AI_05"
trigger6 = command = "AI_06"
trigger7 = command = "AI_07"
trigger8 = command = "AI_08"
trigger9 = command = "AI_09"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
v = 39
value = 1
;===========================================================================
;Hyper Attacks
;---------------------------------------------------------------------------
;Tank Mode/Armor Mode
[State -1, Tank]
type = null;ChangeState
value = 4000
triggerall = (command = "Armor") && command != "holddown" && power >= 1000 && Var(39) != 1 && Var(4) = 0
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Recoome Ultra Fighting Bomber
[State -1, RUFB]
type = ChangeState
value = 1600
triggerall = (command = "Bomber1" || command = "Bomber2" || command = "Bomber3" || command = "Bomber1a" || command = "Bomber2a" || command = "Bomber3a") && power >= 3000
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,249]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno = 300) && (movecontact)
;---------------------------------------------------------------------------
;Recoome Hyper Combo
[State -1, Hyper Combo]
type = ChangeState
value = 2000
triggerall = (command = "HyperC1" || command = "HyperC2" || command = "HyperC3") && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,249]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno = 300) && (movecontact)
;---------------------------------------------------------------------------
;Recoome Falling Star
[State -1, Falling Star]
type = ChangeState
value = 2100
triggerall = (command = "FallingStar1" || command = "FallingStar2" || command = "FallingStar3") && power >= 2000
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,249]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
;---------------------------------------------------------------------------
;Ki Blast
[State -1, KiBlast]
type = null;ChangeState
value = 1800
triggerall = (command = "KiBlast1" || command = "KiBlast2" || command = "KiBlast3") && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,249]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno = 300) && (movecontact)
;---------------------------------------------------------------------------
;Mouth Beam
[State -1, Mouth Beam]
type = ChangeState
value = 1900
triggerall = (command = "KiBeam1" || command = "KiBeam2" || command = "KiBeam3") && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,249]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno = 300) && (movecontact)

;===========================================================================
;-=Special Attacks/Special Abilities/Throws/Combinations=-
;---------------------------------------------------------------------------
;Super Jump
[State -1, SuperJump]
type = ChangeState
value = 41
triggerall = (command = "holdup" || (command="a"&&command="b"&&command="c"))
trigger1 = statetype = C && ctrl && stateno != 3100
trigger2 = (stateno = 250 && movecontact)
;---------------------------------------------------------------------------
; Run_Fwd
[State -1, RunFwd]
type = ChangeState
value = 100
triggerall = var(4) = 0
trigger1 = command = "FF" && statetype = S && ctrl && (stateno != 100 || stateno != 102)

; Air Run_Fwd
[State -1, AirRunFwd]
type = ChangeState
value = 102
triggerall = var(4) = 0 && !(var(42)>0&&power=0)
trigger1 = command = "FF" && statetype = A && ctrl && (stateno != 100 || stateno != 102)
trigger2 = command = "FF" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
; Run_Back
[State -1, RunBack]
type = ChangeState
value = 105
triggerall = var(4) = 0
trigger1 = command = "BB" && statetype = S && ctrl

; Air Run_Back
[State -1, AirRunBack]
type = ChangeState
value = 107
triggerall = var(4) = 0 && !(var(42)>0&&power=0)
trigger1 = command = "BB" && statetype = A && ctrl && stateno != 105
trigger2 = command = "BB" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
; Air Run_Up
[State -1, AirUp]
type = ChangeState
value = 109
triggerall = var(4) = 0 && !(var(42)>0&&power=0)
trigger1 = command = "UU" && statetype = A && ctrl
trigger2 = command = "UU" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
;Recoome Kick Counter
[State -1, Recoome Kick Counter]
type = ChangeState
value = 1400
triggerall = (command = "QCF_a" || command = "QCF_b" || command = "QCF_c") && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Recoome Head Butt
[State -1, Recoome Head Butt]
type = ChangeState
value = 1300
triggerall = (command = "FBF_x" || command = "FBF_y" || command = "FBF_z") && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,249]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
;---------------------------------------------------------------------------
;Recoome Aerial Head Butt
[State -1, Recoome A Head Butt]
type = ChangeState
value = 1305
triggerall = (command = "FBF_x" || command = "FBF_y" || command = "FBF_z") && command != "holddown"
trigger1 = statetype = A && ctrl
trigger2 = (stateno=[600,659])
;---------------------------------------------------------------------------
;Leg Drop
[State -1, Leg Drop]
type = ChangeState
value = 1450
triggerall = (command = "DD_a" || command = "DD_b" || command = "DD_c")
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
;Recoome Walk and Toss
[State -1, Recoome Walk n Toss]
type = ChangeState
value = 1500
triggerall = (command = "HCF_x" || command = "HCF_y" || command = "HCF_z" || command = "HCF_x2" || command = "HCF_y2" || command = "HCF_z2") && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,249]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
;---------------------------------------------------------------------------
; Recoome Meteor
[State -1, Meteor Slam]
type = ChangeState
value = 900
triggerall = (command = "QCBF_a" || command = "QCBF_b" || command = "QCBF_c")
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,249]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
;---------------------------------------------------------------------------
;Recoome Punch
[State -1, Recoome Punch]
type = ChangeState
value = 300
triggerall = (command = "QCF_x" || command = "QCF_y" || command = "QCF_z") && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; Fireball
[State -1, Fireball]
type = ChangeState
value = 1000
triggerall = (command = "QCB_x" || command = "QCB_y" || command = "QCB_z")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = (stateno = 300 || stateno = 310)
;trigger5 = (stateno = 810) && time = [20,40]
;---------------------------------------------------------------------------
; Mouth Blast Weak
[State -1, MBFireballW]
type = ChangeState
value = 1100
triggerall = (command = "QCB_a")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = (stateno = 300 || stateno = 310)
;---------------------------------------------------------------------------
; Mouth Blast Medium
[State -1, MBFireballM]
type = ChangeState
value = 1110
triggerall = (command = "QCB_b")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = (stateno = 300)
;---------------------------------------------------------------------------
; Mouth Blast WStrong
[State -1, MBFireballS]
type = ChangeState
value = 1120
triggerall = (command = "QCB_c")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = (stateno = 300)
;---------------------------------------------------------------------------
; Shoulder Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "x" && command = "y") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
;---------------------------------------------------------------------------
; Throw to Elbow Bash
;[State -1, ThrowtEB]
;type = ChangeState
;value = 850
;triggerall = (command = "y" && command = "z") && statetype = S && ctrl && stateno != 100
;trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
;trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
;---------------------------------------------------------------------------
; Recoome Meteor
;[State -1, Meteor Slam]
;type = ChangeState
;value = 900
;triggerall = (command = "b" && command = "c") && statetype = S && ctrl && stateno != 100
;trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
;trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
;---------------------------------------------------------------------------
; Suplex
[State -1, Suplex]
type = ChangeState
value = 990
triggerall = (command = "a" && command = "b") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
;---------------------------------------------------------------------------
; Advance Guard
[State -1, Advance Guard]
type = ChangeState
value = 330
triggerall = ((command = "x" && command = "y") || (command = "x" && command = "z") || (command = "z" && command = "y")) && command != "holddown" && power >= 200
trigger1 = stateno = [150, 156]
;---------------------------------------------------------------------------
; Zanzoken Forward
[State -1, Zanzoken.F]
type = ChangeState
value = 2900
triggerall = (command = "a"  && command = "x") && (stateno = 100 || stateno = 102)
trigger1 = (statetype = S || statetype = A) && ctrl
;---------------------------------------------------------------------------
; Zanzoken Backward
[State -1, Zanzoken.B]
type = ChangeState
value = 2901
triggerall = (command = "a"  && command = "x") && (stateno = 105 || stateno = 107)
trigger1 = (statetype = S || statetype = A) && ctrl
;---------------------------------------------------------------------------
; Zanzoken Upward
[State -1, Zanzoken.U]
type = ChangeState
value = 2903
triggerall = (command = "a"  && command = "x") && (stateno = 109)
trigger1 = (statetype = S || statetype = A) && ctrl
;===========================================================================
; Teleport Attacks
;---------------------------------------------------------------------------
; TeleCKickBack Chain
[State -1, TKick.Chain]
type = ChangeState
value = 2700
triggerall = (var(34) != 1 && var(34) != 12 && var(34) != 13 && var(34) != 123 && var(34) != 4)
triggerall = (command = "a" && command = "x") && command = "holdback"
trigger1 = (stateno = 250) && movehit && time = [10,30]
trigger2 = (stateno = 2711 || stateno = 2721) && movehit && time = [3,25]
trigger3 = (stateno = 810) && time = [20,40]

; TeleJKick Chain
[State -1, TPunch.Chain]
type = ChangeState
value = 2710
triggerall = (var(34) != 2 && var(34) != 12 && var(34) != 23 && var(34) != 123 && var(34) != 4)
triggerall = (command = "a" && command = "x") && command = "holdfwd"
trigger1 = (stateno = 250) && movehit && time = [10,30]
trigger2 = (stateno = 2701 || stateno = 2721) && movehit && time = [3,25]
trigger3 = (stateno = 810) && time = [20,40]

; TeleElbow Chain
[State -1, TElbow.Chain]
type = ChangeState
value = 2730
triggerall = (var(34) != 4)
triggerall = (command = "a" && command = "x") && command = "holddown"
trigger1 = (stateno = 250) && movehit && time = [10,30]
trigger2 = (stateno = 2701 || stateno = 2711 || stateno = 2721) && movehit && time = [3,25]
trigger3 = (stateno = 810) && time = [20,40]
;---------------------------------------------------------------------------
;Charge Up/Power Up
[State -1, ChargePower]
type = ChangeState
value = 1700
triggerall = time > 2 && power < 3000 && (command != "holdfwd" && command != "holdback")
trigger1 = command = "hold_b" && command = "hold_y" && statetype = S && ctrl
;===========================================================================
;-=Basic Attacks=-
;---------------------------------------------------------------------------
; Elbow
[State -1, Elbow]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown" && p2bodydist x <= 6
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
; Stand High Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno=205) && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
; Stand Force Punch
[State -1, Force Punch]
type = ChangeState
value = 220
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = [200,210]) || (stateno = [230,235])) && movecontact
;---------------------------------------------------------------------------
; Launcher
[State -1, Launcher]
type = ChangeState
value = 250
triggerall = ((command = "a" && command = "b") || (command = "b" && command = "c") || (command = "a" && command = "c")) && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,240]) && movecontact
;---------------------------------------------------------------------------
; Knee
[State -1, Knee]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205) && movecontact
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = [200,210]) || stateno = 230) && movecontact
;---------------------------------------------------------------------------
; Standing Stong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,220]) && movecontact
trigger3 = (stateno = [230,239]) && movecontact
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; Crouching Elbow
[State -1, Crouching Light Punch]
type = ChangeState
value = 405
triggerall = (command = "x") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = [200,205]) && movecontact
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (command = "y") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 405 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = (stateno = [200,210]) && movecontact
trigger5 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
; Crouching strong Punch
[State -1, Crouching strong Punch]
type = ChangeState
value = 410
triggerall = (command = "z") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = [400,405]) && movecontact
trigger3 = (stateno = [430,440]) && movecontact
trigger4 = (stateno = [200,220]) && movecontact
trigger5 = (stateno = [230,235]) && movecontact
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 405 && movecontact
trigger3 = (stateno = [200,205]) && movecontact
trigger4 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
; Crouching med Kick
[State -1, Crouching med Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = [400,405]) && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = (stateno = [200,210]) && movecontact
trigger5 = (stateno = [230,235]) && movecontact
;---------------------------------------------------------------------------
; Crouching strong Kick
[State -1, Crouching strong Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = [400,410]) && movecontact
trigger3 = (stateno = [430,440]) && movecontact
trigger4 = (stateno = [200,220]) && movecontact
trigger5 = (stateno = [230,240]) && movecontact
;---------------------------------------------------------------------------
; Jump Elbow
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x")
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; Jump med Punch
[State -1, Jump medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y")
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 635 && movecontact
;---------------------------------------------------------------------------
; Jump strong Punch
[State -1, Jump strong Punch]
type = ChangeState
value = 620
triggerall = (command = "z")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = [630,635]) && movecontact
;---------------------------------------------------------------------------
; Jump Knee
[State -1, Jump Knee]
type = ChangeState
value = 635
triggerall = (command = "a")
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = (command = "b")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 635 && movecontact
;---------------------------------------------------------------------------
; Jump strong Kick
[State -1, Jump strong Kick]
type = ChangeState
value = 640
triggerall = (command = "c")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = [630,635]) && movecontact
;---------------------------------------------------------------------------
