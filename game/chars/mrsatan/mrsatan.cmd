[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

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
name = "holdstart"
command = /s
time = 1

;--- None of your own command definitions should be above this line. ---

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

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

; Here add matching commands for any moves that must never be used randomly
; by the computer, such as suicide moves and super moves, and add the pairs
; to the XOR VarSet controller in State -3.

; If you're desperate to make sure that the AI always gets turned on as soon
; as possible, you can add more equivalents for your own commands here too,
; and add to the XOR VarSet controller's triggers accordingly.

; And of course, if you've run out of unique command labels (Mugen allows
; 128), you can remove as many of these as you want.  You'll of course need
; to modify the XOR VarSet controller's triggers accordingly, but Mugen
; will let you know if you forget to do so. :)



;-| Super Motions |--------------------------------------------------------

[Command]
name = "shinku"
command = ~D, F, D, F, y
time = 25

[Command]
name = "hyper"
command = ~D, F, D, F, b
time = 25

[Command]
name = "super"
command = ~D, B, F, y
time = 20

[Command]
name = "mega"
command = ~D, B, F, b
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "shoryuken"
command = ~F, D, DF, x
time = 15

[Command]
name = "shoryuken2"
command = ~F, D, DF, y
time = 15

[Command]
name = "hadouken"
command = ~D, F, x
time = 20

[Command]
name = "hadouken2"
command = ~D, F, y
time = 20

[Command]
name = "tatsumaki"
command = ~D, B, a
time = 20

[Command]
name = "tatsumaki2"
command = ~D, B, b
time = 20

[Command]
name = "dynamite"
command = ~D, F, a
time = 20

[Command]
name = "dynamite2"
command = ~D, F, b
time = 20

[Command]
name = "upper"
command = ~D, B, x
time = 25

[Command]
name = "upper2"
command = ~D, B, y
time = 25

[command]
name = "slashdown"
command = ~F, D, a
time = 20

[command]
name = "slashdown2"
command = ~F, D, b
time = 20

[Command]
name = "barrier"
command = ~D, D, x
time = 15

[Command]
name = "barrier2"
command = ~D, D, y
time = 15

[Command]
name = "dash_x"
command = ~F, F, x

[Command]
name = "dash_y"
command = ~F, F, y

[Command]
name = "dash_a"
command = ~F, F, a

[Command]
name = "dash_b"
command = ~F, F, b

[Command]
name = "counter"
command = x+a
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "s"
command = s
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


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holddiagfwd";Required (do not remove)
command = /$F+D
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
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "hold_a";Required (do not remove)
command = /a
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /b

time = 1
[Command]
name = "hold_c";Required (do not remove)
command = /c
time = 1

[Command]
name = "hold_x";Required (do not remove)
command = /x
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /y
time = 1

[Command]
name = "hold_z";Required (do not remove)
command = /z
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11


