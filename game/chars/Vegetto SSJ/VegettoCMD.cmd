
;-| Hyper Motions |--------------------------------------------------------

[Command]
name = "Air Hyper kick"
command = ~D, B, DB, a
time = 30

[Command]
name = "Air Hyper kick"
command = ~D, B, DB, b
time = 30

;[Command]
;name = "Air Hyper kick2"
;command = ~D, B, DB, a+b
;time = 30

[Command]
name = "Hard kameha"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "Medium kameha"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "Light kameha"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "Light kameha2"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "Hyper kicks"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "Hyper kicks2"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "Big Bang attack"
command = ~D, DF, F, D, DF, F, y
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "fireballs fury"
command = ~D, DF, F, z
time = 30

[Command]
name = "slide punch"
command = ~D, DB, B, x
time = 30

[Command]
name = "slide punch 2"
command = ~D, DB, B, y
time = 30

[Command]
name = "dancing kick"
command = ~D, DF, F, a
time = 30

[Command]
name = "dancing kick 2"
command = ~D, DF, F, b
time = 30

[Command]
name = "fratricide"
command = /$B, b
time = 10

[Command]
name = "patricide"
command = /$B, a
time = 10

[Command]
name = "crouch high kick"
command = /$D, a+b
time = 10

[Command]
name = "counter"
command = ~D, DF, F, a+b
time = 10

[Command]
name = "lateral kick"
command = ~D, DB, B, a
time = 30

[Command]
name = "lateral kick 2"
command = ~D, DB, B, b
time = 30

;-| Misc Motions |---------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------

[Command]
name="Super Jump"
command=~D,U

[Command]
name = "FF"     
command = F, F
time = 12

[Command]
name = "BB"     
command = B, B
time = 12

