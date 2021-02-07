;Bojack's CMD
;-| Super Motions |--------------------------------------------------------

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
name = "KiBlast1"
command = ~D, DB, B, x+y
time = 25

[Command]
name = "KiBlast2"
command = ~D, DB, B, y+z
time = 25

[Command]
name = "KiBlast3"
command = ~D, DB, B, x+y
time = 25

[Command]
name = "2xKiBlast1"
command = ~D, DF, F, B, x+y
time = 25

[Command]
name = "2xKiBlast2"
command = ~D, DF, F, B, y+z
time = 25

[Command]
name = "2xKiBlast3"
command = ~D, DF, F, B, x+y
time = 25

[Command]
name = "SuperString1"
command = ~F, DF, D, DB, B, a+b
time = 25

[Command]
name = "SuperString2"
command = ~F, DF, D, DB, B, b+c
time = 25

[Command]
name = "SuperString3"
command = ~F, DF, D, DB, B, a+c
time = 25

[Command]
name = "SuperString1_2"
command = ~F, D, B, a+b
time = 25

[Command]
name = "SuperString2_2"
command = ~F, D, B, b+c
time = 25

[Command]
name = "SuperString3_2"
command = ~F, D, B, a+c
time = 25

;-| Special Motions |------------------------------------------------------
;--| Half Circle  |--------------------------------------------------------
[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, x
time = 18

[Command]
name = "HCF_y"
command = ~B, DB, D, DF, F, y
time = 18

[Command]
name = "HCF_z"
command = ~B, DB, D, DF, F, z
time = 18

[Command]
name = "HCF_x2"
command = ~B, D, F, x
time = 18

[Command]
name = "HCF_y2"
command = ~B, D, F, y
time = 18

[Command]
name = "HCF_z2"
command = ~B, D, F, z
time = 18

[Command]
name = "HCB_a"
command = ~F, DF, D, DB, B, a
time = 18

[Command]
name = "HCB_b"
command = ~F, DF, D, DB, B, b
time = 18

[Command]
name = "HCB_c"
command = ~F, DF, D, DB, B, c
time = 18

[Command]
name = "HCB_a2"
command = ~F, D, B, a
time = 18

[Command]
name = "HCB_b2"
command = ~F, D, B, b
time = 18

[Command]
name = "HCB_c2"
command = ~F, D, B, c
time = 18

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

[Command]
name = "QCFD_x"
command = ~F, DF, x

[Command]
name = "QCFD_y"
command = ~F, DF, y

[Command]
name = "QCFD_z"
command = ~F, DF, z

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
;Double Energy Blast
[State -1, Double Energy Blast]
type = ChangeState
value = 2100
triggerall = (command = "2xKiBlast1" || command = "2xKiBlast2" || command = "2xKiBlast3") && power >= 2000
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno=[1300,1312]) && movecontact
trigger5 = (stateno=[1360,1362]) && movecontact

;Ki String Super Combo
[State -1, Ki String Super Combo]
type = ChangeState
value = 2000
triggerall = (command = "SuperString1" || command = "SuperString2" || command = "SuperString3" || command = "SuperString1_2" || command = "SuperString2_2" || command = "SuperString3_2") && power >= 2000
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno=[1300,1312]) && movecontact
trigger5 = (stateno=[1360,1362]) && movecontact

;Energy Beam
[State -1, Mouth Beam]
type = ChangeState
value = 1800
triggerall = (command = "KiBeam1" || command = "KiBeam2" || command = "KiBeam3") && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno=[1300,1312]) && movecontact
trigger5 = (stateno=[1360,1362]) && movecontact

;Energy Blast
[State -1, Energy Blast]
type = ChangeState
value = 1900
triggerall = (command = "KiBlast1" || command = "KiBlast2" || command = "KiBlast3") && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno=[1300,1312]) && movecontact
trigger5 = (stateno=[1360,1362]) && movecontact