[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1


;---------------------------------------------------------------------------
; 2. State entry
; --------------
[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;=============================必殺技========================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

; ミサイル発射
[State -1,]
type = ChangeState
value = 3300
triggerall = !var(0)
triggerall = command = "hyper"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger15 = stateno = 910 && movecontact

; ジェットパック噴射
[State -1,]
type = ChangeState
value = 3200
triggerall = !var(0)
triggerall = command = "shinku"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger15 = stateno = 910 && movecontact

; ミラクルメガトンパーンチ
[State -1,]
type = ChangeState
value = 3000
triggerall = !var(0)
triggerall = command = "mega"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

; スーパービリビリパンチ
[State -1,]
type = ChangeState
value = 3100
triggerall = !var(0)
triggerall = command = "super"
triggerall = power >= 2000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)


;---------------------------------------------------------------------------

; サタンボム（弱）
[State -1]
type = ChangeState
value = 2000
triggerall = !var(0)
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger15 = stateno = 910 && movecontact

; サタンボム（強）
[State -1]
type = ChangeState
value = 2010
triggerall = !var(0)
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 910 && movecontact


;---------------------------------------------------------------------------

; ダイナマイトキック（弱）
[State -1]
type = ChangeState
value = 2100
triggerall = !var(0)
triggerall = command = "dynamite"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger15 = stateno = 910 && movecontact

; ダイナマイトキック（強）
[State -1]
type = ChangeState
value = 2105
triggerall = !var(0)
triggerall = command = "dynamite2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger15 = stateno = 910 && movecontact


;---------------------------------------------------------------------------

; ビーチフルスピンキック（弱）
[State -1]
type = ChangeState
value = 2200
triggerall = !var(0)
triggerall = command = "tatsumaki"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger15 = stateno = 910 && movecontact

; ビーチフルスピンキック（強）
[State -1]
type = ChangeState
value = 2250
triggerall = !var(0)
triggerall = command = "tatsumaki2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger15 = stateno = 910 && movecontact


;---------------------------------------------------------------------------

;ダイナミックスピニングアタック（弱）
[State -1, ]
type = ChangeState
value = 2300
triggerall = !var(0)
triggerall = (command = "upper")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger15 = stateno = 910 && movecontact

;ダイナミックスピニングアタック（強）
[State -1, ]
type = ChangeState
value = 2350
triggerall = !var(0)
triggerall = (command = "upper2")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger13 = stateno = 460 && movecontact
trigger14 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger15 = stateno = 910 && movecontact


;---------------------------------------------------------------------------

;バリバリパンチ(弱)
[State -1, ]
type = ChangeState
value = 2400
triggerall = !var(0)
triggerall = (command = "hadouken")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

;バリバリパンチ(強)
[State -1, ]
type = ChangeState
value = 2450
triggerall = !var(0)
triggerall = (command = "hadouken2")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)


;---------------------------------------------------------------------------
;============================特殊技=========================================
;---------------------------------------------------------------------------

;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(0)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;バックステップ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(0)
trigger1 = (command = "BB") && (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1, Fwd]
type = ChangeState
value = 110
triggerall = !var(0)
trigger1 = (command = "FF") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1, Back]
type = ChangeState
value = 112
triggerall = !var(0)
triggerall = vel x <= 0
trigger1 = (command = "BB") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = !var(0)
trigger1 = command = "s"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; 残像拳（カウンター）
[State -1]
type = ChangeState
value = 700
triggerall = !var(0)
triggerall = command = "counter" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000

;---------------------------------------------------------------------------
; 高速移動 (後方)
[State -1]
type = ChangeState
value = 1000
triggerall = !var(0)
triggerall = command = "counter" ^^ command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102

;---------------------------------------------------------------------------
; 高速移動 (前方)
[State -1]
type = ChangeState
value = 1001
triggerall = !var(0)
triggerall = command = "counter" ^^ command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダッシュ高速移動 (前方)
[State -1]
type = ChangeState
value = 1001
triggerall = !var(0)
triggerall = stateno = 100 || stateno = 101 || stateno = 102
triggerall = ctrl = 0
trigger1 = command = "hold_x" && command = "hold_a" 
trigger2 = command = "hold_z"
trigger3 = command = "hold_c"

;---------------------------------------------------------------------------
; 気力溜め
[State -1]
type = ChangeState
value = 4500
triggerall = !var(0)
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"

;---------------------------------------------------------------------------
;投げ
[State -1, ]
type = ChangeState
value = 800
triggerall = !var(0)
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y") && (P2BodyDist X <= 10) && (P2Movetype != H) && (p2statetype != A)
trigger1 = (ctrl) && (p2statetype = C) || (ctrl) && (p2statetype = S)


;---------------------------------------------------------------------------
;=======================ダッシュ攻撃========================================
;---------------------------------------------------------------------------

;ダッシュ弱パンチ
[State -1, ]
type = ChangeState
value = 900
triggerall = !var(0)
triggerall = stateno = 101
trigger1 = command = "hold_x"

;スライディングキック
[State -1, ]
type = ChangeState
value = 910
triggerall = !var(0)
triggerall = stateno = 101
trigger1 = command = "hold_a"

;ダッシュ浮かせ攻撃
[State -1, ]
type = ChangeState
value = 920
triggerall = !var(0)
triggerall = stateno = 101
trigger1 = command = "hold_y"

;ダッシュ強キック
[State -1, ]
type = ChangeState
value = 930
triggerall = !var(0)
triggerall = stateno = 101
trigger1 = command = "hold_b"

;---------------------------------------------------------------------------
;============================通常技=========================================
;---------------------------------------------------------------------------