[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 5

[Command]
name = "recovery"
command = y+z
time = 5

[Command]
name = "recovery"
command = x+z
time = 5

[Command]
name = "recovery"
command = x+y+z
time = 5

[Command]
name = "xy"
command = x+y
time = 5

[Command]
name = "yz"
command = y+z
time = 5

[Command]
name = "xz"
command = x+z
time = 5

[Command]
name = "xyz"
command = x+y+z
time = 5

[Command]
name = "ab"
command = a+b
time = 5

[Command]
name = "bc"
command = b+c
time = 5

[Command]
name = "ac"
command = a+c
time = 5

[Command]
name = "abc"
command = a+b+c
time = 5

[Command]
name = "xa"
command = x+a
time = 5

[Command]
name = "by"
command = b+y
time = 5

[Command]
name = "cz"
command = c+z
time = 5

;-| Dir + Button |---------------------------------------------------------

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
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
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
name = "holds" 
command = /s
time = 1

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;-| Misc |------------------------------------------------------------------
;---------------------------------------------------------------------------
;--------------------------------

;---------------------------------------------------------------------------
; super
;===========================================================================
;---------------------------------------------------------------------------
;Big bang air mode
[State -1]
type = ChangeState
value = 865
triggerall=var(59)=0&&command="Big Bang attack"
trigger1 = statetype = A
trigger1 = (power >= 1000)
trigger1 = ctrl = 1
trigger2=(stateno=720)&&(command="Big Bang attack")
trigger2 = (power >= 1000)
trigger3=(stateno=730)&&(command="Big Bang attack")
trigger3 = (power >= 1000)
trigger4=(stateno=900)&&(command="Big Bang attack")
trigger4 = (power >= 1000)
trigger5=(stateno=605)&&(command="Big Bang attack")
trigger5 = (power >= 1000)
trigger6=(stateno=810)&&(command="Big Bang attack")
trigger6 = (power >= 1000)
trigger7=(stateno=440)&&(command="Big Bang attack")
trigger7 = (power >= 1000)
trigger8=(stateno=450)&&(command="Big Bang attack")
trigger8 = (power >= 1000)
trigger9=(stateno=460)&&(command="Big Bang attack")
trigger9 = (power >= 1000)
trigger10=(stateno=470)&&(command="Big Bang attack")
trigger10 = (power >= 1000)
trigger11=(stateno=480)&&(command="Big Bang attack")
trigger11 = (power >= 1000)
trigger12=(stateno=815)&&(command="Big Bang attack")
trigger12 = (power >= 1000)
trigger13=(stateno=500)&&(command="Big Bang attack")
trigger13 = (power >= 1000)
trigger14=(stateno=570)&&(command="Big Bang attack")
trigger14 = (power >= 1000)
trigger15=(stateno=510)&&(command="Big Bang attack")
trigger15 = (power >= 1000)
trigger16=(stateno=520)&&(command="Big Bang attack")
trigger16 = (power >= 1000)
trigger17=(stateno=530)&&(command="Big Bang attack")
trigger17 = (power >= 1000)
trigger18=(stateno=580)&&(command="Big Bang attack")
trigger18 = (power >= 1000)
trigger19=(stateno=540)&&(command="Big Bang attack")
trigger19 = (power >= 1000)
trigger20=(stateno=560)&&(command="Big Bang attack")
trigger20 = (power >= 1000)
trigger21=(stateno=550)&&(command="Big Bang attack")
trigger21 = (power >= 1000)
trigger22=(stateno=975)&&(command="Big Bang attack")
trigger22 = (power >= 1000)
trigger23=(stateno=810)&&(command="Big Bang attack")
trigger23 = (power >= 1000)
trigger24=(stateno=815)&&(command="Big Bang attack")
trigger24 = (power >= 1000)
trigger25=(stateno=440)&&(command="Big Bang attack")
trigger25 = (power >= 1000)
trigger26=(stateno=450)&&(command="Big Bang attack")
trigger26 = (power >= 1000)
trigger27=(stateno=460)&&(command="Big Bang attack")
trigger27 = (power >= 1000)
trigger28=(stateno=470)&&(command="Big Bang attack")
trigger28 = (power >= 1000)
trigger29=(stateno=480)&&(command="Big Bang attack")
trigger29 = (power >= 1000)
trigger30=(stateno=975)&&(command="Big Bang attack")
trigger30 = (power >= 1000)

;-----------------------------------------------------------------------------
;Air Hyper kick A
[State -1]
type = ChangeState
value = 575
triggerall=var(59)=0&&command="Air Hyper kick"
trigger1 = statetype = A
trigger1 = (power >= 1000)
trigger1 = ctrl = 1
trigger2=(stateno=500)&&(command="Air Hyper kick")
trigger2 = (power >= 1000)
trigger3=(stateno=570)&&(command="Air Hyper kick")
trigger3 = (power >= 1000)
trigger4=(stateno=510)&&(command="Air Hyper kick")
trigger4 = (power >= 1000)
trigger5=(stateno=520)&&(command="Air Hyper kick")
trigger5 = (power >= 1000)
trigger6=(stateno=530)&&(command="Air Hyper kick")
trigger6 = (power >= 1000)
trigger7=(stateno=580)&&(command="Air Hyper kick")
trigger7 = (power >= 1000)
trigger8=(stateno=540)&&(command="Air Hyper kick")
trigger8 = (power >= 1000)
trigger9=(stateno=560)&&(command="Air Hyper kick")
trigger9 = (power >= 1000)
trigger10=(stateno=550)&&(command="Air Hyper kick")
trigger10 = (power >= 1000)
trigger11=(stateno=975)&&(command="Air Hyper kick")
trigger11 = (power >= 1000)
trigger12=(stateno=810)&&(command="Air Hyper kick")
trigger12 = (power >= 1000)
trigger13=(stateno=815)&&(command="Air Hyper kick")
trigger13 = (power >= 1000)
trigger14=(stateno=440)&&(command="Air Hyper kick")
trigger14 = (power >= 1000)
trigger15=(stateno=450)&&(command="Air Hyper kick")
trigger15 = (power >= 1000)
trigger16=(stateno=460)&&(command="Air Hyper kick")
trigger16 = (power >= 1000)
trigger17=(stateno=470)&&(command="Air Hyper kick")
trigger17 = (power >= 1000)
trigger18=(stateno=480)&&(command="Air Hyper kick")
trigger18 = (power >= 1000)

;---------------------------------------------------------------------------

;Air Hyper kick B
;[State -1]
;type = ChangeState
;value = 577
;triggerall=var(59)=0&&command="Air Hyper kick2"
;trigger1 = statetype = A
;trigger1 = (power >= 2000)
;trigger1 = ctrl = 1
;trigger2=(stateno=500)&&(command="Air Hyper kick2")
;trigger2 = (power >= 2000)
;trigger3=(stateno=570)&&(command="Air Hyper kick2")
;trigger3 = (power >= 2000)
;trigger4=(stateno=510)&&(command="Air Hyper kick2")
;trigger4 = (power >= 2000)
;trigger5=(stateno=520)&&(command="Air Hyper kick2")
;trigger5 = (power >= 2000)
;trigger6=(stateno=530)&&(command="Air Hyper kick2")
;trigger6 = (power >= 2000)
;trigger7=(stateno=580)&&(command="Air Hyper kick2")
;trigger7 = (power >= 2000)
;trigger8=(stateno=540)&&(command="Air Hyper kick2")
;trigger8 = (power >= 2000)
;;trigger9=(stateno=560)&&(command="Air Hyper kick2")
;trigger9 = (power >= 2000)
;trigger10=(stateno=550)&&(command="Air Hyper kick2")
;trigger10 = (power >= 2000)
;trigger11=(stateno=575)&&(command="Air Hyper kick2")
;trigger11 = (power >= 2000)
;trigger12=(stateno=577)&&(command="Air Hyper kick2")
;trigger12 = (power >= 2000)
;trigger13=(stateno=975)&&(command="Air Hyper kick2")
;trigger13 = (power >= 2000)
;trigger14=(stateno=810)&&(command="Air Hyper kick2")
;trigger14 = (power >= 2000)
;trigger15=(stateno=815)&&(command="Air Hyper kick2")
;trigger15 = (power >= 2000)
;trigger16=(stateno=440)&&(command="Air Hyper kick2")
;trigger16 = (power >= 2000)
;trigger17=(stateno=450)&&(command="Air Hyper kick2")
;trigger17 = (power >= 2000)
;trigger18=(stateno=460)&&(command="Air Hyper kick2")
;trigger18 = (power >= 2000)
;trigger19=(stateno=470)&&(command="Air Hyper kick2")
;trigger19 = (power >= 2000)
;trigger20=(stateno=480)&&(command="Air Hyper kick2")
;trigger20 = (power >= 2000)

;---------------------------------------------------------------------------
;Hard kameha
[State -1]
type = ChangeState
value = 980
triggerall=var(59)=0&&command="Hard kameha"
trigger1 = statetype = S
trigger1 = (power >= 2500)
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Hyper kicks2
[State -1]
type = ChangeState
value = 815
triggerall=var(59)=0&&command="Hyper kicks2"
trigger1 = statetype = S
trigger1 = (power >= 2000)
trigger1 = ctrl = 1
trigger2=(stateno=200)&&(command="Hyper kicks2")
trigger2 = (power >= 2000)
trigger3=(stateno=210)&&(command="Hyper kicks2")
trigger3 = (power >= 2000)
trigger4=(stateno=215)&&(command="Hyper kicks2")
trigger4 = (power >= 2000)
trigger5=(stateno=300)&&(command="Hyper kicks2")
trigger5 = (power >= 2000)
trigger6=(stateno=310)&&(command="Hyper kicks2")
trigger6 = (power >= 2000)
trigger7=(stateno=315)&&(command="Hyper kicks2")
trigger7 = (power >= 2000)
trigger8=(stateno=320)&&(command="Hyper kicks2")
trigger8 = (power >= 2000)
trigger9=(stateno=330)&&(command="Hyper kicks2")
trigger9 = (power >= 2000)
trigger10=(stateno=335)&&(command="Hyper kicks2")
trigger10 = (power >= 2000)
trigger11=(stateno=700)&&(command="Hyper kicks2")
trigger11 = (power >= 2000)
trigger12=(stateno=720)&&(command="Hyper kicks2")
trigger12 = (power >= 2000)
trigger13=(stateno=730)&&(command="Hyper kicks2")
trigger13 = (power >= 2000)
trigger14=(stateno=400)&&(command="Hyper kicks2")
trigger14 = (power >= 2000)
trigger15=(stateno=410)&&(command="Hyper kicks2")
trigger15 = (power >= 2000)
trigger16=(stateno=420)&&(command="Hyper kicks2")
trigger16 = (power >= 2000)
trigger17=(stateno=600)&&(command="Hyper kicks2")
trigger17 = (power >= 2000)
trigger18=(stateno=900)&&(command="Hyper kicks2")
trigger18 = (power >= 2000)
trigger19=(stateno=605)&&(command="Hyper kicks2")
trigger19 = (power >= 2000)
trigger20=(stateno=440)&&(command="Hyper kicks2")
trigger20 = (power >= 2000)
trigger21=(stateno=450)&&(command="Hyper kicks2")
trigger21 = (power >= 2000)
trigger22=(stateno=460)&&(command="Hyper kicks2")
trigger22 = (power >= 2000)
trigger23=(stateno=470)&&(command="Hyper kicks2")
trigger23 = (power >= 2000)
trigger24=(stateno=480)&&(command="Hyper kicks2")
trigger24 = (power >= 2000)
trigger25=(stateno=988)&&(command="Hyper kicks2")
trigger25 = (power >= 2000)

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Hyper kicks
[State -1]
type = ChangeState
value = 810
triggerall=var(59)=0&&command="Hyper kicks"
trigger1 = statetype = S
trigger1 = (power >= 1000)
trigger1 = ctrl = 1
trigger2=(stateno=200)&&(command="Hyper kicks")
trigger2 = (power >= 1000)
trigger3=(stateno=210)&&(command="Hyper kicks")
trigger3 = (power >= 1000)
trigger4=(stateno=215)&&(command="Hyper kicks")
trigger4 = (power >= 1000)
trigger5=(stateno=300)&&(command="Hyper kicks")
trigger5 = (power >= 1000)
trigger6=(stateno=310)&&(command="Hyper kicks")
trigger6 = (power >= 1000)
trigger7=(stateno=315)&&(command="Hyper kicks")
trigger7 = (power >= 1000)
trigger8=(stateno=320)&&(command="Hyper kicks")
trigger8 = (power >= 1000)
trigger9=(stateno=330)&&(command="Hyper kicks")
trigger9 = (power >= 1000)
trigger10=(stateno=335)&&(command="Hyper kicks")
trigger10 = (power >= 1000)
trigger11=(stateno=700)&&(command="Hyper kicks")
trigger11 = (power >= 1000)
trigger12=(stateno=720)&&(command="Hyper kicks")
trigger12 = (power >= 1000)
trigger13=(stateno=730)&&(command="Hyper kicks")
trigger13 = (power >= 1000)
trigger14=(stateno=400)&&(command="Hyper kicks")
trigger14 = (power >= 1000)
trigger15=(stateno=410)&&(command="Hyper kicks")
trigger15 = (power >= 1000)
trigger16=(stateno=420)&&(command="Hyper kicks")
trigger16 = (power >= 1000)
trigger17=(stateno=600)&&(command="Hyper kicks")
trigger17 = (power >= 1000)
trigger18=(stateno=900)&&(command="Hyper kicks")
trigger18 = (power >= 1000)
trigger19=(stateno=605)&&(command="Hyper kicks")
trigger19 = (power >= 1000)
trigger20=(stateno=440)&&(command="Hyper kicks")
trigger20 = (power >= 1000)
trigger21=(stateno=450)&&(command="Hyper kicks")
trigger21 = (power >= 1000)
trigger22=(stateno=460)&&(command="Hyper kicks")
trigger22 = (power >= 1000)
trigger23=(stateno=470)&&(command="Hyper kicks")
trigger23 = (power >= 1000)
trigger24=(stateno=480)&&(command="Hyper kicks")
trigger24 = (power >= 1000)
trigger25=(stateno=988)&&(command="Hyper kicks")
trigger25 = (power >= 1000)

;---------------------------------------------------------------------------
;Medium kameha
[State -1]
type = ChangeState
value = 970
triggerall=var(59)=0&&command="Medium kameha"
trigger1 = statetype = S
trigger1 = (power >= 2000)
trigger1 = ctrl = 1
;-----------------------------------------------------------------------------
;Light kameha
[State -1]
type = ChangeState
value = 988
triggerall=var(59)=0&&command="Light kameha"
trigger1 = statetype = S
trigger1 = (power >= 1000)
trigger1 = ctrl = 1
;trigger1 = stateno = [0,1000]
trigger2=(stateno=200)&&(command="Light kameha")
trigger2 = (power >= 1000)
trigger3=(stateno=210)&&(command="Light kameha")
trigger3 = (power >= 1000)
trigger4=(stateno=215)&&(command="Light kameha")
trigger4 = (power >= 1000)
trigger5=(stateno=300)&&(command="Light kameha")
trigger5 = (power >= 1000)
trigger6=(stateno=310)&&(command="Light kameha")
trigger6 = (power >= 1000)
trigger7=(stateno=315)&&(command="Light kameha")
trigger7 = (power >= 1000)
trigger8=(stateno=320)&&(command="Light kameha")
trigger8 = (power >= 1000)
trigger9=(stateno=330)&&(command="Light kameha")
trigger9 = (power >= 1000)
trigger10=(stateno=335)&&(command="Light kameha")
trigger10 = (power >= 1000)
trigger11=(stateno=700)&&(command="Light kameha")
trigger11 = (power >= 1000)
trigger12=(stateno=400)&&(command="Light kameha")
trigger12 = (power >= 1000)
trigger13=(stateno=410)&&(command="Light kameha")
trigger13 = (power >= 1000)
trigger14=(stateno=420)&&(command="Light kameha")
trigger14 = (power >= 1000)
trigger15=(stateno=600)&&(command="Light kameha")
trigger15 = (power >= 1000)


;---------------------------------------------------------------------------
;Light kameha air mode
[State -1]
type = ChangeState
value = 975
triggerall=var(59)=0&&command="Light kameha2"
trigger1 = statetype = A
trigger1 = (power >= 1000)
trigger1 = ctrl = 1
trigger2=(stateno=720)&&(command="Light kameha")
trigger2 = (power >= 1000)
trigger3=(stateno=730)&&(command="Light kameha")
trigger3 = (power >= 1000)
trigger4=(stateno=900)&&(command="Light kameha")
trigger4 = (power >= 1000)
trigger5=(stateno=605)&&(command="Light kameha")
trigger5 = (power >= 1000)
trigger6=(stateno=810)&&(command="Light kameha")
trigger6 = (power >= 1000)
trigger7=(stateno=440)&&(command="Light kameha")
trigger7 = (power >= 1000)
trigger8=(stateno=450)&&(command="Light kameha")
trigger8 = (power >= 1000)
trigger9=(stateno=460)&&(command="Light kameha")
trigger9 = (power >= 1000)
trigger10=(stateno=470)&&(command="Light kameha")
trigger10 = (power >= 1000)
trigger11=(stateno=480)&&(command="Light kameha")
trigger11 = (power >= 1000)
trigger12=(stateno=815)&&(command="Light kameha")
trigger12 = (power >= 1000)

;---------------------------------------------------------------------------

;lateral kick

[State -1]
type = ChangeState
value = 720
triggerall=var(59)=0&&command="lateral kick"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;lateral kick B

[State -1]
type = ChangeState
value = 730
triggerall=var(59)=0&&command="lateral kick 2"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;counter attack
[State -1]
type = SelfState
value = 605
triggerall = command = "counter"
triggerall = alive = 1
triggerall = stateno != 5110
triggerall = stateno != 5170
trigger1 = ctrl = 1
trigger1 = (power >= 100)
trigger1 = stateno = [150,153]
trigger2 = pos y = 0
trigger2 = movetype = H

;---------------------------------------------------------------------------

;fratricide
[State -1]
type = ChangeState
value = 320
triggerall=var(59)=0&&command="fratricide"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-----------------------
;patricide
[State -1]
type = ChangeState
value = 330
triggerall=var(59)=0&&command="patricide"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-----------------------

;crouch high kick
[State -1]
type = ChangeState
value = 600
triggerall=var(59)=0&&command="crouch high kick"
trigger1 = statetype = C
trigger1 = ctrl = 1
;-----------------------
;===========================================================================

; furie fireballs
[State -1]
type = ChangeState
value = 920
triggerall=var(59)=0&&command="fireballs fury"
trigger1 = statetype = S
trigger1 = (power >= 100)
trigger1 = ctrl = 1
;-----------------------------------------------------------------------------------------------------

; slide punch
;[State -1]
;type = ChangeState
;value = 700
;triggerall=var(59)=0&&command="slide punch"
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;-----------------------------------------------------------------------------------------------------
; slide punch 2
;[State -1]
;type = ChangeState
;value = 710
;triggerall=var(59)=0&&command="slide punch 2"
;trigger1 = statetype = S
;trigger1 = ctrl = 1

;--------------------------------------------------------------------------------------------
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
; dancing kick A
[State -1]
type = ChangeState
value = 440
triggerall=var(59)=0&&command="dancing kick"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------

[State -1, enchainement]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=440)&&movecontact&&(command="a")
value = 450
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
; dancing kick 2 B
[State -1]
type = ChangeState
value = 460
triggerall=var(59)=0&&command="dancing kick 2"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------

