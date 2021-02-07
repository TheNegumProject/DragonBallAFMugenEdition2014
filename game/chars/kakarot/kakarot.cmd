;======================goku ssj2 by mugen mundo================================
;INTELIGENCIA ARTIFICIAL;
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

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[command]
name = "pirnilongo"
command = B,D,F,c
time = 40

[command]
name = "attack"
command = x,x,x
time = 40

[command]
name = "outro combo"
command = B,D,F,y
time = 52

[command]
name = "combo1"
command = B,D,F,z
time = 52

[command]
name = "final explosion big bang"
command = B,D,F,b;esse é um golpe indedito em que goku da um soco e explode o inimigo em qualquer direçao que ele esteja e  vegeta aparece e da um big bang no player 2
time = 50;esse golpe se chama final explosion big bang

[command]
name = "father son kamehameha"
command = B,D,F,x;se tiver menos de 300 de life se torna fatal o kamehameha de 4 para voce
time = 50 ;e se voce e o adversario tiverem menos de 300 de lifes e um dos dois lançar este ataque ambos morreram e dara um draw game

[command]
name = "masenko"
command = DF,a+b
time = 15

[command]
name = "faudeu"
command = x+z
time = 15

[command]
name = "seq6"
command = B,F,c
time = 15

[command]
name = "kienzan"
command = D,B,c
time = 15

[command]
name = "exploda p2"
command = D,B,z
time = 200

[command]
name = "karai"
command = B,F,z
time = 15

[command]
name = "kuku"
command = D,F,z
time = 15

[command]
name = "kiko"
command =c
time = 15

[command]
name = "lançaris"
command = D,B,a
time = 15
[command]
name = "kamehameha"
command = B,F,b
time = 15

[command]
name = "kaioken"
command = y+z
time = 15

[command]
name = "genkidama"
command = B,F,a
time = 15

[command]
name = "sew"
command = B,F,y
time = 15

[command]
name = "seq"
command = B,F,x
time = 15

[command]
name = "dedd"
command = /a,x
time = 1222

[command]
name = "dankai"
command = a+c
time = 15

[Remap]
[command]
name = "kakaruto"
command = D,B,b
time = 15

x = x
[command]
name = "gbt"
command = x+y
time = 15

y = y
[command]
name = "gbt"
command = x+y
time = 15

z = z
[command]
name = "grande"
command = D,F,b
time = 15

a = a
[command]
name = "boladeraio"
command = D,F,c
time = 15

b = b
[command]
name = "kamehamehaa"
command = D,F,a
time = 15

c = c
[command]
name = "came"
command = D,B,y
time = 15

s = s

[Command]
name = "SuperJump"
command = $D, $U

;-| Default Values |-------------------------------------------------------
[command]
name = "bomb"
command = D,F,y
time = 15

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "kiko"
command = D,B,x
time = 15

command.time = 30