;立ち強キック（近距離） 
[State -1, ]
type = ChangeState
value = 261
triggerall = !var(0)
triggerall = (command = "b") && (command != "holddown") && (P2BodyDist X <= 15) && (P2statetype != A)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
;trigger4 = stateno = 210 && movecontact
trigger4 = stateno = 211 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 900 && movecontact

;---------------------------------------------------------------------------
;立ち強キック
[State -1, ]
type = ChangeState
value = 260
triggerall = !var(0)
triggerall = (command = "b") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = 900 && movecontact

;---------------------------------------------------------------------------

;立ち弱キック（近距離）
[State -1, ]
type = ChangeState
value = 251
triggerall = !var(0)
triggerall = (command = "a") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 251 && movecontact
trigger5 = stateno = 900 && movecontact

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, ]
type = ChangeState
value = 250
triggerall = !var(0)
triggerall = (command = "a") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 900 && movecontact

;---------------------------------------------------------------------------

;立ち強パンチ（近距離）
[State -1, ]
type = ChangeState
value = 211
triggerall = !var(0)
triggerall = (command = "y") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
;trigger4 = stateno = 251 && movecontact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 900 && movecontact
;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, ]
type = ChangeState
value = 210
triggerall = !var(0)
triggerall = (command = "y") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 900 && movecontact
;trigger7 = stateno = 211 && movecontact

;---------------------------------------------------------------------------

;立ち弱パンチ（近距離）
[State -1, ]
type = ChangeState
value = 201
triggerall = !var(0)
triggerall = (command = "x") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 201) && (AnimElem = 2,>3 || MoveContact)

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, ]
type = ChangeState
value = 200
triggerall = !var(0)
triggerall = (command = "x") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 200) && (AnimElem = 2,>4 || MoveContact)
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 900 && movecontact


;---------------------------------------------------------------------------
;============================しゃがみ=========================================
;---------------------------------------------------------------------------

;屈み強キック
[State -1, ]
type = ChangeState
value = 460
triggerall = !var(0)
triggerall = (command = "b") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger4 = stateno = 900; && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1

;---------------------------------------------------------------------------
;屈み弱キック
[State -1, ]
type = ChangeState
value = 450
triggerall = !var(0)
triggerall = (command = "a") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 450) && (AnimElem = 2,>5 || MoveContact)
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 201 && MoveContact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = 900; && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1

;---------------------------------------------------------------------------
;屈み強パンチ
[State -1, ]
type = ChangeState
value = 410
triggerall = !var(0)
triggerall = (command = "y") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = (stateno = 200 || stateno = 201) && (movecontact)
trigger4 = (stateno = 250 || stateno = 251) && (movecontact)
trigger5 = stateno = 900; && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1

;---------------------------------------------------------------------------
;屈み弱パンチ
[State -1, ]
type = ChangeState
value = 400
triggerall = !var(0)
triggerall = (command = "x") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (AnimElem = 2,>5 || MoveContact)
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 900 && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1


;---------------------------------------------------------------------------
;============================空中技=========================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1, ]
type = ChangeState
value = 661
triggerall = !var(0)
triggerall = (command = "b") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601) && (movecontact)
trigger3 = (stateno = 651) && (movecontact)
trigger4 = (stateno = 611) && (movecontact)

;垂直ジャンプ強キック
[State -1, ]
type = ChangeState
value = 660
triggerall = !var(0)
triggerall = (command = "b") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 650) && (movecontact)
trigger4 = (stateno = 610) && (movecontact)

;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 651
triggerall = !var(0)
triggerall = (command = "a") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 650
triggerall = !var(0)
triggerall = (command = "a") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
;---------------------------------------------------------------------------

;ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 611
triggerall = !var(0)
triggerall = (command = "y") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601 || stateno = 651) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 610
triggerall = !var(0)
triggerall = (command = "y") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 650) && (movecontact)

;---------------------------------------------------------------------------
;垂直ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 600
triggerall = !var(0)
triggerall = (command = "x") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =600) && (AnimElem = 2,>4) && (movecontact)
;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 601
triggerall = !var(0)
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =601) && (AnimElem = 2,>4) && (movecontact)