[State -1, enchainement]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=460)&&movecontact&&(command="b")
value = 470
;-------------------------------------
[State -1, enchainement]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=470)&&movecontact&&(command="b")
value = 480
;---------------------------------------------------------------------------
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



;Super Jump
[State -1,SJ]
type=ChangeState
value=707
triggerall=var(59)=0
triggerall=command="Super Jump"
triggerall=alive
triggerall=pos y>=0
triggerall=!win
trigger1=(statetype!=A&&ctrl)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Run Fwd
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 100
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Run Back
[State -1: 		Run Back]
type 			= ChangeState
value 		= 105
triggerall 		= (Command = "BB") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------

;-| Hyper |-----------------------------------------------------------------

;---------------------------------------------------------------------------

;===========================================================================
;-| Special |---------------------------------------------------------------



;===========================================================================
;-| Basic |-----------------------------------------------------------------
;Stand Weak Punch 
[State -1, SWP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="x")
value = 200
;---------------------------------------------------------------------------
;Stand Medium Punch 
[State -1, SMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="y")
value = 210
;---------------------------------------------------------------------------
;===========================================================================
; chain punch 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=200)&&movecontact&&(command="y")
value = 215

; chain punch 2
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=215)&&movecontact&&(command="y")
value = 700
;===========================================================================
;Stand light kick 
[State -1, SLK]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="a")
value = 300
;---------------------------------------------------------------------------
;Stand hard kick 
[State -1, SHK]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="b")
value = 310
;---------------------------------------------------------------------------
;===========================================================================
; chain kick 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=300)&&movecontact&&(command="b")
value = 315

