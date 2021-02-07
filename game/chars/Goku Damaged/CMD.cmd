;[------Y------][-----][------]
;[------Y------][-----][------]
;[------N------][-----][--G---]
;[------V------][-----][--O---]
;[------A------][-'S-][---K---]
;[------S------][-----][--U---]
;[------E------][-----][------]
;[------R------][-----][------]
;[---Don't forget to check out the Shugen-Do--]
;[------game engine at www.sakirsoft.com------]
;===========================================================================
;[Commands]----------------------------------------------------------------
;===========================================================================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-[Default Values]-------------------------------------------------------
[Defaults]
command.time = 15

command.buffer.time = 1

;-[CPU-Only Commands]----------------------------------------------
[Command]
name = "cpu1"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu2"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu3"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu4"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu5"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu6"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu7"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu8"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu9"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu10"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu11"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu12"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu13"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu14"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu15"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu16"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu17"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu18"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu19"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu20"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu21"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu22"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu23"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu24"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu25"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu26"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu27"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu28"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu29"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

;-[Supers]---------------------------------------------------------
[Command]
name = "QuickKame"
command = D, DF, F, a
time = 20

[Command]
name = "QuickKame2"
command = D, DF, F, b
time = 20

[Command]
name = "QuickKame3"
command = D, DF, F, c
time = 20

[Command]
name = "comborushx"
command = D, DF, F, x
time = 20

;-[Double Tap]-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-[2/3 Button Combo]-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "uppercut"
command = x+y
time = 5

[Command]
name = "launcherkick"
command = a+b
time = 5

;-[Single Button]---------------------------------------------------------
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

;-[Hold Direction]--------------------------------------------------------------
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

;-| Hold Button |---------------------------------------------------------
[Command]
name = "holda"
command = /a
time = 1

[command]
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
name = "holdstart"
command = /s
time = 1

;-[XOR Buttons]----------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;===========================================================================
;[State Entry]--------------------------------------------------------------
;===========================================================================
;This is the place where you shouldn't be. :)
[Statedef -1]
;===============================================================================
;===[Misc]==================================================================
;===============================================================================
[State -1, Hide]
type = AssertSpecial
trigger1 = IsHelper(330)
flag = invisible
flag2 = NoShadow
IgnoreHitPause = 1

[State -1, Reset]
type = SelfState
trigger1 = IsHelper(330)
trigger1 = StateNo != [330,331]
value = 330
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Dodge Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;Run Back
[State -1, Dodge Back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;===[Ground Supers]=========================================================
;---------------------------------------------------------------------------
;Quick KameHameHa
[State 1000, Quick Kame]
type = ChangeState
triggerall = var(59)<1
triggerall = power >= 1000
triggerall = command = "QuickKame"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact
trigger10 = stateno = 250
trigger10 = movecontact
trigger11 = stateno = 450
trigger11 = movecontact
trigger12 = stateno = 204
trigger12 = movecontact
trigger13 = stateno = 205
trigger13 = movecontact
value = 1000

;---------------------------------------------------------------------------
;Quick KameHameHa
[State 1000, Quick Kame]
type = ChangeState
triggerall = var(59)<1
triggerall = power >= 1000
triggerall = command = "QuickKame2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact
trigger10 = stateno = 250
trigger10 = movecontact
trigger11 = stateno = 450
trigger11 = movecontact
trigger12 = stateno = 204
trigger12 = movecontact
trigger13 = stateno = 205
trigger13 = movecontact
value = 1000

;---------------------------------------------------------------------------
;Quick KameHameHa
[State 1000, Quick Kame]
type = ChangeState
triggerall = var(59)<1
triggerall = power >= 1000
triggerall = command = "QuickKame3"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact
trigger10 = stateno = 250
trigger10 = movecontact
trigger11 = stateno = 450
trigger11 = movecontact
trigger12 = stateno = 204
trigger12 = movecontact
trigger13 = stateno = 205
trigger13 = movecontact
value = 1000

;---------------------------------------------------------------------------
;Combo Rush X
[State 500, Combo Rush X]
type = ChangeState
triggerall = var(59)<1
triggerall = power >= 1000
triggerall = command = "comborushx"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 401
trigger3 = movecontact
trigger4 = stateno = 230 || stateno = 231
trigger4 = movecontact
trigger5 = stateno = 430 || stateno = 431
trigger5 = movecontact
trigger6 = stateno = 210 || stateno = 211
trigger6 = movecontact
trigger7 = stateno = 410 || stateno = 411
trigger7 = movecontact
trigger8 = stateno = 240 || stateno = 241
trigger8 = movecontact
trigger9 = stateno = 440 || stateno = 441
trigger9 = movecontact
trigger10 = stateno = 250 || stateno = 251
trigger10 = movecontact
trigger11 = stateno = 450 || stateno = 451
trigger11 = movecontact
value = 500

;---------------------------------------------------------------------------
;===[Advenced Ground Moves]=========================================================
;---------------------------------------------------------------------------
;Standing Uppercut
[State 204, Stand X+Y]
type = ChangeState
triggerall = var(59)<1
triggerall = (command = "x" && command = "y" || command = "uppercut")
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 401
trigger3 = movecontact
trigger4 = stateno = 230 || stateno = 231
trigger4 = movecontact
trigger5 = stateno = 430 || stateno = 431
trigger5 = movecontact
trigger6 = stateno = 210 || stateno = 211
trigger6 = movecontact
trigger7 = stateno = 410 || stateno = 411
trigger7 = movecontact
trigger8 = stateno = 240 || stateno = 241
trigger8 = movecontact
trigger9 = stateno = 440 || stateno = 441
trigger9 = movecontact
trigger10 = stateno = 250 || stateno = 251
trigger10 = movecontact
trigger11 = stateno = 450 || stateno = 451
trigger11 = movecontact
value = 204

;---------------------------------------------------------------------------
;Standing Launcher Kick
[State 206, Stand A+B]
type = ChangeState
triggerall = var(59)<1
triggerall = (command = "a" && command = "b" || command = "launcherkick")
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 401
trigger3 = movecontact
trigger4 = stateno = 230 || stateno = 231
trigger4 = movecontact
trigger5 = stateno = 430 || stateno = 431
trigger5 = movecontact
trigger6 = stateno = 210 || stateno = 211
trigger6 = movecontact
trigger7 = stateno = 410 || stateno = 411
trigger7 = movecontact
trigger8 = stateno = 240 || stateno = 241
trigger8 = movecontact
trigger9 = stateno = 440 || stateno = 441
trigger9 = movecontact
trigger10 = stateno = 250 || stateno = 251
trigger10 = movecontact
trigger11 = stateno = 450 || stateno = 451
trigger11 = movecontact
value = 206

;---------------------------------------------------------------------------
;===[Ground Basics]=========================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State 200, Stand X]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
value = 200

;---------------------------------------------------------------------------
;Crouching Light Punch
[State 400, Chrouch X]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
value = 400

;---------------------------------------------------------------------------
;Stand Light Kick
[State 230, Stand A]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 401
trigger3 = movecontact
value = 230

;---------------------------------------------------------------------------
;Crouching Light Kick
[State 430, Chrouch A]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 401
trigger3 = movecontact
trigger4 = stateno = 230 || stateno = 231
trigger4 = movecontact
value = 430

;Crouching Light Kick 2
[State 431, Stand A2]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = stateno = 430
trigger1 = movecontact
value = 431

;---------------------------------------------------------------------------
;Stand Medium Punch
[State 210, Stand Y]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 401
trigger3 = movecontact
trigger4 = stateno = 230 || stateno = 231
trigger4 = movecontact
trigger5 = stateno = 430 || stateno = 431
trigger5 = movecontact
value = 210

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State 410, Crouch Y]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 401
trigger3 = movecontact
trigger4 = stateno = 230 || stateno = 231
trigger4 = movecontact
trigger5 = stateno = 430 || stateno = 431
trigger5 = movecontact
trigger6 = stateno = 210 || stateno = 211
trigger6 = movecontact
value = 410

;---------------------------------------------------------------------------
;Standing Medium Kick
[State 240, Stand B]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 401
trigger3 = movecontact
trigger4 = stateno = 230 || stateno = 231
trigger4 = movecontact
trigger5 = stateno = 430 || stateno = 431
trigger5 = movecontact
trigger6 = stateno = 210 || stateno = 211
trigger6 = movecontact
trigger7 = stateno = 410 || stateno = 411
trigger7 = movecontact
value = 240

;Standing Medium Kick 2
[State 240, Stand B2]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 240
trigger1 = movecontact
value = 241

;Standing Medium Kick 3
[State 242, Stand B3]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 241
trigger1 = movecontact
trigger2 = stateno = 440
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 450
trigger4 = movecontact
value = 242

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State 440, Crouch B]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 401
trigger3 = movecontact
trigger4 = stateno = 230 || stateno = 231
trigger4 = movecontact
trigger5 = stateno = 430 || stateno = 431
trigger5 = movecontact
trigger6 = stateno = 210 || stateno = 211
trigger6 = movecontact
trigger7 = stateno = 410 || stateno = 411
trigger7 = movecontact
trigger8 = stateno = 240 || stateno = 241
trigger8 = movecontact
value = 440

