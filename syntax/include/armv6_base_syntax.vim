
so <sfile>:p:h/arm_base_syntax.vim

" VFP/NEON registers
let i = 0
while i < 32
    exe 'syn match armv6Register "S' . i . '\>"'
    exe 'syn match armv6Register "D' . i . '\>"'
    let i = i + 1
endwhile

syn keyword armv6Register Q0 Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9 Q10 Q11 Q12 Q13 Q14 Q15

"
" ARMv6 instructions
"


"
" VFP/NEON
"
syn match armVfp 

