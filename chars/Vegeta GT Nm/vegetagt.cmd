;===================vegeta GT (original) by frs games sprites by nn and joker, edit by mugengod===========================
;AI------------------------------------------------------------------------
[Command]
name = "IA1"
command = D, DF, F, b,a
time = 1
[Command]
name = "IA2"
command = D, DF, F, b,a+b
time = 1
[Command]
name = "IA3"
command = D, DF, F, c,a+b+c
time = 1
[Command]
name = "IA4"
command = D, DF, F, x,a+b+c+z
time = 1
[Command]
name = "IA5"
command = D, DF, F, x,a+b+c+z+x
time = 1
[Command]
name = "IA6"
command = D, DF, F, b,a+b+c+z+x+y
time = 1
[Command]
name = "IA7"
command = D, DF, F, b,a+b+c+z+x+y+U
time = 1
[Command]
name = "IA8"
command = D, DF, F, c,a+b+c+z+x+y+U+D
time = 1
[Command]
name = "IA9"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F
time = 1
[Command]
name = "IA10"
command = D, DF, F, x
time = 1
[Command]
name = "IA11"
command = D, DF, F, b
time = 1
[Command]
name = "IA12"
command = D, DF, F, b
time = 1
[Command]
name = "IA13"
command = D, DF, F, c,D, DF, F
time = 1
[Command]
name = "IA14"
command = D, DF, F ,D, DF, F
time = 1
[Command]
name = "IA15"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F
time = 1
[Command]
name = "IA16"
command = D, DF, F, b,a+b+c+z+x+y+U+D
time = 1
[Command]
name = "IA17"
command = D, DF, F, b,a+b+c+z+x+y+U
time = 1
[Command]
name = "IA18"
command = D, DF, F, c,a+b+c+z+x+y
time = 1
[Command]
name = "IA19"
command = D, DF, F, x,a+b+c+z+x
time = 1
[Command]
name = "IA20"
command = D, DF, F, x,a+b+c+z
time = 1
[Command]
name = "IA21"
command = D, DF, F, b,a+b+c
time = 1
[Command]
name = "IA22"
command = D, DF, F, b,a+b
time = 1
[Command]
name = "IA23"
command = D, DF, F, c,a+b+c+x+y+U+D+F+B
time = 1
[Command]
name = "IA24"
command = D, DF, F, x,a+c+z+x+y+U+D+F+B
time = 1
[Command]
name = "IA25"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F+B
time = 1
[Command]
name = "IA26"
command = D, DF, F, b,a+b+c+z+x+y+U+F+B
time = 1
[Command]
name = "IA27"
command = D, DF, F, b,a+b+c+x+y+U+D+F
time = 1
[Command]
name = "IA28"
command = D, DF, F, c,a+b+c+z+x+y+F+B
time = 1
[Command]
name = "IA29"
command = D, DF, F, x,a+b+x+y+U+D+F+B
time = 1
[Command]
name = "IA30"
command = D, DF, F, x,b+c+z+x+y+U+D+F+B
time = 1
;-| Hyper Motions |--------------------------------------------------------
;[Command]
;name = "transformation to super saiyajin"
;command = c+z
;time = 10

[Command]
name = "Final flash"
command = ~D,DB,B,F, c
time = 30

[Command]
name = "fireball attack"
command = ~D,DB,B,F, b
time = 30

[Command]
name = "Galick ho"
command = ~D,DB,B,F, x
time = 30

[Command]
name = "Big bang attack"
command = ~D,DB,B,F, y
time = 30

[Command]
name = "Explosion"
command = ~D,DB,B,F, a
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "combo1"
command = ~D, DF, F, x
time = 10

[Command]
name = "combo2"
command = ~D, DF, F, y
time = 10

[Command]
name = "teleporte"
command = z
time = 1

[Command]
name = "fly"
command = a+x
time = 1

[Command]
name = "air big ball"
command = ~D, DF, F, c
time = 10

[Command]
name = "air beam"
command = ~D, DB, B, c
time = 10

[Command]
name = "beam"
command = ~D, DB, B, c
time = 10

[Command]
name = "Kienzan"
command = ~D, DF, F, c
time = 10

[Command]
name = "Rising Knee A"
command = ~D, DF, F, a
time = 10

[Command]
name = "Rising Knee B"
command = ~D, DF, F, b
time = 10

[Command]
name = "fly kick A"
command = ~D, DB, B, a
time = 10

[Command]
name = "fly kick B"
command = ~D, DB, B, b
time = 10

[Command]
name = "ki"
command = ~D, DB, B, x
time = 10

