
foo:
_bar:
.car:
.L1:
.L09:
.1337f:
ab.b: b blabl

adc r0, r1
add R1, R2
0:
sub r14, 0b1110110
1:
and R2,r3
bic  r3 , r4
eor r4,r5
mla r5,R6
mov R6,R7
b 001b

push {r0, r1, r2-r9}
pop {r1-r14}

FSHTOS

fmuls
fcmps
FCMPEs
fcmpezs
fcmpzs
fdivs

vdiv
vsqrt

.float .01, 3.14159

@ illegal
blx 0002f
1.0f 0.f .1f
vmul Q15, Q16, d31, s31, s32, d32
vmull q01, q09, q14, q16
push {q0-q14}
pop {s3-s32}
@ vim:ft=arm