;===========================================================================
;-=Special Attacks/Special Abilities/Throws/Combinations=-
;---------------------------------------------------------------------------
;Super Jump
[State -1, SuperJump]
type = ChangeState
value = 41
triggerall = (command = "holdup" || (command="a"&&command="b"&&command="c"))
trigger1 = statetype = C && ctrl && stateno != 3100
trigger2 = (stateno = 260 && movecontact)
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
; Fireball
[State -1, Fireball]
type = ChangeState
value = 1010
triggerall = (command = "QCB_x" || command = "QCB_y" || command = "QCB_z")
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
;---------------------------------------------------------------------------
;Ki String Down
[State -1, VarSet.KS_D]
type = VarSet
triggerall = (command = "HCB_a" || command = "HCB_a2")
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,250])
trigger3 = (stateno=[400,449])
trigger4 = (stateno = [1360,1362])
trigger5 = (stateno = [1310,1312])
v = 28
value = 1
ignorehitpause=1
;Ki String Straight
[State -1, VarSet.KS_S]
type = VarSet
triggerall = (command = "HCB_b" || command = "HCB_b2")
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno = [1360,1362]) && movecontact
trigger5 = (stateno = [1310,1312]) && movecontact
v = 28
value = 2
ignorehitpause=1
;Ki String Up
[State -1, VarSet.KS_U]
type = VarSet
triggerall = (command = "HCB_c" || command = "HCB_c2")
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno = [1360,1362]) && movecontact
trigger5 = (stateno = [1310,1312]) && movecontact
v = 28
value = 3
ignorehitpause=1

; Ki String Pull
[State -1, Ki String Pull]
type = ChangeState
value = 1100
triggerall = var(28) > 0
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno = [1360,1362]) && movecontact
trigger5 = (stateno = [1310,1312]) && movecontact
ignorehitpause=1
;---------------------------------------------------------------------------
; Finger Beam Laser/Lazer Beam
[State -1, Finger Beam F]
type = ChangeState
value = 1050
triggerall = (command = "QCB_b" )
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 ||  stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440 ||  stateno = 450) && movecontact
trigger4 = (stateno = [1300,1312]) && movecontact
trigger5 = (stateno = [1360,1362]) && movecontact

[State -1, Finger Beam U]
type = ChangeState
value = 1052
triggerall = (command = "QCB_c" )
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 ||  stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440 ||  stateno = 450) && movecontact
trigger4 = (stateno = [1300,1312]) && movecontact
trigger5 = (stateno = [1360,1362]) && movecontact

[State -1, Finger Beam D]
type = ChangeState
value = 1054
triggerall = (command = "QCB_a" )
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 ||  stateno = 250) && movecontact
trigger3 = (stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440 ||  stateno = 450) && movecontact
trigger4 = (stateno = [1300,1312]) && movecontact
trigger5 = (stateno = [1360,1362]) && movecontact
;---------------------------------------------------------------------------
; Double Upper
[State -1, 2xUpper.W]
type = ChangeState
value = 1300
triggerall = (command = "QCF_x")
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno=[1360,1362]) && movecontact

[State -1, 2xUpper.M]
type = ChangeState
value = 1301
triggerall = (command = "QCF_y")
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno=[1360,1362]) && movecontact

[State -1, 2xUpper.S]
type = ChangeState
value = 1302
triggerall = (command = "QCF_z")
trigger1 = statetype = S && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
trigger4 = (stateno=[1360,1362]) && movecontact
;---------------------------------------------------------------------------
; Shoulder Bash
[State -1, ShoulderB.W]
type = ChangeState
value = 1360
triggerall = (command = "QCFD_x")
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact

[State -1, ShoulderB.M]
type = ChangeState
value = 1361
triggerall = (command = "QCFD_y")
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact

[State -1, ShoulderB.S]
type = ChangeState
value = 1362
triggerall = (command = "QCFD_z")
trigger1 = (statetype = S||statetype = C) && ctrl
trigger2 = (stateno=[200,250]) && movecontact
trigger3 = (stateno=[400,449]) && movecontact
;---------------------------------------------------------------------------
; Toss
[State -1, Toss]
type = ChangeState
value = 800
triggerall = (command = "x" && command = "y") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
;---------------------------------------------------------------------------
; Bear Hug
[State -1, Hug]
type = ChangeState
value = 900
triggerall = (command = "a" && command = "b") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
;---------------------------------------------------------------------------
; Advance Guard
[State -1, Advance Guard]
type = ChangeState
value = 330
triggerall = ((command = "x" && command = "y") || (command = "x" && command = "z") || (command = "z" && command = "y")) && power >= 200
trigger1 = (stateno = [150, 156]) && (statetype = S || statetype = C)
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
;---------------------------------------------------------------------------
; Ki Barrier
[State -1, Ki Barrier]
type = ChangeState
value = 1150
triggerall = command = "a" && command = "x"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Charge Up/Power Up
[State -1, ChargePower]
type = ChangeState
value = 1700
triggerall = power < 3000 && (command != "holdfwd" && command != "holdback") && var(39) = 0
trigger1 = command = "hold_b" && command = "hold_y" && statetype = S && ctrl
;Charge Up/Power Up AI
[State -1, AI.ChargePower]
type = ChangeState
value = 1700
triggerall = power < 3000 && (command != "holdfwd" && command != "holdback") && var(39) = 1 && p2bodydist x > 150
trigger1 = command = "hold_b" && command = "hold_y" && statetype = S && ctrl && random < 250
;===========================================================================
; Teleport Attacks
;---------------------------------------------------------------------------
; TeleCKickBack Chain
[State -1, TKick.Chain]
type = ChangeState
value = 2700
triggerall = (var(34) != 1 && var(34) != 12 && var(34) != 13 && var(34) != 123 && var(34) != 4)
triggerall = (command = "a" && command = "x") && command = "holdback"
trigger1 = (stateno = 260) && movehit && time = [10,30]
trigger2 = (stateno = 2711 || stateno = 2721) && movehit && time = [3,25]
trigger3 = (stateno = 810) && time = [20,40]

; TeleJKick Chain
[State -1, TPunch.Chain]
type = ChangeState
value = 2710
triggerall = (var(34) != 2 && var(34) != 12 && var(34) != 23 && var(34) != 123 && var(34) != 4)
triggerall = (command = "a" && command = "x") && command = "holdfwd"
trigger1 = (stateno = 260) && movehit && time = [10,30]
trigger2 = (stateno = 2701 || stateno = 2721) && movehit && time = [3,25]
trigger3 = (stateno = 810) && time = [20,40]

; TeleElbow Chain
[State -1, TElbow.Chain]
type = ChangeState
value = 2730
triggerall = (var(34) != 4)
triggerall = (command = "a" && command = "x") && command = "holddown"
trigger1 = (stateno = 260) && movehit && time = [10,30]
trigger2 = (stateno = 2701 || stateno = 2711 || stateno = 2721) && movehit && time = [3,25]
trigger3 = (stateno = 810) && time = [20,40]
;===========================================================================
;-=Basic Attacks=-
;---------------------------------------------------------------------------
; Launcher
[State -1, Launcher]
type = ChangeState
value = 260
triggerall = ((command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "z")) && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
;---------------------------------------------------------------------------
; Stand Force Punch
[State -1, Force Punch]
type = ChangeState
value = 220
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440) && movecontact
;---------------------------------------------------------------------------
; Knee
[State -1, Knee]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
;---------------------------------------------------------------------------
; Standing Stong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,220]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
; Crouching medium Punch
[State -1, Crouching medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = (stateno = 200 || stateno = 210 || stateno = 230) && movecontact
;---------------------------------------------------------------------------
; Crouching strong Punch
[State -1, Crouching strong Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = [400,410]) && movecontact
trigger3 = (stateno = [430,440]) && movecontact
trigger4 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240) && movecontact
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = (stateno = 200 || stateno = 230) && movecontact
;---------------------------------------------------------------------------
; Crouching med Kick
[State -1, Crouching med Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = [400,410]) && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240) && movecontact
;---------------------------------------------------------------------------
; Crouching strong Kick
[State -1, Crouching strong Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = [400,420]) && movecontact
trigger3 = (stateno = [430,440]) && movecontact
trigger4 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250) && movecontact
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
trigger3 = stateno = 630 && movecontact
;---------------------------------------------------------------------------
; Jump strong Punch
[State -1, Jump strong Punch]
type = ChangeState
value = 620
triggerall = (command = "z")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = [630,640]) && movecontact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a")
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
;---------------------------------------------------------------------------
; Jump medium Kick
[State -1, Jump medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 630 && movecontact
;---------------------------------------------------------------------------
; Jump strong Kick
[State -1, Jump strong Kick]
type = ChangeState
value = 650
triggerall = (command = "c")
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = [630,640]) && movecontact
;---------------------------------------------------------------------------
