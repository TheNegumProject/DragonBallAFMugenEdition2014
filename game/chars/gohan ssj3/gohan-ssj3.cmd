;-| Super Motions |--------------------------------------------------------
[Command]
name = "ataquedefireballs"
command = ~D, DF, F, DF, F, c
time = 40


[Command]
name = "helper1"
command = ~D, DF, F, DF, F, a
time = 40

[Command]
name = "helper2"
command = ~D, DF, F, DF, F, b
time = 40

[Command]
name = "helper3"
command = ~D, DB, B, DB, B, a
time = 40

[Command]
name = "helper4"
command = ~D, DB, B, DB, B, b
time = 40

[Command]
name = "helper5"
command = ~D, DF, F, DF, F, x
time = 40

[Command]
name = "kamehameha"
command = ~D, DB, B, F, a
time = 35

[Command]
name = "masenko"
command = ~D, DB, B, F, b
time = 35

;-| Special Motions |------------------------------------------------------
[Command]
name = "sequencia01"
command = ~D, DF, F, x

[Command]
name = "sequencia02"
command = ~D, DF, F, y

[Command]
name = "seila"
command = ~F, D, DF, b

[Command]
name = "I_Move"
command = ~D, DF, F, a

[Command]
name= "triple fireball"
command = ~D, DF, F, c

[Command]
name = "fireball"
command = c

[Command]
name = "kame"
command = ~D, DB, B, c

[Command]
name = "fly"
command = x+a

[Command]
name = "QCF_b2"
command = ~F, D, x

[Command]
name = "QCF_b1"
command = ~F, D, y

[Command]
name = "balao"
command = /F,a

;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
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
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
name = "charge"
command = /a
time = 1

[Command] 
name = "charge 1"
command = /b
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1