;===========================================================================
;===========================================================================
;===========================================================================
;=============================   AI   ======================================
;===========================================================================
;===========================================================================
;===========================================================================


[State -1, jump]
type = changestate
value = 40
triggerall = var(0) && statetype != A && roundstate = 2 && ctrl
trigger1 = ctrl && p2bodydist x > 160 && p2dist y < -100 && random < 100
trigger2 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC,AT


[State -1, Dash FWD]
type = changestate
value = 100
trigger1 = var(0) && statetype = S && roundstate = 2 && ctrl
trigger1 = (stateno != 100) && enemynear, movetype != A && p2bodydist x > 80 && random > 850

[State -1, Dash Back]
type = changestate
value = 105
trigger1 = var(0) && statetype = S && roundstate = 2 && ctrl && random < 50
trigger1 = (stateno != 105) && enemynear, movetype != A && p2bodydist x < 120


[State -1, Dash FWD]
type = changestate
value = 110
trigger1 = var(59) && statetype = A && roundstate = 2 && ctrl && random < 50
trigger1 = (stateno != 60) && enemynear, movetype != A && p2bodydist x > 120
trigger1 =(Vel Y <= 2 && vel Y >= -2)

[State -1, Dash Back]
type = changestate
value = 112
trigger1 = var(59) && statetype = A && roundstate = 2 && ctrl && random < 50
trigger1 = (stateno != 65) && enemynear, movetype != A && p2bodydist x < 120
trigger1 =(Vel Y <= 2 && vel Y >= -2)


[State -1, guard]
type = changestate
value = 120
trigger1 = var(0) && (roundstate = 2) && (ctrl)
trigger1 = (stateno!=[120,155])&& !(enemynear, hitdefattr = SCA,AT) && (inguarddist)

[State -1, airrecover]
type = changestate
value = ifelse((pos y >= -20), 5200, 5210)
triggerall = var(0) && roundstate = 2 && stateno = 5050
trigger1 = vel y > -1 && alive && canrecover && random < 250

;---------------------------------------------------------------------------
;============================通常技=========================================
;---------------------------------------------------------------------------

; ミサイル発射
[State -1,]
type = ChangeState
value = 3300
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [80, 200]) && (p2bodydist y = [-50,50]) && p2statetype != L
triggerall = power >= 3000
trigger1 = (random = [277,377]) && (ctrl)
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1 && (random = [263,293])
trigger3 = stateno = 210 && movecontact && (random = [263,293])
trigger4 = stateno = 211 && movecontact && (random = [263,293])
trigger5 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [263,293])
trigger6 = stateno = 261 && movecontact && (random = [263,293])
trigger7 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [263,293])
trigger8 = stateno = 460 && movecontact && (random = [263,293])
trigger9 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1 && (random = [263,293])
trigger10 = stateno = 910 && movecontact && (random = [263,293])

; ジェットパック噴射
[State -1,]
type = ChangeState
value = 3200
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x < 140) && (p2bodydist y = [-50,50]) && p2statetype != L
triggerall = power >= 1000
trigger1 = (random = [267,277]) && (ctrl)
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1 && (random = [253,263])
trigger3 = stateno = 210 && movecontact && (random = [253,263])
trigger4 = stateno = 211 && movecontact && (random = [253,263])
trigger5 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [253,263])
trigger6 = stateno = 261 && movecontact && (random = [253,263])
trigger7 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [253,263])
trigger8 = stateno = 460 && movecontact &&(random = [253,263])
trigger9 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1 && (random = [253,263])
trigger10 = stateno = 910 && movecontact && (random = [253,263])

; ミラクルメガトンパーンチ
[State -1,]
type = ChangeState
value = 3000
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x < 80) && (p2bodydist y = [-50,50]) && p2statetype != L
triggerall = power >= 2000
trigger1 = (random = [244,267]) && (ctrl)
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1 && (random = [237,253])
trigger3 = stateno = 210 && movecontact && (random = [237,253])
trigger4 = stateno = 211 && movecontact && (random = [237,253])
trigger5 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [237,253])
trigger6 = stateno = 261 && movecontact && (random = [237,253])
trigger7 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [237,253])
trigger8 = stateno = 460 && movecontact && (random = [237,253])
trigger9 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1 && (random = [237,253])
trigger10 = stateno = 910 && movecontact && (random = [237,253])