; chain kick 2
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=315)&&movecontact&&(command="b")
value = 335

;===========================================================================
; Crouch weak punch
[State -1, CWP]
type            = ChangeState
value      = 400
triggerall      = (command = "x")
trigger1        = (statetype = C) && (ctrl)
;---------------------------------------------------------------------------
;Uppercut punch
[State -1, UP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=c))
trigger1 = (Command = "y") && (Command = "holddown") && (Var(2) <= 0)
value = 410
;---------------------------------------------------------------------------
;Crouch light kick 
[State -1, CWK]
type            = ChangeState
value      = 420
triggerall      = (command = "a")
trigger1        = (statetype = C) && (ctrl)
;---------------------------------------------------------------------------
;Crouch slide kick 
[State -1, CSK]
type            = ChangeState
value      = 430
triggerall      = (command = "b")
trigger1        = (statetype = C) && (ctrl)
;---------------------------------------------------------------------------

;=============================================================================================
;enchainement aerien X
; Air Light Punch
[State -1, ALP]
type            = ChangeState
value      = 500
triggerall      = (command = "x")
trigger1        = (statetype = A) && (ctrl)

;-------------------------------------------------------------------------
; air medium punch
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=500)&&movecontact&&(command="x")
value = 510
;------------------------------------------------------------------------------------------------------
; air lateral kick
[State -1, AHK]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=510)&&movecontact&&(command="x")
value = 570
;------------------------------------------------------------------------------------------------------
; air hard kick
[State -1, AHK]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=570)&&movecontact&&(command="x")
value = 520
;------------------------------------------------------------------------------------------------------
;==============================================================================================================