;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

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
name = "recovery" ;Required (do not remove)
command = x+y+s+y+a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1
[Command]
name = "carregar ki"
command = /a
time=2
[Command]
name = "carregar ki2"
command = /b
time=2
[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
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
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1
[command]
name = "laib"
command = /x,/U
time = 1
;-------------------------------------------------------------------------
[Command]
name = "fly"
command = b+y
time = 20
[command]
name = "kame"
command = D,F,x
time = 15
[command]
name = "uau"
command = B,D,F,a
time = 50
;-----------------------------------------------------------------------------
[Statedef -1]
;MorraIdiota
[State -1, final explosion big bang]
type = ChangeState
value = 8166
triggerall = command = "final explosion big bang"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 220
trigger2 = time > 18
triggerall = power >= 3000
trigger3= stateno = 1500
;pirnilongo
[State -1, pirnilongo]
type = ChangeState
value = 39999
triggerall = power >= 300
triggerall = command = "pirnilongo"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500
;outro combo
[State -1, outro combo]
type = ChangeState
value = 1924
triggerall = power >= 200
triggerall = command = "outro combo"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 10
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;combo1
[State -1, combo1]
type = ChangeState
value = 5370
triggerall = power >= 200
triggerall = command = "combo1"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;father son kamehameha
[State -1, father son kamehameha]
type = ChangeState
value = 19999
triggerall = power >= 300
triggerall = command = "father son kamehameha"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500
;kame
[State -1, kame]
type = ChangeState
value = 999
triggerall = power >= 100
triggerall = command = "kame"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;uau
[State -1, uau]
type = ChangeState
value = 2871
triggerall = power >= 300
triggerall = command = "uau"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

[State -1,ai]
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
v = 6
value = 1
[State -1, IA Defesa]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 75
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 120

[State -1, IA Soco fraco]
type = ChangeState
value = 200
triggerall = var(13) = 1
triggerall = movetype != H
triggerall = StateType = S || StateType = C
triggerall = ctrl = 1
;triggerall = roundstate = 2
triggerall = stateno != 200
trigger1 = P2BodyDist X <= 40
trigger1 = prevstateno != 200 && prevstateno != 210 && prevstateno != 220 && prevstateno != 230 && prevstateno != 240 && prevstateno != 250

[State -1, IA Soco Medio]
type = ChangeState
value = 210
triggerall = var(13) = 1
triggerall = movetype != H
triggerall = StateType = S || StateType = C
;triggerall = roundstate = 2
trigger1 = stateno = 230
;trigger1 = AnimElem = 4
trigger1 = MoveContact

[State -1, IA Soco Forte]
type = ChangeState
value = 220
triggerall = var(13) = 1
triggerall = movetype != H
triggerall = StateType = S || StateType = C
trigger1 = random < 100
trigger1 = stateno = 240
trigger1 = MoveContact

[State -1, IA Chute Fraco]
type = ChangeState
value = 230
triggerall = var(13) = 1
triggerall = movetype != H
triggerall = StateType = S || StateType = C
;triggerall = roundstate = 2
trigger1 = stateno = 200
trigger1 = MoveContact
;trigger1 = AnimElem = 7

[State -1, IA Chute Medio]
type = ChangeState
value = 240
triggerall = var(13) = 1
triggerall = movetype != H
triggerall = StateType = S || StateType = C
;triggerall = roundstate = 2
trigger1 = stateno = 210
trigger1 = MoveContact
;trigger1 = AnimElem = 7

[State -1, IA Chute Forte]
type = ChangeState
value = 250
triggerall = var(13) = 1
triggerall = movetype != H
triggerall = StateType = S || StateType = C
triggerall = random < 200
trigger1 = stateno = 240
trigger1 = movecontact
;trigger1 = AnimElem = 4
;trigger2 = stateno = 240
;trigger2 = MoveContact

[State -1, IA Soco Abaixado]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2statetype = C && p2bodydist X <= 50
trigger2 = p2bodydist X <= 10 && Random <= 300
value = 400
persistent = 0

[State -1, IA Soco Médio Abaixado]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && StateType = C
trigger1 = (StateNo = 400) && (MoveContact)
value = 410
persistent = 0

[State -1, IA Chute Abaixado]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2statetype = C && p2bodydist X <= 50
trigger2 = p2bodydist X <= 10 && Random <= 300
value = 430
persistent = 0

[State -1, IA Soco 1]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X <= 15
value = 600
persistent = 0

[State -1, IA Soco 2]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X <= 15
value = 610
persistent = 0

[State -1, IA Soco 3]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X <= 15
value = 620
persistent = 0

[State -1, IA Soco 4]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X <= 15
value =630
persistent = 0

[State -1, IA Chute 1]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X <= 15
value = 640
persistent = 0

[State -1, IA Chute 2]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X <= 15
value = 650
persistent = 0

[State -1, IA Chute 3]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X <= 15
value = 820
persistent = 0

[State -1, IA Big Bang]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 150 && Random <= 600
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 1999

[State -1, IA Energia de Cima]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 20 && Random <= 600
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 999
persistent = 0

[State -1, IA Combo 01]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 100
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 2999

[State -1, IA Combo 02]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 100
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 3999

[State -1, IA Super Chute]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 120
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 6999

[State -1, IA Super Chute 02]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 120
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 7999

[State -1, IA Babidi 01]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 8999

[State -1, IA Babidi 02]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 9999

[State -1, IA Babidi 03]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 1113
[State -1, IA Babidi 03]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 14999
[State -1, IA Babidi 03]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 11999
[State -1, IA poder1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 13999
[State -1, IA poder2]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 15999
[State -1, IA poder3]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 17999
[State -1, IA combo3]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 2500
[State -1, IA combo4]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 19999
[State -1, IA combo5]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 18999
[State -1, IA combo6]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 5370
[State -1, IA combo7]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 1924
[State -1, IA combo8]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 39999
[State -1, IA combo9]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 2871
[State -1, IA combo10]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 8166
[State -1, IA combo11]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 1199
[State -1, IA combo12]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 5055
[State -1, IA combo13]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 201
[State -1, IA combo14]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 18100
[State -1, IA combo15]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 18101
[State -1, IA combo16]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 1024
[State -1, IA combo16]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 1125
[State -1, IA combo17]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 242424
[State -1, IA combo18]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 9979
[State -1, IA combo19]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 7899
[State -1, IA combo20]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 4296
[State -1, IA combo21]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 2839
[State -1, IA combo22]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 17999
[State -1, IA combo23]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 39999
[State -1, IA Voar]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 140
trigger1 = StateType = S
trigger1 = P2MoveType = A
trigger1 = P2StateType = A
value = 1510

[State -1, IA Voar]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 140
trigger1 = StateType = S
trigger1 = P2MoveType = A
trigger1 = P2StateType = A
value = 1504

[State -1, IA Ki]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 120
trigger1 = StateType = S
trigger1 = P2StateType = A
value = 3656
;Super Jump
[State -1,SJ]
type=ChangeState
value=707
triggerall=var(59)=0
triggerall=command="SuperJump"
triggerall=alive
triggerall=pos y>=0
triggerall=!win
trigger1=(statetype!=A&&ctrl)



;masenko
[State -1, masenko]
type = ChangeState
value = 17999
triggerall = power >= 100
triggerall = command = "masenko"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500


;seq6
[State -1, seq6]
type = ChangeState
value = 2839
triggerall = power >= 100
triggerall = command = "seq6"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500


;kienzan
[State -1, kienzan]
type = ChangeState
value = 15999
triggerall = power >= 100
triggerall = command = "kienzan"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500


;exploda p2
[State -1, exploda p2]
type = ChangeState
value = 13999
triggerall = power >= 300
triggerall = command = "exploda p2"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl=1
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500


;karai
[State -1, karai]
type = ChangeState
value = 4296
triggerall = power >= 300
triggerall = command = "karai"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl =1
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500


;kuku
[State -1, kuku]
type = ChangeState
value = 7899
triggerall = power >= 300
triggerall = command = "kuku"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl=1
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;lançaris
[State -1, lançaris]
type = ChangeState
value = 1199
triggerall = power >= 300
triggerall = command = "lançaris"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;kamehameha
[State -1, kamehameha]
type = ChangeState
value = 9979
triggerall = power >= 300
triggerall = command = "kamehameha"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;kaioken
[State -1, kaioken]
type = ChangeState
value = 5055
triggerall = power >= 0
triggerall = command = "kaioken"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;genkidama
[State -1, genkidama] ;se lançar a genkidama com menos de 1000 de vida voce morre
type = ChangeState
value = 2500
triggerall = power >= 2500
triggerall = command = "genkidama"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl=1
trigger2 = stateno = 220
trigger2 = time >20
trigger3= stateno = 1500

;sew
[State -1, sew]
type = ChangeState
value = 242424
triggerall = power >= 300
triggerall = command = "sew"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;seq
[State -1, seq]
type = ChangeState
value = 1125
triggerall = power >= 300
triggerall = command = "seq"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500


[State -1,gau]
type = ChangeState
value = 730
triggerall = var (5) =0
triggerall = power <3000
trigger1 = ctrl = 0
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = stateno = 1500

[State -1,ixa]
type = ChangeState
value = 45
triggerall = var (5) =0
trigger1 = ctrl = 1
trigger1 = command = "up"
trigger1 = stateno = 1500
;laiébur
[State -1, laiébur]
type = ChangeState
value = 201
triggerall = power >= 2500
triggerall = command = "attack"
trigger1 = movecontact ;fique apertando o x rapidamente para continuar o combo

[State -1]
type = ChangeState
value = 730
triggerall = var (5) =0
triggerall = power <2800
triggerall = ctrl = 1
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = statetype = S
[State -1]
type = ChangeState
value = 10730
triggerall = var (5) =1
triggerall = power <3000
triggerall = ctrl = 1
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = statetype = S
[State -1]
type = ChangeState
value = 730
triggerall = var (5) =0
triggerall = power <3000
trigger1 = ctrl = 0
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = stateno = 1500

;charge
[State -1, charge]
type = ChangeState
value = 730730
triggerall = var (5) =0
triggerall = power <1
trigger1 = ctrl = 1
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger3= stateno = 1500
;faudeu
[State -1, faudeu]
type = ChangeState
value = 18999
triggerall = power >= 300
triggerall = command = "faudeu"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500


;dedd
[State -1, dedd]
type = ChangeState
value = 1024
triggerall = power >= 300
triggerall = command = "dedd"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500


;dankai
[State -1, dankai]
type = ChangeState
value = 2477
triggerall = power >= 300
triggerall = command = "dankai"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500


;kakaruto
[State -1, kakaruto]
type = ChangeState
value = 18101
triggerall = power >= 300
triggerall = command = "kakaruto"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500


;gbt
[State -1, gbt]
type = ChangeState
value = 18100
triggerall = power >= 300
triggerall = command = "gbt"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500


;grande
[State -1, grande]
type = ChangeState
value = 11999
triggerall = power >= 300
triggerall = command = "grande"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;Fly
[State -1, Fly]
type = ChangeState
value = 1500
triggerall = command = "fly" ; comando lá de cima
trigger1 = statetype = A ; pode ser feito no Ar
trigger1 = ctrl = 1 ; o seu char voa sem controle para cima
trigger2 = stateno = 1500

;Fly
[State -1, Fly]
type = ChangeState
value = 1510
triggerall = command = "fly" ; comando lá de cima
trigger1 = statetype != a ; nao precisa ser só no A por isto o !
trigger1 = ctrl = 1 ; seu char para no alto
trigger2 = stateno =1510



;boladeraio
[State -1, boladeraio]
type = ChangeState
value = 9999
triggerall = power >= 30
triggerall = command = "boladeraio"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;kamehamehaa
[State -1, kamehamehaa]
type = ChangeState
value = 5999
triggerall = power >= 30
triggerall = command = "kamehamehaa"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 5999
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500


;came
[State -1, came]
type = ChangeState
value = 3999
triggerall = power >= 30
triggerall = command = "came"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 3999
trigger2 = movecontact
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500


;bomb
[State -1, bomb]
type = ChangeState
value = 2999
triggerall = power >= 30
triggerall = command = "bomb"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 2999
trigger2 = movecontact
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;kiko
[State -1, kiko]
type = ChangeState
value = 1999
triggerall = command = "kiko"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 1999
trigger2 = movecontact
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;kaliburu
[State -1, kaliburu]
type = ChangeState
value = 1199
triggerall = power >= 30
triggerall = command = "lançaris"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;laib
[State -1, laib]
type = ChangeState
value = 1113
triggerall = command = "laib"
trigger1 = statetype = A
triggerall = power >= 2000
trigger1 = ctrl =1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Throw]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holddown"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdup"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = power <10
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
 Stand Light Punch
[State -1, kukurucucu]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500

;jesus
[State -1, jesus]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500

;jaca
[State -1, jaca]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500

;gerente
[State -1, gerente]
type = ChangeState
value = 230
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500

;kulia
[State -1, kulia]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;para bola
[State -1, kulia]
type = ChangeState
value = 242424
triggerall = command = "sew"
trigger1 = (statetype = s) && ctrl
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 242424
trigger2 = time > 18
trigger3= stateno = 1500

;frejar
[State -1, frejar]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500

;kad
[State -1, kad]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500