;-------------------------------------------
[Statedef -1]
;-------------------------------------------
; Ataque de fire balls
[State -1]
type = ChangeState
value = 1200
triggerall = command = "ataquedefireballs"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
;-------------------------------------------
;Helper 1(gokussj)
[State -1]
type = ChangeState
value = 1510
triggerall = Var(7) = 0
triggerall = command = "helper1"
triggerall = power >= 2000 
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------
;Helper 2(trunks)
[State -1]
type = ChangeState
value = 1610
triggerall = Var(7) = 0
triggerall = command = "helper2"
triggerall = power >= 1000 
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------
;Helper 3(Vegeta SSJ)
[State -1]
type = ChangeState
value = 1710
triggerall = Var(7) = 0
triggerall = command = "helper3"
triggerall = power >= 1000 
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------
;Helper 4(Vegeta SSJ)
[State -1]
type = ChangeState
value = 1810
triggerall = Var(7) = 0
triggerall = command = "helper4"
triggerall = power >= 2000 
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------
;Helper 5(Gogeta SSj4)
[State -1]
type = ChangeState
value = 1910
triggerall = Var(7) = 0
triggerall = command = "helper5"
triggerall = power >= 3000 
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------
; Kamehameha
[State -1]
type = ChangeState
value = 1700
triggerall = command = "kamehameha"
triggerall = power >= 2000 
triggerall = stateno != 1700 
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = statetype != A
trigger3 = hitdefattr = SC, NA, SA 
trigger3 = movecontact = 1
;-------------------------------------------
;masenko
[State -1]
type = ChangeState
value = 1800
triggerall = command = "masenko"
triggerall = power >= 1000 
triggerall = stateno != 1800 
triggerall = numprojid(1800) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = statetype != A
trigger3 = hitdefattr = SC, NA, SA 
trigger3 = movecontact = 1
;-------------------------------------------
; Kame fraco
[State -1]
type = ChangeState
value = 1001
triggerall = command = "kame"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 201
trigger4 = movecontact = 1
trigger4 = stateno = 202
trigger5 = movecontact = 1
trigger5 = stateno = 204
trigger6 = movecontact = 1
trigger6 = stateno = 205
trigger7 = movecontact = 1
trigger7 = stateno = 206
trigger8 = movecontact = 1
trigger8 = stateno = 400
trigger9 = movecontact = 1
trigger9 = stateno = 401
trigger10 = movecontact = 1
trigger10 = stateno = 402
trigger11 = movecontact = 1
trigger11 = stateno = 404
trigger12 = movecontact = 1
trigger12 = stateno = 405
trigger13 = movecontact = 1
trigger13 = stateno = 406
;-------------------------------------------
;Sequencia 
[State -1]
type = ChangeState
value = 467
triggerall = command = "sequencia01"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------
;Sequencia 2 
[State -1]
type = ChangeState
value = 469
triggerall = command = "sequencia02"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------
;Não sei o nome disso 
[State -1]
type = ChangeState
value = 468
triggerall = command = "seila"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201            
trigger2 = movecontact = 1 
;-------------------------------------------
;I_Move
[State -1]
type = ChangeState
value = 2211
triggerall = command = "I_Move"
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 1500
;-------------------------------------------
; Fireball Tripla
[State -1]
type = ChangeState
value = 1010
triggerall = command = "triple fireball"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        
trigger3 = stateno = 300        
trigger3 = movecontact = 1
trigger4 = stateno = 500        
trigger4 = time <= 2
trigger5 = stateno = 410        
trigger5 = movecontact = 1
trigger6 = stateno = 210        
trigger6 = movecontact = 1
;-------------------------------------------
;AirFireball_A
[State -1]
type = null;ChangeState
value = 1005
trigger1 = command = "fireball"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = command = "fireball"
trigger2 = stateno = 600        
trigger3 = command = "fireball"
trigger3 = stateno = 610        
trigger3 = movecontact = 1
trigger4 = command = "fireball"
trigger4 = stateno = 800        
trigger4 = movecontact = 1
;trigger5 = command = "fireball"
;trigger5 = stateno = 1031        
;trigger5 = movecontact = 1
;trigger6 = command = "fireball"
;trigger6 = stateno = 1051        
;trigger6 = movecontact = 1
;trigger7 = command = "fireball"
;trigger7 = stateno = 1070        
;trigger7 = movecontact = 1
;-------------------------------------------
;Fireball_A
[State -1]
type = ChangeState
value = 1000
triggerall = command = "fireball"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        
trigger3 = stateno = 300        
trigger3 = movecontact = 1
trigger4 = stateno = 500        
trigger4 = time <= 2
trigger5 = stateno = 410        
trigger5 = movecontact = 1
trigger6 = stateno = 210        
trigger6 = movecontact = 1
;-------------------------------------------
[State -1]
type = ChangeState
value = 1600
triggerall = Var(7) = 0
triggerall = command = "QCF_b2"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 2000
;-------------------------------------------
[State -1]
type = ChangeState
value = 1600
triggerall = Var(7) = 0
triggerall = command = "QCF_b1"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 2000
;-------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210            
trigger2 = movecontact = 1     
;-------------------------------------------
; CHARGE
[State -1]
type = ChangeState
value = 730
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"
;-------------------------------------------
;Voar (No Chão)
[State -1]
type = ChangeState
value = 2100
triggerall = Var(7) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = command = "fly"
;-------------------------------------------
;Voar
[State -1]
type = ChangeState
value = 2000
triggerall = Var(7) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Pos Y < 0
trigger1 = command = "fly"
;-------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------
; Balão
[State -1]
type = ChangeState
value = 800
trigger1 = command = "balao"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 10
;-------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------
[State -1]
type = null; ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 
trigger1 = command = "fwd_b"
trigger1 = stateno != 100    
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b"
trigger2 = stateno != 100    
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b"
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b"
trigger4 = p2statetype = C
trigger4 = p2movetype != H
;-------------------------------------------
[State -1]
type = null; ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"
;-------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 201
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200            
trigger2 = movecontact = 1     
;-------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201            
trigger2 = movecontact = 1    
;-------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;-------------------------------------------
[State -1]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;-------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;-------------------------------------------
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;-------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-------------------------------------------
[State -1]
type = ChangeState
value = 600
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-------------------------------------------
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-------------------------------------------


