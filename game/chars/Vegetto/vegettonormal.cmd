;-------------------cmd vegetto normal by mugen mundo------------------------------------------------
 ;INTELIGENCIA ARTIFICIAL;
[Command]
name = "IA1"
command =F,F,F,F,F,F
ctrl=1
time = 1
[Command]
name = "IA2"
command = D, DF, F, b,a+b
ctrl=1
time = 1
[Command]
name = "IA3"
command = D, DF, F, c,a+b+c
ctrl=1
time = 1
[Command]
name = "IA4"
command = D, DF, F, x,a+b+c+z
ctrl=1
time = 1
[Command]
name = "IA5"
command = D, DF, F, x,a+b+c+z+x
ctrl=1
time = 1
[Command]
name = "IA6"
command = D, DF, F, b,a+b+c+z+x+y
ctrl=1
time = 1
[Command]
name = "IA7"
command = D, DF, F, b,a+b+c+z+x+y+U
ctrl=1
time = 1
[Command]
name = "IA8"
command = D, DF, F, c,a+b+c+z+x+y+U+D
ctrl=1
time = 1
[Command]
name = "IA9"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F
ctrl=1
time = 1
[Command]
name = "IA10"
command = D, DF, F, x
ctrl=1
time = 1
[Command]
name = "IA11"
command = D, DF, F, b
ctrl=1
time = 1
[Command]
name = "IA12"
command = D, DF, F, b
ctrl=1
time = 1
[Command]
name = "IA13"
command = D, DF, F, c,D, DF, F
ctrl=1
time = 1
[Command]
name = "IA14"
command = D, DF, F ,D, DF, F
ctrl=1
time = 1
[Command]
name = "IA15"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F
ctrl=1
time = 1
[Command]
name = "IA16"
command = D, DF, F, b,a+b+c+z+x+y+U+D
ctrl=1
time = 1
[Command]
name = "IA17"
command = D, DF, F, b,a+b+c+z+x+y+U
ctrl=1
time = 1
[Command]
name = "IA18"
command = D, DF, F, c,a+b+c+z+x+y
ctrl=1
time = 1
[Command]
name = "IA19"
command = D, DF, F, x,a+b+c+z+x
ctrl=1
time = 1
[Command]
name = "IA20"
command = D, DF, F, x,a+b+c+z
ctrl=1
time = 1
[Command]
name = "IA21"
command = D, DF, F, b,a+b+c
ctrl=1
time = 1
[Command]
name = "IA22"
command = D, DF, F, b,a+b
ctrl=1
time = 1
[Command]
name = "IA23"
command = D, DF, F, c,a+b+c+x+y+U+D+F+B
ctrl=1
time = 1
[Command]
name = "IA24"
command = D, DF, F, x,a+c+z+x+y+U+D+F+B
ctrl=1
time = 1
[Command]
name = "IA25"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F+B
ctrl=1
time = 1
[Command]
name = "IA26"
command = D, DF, F, b,a+b+c+z+x+y+U+F+B
ctrl=1
time = 1
[Command]
name = "IA27"
command = D, DF, F, b,a+b+c+x+y+U+D+F
ctrl=1
time = 1
[Command]
name = "IA28"
command = D, DF, F, c,a+b+c+z+x+y+F+B
ctrl=1
time = 1
[Command]
name = "IA29"
command = D, DF, F, x,a+b+x+y+U+D+F+B
ctrl=1
time = 1

;-------HYPERS E ATTACKES IMPORTANTES---------------------
[command]
name = "contratake"
command = c+z
time = 15
[command]
name = "helper attack1"
command = D,F,c
time = 15
[command]
name = "contra"
command = b+c
time = 15

[command]
name = "o grande ataque big bang"
command = B,D,F,a
time = 150

[command]
name = "combo duplo"
command = B,D,F,c
time = 60

[command]
name = "super garlick gun"
command = B,D,F,b
time = 60

[command]
name = "vire pó"
command = $F,x+y
time = 10

[command]
name = "genkidama"
command = B,F,a
time = 15

[command]
name = "combo kamehameha"
command = B,D,F,z
time = 50
[command]
name = "kaioken"
command = y+z
time = 30