;---------------------------------------------------------------------------
;Chrouching KI Shot
[State 420, Chrouch Z]
type = ChangeState
triggerall = var(59)<1
triggerall = power >= 200
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 401
trigger3 = movecontact
trigger4 = stateno = 230 || stateno = 231
trigger4 = movecontact
trigger5 = stateno = 430 || stateno = 431
trigger5 = movecontact
trigger6 = stateno = 210 || stateno = 211
trigger6 = movecontact
trigger7 = stateno = 410 || stateno = 411
trigger7 = movecontact
trigger8 = stateno = 240 || stateno = 241
trigger8 = movecontact
trigger9 = stateno = 440 || stateno = 441
trigger9 = movecontact
value = 420

;---------------------------------------------------------------------------
;Standing Hard Kick
[State 250, Stand C]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 401
trigger3 = movecontact
trigger4 = stateno = 230 || stateno = 231
trigger4 = movecontact
trigger5 = stateno = 430 || stateno = 431
trigger5 = movecontact
trigger6 = stateno = 210 || stateno = 211
trigger6 = movecontact
trigger7 = stateno = 410 || stateno = 411
trigger7 = movecontact
trigger8 = stateno = 240 || stateno = 241
trigger8 = movecontact
trigger9 = stateno = 440 || stateno = 441
trigger9 = movecontact
value = 250

