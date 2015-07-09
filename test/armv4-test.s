
1:
    b 1b
    bl 0f
2:
    bx 2b
0:

adc r1, r15, R14
add A1, v1, V8
smull r0, r1,R2
smull r0, r1,R2

@ illegal
blx 0002f
smlalBt r1,r15
SMLawTb V8, v3
SMLALtb A1,   a4

@ vim:ft=armv4
