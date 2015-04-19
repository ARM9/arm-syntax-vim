
so <sfile>:p:h/arm_base_syntax.vim

"
" ARMv5 instructions
"

exec 'syn match armv5InstrCond "\%(BLX\|CLZ\|MCRR\|MRRC\|QADD\|QSUB\|QDADD\|QDSUB\)' . armCond . '\>"'
HiLink armv4InstrCond armv5InstrCond

syn match armv5InstrNoCond "\%(BKPT\|CDP2\|LDC2\|MCR2\|MRC2\|PLD\|STC2\)\>"
HiLink armv4InstrNoCond armv5InstrNoCond

exec 'syn match armv5Mul "\%(SMLA\|SMLAL\|SMLAW\|SMUL\|SMULW\)[BT][BT]\?' . armCond . '\>"'

exec 'syn match armv5LDR    "\%(LDR\)' . armCond . 'D\>"'
exec 'syn match armv5STR    "\%(STR\)' . armCond . 'D\>"'
HiLink armv4LDR  armv5LDR
HiLink armv4STR  armv5STR