[Command]
name = "wind"
command = ~D, DB, B, y
time = 10

;-| Misc Motions |---------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------

[Command]
name="Super Jump"
command=~D,U
time = 8

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10

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
name = "start"
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
[State -1]
type = varset
triggerall = var(6) != 1
trigger1 = command = "IA1"
trigger2 = command = "IA2"
trigger3 = command = "IA3"
trigger4 = command = "IA4"
trigger5 = command = "IA5"
trigger6 = command = "IA6"
trigger7 = command = "IA7"
trigger8 = command = "IA8"
trigger9 = command = "IA9"
trigger10 = command = "IA10"
trigger11 = command = "IA11"
trigger12 = command = "IA12"
trigger13 = command = "IA13"
trigger14 = command = "IA14"
trigger15 = command = "IA15"
trigger16 = command = "IA16"
trigger17= command = "IA17"
trigger18= command = "IA18"
trigger19= command = "IA19"
trigger20= command = "IA20"
trigger21 = command = "IA21"
trigger22 = command = "IA22"
trigger23 = command = "IA23"
trigger24 = command = "IA24"
trigger25 = command = "IA25"
trigger26 = command = "IA26"
trigger27 = command = "IA27"
trigger28 = command = "IA28"
trigger29 = command = "IA29"
trigger30 = command = "IA30"
v = 6
value = 1

[State -1]
type = VarSet
trigger1 = RoundState != 2
trigger2 = !alive
v = 6
value = 0

[State -1]
type = ChangeState
value = 2600
triggerall=command="combo1"
trigger1 = statetype = S
trigger1 = (power >= 200)
trigger1 = ctrl = 1
trigger2=(stateno=200)&&(command="combo1")
trigger2 = (power >= 200)
trigger3=(stateno=210)&&(command="combo1")
trigger3 = (power >= 200)
trigger4=(stateno=300)&&(command="combo1")
trigger4 = (power >= 200)
trigger5=(stateno=310)&&(command="combo1")
trigger5 = (power >= 200)
trigger6=(stateno=250)&&(command="combo1")
trigger6 = (power >= 200)
trigger7=(stateno=260)&&(command="combo1")
trigger7 = (power >= 200)
trigger8=(stateno=350)&&(command="combo1")
trigger8 = (power >= 200)
trigger9=(stateno=360)&&(command="combo1")
trigger9 = (power >= 200)

[State -1]
type = ChangeState
value = 2700
triggerall=command="combo2"
trigger1 = statetype = S
trigger1 = (power >= 100)
trigger1 = ctrl = 1
trigger2=(stateno=200)&&(command="combo2")
trigger2 = (power >= 100)
trigger3=(stateno=210)&&(command="combo2")
trigger3 = (power >= 100)
trigger4=(stateno=300)&&(command="combo2")
trigger4 = (power >= 100)
trigger5=(stateno=310)&&(command="combo2")
trigger5 = (power >= 100)
trigger6=(stateno=250)&&(command="combo2")
trigger6 = (power >= 100)
trigger7=(stateno=260)&&(command="combo2")
trigger7 = (power >= 100)
trigger8=(stateno=350)&&(command="combo2")
trigger8 = (power >= 100)
trigger9=(stateno=360)&&(command="combo2")
trigger9 = (power >= 100)

[State -1]
type = ChangeState
value = 3000
triggerall=command="Galick ho"
trigger1 = statetype = S
trigger1 = (power >= 1000)
trigger1 = ctrl = 1
trigger2=(stateno=200)&&(command="Galick ho")
trigger2 = (power >= 1000)
trigger3=(stateno=210)&&(command="Galick ho")
trigger3 = (power >= 1000)
trigger4=(stateno=300)&&(command="Galick ho")
trigger4 = (power >= 1000)
trigger5=(stateno=310)&&(command="Galick ho")
trigger5 = (power >= 1000)
trigger6=(stateno=250)&&(command="Galick ho")
trigger6 = (power >= 1000)
trigger7=(stateno=260)&&(command="Galick ho")
trigger7 = (power >= 1000)
trigger8=(stateno=350)&&(command="Galick ho")
trigger8 = (power >= 1000)
trigger9=(stateno=360)&&(command="Galick ho")
trigger9 = (power >= 1000)
trigger10=(stateno=2650)&&(command="Galick ho")
trigger10 = (power >= 1000)
trigger11=(stateno=2000)&&(command="Galick ho") && Time > 30
trigger11 = (power >= 1000)
trigger12=(stateno=1800)&&(command="Galick ho")
trigger12 = (power >= 1000)
trigger13=(stateno=1810)&&(command="Galick ho")
trigger13 = (power >= 1000)
trigger14=(stateno=1820)&&(command="Galick ho")
trigger14 = (power >= 1000)
trigger15=(stateno=1830)&&(command="Galick ho")
trigger15 = (power >= 1000)
trigger16=(stateno=1840)&&(command="Galick ho")
trigger16 = (power >= 1000)
trigger17=(stateno=2100)&&(command="Galick ho")
trigger17 = (power >= 1000)
trigger18=(stateno=2500)&&(command="Galick ho")
trigger18 = (power >= 1000)
trigger19=(stateno=2705)&&(command="Galick ho")
trigger19 = (power >= 1000)
trigger20=(stateno=2706)&&(command="Galick ho")
trigger20 = (power >= 1000)
trigger21=(stateno=2707)&&(command="Galick ho")
trigger21 = (power >= 1000)
trigger22=(stateno=2708)&&(command="Galick ho")
trigger22 = (power >= 1000)
trigger23=(stateno=2709)&&(command="Galick ho")
trigger23 = (power >= 1000)