; スーパービリビリパンチ
[State -1,]
type = ChangeState
value = 3100
triggerall = var(0) && statetype = A && roundstate = 2
triggerall = (p2bodydist x < 180) && pos Y <= 150 && p2statetype != L && power >= 2000
trigger1 = (random = [424,442]) && (ctrl)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact) && (random = [171,188])
trigger3 = (stateno = 650 || stateno = 651) && (movecontact) && (random = [171,188])
trigger4 = (stateno = 610 || stateno = 611) && (movecontact) && (random = [171,188])
trigger5 = (stateno = 660 || stateno = 661) && (movecontact) && (random = [171,188])
;---------------------------------------------------------------------------

; サタンボム（弱）
[State -1]
type = ChangeState
value = 2000
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x > 120) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [824,844]) && (ctrl)
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1 && (random = [154,171])
trigger3 = stateno = 210 && movecontact && (random = [154,171])
trigger4 = stateno = 211 && movecontact && (random = [154,171])
trigger5 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [154,171])
trigger6 = stateno = 261 && movecontact && (random = [154,171])
trigger7 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [154,171])
trigger8 = stateno = 460 && movecontact && (random = [154,171])
trigger9 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1 && (random = [154,171])
trigger10 = stateno = 910 && movecontact && (random = [154,171])

; サタンボム（強）
[State -1]
type = ChangeState
value = 2010
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x > 120) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [789,824]) && (ctrl)
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1 && (random = [137,153])
trigger3 = stateno = 210 && movecontact && (random = [137,153])
trigger4 = stateno = 211 && movecontact && (random = [137,153])
trigger5 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [137,153])
trigger6 = stateno = 261 && movecontact && (random = [137,153])
trigger7 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [137,153])
trigger8 = stateno = 460 && movecontact && (random = [137,153])
trigger9 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1 && (random = [137,153])
trigger10 = stateno = 910 && movecontact && (random = [137,153])


;---------------------------------------------------------------------------

; ダイナマイトキック（弱）
[State -1]
type = ChangeState
value = 2100
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x <=150) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [768,789]) && (ctrl)
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1 && (random = [113,137])
trigger3 = stateno = 210 && movecontact && (random = [113,137])
trigger4 = stateno = 211 && movecontact && (random = [113,137])
trigger5 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [113,137])
trigger6 = stateno = 261 && movecontact && (random = [113,137])
trigger7 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [113,137])
trigger8 = stateno = 460 && movecontact && (random = [113,137])
trigger9 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1 && (random = [113,137])
trigger10 = stateno = 910 && movecontact && (random = [113,137])


; ダイナマイトキック（強）
[State -1]
type = ChangeState
value = 2105
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x <=150) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [734,768]) && (ctrl)
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1 && (random = [88,113])
trigger3 = stateno = 210 && movecontact && (random = [88,113])
trigger4 = stateno = 211 && movecontact && (random = [88,113])
trigger5 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [88,113])
trigger6 = stateno = 261 && movecontact && (random = [88,113])
trigger7 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [88,113])
trigger8 = stateno = 460 && movecontact && (random = [88,113])
trigger9 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1 && (random = [88,113])
trigger10 = stateno = 910 && movecontact && (random = [88,113])

;---------------------------------------------------------------------------

; ビーチフルスピンキック（弱）
[State -1]
type = ChangeState
value = 2200
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x <=150) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [700,734]) && (ctrl)
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1 && (random = [54,87])
trigger3 = stateno = 210 && movecontact && (random = [54,87])
trigger4 = stateno = 211 && movecontact && (random = [54,87])
trigger5 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [54,87])
trigger6 = stateno = 261 && movecontact && (random = [54,87])
trigger7 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && (random = [54,87])
trigger8 = stateno = 460 && movecontact && (random = [54,87])
trigger9 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1 && (random = [54,87])
trigger10 = stateno = 910 && movecontact && (random = [54,87])

