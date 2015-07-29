
1:
    b 1b
    bl 0f
2:
    bx 2b
0:

adc r1, r15, R14
add A1, v1, V8
adrcc r8, 0b
sub r5, #0xFeeDB4c
smull r0, r1,R2
smull r0, r1,R2

@ illegal
adrgts
blx 0002f
smlalBt r1,r15
SMLawTb V8, v3
SMLALtb A1,   a4
1.0f 0.f .1f

@ vim:ft=armv4
