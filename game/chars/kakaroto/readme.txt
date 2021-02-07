                     Kakaroto 99% Version - By Kakaroto
-----------------------------------------------------------------------
This is my last Dragon Ball Z character for MUGEN. Scholl starts really soon and I'll have to study really hard this year to get into college.
Being my last char, I put a lot of work into it and I hope you like this work.

In this version he has got:

-1 INTRO
-1 WIN POSE
-ALL THE BASIC STUFF
-11 SPECIALS
-3 METEOR ATTACKS
-5 SUPERS
-ENDING SEQUENCE
-AI (ARTIFICIAL INTELIGENCE)
-SUPERBOUTUDEN HIT SPARKS
-GO SSJ WHEN FIGHTING: 
  FREEZA (by Overmind) 
  NORMAL TRUNKS (by Emuboarding) 
  CELL (by Ssonic)
-SSJ2 MODE

-GO SSJ2 WHEN FACING?
  MAJIN VEGETA (by Overmind)

YOU HAVE TO WATCH ALL THE INTRO FOR THE TRANSFORMATION TO WORK CORRECTLY.


Commands:

B - back
DB - down-back
D - down
DF - down-forward
F - forward
UF - up-forward
U - up
UB - up-back
~30B - hold back for a while

a - weak punch
b - weak kick
c - fireball
x - strong punch
y - strong kick
z - normal mode


a+b - Charge Power

x+y - Fly
-----------------------------------------------------------------------
                                 TRANSFORMING:
These are the modes that Goku can use and how to activate them:

     *KAIOKEN MODE
-To activate this mode, while in normal mode with at least 1,5 (one and a half) power bar do this command:
   D, DF, F, D, DF, F + a

     *SSJ MODE
-To activate this mode, one of the two conditions below must be true:

   a)Be in normal mode with a level 3 power bar
   b)Be in Kaioken mode with a level 2 (or higher) power bar

If one of those are true, do this command:
    D, DF, F, D, DF, F + b


     *SSJ2 MODE
-To activate this mode, you should be in SSJ MODE and:

     a)CHARGE POWER UNTILL YOU REACH MAX POWER
     b)WITH MAX POWER, PRESS a+b

    *NORMAL MODE
-It's when Goku has his dark hair, with no changes. 
 To go back to this mode, while in Kaioken or SSJ mode, just press z.        

-----------------------------------------------------------------------
                IN ORDER FOR THE ENDING SEQUENCE TO WORK OUT:

Open docs\system.def in Notepad and replace the "Win Screen Definition" with this one:

;-------------------------------------------------------------------
;Win screen definition
;This is the screen that is shown when you win in arcade mode.
[Win Screen]
wintext.text =  
wintext.font = 2,0,0 
wintext.offset = 159,70 
wintext.displaytime = -1 
wintext.layerno = 2 
fadein.time = 32 
pose.time = 10000 
fadeout.time = 64 

-----------------------------------------------------------------------
Moves:

Fireball x3 - D, DF, F + c (*)

Taioken - F, D, DF + x (needs at least 500 power bar) (can also be done in air)

Air Attack - F, D, + b (in Air)

Teleport - x+y (*)

Elbow Dash - ~30B, F + b

Cicle Kick - B, DB, D, DF, F + y 

Roll Forward - ~30B, F + y

Invisible Fireball - D, DF, F + c

Quick Kamehameha - D, DB, B + x

Kamehameha (weak) - D, DB, B, F + a (*)

Kamehameha (medium) - D, DB, B, F + b (*)

Kamehameha (strong) - D, DB, B, F + x (*)

Genki Dama (Spirit Bomb) - F, B, DB, D, DF, F + x (*)

Renzoku Energy Dan - D, DB, B, F + y (*)

Meteor Attack - ~D, DB, B, DB, D, DF, F + x (Power Level 3 in Normal and SSJ Mode, any time in Kaioken Mode)
-----------------------------------------------------------------------
HOW TO CONTROL THE MOVES:

All the moves marked with an (*) are controlable. All you have to do is to press AND HOLD the direction you want in the joystick after you do the command. Those moves can also be done while you're in the air.

FIREBALLS AND KAMEHAMEHA:

After you do the command, press and hold:

DF - TO FIRE DIAGONNALY FOWARD
UF - TO FIRE DIAGONNALY UP

IN THE TRIPLE FIREBALL AND RENZOUKU ENERGY DAN, YOU HAVE TO DIRECT EACH ONE BY PRESSING THE DIRECTION YOU WANT BEFORE GOKU FIRE'S EACH FIREBALL!!!!!

TELEPORT:

After doing the command, PRESS AND HOLD any direction you want to go. 
If you don't do anything, Goku will stay where he is.

-----------------------------------------------------------------------

Leave comments and bug reports at:

spidertura@zipmail.com.br

           or

http://spidertura.cjb.net