;---------------------------------------------------------------------------
;Chrouching Legsweep
[State 450, Crouch C]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 401
trigger3 = movecontact
trigger4 = stateno = 230 || stateno = 231
trigger4 = movecontact
trigger5 = stateno = 430 || stateno = 431
trigger5 = movecontact
trigger6 = stateno = 210 || stateno = 211
trigger6 = movecontact
trigger7 = stateno = 410 || stateno = 411
trigger7 = movecontact
trigger8 = stateno = 240 || stateno = 241
trigger8 = movecontact
trigger9 = stateno = 440 || stateno = 441
trigger9 = movecontact
trigger10 = stateno = 250 || stateno = 251
trigger10 = movecontact
value = 450

;---------------------------------------------------------------------------
;=====[Air Basics]==========================================================
;---------------------------------------------------------------------------
;Jump Light Kick
[State 630, Jump A]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = Stateno = 630
trigger3 = movecontact
trigger3 = StateTime >= 12
trigger4 = Stateno = 640
trigger4 = movecontact
value = 630

;---------------------------------------------------------------------------
;Jump Medium Kick
[State 640, Jump B]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact
trigger3 = Stateno = 640
trigger3 = movecontact
trigger3 = StateTime >= 16
trigger4 = stateno = 1350 ;Air blocking
value = 640

;---------------------------------------------------------------------------
;Jump Light Smackdown
[State 600, Jump X]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 640
trigger4 = movecontact
value = 600

;---------------------------------------------------------------------------
;Jump Strong Smackdown
[State 610, Jump Y]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 640
trigger4 = movecontact
value = 610

;---------------------------------------------------------------------------
;Jump Hard Kick
[State 650, Jump C]
type = ChangeState
triggerall = var(59)<1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 640
trigger4 = movecontact
value = 650

;---------------------------------------------------------------------------
;Charge
[State 700, Charge]
type     = changestate
triggerall = var(59)<1
triggerall = command = "holdc"
triggerall = command = "holdz"
trigger1 = statetype= S
trigger1 = ctrl
value    = 700

;===========================================================================
;[End of file]--------------------------------------------------------------
;===========================================================================