[State -1]
type = ChangeState
value = 3300
triggerall=command="fireball attack"
trigger1 = statetype = S
trigger1 = (power >= 1000)
trigger1 = ctrl = 1
trigger2=(stateno=200)&&(command="fireball attack")
trigger2 = (power >= 1000)
trigger3=(stateno=210)&&(command="fireball attack")
trigger3 = (power >= 1000)
trigger4=(stateno=300)&&(command="fireball attack")
trigger4 = (power >= 1000)
trigger5=(stateno=310)&&(command="fireball attack")
trigger5 = (power >= 1000)
trigger6=(stateno=250)&&(command="fireball attack")
trigger6 = (power >= 1000)
trigger7=(stateno=260)&&(command="fireball attack")
trigger7 = (power >= 1000)
trigger8=(stateno=350)&&(command="fireball attack")
trigger8 = (power >= 1000)
trigger9=(stateno=360)&&(command="fireball attack")
trigger9 = (power >= 1000)
trigger10=(stateno=2650)&&(command="fireball attack")
trigger10 = (power >= 1000)
trigger11=(stateno=2000)&&(command="fireball attack") && Time > 30
trigger11 = (power >= 1000)
trigger12=(stateno=1800)&&(command="fireball attack")
trigger12 = (power >= 1000)
trigger13=(stateno=1810)&&(command="fireball attack")
trigger13 = (power >= 1000)
trigger14=(stateno=1820)&&(command="fireball attack")
trigger14 = (power >= 1000)
trigger15=(stateno=1830)&&(command="fireball attack")
trigger15 = (power >= 1000)
trigger16=(stateno=1840)&&(command="fireball attack")
trigger16 = (power >= 1000)
trigger17=(stateno=2100)&&(command="fireball attack")
trigger17 = (power >= 1000)
trigger18=(stateno=2500)&&(command="fireball attack")
trigger18 = (power >= 1000)
trigger19=(stateno=2705)&&(command="fireball attack")
trigger19 = (power >= 1000)
trigger20=(stateno=2706)&&(command="fireball attack")
trigger20 = (power >= 1000)
trigger21=(stateno=2707)&&(command="fireball attack")
trigger21 = (power >= 1000)
trigger22=(stateno=2708)&&(command="fireball attack")
trigger22 = (power >= 1000)
trigger23=(stateno=2709)&&(command="fireball attack")
trigger23 = (power >= 1000)