; ビーチフルスピンキック（強）
[State -1]
type = ChangeState
value = 2250
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x <=150) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [663,699]) && (ctrl)
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1 && random < 20
trigger3 = stateno = 210 && movecontact && random < 20
trigger4 = stateno = 211 && movecontact && random < 20
trigger5 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && random < 20
trigger6 = stateno = 261 && movecontact && random < 20
trigger7 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && random < 20
trigger8 = stateno = 460 && movecontact && random < 30
trigger9 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1 && random < 50
trigger10 = stateno = 910 && movecontact && random < 50
;---------------------------------------------------------------------------

;ダイナミックスピニングアタック（弱）
[State -1, ]
type = ChangeState
value = 2300
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x <=150) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [643,663]) && (ctrl)
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1 && random < 20
trigger3 = stateno = 210 && movecontact && random < 20
trigger4 = stateno = 211 && movecontact && random < 20
trigger5 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && random < 20
trigger6 = stateno = 261 && movecontact && random < 20
trigger7 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && random < 20
trigger8 = stateno = 460 && movecontact && random < 30
trigger9 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1 && random < 50
trigger10 = stateno = 910 && movecontact && random < 50

;ダイナミックスピニングアタック（強）
[State -1, ]
type = ChangeState
value = 2350
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x <=150) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [612,643]) && (ctrl)
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1 && random < 20
trigger3 = stateno = 210 && movecontact && random < 20
trigger4 = stateno = 211 && movecontact && random < 20
trigger5 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && random < 20
trigger6 = stateno = 261 && movecontact && random < 20
trigger7 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1 && random < 20
trigger8 = stateno = 460 && movecontact && random < 30
trigger9 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1 && random < 50
trigger10 = stateno = 910 && movecontact && random < 50


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;バリバリパンチ(弱)
[State -1, ]
type = ChangeState
value = 2400
triggerall = var(0) && statetype = A && roundstate = 2
triggerall = (p2bodydist x < 150) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [500,540]) && (ctrl)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact) && random < 50
trigger3 = (stateno = 650 || stateno = 651) && (movecontact) && random < 50
trigger4 = (stateno = 610 || stateno = 611) && (movecontact) && random < 50
trigger5 = (stateno = 660 || stateno = 661) && (movecontact) && random < 50

;バリバリパンチ(強)
[State -1, ]
type = ChangeState
value = 2450
triggerall = var(0) && statetype = A && roundstate = 2
triggerall = (p2bodydist x < 150) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [540,600]) && (ctrl)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact) && random < 50
trigger3 = (stateno = 650 || stateno = 651) && (movecontact) && random < 50
trigger4 = (stateno = 610 || stateno = 611) && (movecontact) && random < 50
trigger5 = (stateno = 660 || stateno = 661) && (movecontact) && random < 50
;---------------------------------------------------------------------------

;ダッシュ弱パンチ
[State -1, ]
type = ChangeState
value = 900
triggerall = var(0) && (stateno = [100,101]) && roundstate = 2
triggerall = (p2bodydist x < 150) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [400,500]) && (ctrl)

;スライディングキック
[State -1, ]
type = ChangeState
value = 910
triggerall = var(0)&& (stateno = [100,101]) && roundstate = 2
triggerall = (p2bodydist x < 150) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [300,400]) && (ctrl)

;ダッシュ浮かせ攻撃
[State -1, ]
type = ChangeState
value = 920
triggerall = var(0) && (stateno = [100,101]) && roundstate = 2
triggerall = (p2bodydist x < 150) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [200,300]) && (ctrl)

;ダッシュ強キック
[State -1, ]
type = ChangeState
value = 930
triggerall = var(0) && (stateno = [100,101]) && roundstate = 2
triggerall = (p2bodydist x < 150) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [100,200]) && (ctrl)

;---------------------------------------------------------------------------
;立ち強キック（近距離） 
[State -1, ]
type = ChangeState
value = 261
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x <=15) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [325,400]) && (ctrl)
trigger2 = stateno = 200 && MoveContact && random < 50
trigger3 = stateno = 201 && MoveContact && random < 50
;trigger4 = stateno = 210 && movecontact
trigger4 = stateno = 211 && movecontact
trigger5 = stateno = 250 && movecontact && random < 250
trigger6 = stateno = 251 && movecontact && random < 250
trigger7 = stateno = 900 && movecontact && random < 150