;=====================enchainement aerien Y======================================================================

;enchainement aerien Y
; Air Medium Punch
[State -1, AMP]
type            = ChangeState
value      = 530
triggerall      = (command = "y")
trigger1        = (statetype = A) && (ctrl)
;------------------------------------------------------------------------------------------------------------------
;enchinement y 2
[State -1, AHP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=530)&&movecontact&&(command="y")
value = 580
;-----------------------------------------------------------------------------------------------------
; 2 mains (hard punch)
[State -1, AHP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=580)&&movecontact&&(command="y")
value = 540
;-----------------------------------------------------------------------------------------------------
;============================================================================================================================

; Air Hard kick -B-
[State -1, AHK]
type            = ChangeState
value      = 550
trigger1      = (command = "b")
trigger1        = (statetype = A) && (ctrl)
trigger2=(var(59)=0&&(statetype=A))
trigger2=(stateno=560)&&movecontact&&(command="b")
;--------------------------------------------------------------------------------------------------------------------------
; Air light kick -A-
[State -1, ALK]
type            = ChangeState
value      = 560
triggerall      = (command = "a")
trigger1        = (statetype = A) && (ctrl)
;--------------------------------------------------------------------------------------------------------------------------

;Charge Up/Power Up
[State -1, ChargePower]
type = ChangeState
value = 800
triggerall = power < 4000 && time > 2
trigger1 = command = "holda" && command = "holdx" && statetype = S && ctrl = 1 && command != "holdfwd"
;trigger2 = command = "holda" && command = "holdx" && stateno = 3100 && command != "holdfwd"