[State -1]
type = ChangeState
value = 3100
triggerall=command="Big bang attack"
trigger1 = statetype = S
trigger1 = (power >= 1000)
trigger1 = ctrl = 1
trigger2=(stateno=200)&&(command="Big bang attack")
trigger2 = (power >= 1000)
trigger3=(stateno=210)&&(command="Big bang attack")
trigger3 = (power >= 1000)
trigger4=(stateno=300)&&(command="Big bang attack")
trigger4 = (power >= 1000)
trigger5=(stateno=310)&&(command="Big bang attack")
trigger5 = (power >= 1000)
trigger6=(stateno=250)&&(command="Big bang attack")
trigger6 = (power >= 1000)
trigger7=(stateno=260)&&(command="Big bang attack")
trigger7 = (power >= 1000)
trigger8=(stateno=350)&&(command="Big bang attack")
trigger8 = (power >= 1000)
trigger9=(stateno=360)&&(command="Big bang attack")
trigger9 = (power >= 1000)
trigger10=(stateno=2650)&&(command="Big bang attack")
trigger10 = (power >= 1000)
trigger11=(stateno=2000)&&(command="Big bang attack") && Time > 30
trigger11 = (power >= 1000)
trigger12=(stateno=1800)&&(command="Big bang attack")
trigger12 = (power >= 1000)
trigger13=(stateno=1810)&&(command="Big bang attack")
trigger13 = (power >= 1000)
trigger14=(stateno=1820)&&(command="Big bang attack")
trigger14 = (power >= 1000)
trigger15=(stateno=1830)&&(command="Big bang attack")
trigger15 = (power >= 1000)
trigger16=(stateno=1840)&&(command="Big bang attack")
trigger16 = (power >= 1000)
trigger17=(stateno=2100)&&(command="Big bang attack")
trigger17 = (power >= 1000)
trigger18=(stateno=2500)&&(command="Big bang attack")
trigger18 = (power >= 1000)
trigger19=(stateno=2705)&&(command="Big bang attack")
trigger19 = (power >= 1000)
trigger20=(stateno=2706)&&(command="Big bang attack")
trigger20 = (power >= 1000)
trigger21=(stateno=2707)&&(command="Big bang attack")
trigger21 = (power >= 1000)
trigger22=(stateno=2708)&&(command="Big bang attack")
trigger22 = (power >= 1000)
trigger23=(stateno=2709)&&(command="Big bang attack")
trigger23 = (power >= 1000)

[State -1]
type = ChangeState
value = 3200
triggerall=command="Explosion"
trigger1 = statetype = S
trigger1 = (power >= 1000)
trigger1 = ctrl = 1
trigger2=(stateno=200)&&(command="Explosion")
trigger2 = (power >= 1000)
trigger3=(stateno=210)&&(command="Explosion")
trigger3 = (power >= 1000)
trigger4=(stateno=300)&&(command="Explosion")
trigger4 = (power >= 1000)
trigger5=(stateno=310)&&(command="Explosion")
trigger5 = (power >= 1000)
trigger6=(stateno=250)&&(command="Explosion")
trigger6 = (power >= 1000)
trigger7=(stateno=260)&&(command="Explosion")
trigger7 = (power >= 1000)
trigger8=(stateno=350)&&(command="Explosion")
trigger8 = (power >= 1000)
trigger9=(stateno=360)&&(command="Explosion")
trigger9 = (power >= 1000)
trigger10=(stateno=2650)&&(command="Explosion")
trigger10 = (power >= 1000)
trigger11=(stateno=2000)&&(command="Explosion") && Time > 30
trigger11 = (power >= 1000)
trigger12=(stateno=1800)&&(command="Explosion")
trigger12 = (power >= 1000)
trigger13=(stateno=1810)&&(command="Explosion")
trigger13 = (power >= 1000)
trigger14=(stateno=1820)&&(command="Explosion")
trigger14 = (power >= 1000)
trigger15=(stateno=1830)&&(command="Explosion")
trigger15 = (power >= 1000)
trigger16=(stateno=1840)&&(command="Explosion")
trigger16 = (power >= 1000)
trigger17=(stateno=2100)&&(command="Explosion")
trigger17 = (power >= 1000)
trigger18=(stateno=2500)&&(command="Explosion")
trigger18 = (power >= 1000)
trigger19=(stateno=2705)&&(command="Explosion")
trigger19 = (power >= 1000)
trigger20=(stateno=2706)&&(command="Explosion")
trigger20 = (power >= 1000)
trigger21=(stateno=2707)&&(command="Explosion")
trigger21 = (power >= 1000)
trigger22=(stateno=2708)&&(command="Explosion")
trigger22 = (power >= 1000)
trigger23=(stateno=2709)&&(command="Explosion")
trigger23 = (power >= 1000)