[command]
name = "desfundir"
command = D,B,c;golpe big bang desfundido com a ajuda do goku
time = 15

[command]
name = "combinhu"
command = D,B,a
time = 15

[command]
name = "explodaverme"
command = D,B,b
time = 15

[command]
name = "combo5"
command = B,D,F,y
time = 50

[command]
name = "combo4"
command = B,D,F,x
time = 50

[command]
name = "laib"
command = /x,/U
time = 1

[command]
name = "combo3"
command = B,F,b
time = 15

[Command]
name = "ssj"
command = a+b

[Command]
name = "normal"
command = s

[command]
name = "ssj1kame"
command = B,F,c
time = 15

[command]
name = "explodap2"
command = B,F,y
time = 15


[Command]
name = "SuperJump"
command = $D, $U


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
[command]
name = "combo2"
command = B,F,x
time = 30

x = x
[command]
name = "combo2"
command = B,F,x
time = 30

y = y
[command]
name = "combo1"
command = B,F,z
time = 30

z = z
[command]
name = "figi"
command = D,F,a
time = 30

a = a
[command]
name = "deixe"
command = a+x
time = 30

b = b
[command]
name = "kien"
command = D,B,y
time = 30

c = c
[command]
name = "baba"
command = D,F,y

[command]
name = "super socos"
command = y,y
time = 30
[command]
name = "super socos2"
command = z,z
time = 30
s = s
[command]
name = "super socos"
command = b,b
time = 30
[command]
name = "x"
command = a,a
time = 300

[command]
name = "bigbang"
command = D,F,b
time = 30

;-| Default Values |-------------------------------------------------------
[command]
name = "fire"
command = D,F,z
time = 30

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "poderzin"
command = D,B,x
time = 30
command.time = 30


;ESPECIAIS AINDA FORTES
[command]
name = "poderzinho"
command = D,F,x
time = 30

command.buffer.time = 1

[Command]
name = "carregar ki"
command = /a

[Command]
name = "carregar ki2"
command = /b
[command]
name = "chute fantasma"
command = a+c
time = 15

[command]
name = "hyperzinhu"
command = B,D,F,a
time = 50

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
command = x
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

[Command]
name = "fly"
command = b+y
time = 1

[command]
name = "esfera"
command = D,B,z
time = 30
command.time = 30
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
[State -1, ai]
type = varset
value = 1
triggerall = var(58) != 1
trigger1 = command = "IA1"
trigger2 = command = "IA2"
trigger3 = command = "IA3"
trigger4 = command = "IA4"
trigger5 = command = "IA5"
trigger6 = command = "IA6"
trigger7 = command = "IA7"
trigger8 = command = "IA8"
trigger9 = command = "IA9"
;trigger10 = command = "IA10"
;trigger11 = command = "IA11"
;trigger12 = command = "IA12"
;trigger13 = command = "IA13"
;trigger14 = command = "IA14"
;trigger15 = command = "IA15"
;trigger16 = command = "IA16"
;trigger17= command = "IA17"
;trigger18= command = "IA18"
;trigger19= command = "IA19"
;trigger20= command = "IA20"
;trigger21 = command = "IA21"
;trigger22 = command = "IA22"
;trigger23 = command = "IA23"
;trigger24 = command = "IA24"
;trigger25 = command = "IA25"
;trigger26 = command = "IA26"
;trigger27 = command = "IA27"
;trigger28 = command = "IA28"
;trigger29 = command = "IA29"
v = 6
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
value = 120

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
value = 1999

[State -1, IA Combo 02]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 100
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 2999

[State -1, IA Super Chute]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 120
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 3999

[State -1, IA Super Chute 02]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 120
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 6999

[State -1, IA Babidi 01]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 7999