;================================================================================================================================
;Fireball
[State -1]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
triggerall      = (power >= 30)
trigger1=(ctrl)&&(command="z")
value = 900

;--------------------------------------------------------------------------------------------
;fireball renzoku1
[State -1]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=925)&&(command="z")
trigger1 = (power >= 100)
value = 930

;--------------------------------------------------------------------------------------------

;fireball renzoku2
[State -1]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=930)&&(command="z")
trigger1 = (power >= 100)
value = 940

;---------------------------------------------------------------------------------------------
;medium kameha launch
[State -1]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=970)&&(command="y")
;trigger1 = (power >= 100)
value = 960
;---------------------------------------------------------------------------------------------
;hard kameha launch
[State -1]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=990)&&(command="z")
value = 1000
;--------------------------------------------------------------------------------------------

;[Statedef -2]

;---------------------------------------------------------------------------------------------









;------------------------------------------------------------------------------------------------



[Statedef -3]


[State -3, VarAdd]
type = Varadd
triggerall = (GetHitVar(HitShakeTime) = 5)
trigger1 = (StateNo = 150) || (StateNo = 152)
var(0) = 1
ignorehitpause = 1

[State -3, VarAdd]
type = VarAdd
triggerall = (GetHitVar(HitShakeTime) = 10)
trigger1 = (StateNo = 150) || (StateNo = 152)
var(0) = 2
ignorehitpause = 1