;---------------------------------------------------------------------------
;立ち強キック
[State -1, ]
type = ChangeState
value = 260
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [16,70]) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [325,400]) && (ctrl)
trigger2 = stateno = 200 && MoveContact && random < 50
trigger3 = stateno = 201 && MoveContact && random < 50
trigger4 = stateno = 210 && movecontact && random < 150
trigger5 = stateno = 211 && movecontact && random < 150
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = 900 && movecontact && random < 150

;---------------------------------------------------------------------------

;立ち弱キック（近距離）
[State -1, ]
type = ChangeState
value = 251
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x <=15) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [250,325]) && (ctrl)
trigger2 = (stateno = 200 && MoveContact)
trigger3 = (stateno = 201 && MoveContact) 
trigger4 = (stateno = 251 && movecontact) && random < 500
trigger5 = (stateno = 900 && movecontact) && random < 250

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, ]
type = ChangeState
value = 250
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [16,70]) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [250,325]) && (ctrl)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 251 && movecontact && random < 50
trigger5 = stateno = 900 && movecontact && random < 250

;---------------------------------------------------------------------------

;立ち強パンチ（近距離）
[State -1, ]
type = ChangeState
value = 211
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x <= 15) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [150,250]) && (ctrl)
trigger2 = stateno = 200 && MoveContact && random < 500
trigger3 = stateno = 201 && MoveContact && random < 500
;trigger4 = stateno = 251 && movecontact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 900 && movecontact && random < 350
;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, ]
type = ChangeState
value = 210
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [16,60]) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random = [150,250]) && (ctrl)
trigger2 = (stateno = 200 && MoveContact) && random < 500
trigger3 = (stateno = 201 && MoveContact) && random < 500
trigger4 = (stateno = 250 && movecontact)
trigger5 = (stateno = 251 && movecontact)
trigger6 = (stateno = 900 && movecontact) && random < 350
;trigger7 = stateno = 211 && movecontact

;---------------------------------------------------------------------------

;立ち弱パンチ（近距離）
[State -1, ]
type = ChangeState
value = 201
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (P2BodyDist X <= 15) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random < 250) && (ctrl)
trigger2 = (stateno = 201) && (AnimElem = 2,>3 || MoveContact)

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, ]
type = ChangeState
value = 200
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [16,50]) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (random < 250) && (ctrl)
trigger2 = (stateno = 200) && (AnimElem = 2,>4) && (p2bodydist x = [16,60]) && random < 100
trigger3 = (stateno = 201 && MoveContact)
trigger4 = (stateno = 900 && movecontact) && random < 450

;---------------------------------------------------------------------------
;============================しゃがみ=========================================
;---------------------------------------------------------------------------

;屈み強キック
[State -1, 1]
type = ChangeState
value = 460
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0,50]) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (ctrl) && (random = [500,550])
trigger2 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger3 = (stateno = 900 && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1) && random > 950

;---------------------------------------------------------------------------
;屈み弱キック
[State -1, 2]
type = ChangeState
value = 450
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0,50]) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (ctrl) && (random = [450,500])
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 450) && (AnimElem = 2,>5 || MoveContact) && random > 900
trigger4 = stateno = 200 && MoveContact && random > 900
trigger5 = stateno = 201 && MoveContact&& random > 900


;---------------------------------------------------------------------------
;屈み強パンチ
[State -1, 3]
type = ChangeState
value = 410
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0,50]) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (ctrl) && (random = [550,600])
trigger2 = (stateno = 450) && (movecontact)
trigger3 = (stateno = 250 || stateno = 251) && (movecontact) && random > 850


;---------------------------------------------------------------------------
;屈み弱パンチ
[State -1, 4]
type = ChangeState
value = 400
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0,50]) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (ctrl) && (random = [400,450])
trigger2 = (stateno = 400) && (AnimElem = 2,>5 || MoveContact) && random < 100
trigger3 = stateno = 200 && MoveContact && random > 900
trigger4 = stateno = 201 && MoveContact && random > 900
trigger5 = (stateno = 900 && movecontact && AnimElem = 3, >= 1 && AnimElem = 4, <= 1) && random > 900