[State -1, IA Babidi 02]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 8999

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
value = 13999
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
[State -1, IA poder1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 16999
[State -1, IA poder2]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 7075
[State -1, IA poder3]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 7012
[State -1, IA combo3]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 2501
[State -1, IA combo4]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 500
[State -1, IA combo5]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 5835
[State -1, IA combo6]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 1379
[State -1, IA combo7]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 12510
[State -1, IA combo8]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 12511
[State -1, IA combo9]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value =3656
;[State -1, IA combo10]
;type = ChangeState
;trigger1 = Ctrl
;trigger1 = RoundState = 2
;trigger1 = var(59) != 0
;trigger1 = Random <= 650
;trigger1 = P2BodyDist X <= 160
;trigger1 = StateType = S
;trigger1 = P2MoveType = A
;value = 8153
[State -1, IA combo11]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 10999
[State -1, IA combo12]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 12500
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
value = 88
;[State -1, IA combo15]
;type = ChangeState
;trigger1 = Ctrl
;trigger1 = RoundState = 2
;trigger1 = var(59) != 0
;trigger1 = Random <= 650
;trigger1 = P2BodyDist X <= 160
;trigger1 = StateType = S
;trigger1 = P2MoveType = A
;value = 3669
;[State -1, IA combo16]
;type = ChangeState
;trigger1 = Ctrl
;trigger1 = RoundState = 2
;trigger1 = var(59) != 0
;trigger1 = Random <= 650
;trigger1 = P2BodyDist X <= 160
;trigger1 = StateType = S
;trigger1 = P2MoveType = A
;value = 5665
[State -1, IA combo16]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 5055
[State -1, IA combo17]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 800
[State -1, IA combo18]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 221
[State -1, IA combo19]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 195
[State -1, IA combo20]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 1500
[State -1, IA combo21]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 211
;[State -1, IA combo22]
;type = ChangeState
;trigger1 = Ctrl
;trigger1 = RoundState = 2
;trigger1 = var(59) != 0
;trigger1 = Random <= 650
;trigger1 = P2BodyDist X <= 160
;trigger1 = StateType = S
;trigger1 = P2MoveType = A
;value = 66
[State -1, IA combo22]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 58
;[State -1, IA combo22]
;type = ChangeState
;trigger1 = Ctrl
;trigger1 = RoundState = 2
;trigger1 = var(59) != 0
;trigger1 = Random <= 650
;trigger1 = P2BodyDist X <= 160
;trigger1 = StateType = S
;trigger1 = P2MoveType = A
;value = 32501
[State -1, IA combo22]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 160
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 217
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
value = 730

[State -1,x]
type = ChangeState
value = 201
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl=1
triggerall = power >= 100
trigger2 = stateno = 200
triggerall = var(9) = 0
triggerall=movecontact=1
[State -1,xx]
type = ChangeState
value = 201
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl=1
trigger2 = stateno = 200
triggerall = power >= 100
trigger2 = time > 1
triggerall = var(9) = 0
triggerall=movecontact=1
[State -1,xxx]
type = ChangeState
value = 211
triggerall = command = "super socos"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl=1
triggerall = power >=80
trigger2 = stateno = 200
triggerall = var(9) = 0
trigger2 = time > 10
trigger3 = movehit=1
[State -1,xxxx]
type = ChangeState
value = 221
triggerall = command = "super socos2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl=1
trigger2 = stateno = 200
triggerall = power >= 200
triggerall = var(9) = 0
trigger2 = time > 10
trigger3 = movehit=1
;combinhu
[State -1, combinhu]
type = ChangeState
value = 5835
triggerall = var(9) = 0
triggerall = command = "combinhu"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall = power >= 2000
trigger2 = time > 18
trigger3= stateno = 1500
;chute fantasma
[State -1, chute fantasma]
type = ChangeState
value = 88
triggerall = command = "chute fantasma"
trigger2 = stateno = 220
trigger2 = time > 18
triggerall = power >= 1500
triggerall = var(9) = 0
trigger3= stateno = 1500
trigger1 = (statetype = s) && ctrl
;chute fantasma
[State -1, chute fantasma]
type = ChangeState
value =8863
triggerall = command = "contratake"
trigger2 = stateno = 220
trigger2 = time > 18
triggerall = power >= 1500
triggerall = var(9) = 0
trigger3= stateno = 1500
trigger1 = (statetype = s) && ctrl

;hyperzinhu
[State -1, hyperzinhu]
type = ChangeState
value = 3669
triggerall = command = "hyperzinhu"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 220
triggerall = power >= 5000
trigger2 = time > 18
triggerall = var(9) = 0
trigger3= stateno = 1500

;helper attack1
[State -1,helper attack1]
type = ChangeState
value = 58
triggerall = command = "helper attack1"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 220
trigger2 = time > 18
triggerall = power >= 2500
triggerall = var(9) = 0
trigger3= stateno = 1500
;o grande ataque big bang ssj1 hahaha até que em fim eu fiz esse
[State -1, o grande ataque big bang]
type = ChangeState
value = 32501
trigger1 = var(9)= 1
triggerall = command = "o grande ataque big bang"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 5000
trigger3= stateno = 1500
;genkidama
[State -1, genkidama]
type = ChangeState
value = 2501
triggerall = command = "genkidama"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
triggerall = power >= 3000
triggerall = var(9) = 0
trigger2 = time > 18
;super garlick gun
[State -1, super garlick gun]
type = ChangeState
value = 66
triggerall = command = "super garlick gun"
trigger1 = (statetype = s) && ctrl
triggerall = var(9) = 0
trigger2 = stateno = 220
triggerall = power >= 5000
trigger2 = time > 18
trigger3= stateno = 1500
;kaioken
[State -1, kaioken]
type = ChangeState
value = 5055
triggerall = power >= 100
triggerall = command = "kaioken"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl
triggerall = var(9) = 0
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time > 18
trigger3= stateno = 1500
;laib
[State -1, laib]
type = ChangeState
value = 8153
triggerall = var(9) = 0
triggerall = command = "combo3"
trigger1 = statetype = s
triggerall = power >= 5000
trigger1 = ctrl =1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500

;mais um combo
[State -1, combo kamehameha]
type = ChangeState
value = 7075
triggerall = var(9) = 0
triggerall = power >= 2000
triggerall = command = "combo kamehameha"
trigger1 = (statetype = s) && ctrl
 trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;desfundir
[State -1, desfundir]
type = ChangeState
value = 7012
triggerall = var(9) = 0
triggerall = command = "desfundir"
trigger1 = (statetype = s) && ctrl
 trigger2 = stateno = 200
 triggerall = power >= 3000
trigger2 = time > 18
trigger3= stateno = 1500

;explodaverme
[State -1, explodaverme]
type = ChangeState
value = 500
triggerall = var(9) = 0
triggerall = command = "explodaverme"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 3000
trigger3= stateno = 1500
;combo5
[State -1, combo5]
type = ChangeState
value = 16999
triggerall = var(9) = 0
triggerall = command = "combo5"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 200
trigger3= stateno = 1500
;combo4
[State -1, combo4]
type = ChangeState
value = 12500
triggerall = var(9) = 0
triggerall = command = "combo4"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 200
trigger3= stateno = 1500
;laib
[State -1, laib]
type = ChangeState
value = 1113
triggerall = var(9) = 0
triggerall = command = "laib"
trigger1 = statetype = A
triggerall = power >= 2000
trigger1 = ctrl =1
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500


;Transformar em ssj
[State -1,Transformar em ssj1]
type = changestate
triggerall = var(9) = 0
value = 3656
triggerall = command = "ssj"
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = palno !=12
triggerall = power >= 3000
trigger2 = stateno = 200
;Voltar ao Normal
[State -1,voltar ao normal]
type = changestate
triggerall = var(9) = 1
value = 9999
trigger1 = command = "normal"
trigger1 = statetype = S
;combo duplo
[State -1, combo duplo]
type = ChangeState
value = 217
triggerall = command = "combo duplo"
trigger1 = (statetype = s) && ctrl
triggerall = var(9) = 0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 2000
trigger3= stateno = 1500
;ssj1kame
[State -1, ssj1kame]
type = ChangeState
value = 14999
triggerall = var(9) = 0
triggerall = power >= 3000
triggerall = command = "ssj1kame"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;explodap2
[State -1, explodap2]
type = ChangeState
value = 13999
triggerall = power >= 2000
triggerall = var(9) = 0
triggerall = command = "explodap2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;genkidama
[State -1, esfera]
type = ChangeState
value = 5555
triggerall = var(9) = 1
triggerall = power >= 2000
triggerall = command = "esfera"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;genkidama
[State -1, esfera]
type = ChangeState
value = 8999
triggerall = var(9) = 0
triggerall = power >= 2000
triggerall = command = "esfera"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;vire pó
[State -1, vire pó]
type = ChangeState
value = 5665
triggerall = command = "vire pó"
triggerall = var(9) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall = power >= 5000
trigger3= stateno = 1500
;Super Jump
[State -1,SJ]
type=ChangeState
value=707
triggerall=var(59)=0
triggerall=command="SuperJump"
triggerall=alive
triggerall=pos y>=0
triggerall = power >= 20
triggerall=!win
trigger1=(statetype!=A&&ctrl)
;Super Jump
[State -1,SJ]
type=ChangeState
value=1707
triggerall=var(9)=1
triggerall=command="SuperJump"
triggerall=alive
triggerall=pos y>=0
triggerall = power >= 20
triggerall=!win
trigger1=(statetype!=A&&ctrl)
[State -1, 1]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 75
trigger1 = StateType = S
trigger1 = P2MoveType = A
value = 130
;Esfera de Fogo
[State -1, 2]
type = ChangeState
trigger1 = Ctrl=1
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 140
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
value    = 1999
;combo2
[State -1, combo2]
type = ChangeState
value = 12511
triggerall = power >= 20
triggerall = var(9) = 0
triggerall = command = "combo2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;combo1
[State -1, combo1]
type = ChangeState
value = 3012510
triggerall = var(9) = 1
triggerall = power >= 20
triggerall = command = "combo2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500

;combo1
[State -1, combo1]
type = ChangeState
value = 12510
triggerall = var(9) = 0
triggerall = power >= 20
triggerall = command = "combo1"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500

;figi
[State -1, figi]
type = ChangeState
value = 7999
triggerall = var(9) = 0
triggerall = power >= 200
triggerall = command = "figi"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;deixe
[State -1,contra]
type = ChangeState
value = 9
triggerall = var(9) = 0
triggerall = power >= 2000
triggerall = command = "contra"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;deixe
[State -1, deixe]
type = ChangeState
value = 1379
triggerall = var(9) = 0
triggerall = power >= 5000
triggerall = command = "deixe"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500


[State -1, poderzinho]
type = ChangeState
value = 999
triggerall = var(9) = 0
triggerall = power >= 200
triggerall = command = "poderzinho"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;kien
[State -1, kien]
type = ChangeState
value = 6999
triggerall = var(9) = 0
triggerall = power >= 2000
triggerall = command = "kien"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500

;baba
[State -1, baba]
type = ChangeState
value = 3999
triggerall = var(9) = 0
triggerall = power >= 200
triggerall = command = "baba"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;baba
[State -1, bigbang]
type = ChangeState
value =10999
triggerall = var(9) = 0
triggerall = power >= 200
triggerall = command = "bigbang"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;fire
[State -1, fire]
type = ChangeState
value = 2999
triggerall = var(9) = 0
triggerall = power >= 1000
triggerall = command = "fire"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500
;poderzino
[State -1, podezinho]
type = ChangeState
value =1999
triggerall = power >= 200
triggerall = var(9) = 0
triggerall = command = "poderzin"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500


[State -1, poderzin]
type = ChangeState
value = 19990
triggerall = var(9) = 1
triggerall = power >= 200
triggerall = command = "poderzin"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 1500

;Fly
[State -1,fly]
type = ChangeState
value = 11500
triggerall = command = "fly"
trigger1 = statetype = A
triggerall = var(9) = 1
trigger1 = ctrl = 1
[State -1,fly 2]
type = ChangeState
value = 11510
triggerall = command = "fly"
trigger1 = statetype != A
triggerall = var(9) = 1
trigger1 = ctrl = 1

;Fly
[State -1,fly]
type = ChangeState
value = 1500
triggerall = command = "fly"
trigger1 = statetype = A
triggerall = var(9) = 0
trigger1 = ctrl = 1
[State -1,fly 2]
type = ChangeState
value = 1510
triggerall = command = "fly"
trigger1 = statetype != A
triggerall = var(9) = 0
trigger1 = ctrl = 1
;===========================================================================
;---------------------------------------------------------------------------
 [State -1,stand]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = var (9) =0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 18
trigger3= stateno = 11500
[State -1,stand]
type = ChangeState
value = 4050
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
triggerall = var (9) =1
;------------
[State -1,stand]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = var (9) =0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
[State -1,stand]
type = ChangeState
value = 4100
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
triggerall = var (9) =1
;-------------
[State -1,stand]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = var (9) =0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
[State -1,stand]
type = ChangeState
value = 4200
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
triggerall = var (9) =1
;--------------------------------------------------
[State -1,stand]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
triggerall = var (9) =0
[State -1,stand]
type = ChangeState
value = 4300
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
triggerall = var (9) =1
;------------------------
[State -1,stand]
type = ChangeState
value = 440
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
triggerall = var (9) =0
[State -1,stand]
type = ChangeState
value = 4400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
triggerall = var (9) =1
;---------------------------------------------------------------------------
[State -1,stand]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
triggerall = var (9) =0
[State -1,stand]
type = ChangeState
value = 4500
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
triggerall = var (9) =1
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
;Stand_b
[State -1,Stand_b]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time >= 20
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1


;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = time >= 20
trigger3= stateno = 1500

;---------------------------------------------------------------------------
;Stand_b
[State -1,Stand_b]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time >= 20
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger3= stateno = 11500
trigger4 = stateno = 1500

;Stand_a
[State -1,Stand_a]
type = ChangeState
value = 3200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3200
trigger2 = time >= 20
trigger3= stateno = 11500

;-----------------------------
;Stand_b
[State -1,Stand_b]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time >= 20
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;Stand_a
[State -1,Stand_a]
type = ChangeState
value = 2100
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3210
trigger2 = time >= 20
trigger3= stateno = 11500
;------------------------
;Stand_b
[State -1,Stand_b]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time >= 20
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;Stand_a
[State -1,stand a]
type = ChangeState
value = 2200
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3210
trigger2 = time >= 20
trigger3= stateno = 11500
;-------------------------
;Stand_b
[State -1,stand]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time >= 20
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;Stand_a
[State -1,stand]
type = ChangeState
value = 2300
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3210
trigger2 = time >= 20
trigger3= stateno = 11500
;-------------------------
;Stand_b
[State -1,stand]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time >= 20
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;Stand_a
[State -1,stand]
type = ChangeState
value = 2400
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3210
trigger2 = time >= 20
trigger3= stateno = 11500
;--------------------------
;Stand_b
[State -1,stand]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time >= 20
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;Stand_a
[State -1,stand]
type = ChangeState
value = 2500
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3210
trigger2 = time >= 20
trigger3= stateno = 11500
;------------------------
[State -1,a]
type = ChangeState
triggerall = var (5) =0 || var (5) =1
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = stateno = 200
trigger2 = time > 21
trigger3 = stateno = 1500
[State -1,b]
type = ChangeState
value = 210
triggerall = var (5) =0 || var (5) =1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 1500
[State -1,d]
type = ChangeState
value = 220
triggerall = var (5) =0 || var (5) =1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = (stateno = 210) && time > 5
trigger3 = (stateno = 240) && time > 6
trigger4 = stateno = 1500
[State -1,z]
type = ChangeState
value = 230
triggerall = var (5) =0 || var (5) =1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 22
trigger4 = stateno = 1500
[State -1,x]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = var (5) =0 || var (5) =1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = (stateno = 210) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 1500
[State -1,x]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = var (5) =0 || var (5) =1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl =1
trigger2 = (stateno = 210) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 1500
[State -1,c]
type = ChangeState
value = 195
triggerall = var (5) =0 ||  var (5) =1
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;-----------
;----------------
[State -1,stand]
type = ChangeState
value = 6000
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype =a
trigger1 = ctrl = 1
trigger2 = stateno = 3200
trigger2 = time >= 20
trigger3 = stateno = 3201
trigger3 = movecontact = 1
trigger4 = stateno = 3202
trigger4 = movecontact =1
trigger5 = stateno = 3210
trigger5 = movecontact = 1
trigger6 = stateno = 3211
trigger6 = movecontact = 1
trigger7 = stateno = 3212
trigger7 = movecontact = 1
trigger8 = stateno = 1500

[State -1,stand]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 =movehit
;Stand_a
[State -1,stand]
type = ChangeState
value = 6100
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype =a
trigger1 = ctrl = 1
trigger2 = stateno = 3200
trigger2 = time >= 20
trigger3 = stateno = 3201
trigger3 = movecontact = 1
trigger4 = stateno = 3202
trigger4 = movecontact =1
trigger5 = stateno = 3210
trigger5 = movecontact = 1
trigger6 = stateno = 3211
trigger6 = movecontact = 1
trigger7 = stateno = 3212
trigger7 = movecontact = 1
trigger8 = stateno = 1500
[State -1,stand]
type = ChangeState
triggerall = var (5) =0
value = 610
triggerall = command = "y"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 21
trigger3 = stateno = 1500
;Stand_a
[State -1,stand]
type = ChangeState
value = 6200
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype =a
trigger1 = ctrl = 1
trigger2 = stateno = 3200
trigger2 = time >= 20
trigger3 = stateno = 3201
trigger3 = movecontact = 1
trigger4 = stateno = 3202
trigger4 = movecontact =1
trigger5 = stateno = 3210
trigger5 = movecontact = 1
trigger6 = stateno = 3211
trigger6 = movecontact = 1
trigger7 = stateno = 3212
trigger7 = movecontact = 1
trigger8 = stateno = 1500
[State -1,stand]
type = ChangeState
value = 10730
triggerall = palno != 7
triggerall = var (9) =1
triggerall = power <3000
triggerall = ctrl = 1
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = statetype = S
trigger2= stateno = 1500

;Stand_a
[State -1,stand]
type = ChangeState
value = 6100
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype =a
trigger1 = ctrl = 1
trigger2 = stateno = 3200
trigger2 = time >= 20
trigger3 = stateno = 3201
trigger3 = movecontact = 1
trigger4 = stateno = 3202
trigger4 = movecontact =1
trigger5 = stateno = 3210
trigger5 = movecontact = 1
trigger6 = stateno = 3211
trigger6 = movecontact = 1
trigger7 = stateno = 3212
trigger7 = movecontact = 1
trigger8 = stateno = 1500
[State -1,stand]
type = ChangeState
value = 620
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 601
trigger2 = MoveContact
;Stand_a
[State -1,stand]
type = ChangeState
value = 6300
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype =a
trigger1 = ctrl = 1
trigger8 = stateno = 1500
[State -1,stand]
type = ChangeState
value = 630
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 630
trigger2 = MoveContact
;Stand_a
[State -1,stand]
type = ChangeState
value = 6400
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype =a
trigger1 = ctrl = 1
trigger8 = stateno = 1500
;---------------------------------------------------------------------------
;Jump_y
[State -1,stand]
type = ChangeState
value = 640
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = MoveContact
;Stand_a
[State -1,stand]
type = ChangeState
value = 6500
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype =a
trigger1 = ctrl = 1
trigger2 = stateno = 3200
trigger2 = time >= 20
trigger3 = stateno = 3201
trigger3 = movecontact = 1
trigger4 = stateno = 3202
trigger4 = movecontact =1
trigger5 = stateno = 3210
trigger5 = movecontact = 1
trigger6 = stateno = 3211
trigger6 = movecontact = 1
trigger7 = stateno = 3212
trigger7 = movecontact = 1
trigger8 = stateno = 1500
;---------------------------------------------------------------------------
;Jump_y
[State -1,stand]
type = ChangeState
value = 650
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = MoveContact
;Stand_a
[State -1,stand]
type = ChangeState
value = 6500
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype =a
trigger1 = ctrl = 1
trigger2 = stateno = 3200
trigger2 = time >= 20
trigger3 = stateno = 3201
trigger3 = movecontact = 1
trigger4 = stateno = 3202
trigger4 = movecontact =1
trigger5 = stateno = 3210
trigger5 = movecontact = 1
trigger6 = stateno = 3211
trigger6 = movecontact = 1
trigger7 = stateno = 3212
trigger7 = movecontact = 1
trigger8 = stateno = 1500
;---------------------------------------------------------------------------
[State -1,charge]
type = ChangeState
value = 730
triggerall =  var (5) =0
triggerall = var(9) = 0
triggerall = power <3000
triggerall = ctrl = 1
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = statetype = S

[State -1,charge 2]
type = ChangeState
value = 730
triggerall = var (5) =0
triggerall = power <3000
trigger1 = ctrl = 0
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = stateno = 1500

