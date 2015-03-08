
syn keyword armTodo     contained todo fixme danger note notice bug author date

syn match armNumericOp  "[+-/*%<>=&|^!]"

" hex
syn match armNumber     "[#\$]\?0x\x\+\>"
syn match armNumber     "[#\$]\?\d\x*h\>"
" dec
syn match armNumber     "[#\$]\?\d\+\>"
" bin
syn match armNumber     "[#\$]\?0b[01]\+\>"
syn match armNumber     "[#\$]\?[01]\+b\>"
" floats
syn match armNumber     "\d*\.\d\+f\?\>"

" Comments
syn region armComment   start="//\|@" end="$" contains=armTodo
" syn region armComment   start="^#\|//\|@" end="$" contains=armTodo
syn region armComment   start="/\*"   end="\*/" contains=armTodo

" Strings
syn region armString    start="\"" skip=+\\"+ end="\"\|$"
syn region armString    start="'" skip=+\\'+ end="'\|$"

" Assembler identifiers/labels/directives
syn match armIdentifier "\<\h\w*\>"
syn match armLabel      "\<\h\w*:"
syn match armCPreProc   "#\h\w*\>"

so <sfile>:p:h/gas_directives.vim
so <sfile>:p:h/arm_directives.vim

" Registers
syn keyword armRegister R0 R1 R2 R3 R4 R5 R6 R7 R8
syn keyword armRegister R9 R10 R11 R12 R13 R14 R15 SP LR PC SPSR CPSR CPSR_c CPSR_cxsf BP
syn keyword armRegister A1 A2 A3 A4 V1 V2 V3 V4 V5 V6 V7 V8

" Conditional field to avoid repetition
let armCond = '\%(AL\|CC\|CS\|EQ\|GE\|GT\|HI\|HS\|LE\|LO\|LS\|LT\|MI\|NE\|PL\|VC\|VS\)\?'

"
" ARMv4 and thumb instructions
" 
exec 'syn match armv4Instr "\%(ADC\|ADD\|AND\|BIC\|EOR\|MLA\|MOV\|MUL\|MVN\|NEG\|ORR\|RSB\|RSC\|SBC\|SMLAL\|SMULL\|SUB\|UMLAL\|UMULL\)' . armCond . 'S\?\>"'

exec 'syn match armv4InstrCond  "\%(B\|BL\|BX\|CDP\|CMN\|CMP\|LDC\|MCR\|MRC\|MRS\|MSR\|STC\|SWI\|TEQ\|TST\)' . armCond . '\>"'

syn match armv4InstrNoCond      "\%(ASR\|LSL\|LSR\|NOP\|POP\|PUSH\|ROR\|RRX\)\>"

exec 'syn match armv4LDR    "\%(LDR\)' . armCond . '\%(B\?T\?\|H\|S[BH]\)\?\>"'
exec 'syn match armv4STR    "\%(STR\)' . armCond . '\%(B\?T\?\|H\)\?\>"'
exec 'syn match armv4Stack  "\%(LDM\|STM\)' . armCond . '\%([ID][BA]\|[EF][DA]\)\>"'
exec 'syn match armv4SWP    "SWP' . armCond . 'B\?\>"'

"
" ARMv5 instructions
"
exec 'syn match armv5InstrCond "\%(BLX\|CLZ\|MCRR\|MRRC\|QADD\|QSUB\|QDADD\|QDSUB\)' . armCond . '\>"'
syn match armv4InstrCond armv5InstrCond

syn match armv5InstrNoCond "\%(BKPT\|CDP2\|LDC2\|MCR2\|MRC2\|PLD\|STC2\)\>"
syn match armv4InstrNoCond armv5InstrNoCond

exec 'syn match armv5Mul "\%(SMLA\|SMLAL\|SMLAW\|SMUL\|SMULW\)[BT][BT]' . armCond . '\>"'

exec 'syn match armv5LDR    "\%(LDR\)' . armCond . 'D\>"'
exec 'syn match armv5STR    "\%(STR\)' . armCond . 'D\>"'
syn match armv4LDR  armv5LDR
syn match armv4STR  armv5STR

"syn match armRelative      "@R[0-7]\|@a\s*+\s*dptr\|@[ab]"