;---------------------------------------------------------------------------
;============================空中技=========================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1, ]
type = ChangeState
value = 661
triggerall = var(0) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0,60]) && (p2bodydist y = [-50,50]) && p2statetype != L && (Vel X != 0)
trigger1 = (ctrl)  && (random = [350,450])
trigger2 = (stateno = 601) && (movecontact) && random < 50
trigger3 = (stateno = 651) && (movecontact) && random < 50
trigger4 = (stateno = 611) && (movecontact)

;垂直ジャンプ強キック
[State -1, ]
type = ChangeState
value = 660
triggerall = var(0) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0,60]) && (p2bodydist y = [-50,50]) && p2statetype != L && (Vel X = 0)
trigger1 = (ctrl) && (random = [350,450])
trigger2 = (stateno = 600) && (movecontact) && random < 50
trigger3 = (stateno = 650) && (movecontact) && random < 50
trigger4 = (stateno = 610) && (movecontact)

;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 651
triggerall = var(0) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0,50]) && (p2bodydist y = [-50,50]) && p2statetype != L &&  (Vel X != 0)
trigger1 = (ctrl)  && (random = [250,350])
trigger2 = (stateno = 601) && (movecontact) && random < 750
;---------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1, ]
type = ChangeState
value = 650
triggerall = var(0) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0,50]) && (p2bodydist y = [-50,50]) && p2statetype != L &&  (Vel X = 0)
trigger1 = (ctrl)  && (random = [250,350])
trigger2 = (stateno = 600) && (movecontact) && random < 750
;---------------------------------------------------------------------------

;ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 611
triggerall = var(0) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0,50]) && (p2bodydist y = [-50,50]) && p2statetype != L && (Vel X != 0)
trigger1 = (ctrl) && (random = [150,250])
trigger2 = (stateno = 601 || (stateno = 651 && random < 500)) && (movecontact)
;---------------------------------------------------------------------------
;垂直ジャンプ強パンチ
[State -1, ]
type = ChangeState
value = 610
triggerall = var(0) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0,50]) && (p2bodydist y = [-50,50]) && p2statetype != L && (Vel X = 0)
trigger1 = (ctrl) && (random = [150,250])
trigger2 = (stateno = 600 || (stateno = 650 && random < 500)) && (movecontact)

;---------------------------------------------------------------------------
;垂直ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 600
triggerall = var(0) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0,50]) && (p2bodydist y = [-50,50]) && p2statetype != L &&  (Vel X = 0)
trigger1 = (ctrl) && (random = [0,150])
trigger2 = (stateno =600) && (AnimElem = 2,>4) && (movecontact) && random < 50
;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1, ]
type = ChangeState
value = 601
triggerall = var(0) && statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0,50]) && (p2bodydist y = [-50,50]) && p2statetype != L
trigger1 = (ctrl) && (random = [0,150])
trigger2 = (stateno =601) && (AnimElem = 2,>4) && (movecontact) && random < 50

;---------------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = var(0) && statetype != A && roundstate = 2
trigger1 = (p2bodydist x > 120) && p2statetype = L
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl && random > 950

;---------------------------------------------------------------------------
; 残像拳（カウンター）
[State -1]
type = ChangeState
value = 700
triggerall = var(0) && statetype != A && roundstate = 2
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000 && random < 500
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000 && random < 500

;---------------------------------------------------------------------------
; 高速移動 (後方)
[State -1]
type = ChangeState
value = 1000
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0,70]) && p2statetype != L && p2movetype = A
trigger1 = (ctrl) && (random = [345,512])
trigger2 = stateno = 100 && (random = [345,512])
trigger3 = stateno = 101 && (random = [345,512])
trigger4 = stateno = 102 && (random = [345,512])

;---------------------------------------------------------------------------
; 高速移動 (前方)
[State -1]
type = ChangeState
value = 1001
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0,70])  && p2statetype != L && p2movetype = A
trigger1 = (ctrl) && (random = [512,612])
trigger2 = stateno = 100 && (random = [512,612])
trigger3 = stateno = 101 && (random = [512,612])
trigger4 = stateno = 102 && (random = [512,612])

;---------------------------------------------------------------------------
; 気力溜め
[State -1]
type = ChangeState
value = 4500
triggerall = var(0) && statetype != A && roundstate = 2
triggerall = (p2bodydist x > 120) && p2statetype != L && p2movetype != A
triggerall = Power < 3000
trigger1 = (ctrl) && (random = [623,912])