[State -3, VarAdd]
type = Varadd
triggerall = (GetHitVar(HitShakeTime) = 15)
trigger1 = (StateNo = 150) || (StateNo = 152)
var(0) = 3
ignorehitpause = 1


;This is used, to recover from the effect if the character is not blocking, or getting hit by an attack...

[State -3, VarAdd]
type = VarAdd
triggerall = (Var(0) > 0) && (!Time) && (StateNo = 5000) && (Alive)
trigger1 = (Anim = 5000) || (Anim = 5001) || (Anim = 5010) || (Anim = 5011)
var(0) = -3
ignorehitpause = 1

;...and this is used when the character has reached his/her limit.

[State -3, VarAdd]
type = VarAdd
triggerall = (Var(0) > 0) && (!Time) && (StateNo = 5010) && (Alive)
trigger1 = (Anim = 5020) || (Anim = 5021)
var(0) = -3
ignorehitpause = 1

[State -3, VarAdd]
type = VarAdd
triggerall = (Var(0) > 0) && (!Time) && (StateNo = 5000) && (Alive)
trigger1 = (Anim = 5002) || (Anim = 5012)
var(0) = -6
ignorehitpause = 1

[State -3, VarAdd]
type = VarAdd
trigger1 = (Var(0) > 0) && (!Time) && (StateNo = 5010) && (Alive) && (Anim = 5022)
var(0) = -6
ignorehitpause = 1

[State -3, VarAdd]
type = VarAdd
trigger1 = (Var(0) > 0) && (!Time) && (StateNo = 5100) && (Alive)
var(0) = -9
ignorehitpause = 1

A code is needed, to recover from the effect if the character is not blocking, nor getting hit by an attack.

[State -3, VarAdd]
type = VarAdd
trigger1 = (Var(0) > 0) && ((GameTime%5) = 0) && (MoveType != H) && (StateNo != [130,160])
var(0) = -1
ignorehitpause = 1

[State -3, ChangeState]
type = ChangeState
trigger1 = var(0) >= 100
value = 9000
ctrl = 0
ignorehitpause = 1

;This is the state where the character is opened for an attack (A GetHit State).
;You can create your own variation of the effect. This is just one example:

[Statedef 9000]
type = S
movetype = H
physics = S
anim = 9000
ctrl = 0

[State 9000, VarSet]
type = VarSet
trigger1 = (!Time)
v = 0
value = 0

[State 9000, NotHitBy]
type = NotHitBy
trigger1 = (Time < 10)
value = SCA

[State 9000, VelSet]
type = VelSet
trigger1 = (!Time)
x = -5

[State 9000, ChangeState]
type = ChangeState
trigger1 = (Time = 15)
value = 0

;Add any special effects in this state if needed.
 