[State -1]
type = ChangeState
value = 3500
triggerall=command="Final flash"
triggerall= Life <= 500
trigger1 = statetype = S
trigger1 = (power >= 2000)
trigger1 = ctrl = 1
trigger2=(stateno=200)&&(command="Final flash")
trigger2 = (power >= 2000)
trigger3=(stateno=210)&&(command="Final flash")
trigger3 = (power >= 2000)
trigger4=(stateno=300)&&(command="Final flash")
trigger4 = (power >= 2000)
trigger5=(stateno=310)&&(command="Final flash")
trigger5 = (power >= 2000)
trigger6=(stateno=250)&&(command="Final flash")
trigger6 = (power >= 2000)
trigger7=(stateno=260)&&(command="Final flash")
trigger7 = (power >= 2000)
trigger8=(stateno=350)&&(command="Final flash")
trigger8 = (power >= 2000)
trigger9=(stateno=360)&&(command="Final flash")
trigger9 = (power >= 2000)
trigger10=(stateno=2650)&&(command="Final flash")
trigger10 = (power >= 2000)
trigger11=(stateno=2000)&&(command="Final flash") && Time > 30
trigger11 = (power >= 2000)
trigger12=(stateno=1800)&&(command="Final flash")
trigger12 = (power >= 2000)
trigger13=(stateno=1810)&&(command="Final flash")
trigger13 = (power >= 2000)
trigger14=(stateno=1820)&&(command="Final flash")
trigger14 = (power >= 2000)
trigger15=(stateno=1830)&&(command="Final flash")
trigger15 = (power >= 2000)
trigger16=(stateno=1840)&&(command="Final flash")
trigger16 = (power >= 2000)
trigger17=(stateno=2100)&&(command="Final flash")
trigger17 = (power >= 2000)
trigger18=(stateno=2500)&&(command="Final flash")
trigger18 = (power >= 2000)
trigger19=(stateno=2705)&&(command="Final flash")
trigger19 = (power >= 2000)
trigger20=(stateno=2706)&&(command="Final flash")
trigger20 = (power >= 2000)
trigger21=(stateno=2707)&&(command="Final flash")
trigger21 = (power >= 2000)
trigger22=(stateno=2708)&&(command="Final flash")
trigger22 = (power >= 2000)
trigger23=(stateno=2709)&&(command="Final flash")
trigger23 = (power >= 2000)

;air big ball
[State -1, 0]
type = ChangeState
value = 2800
triggerall = power >= 500
triggerall = command = "air big ball"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2=(stateno=500)&&(command="air big ball")
trigger2 = (power >= 500)
trigger3=(stateno=510)&&(command="air big ball")
trigger3 = (power >= 500)
trigger4=(stateno=520)&&(command="air big ball")
trigger4 = (power >= 500)
trigger5=(stateno=530)&&(command="air big ball")
trigger5 = (power >= 500)

;air Beam
[State -1, Beam]
type = ChangeState
value = 2900
triggerall = command = "air beam" && power >= 500
trigger1 = statetype = A && ctrl
trigger2=(stateno=500)&&(command="air beam")
trigger2 = (power >= 500)
trigger3=(stateno=510)&&(command="air beam")
trigger3 = (power >= 500)
trigger4=(stateno=520)&&(command="air beam")
trigger4 = (power >= 500)
trigger5=(stateno=530)&&(command="air beam")
trigger5 = (power >= 500)

;Beam
[State -1, Beam]
type = ChangeState
value = 2000
triggerall = command = "beam" && power >= 500
trigger1 = statetype = S && ctrl
trigger2=(stateno=200)&&(command="beam")
trigger2 = (power >= 500)
trigger3=(stateno=210)&&(command="beam")
trigger3 = (power >= 500)
trigger4=(stateno=300)&&(command="beam")
trigger4 = (power >= 500)
trigger5=(stateno=310)&&(command="beam")
trigger5 = (power >= 500)
trigger6=(stateno=250)&&(command="beam")
trigger6 = (power >= 500)
trigger7=(stateno=260)&&(command="beam")
trigger7 = (power >= 500)
trigger8=(stateno=350)&&(command="beam")
trigger8 = (power >= 500)
trigger9=(stateno=360)&&(command="beam")
trigger9 = (power >= 500)
trigger10=(stateno=2650)&&(command="beam")
trigger10 = (power >= 500)
trigger11=(stateno=1800)&&(command="beam")
trigger11 = (power >= 500)
trigger12=(stateno=1810)&&(command="beam")
trigger12 = (power >= 500)
trigger13=(stateno=1820)&&(command="beam")
trigger13 = (power >= 500)
trigger14=(stateno=1830)&&(command="beam")
trigger14 = (power >= 500)
trigger15=(stateno=1840)&&(command="beam")
trigger15 = (power >= 500)
trigger16=(stateno=2100)&&(command="beam")
trigger16 = (power >= 500)
trigger17=(stateno=2500)&&(command="beam")
trigger17 = (power >= 500)
trigger18=(stateno=2705)&&(command="beam")
trigger18 = (power >= 500)
trigger19=(stateno=2706)&&(command="beam")
trigger19 = (power >= 500)
trigger20=(stateno=2707)&&(command="beam")
trigger20 = (power >= 500)
trigger21=(stateno=2708)&&(command="beam")
trigger21 = (power >= 500)
trigger22=(stateno=2709)&&(command="beam")
trigger22= (power >= 500)

