
so <sfile>:p:h/arm_base_syntax.vim

" VFP/NEON registers
let i = 0
while i < 32
    exe 'syn match armRegister "S' . i . '\>"'
    exe 'syn match armRegister "D' . i . '\>"'
    exe 'syn match armRegister "Q' . i . '\>"'
    let i = i + 1
endwhile

"
" ARMv6 instructions
"


"
" VFP/NEON
"
syn match armVfp 