;Kienzan
[State -1, Kienzan]
type = ChangeState
value = 2100
triggerall = power >= 500
triggerall = command = "Kienzan"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2=(stateno=200)&&(command="Kienzan")
trigger2 = (power >= 500)
trigger3=(stateno=210)&&(command="Kienzan")
trigger3 = (power >= 500)
trigger4=(stateno=300)&&(command="Kienzan")
trigger4 = (power >= 500)
trigger5=(stateno=310)&&(command="Kienzan")
trigger5 = (power >= 500)
trigger6=(stateno=250)&&(command="Kienzan")
trigger6 = (power >= 500)
trigger7=(stateno=260)&&(command="Kienzan")
trigger7 = (power >= 500)
trigger8=(stateno=350)&&(command="Kienzan")
trigger8 = (power >= 500)
trigger9=(stateno=360)&&(command="Kienzan")
trigger9 = (power >= 500)
trigger10=(stateno=2650)&&(command="Kienzan")
trigger10 = (power >= 500)
trigger11=(stateno=1800)&&(command="Kienzan")
trigger11 = (power >= 500)
trigger12=(stateno=1810)&&(command="Kienzan")
trigger12 = (power >= 500)
trigger13=(stateno=1820)&&(command="Kienzan")
trigger13 = (power >= 500)
trigger14=(stateno=1830)&&(command="Kienzan")
trigger14 = (power >= 500)
trigger15=(stateno=1840)&&(command="Kienzan")
trigger15 = (power >= 500)
trigger16=(stateno=2500)&&(command="Kienzan")
trigger16 = (power >= 500)
trigger17=(stateno=2000)&&(command="Kienzan") && Time > 30
trigger17 = (power >= 500)
trigger18=(stateno=2705)&&(command="Kienzan")
trigger18 = (power >= 500)
trigger19=(stateno=2706)&&(command="Kienzan")
trigger19 = (power >= 500)
trigger20=(stateno=2707)&&(command="Kienzan")
trigger20 = (power >= 500)
trigger21=(stateno=2708)&&(command="Kienzan")
trigger21 = (power >= 500)
trigger22=(stateno=2709)&&(command="Kienzan")
trigger22 = (power >= 500)


;wind
[State -1]
type = ChangeState
value = 1800
triggerall = command = "wind" && Power >= 300
trigger1 = statetype != A && ctrl
trigger2=(stateno=200)&&(command="wind")
trigger2 = (power >= 300)
trigger3=(stateno=210)&&(command="wind")
trigger3 = (power >= 300)
trigger4=(stateno=300)&&(command="wind")
trigger4 = (power >= 300)
trigger5=(stateno=310)&&(command="wind")
trigger5 = (power >= 300)
trigger6=(stateno=250)&&(command="wind")
trigger6 = (power >= 300)
trigger7=(stateno=260)&&(command="wind")
trigger7 = (power >= 300)
trigger8=(stateno=350)&&(command="wind")
trigger8 = (power >= 300)
trigger9=(stateno=360)&&(command="wind")
trigger9 = (power >= 300)

;ki
[State -1]
type		= Changestate
value		= 2500
triggerall	= command = "ki"&& power >= 300
trigger1	= statetype != A && ctrl
trigger2=(stateno=200)&&(command="ki")
trigger2 = (power >= 300)
trigger3=(stateno=210)&&(command="ki")
trigger3 = (power >= 300)
trigger4=(stateno=300)&&(command="ki")
trigger4 = (power >= 300)
trigger5=(stateno=310)&&(command="ki")
trigger5 = (power >= 300)
trigger6=(stateno=250)&&(command="ki")
trigger6 = (power >= 300)
trigger7=(stateno=260)&&(command="ki")
trigger7 = (power >= 300)
trigger8=(stateno=350)&&(command="ki")
trigger8 = (power >= 300)
trigger9=(stateno=360)&&(command="ki")
trigger9 = (power >= 300)

[State -1]
type		= Changestate
value		= 1300
triggerall	= Command = "Rising Knee A"
trigger1	= ctrl && statetype = S
trigger2=(stateno=200)&&(command="Rising Knee A")
trigger3=(stateno=210)&&(command="Rising Knee A")
trigger4=(stateno=300)&&(command="Rising Knee A")
trigger5=(stateno=310)&&(command="Rising Knee A")
trigger6=(stateno=250)&&(command="Rising Knee A")
trigger7=(stateno=260)&&(command="Rising Knee A")
trigger8=(stateno=350)&&(command="Rising Knee A")
trigger9=(stateno=360)&&(command="Rising Knee A")

[State -1]
type		= Changestate
value		= 1400
triggerall	= Command = "Rising Knee B"
trigger1	= ctrl && statetype = S
trigger2=(stateno=200)&&(command="Rising Knee B")
trigger3=(stateno=210)&&(command="Rising Knee B")
trigger4=(stateno=300)&&(command="Rising Knee B")
trigger5=(stateno=310)&&(command="Rising Knee B")
trigger6=(stateno=250)&&(command="Rising Knee B")
trigger7=(stateno=260)&&(command="Rising Knee B")
trigger8=(stateno=350)&&(command="Rising Knee B")
trigger9=(stateno=360)&&(command="Rising Knee B")

[State -1]
type		= Changestate
value		= 2200
triggerall	= Command = "fly kick A"
trigger1	= ctrl && statetype = S
trigger2=(stateno=200)&&(command="fly kick A")
trigger3=(stateno=210)&&(command="fly kick A")
trigger4=(stateno=300)&&(command="fly kick A")
trigger5=(stateno=310)&&(command="fly kick A")
trigger6=(stateno=250)&&(command="fly kick A")
trigger7=(stateno=260)&&(command="fly kick A")
trigger8=(stateno=350)&&(command="fly kick A")
trigger9=(stateno=360)&&(command="fly kick A")

[State -1]
type		= Changestate
value		= 2300
triggerall	= Command = "fly kick B"
trigger1	= ctrl && statetype = S
trigger2=(stateno=200)&&(command="fly kick B")
trigger3=(stateno=210)&&(command="fly kick B")
trigger4=(stateno=300)&&(command="fly kick B")
trigger5=(stateno=310)&&(command="fly kick B")
trigger6=(stateno=250)&&(command="fly kick B")
trigger7=(stateno=260)&&(command="fly kick B")
trigger8=(stateno=350)&&(command="fly kick B")
trigger9=(stateno=360)&&(command="fly kick B")

;FireBall2
[State -1, FireBall2]
type = ChangeState
value = 901
triggerall = command = "c"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = Time > 6 && stateno = 900

;FireBall
[State -1, FireBall]
type = ChangeState
value = 900
triggerall = command = "c"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Time > 6 && stateno = 901

;air FireBall2
[State -1, FireBall2]
type = ChangeState
value = 1901
triggerall = command = "c"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = Time > 6 && stateno = 1900

;air FireBall
[State -1, FireBall]
type = ChangeState
value = 1900
triggerall = command = "c"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Time > 6 && stateno = 1901

[State -1]
type = ChangeState
value = 336
triggerall = Power >= 100
triggerall = command = "teleporte"
trigger1 = statetype!=A
trigger1 = ctrl = 1
trigger2 = stateno = 5000
trigger3 = stateno = 5001
trigger4 = stateno = 5002
trigger5 = stateno = 5010
trigger6 = stateno = 5011
trigger7 = stateno = 5012
trigger8 = stateno = 5020
trigger9 = stateno = 5021
trigger10 = stateno = 5022
trigger11= stateno = 5110
trigger12 = stateno = 5120
trigger13 = stateno = 5110
trigger14 = stateno = 5035
trigger15 = stateno = 5030
trigger16 = stateno = 5050
trigger17 = stateno = 5040
trigger18 = stateno = 5071

[State -1]
type = ChangeState
value = 336
triggerall = Power >= 100
triggerall = command = "teleporte"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 5000
trigger3 = stateno = 5001
trigger4 = stateno = 5002
trigger5 = stateno = 5010
trigger6 = stateno = 5011
trigger7 = stateno = 5012
trigger8 = stateno = 5020
trigger9 = stateno = 5021
trigger10 = stateno = 5022
trigger11= stateno = 5110
trigger12 = stateno = 5120
trigger13 = stateno = 5110
trigger14 = stateno = 5035
trigger15 = stateno = 5030
trigger16 = stateno = 5050
trigger17 = stateno = 5040
trigger18 = stateno = 5071

;Super Jump
[State -1,SJ]
type=ChangeState
value = 700
triggerall=command="Super Jump"
triggerall=alive
triggerall=pos y>=0
trigger1=(statetype!=A&&ctrl)

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

;AIR DASH Run Fwd
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 112
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)
;---------------------------------------------------------------------------
; AIR DASH Run Back
[State -1: 		Run Back]
type 			= ChangeState
value 		= 117
triggerall 		= (Command = "BB") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)

;fly
[State -1]
type = ChangeState
value = 1510
triggerall = Power >= 100
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1510
triggerall = Power >= 100
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1


;Charge Up/Power Up
[State -1, ChargePower]
type = ChangeState
value = 800
triggerall = power < 3000 && time > 2
trigger1 = command = "holdb" && command = "holdy" && statetype = S && ctrl = 1

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;============================================================
;-| Basic |-----------------------------------------------------------------
;Stand Weak Punch
[State -1, SWP]
type = ChangeState
triggerall=statetype=S
trigger1=(ctrl)&&(command="x")
value = 200

;Stand Weak Punch
[State -1, SWP]
type = ChangeState
triggerall=statetype=S
trigger1=(stateno=300)&&movecontact&&(command="x")
value = 200

[State -1, AMP]
type = ChangeState
triggerall=statetype=S
trigger1=(stateno=200)&&movecontact&&(command="x")
value = 250

;Stand Medium Punch
[State -1, SMP]
type = ChangeState
triggerall=statetype=S
trigger1=(ctrl)&&(command="y")
value = 210

;Stand Medium Punch
[State -1, SHP]
type = ChangeState
triggerall=statetype=S
trigger1=(stateno=200)&&movecontact&&(command="y")
value = 210

[State -1, SHP]
type = ChangeState
triggerall=statetype=S
trigger1=(stateno=210)&&movecontact&&(command="y")
value = 260

[State -1, AMP]
type = ChangeState
triggerall=statetype=S
trigger1=(stateno=250)&&movecontact&&(command="y")
value = 210

;Stand light kick
[State -1, AMP]
type = ChangeState
triggerall=statetype=S
trigger1=(stateno=200)&&movecontact&&(command="a")
value = 300

;Stand light kick
[State -1, SLK]
type = ChangeState
triggerall=statetype=S
trigger1=(ctrl)&&(command="a")
value = 300

[State -1]
type = ChangeState
triggerall=statetype=S
trigger1=(stateno=300)&&movecontact&&(command="a")
value = 350

;Stand hard kick
[State -1, SHK]
type = ChangeState
triggerall=statetype=S
trigger1=(ctrl)&&(command="b")
value = 310

;Stand hard kick
[State -1, AMP]
type = ChangeState
triggerall=statetype=S
trigger1=(stateno=300)&&movecontact&&(command="b")
value = 310

;Stand hard kick
[State -1, AMP]
type = ChangeState
triggerall=statetype=S
trigger1=(stateno=350)&&movecontact&&(command="b")
value = 310

[State -1, SLK]
type = ChangeState
triggerall=statetype=S
trigger1=(stateno=310)&&movecontact&&(command="b")
value = 360

; Crouch weak punch
[State -1, CWP]
type            = ChangeState
value      = 400
triggerall      = (command = "x")
trigger1        = (statetype = C) && (ctrl)

; Crouch weak punch 2
[State -1, AMP]
type = ChangeState
triggerall=statetype=C
trigger1=(stateno=400)&&movecontact&&(command="y")
value = 410

; Crouch weak punch 2
[State -1, CWP]
type            = ChangeState
value      = 410
triggerall      = (command = "y")
trigger1        = (statetype = C) && (ctrl)

;Crouch light kick
[State -1, CWK]
type            = ChangeState
value      = 420
triggerall      = (command = "a")
trigger1        = (statetype = C) && (ctrl)

;Crouch light kick
[State -1, AMP]
type = ChangeState
triggerall=statetype=C
trigger1=(stateno=420)&&movecontact&&(command="b")
value = 430

;Crouch HIGH kick
[State -1, ChK]
type            = ChangeState
value      = 430
triggerall      = (command = "b")
trigger1        = (statetype = C) && (ctrl)

; 2 mains
[State -1, ALP]
type = ChangeState
value = 540
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 500
trigger3 = stateno = 510
trigger4 = stateno = 520
trigger5 = stateno = 530

; Air Light Punch
[State -1, ALP]
type            = ChangeState
value      = 500
triggerall      = (command = "x")
trigger1        = (statetype = A) && (ctrl)

; Air hard Punch
[State -1, ALP]
type            = ChangeState
value      = 510
triggerall      = (command = "y")
trigger1        = (statetype = A) && (ctrl)

[State -1, AHP]
type = ChangeState
triggerall=statetype=A
trigger1=(stateno=500)&&movecontact&&(command="y")
value = 510

[State -1, AHP]
type = ChangeState
triggerall=statetype=A
trigger1=(stateno=500)&&movecontact&&(command="a")
value = 520

[State -1, AHP]
type = ChangeState
triggerall=statetype=A
trigger1=(stateno=520)&&movecontact&&(command="b")
value = 530

; Air Light kick
[State -1, ALP]
type            = ChangeState
value      = 520
triggerall      = (command = "a")
trigger1        = (statetype = A) && (ctrl)

; Air hard kick
[State -1, ALP]
type            = ChangeState
value      = 530
triggerall      = (command = "b")
trigger1        = (statetype = A) && (ctrl)
