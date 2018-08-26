
setlocal iskeyword  +=.,_,\$

syn keyword armTodo     contained todo fixme danger note notice bug author date

syn match armNumericOp  "[+-/*%<>=&|^!]"

" Assembler identifiers/labels
syn match armIdentifier "\<[.\$_A-Za-z0-9]\+\>"
syn match armLabel      "\<[.\$_A-Za-z0-9]\+:"

" dec
syn match armNumber     "[#\$]\?\d\+\>"
" hex
syn match armNumber     "[#\$]\?0x\x\+\>"
" bin
syn match armNumber     "[#\$]\?0b[01]\+\>"
" floats
syn match armNumber     "\%(\d\+\.\d*\|\d*\.\d\+\)\%([eE]\?[-+]\?\d\+\)\?\>"

" Comments
syn region armComment   start="//\|@" end="$" contains=armTodo
" syn region armComment   start="^#\|//\|@" end="$" contains=armTodo
syn region armComment   start="/\*"   end="\*/" contains=armTodo

" String literal
syn region armString    start=/"/ skip=/\\"/ end=/"/
" Ascii character literal
syn match armString     "'\\\?[\d32-~]'\?"

so <sfile>:p:h/gas_directives.vim
so <sfile>:p:h/arm_directives.vim

syn match armCPreProc   "^\s*#\s*\(include\|define\|undef\|if\|ifdef\|ifndef\|elif\|else\|endif\|error\|pragma\)\>"

" Registers
syn match armRegister "\<R\%(1[0-5]\|[0-9]\)\>"
syn match armRegister "\<C\%(1[0-5]\|[0-9]\)\>"
syn match armRegister "\<P\%(1[0-5]\|[0-9]\)\>"
syn keyword armRegister FP SP LR PC SPSR CPSR CPSR_c CPSR_cxsf BP
syn match armRegister "\<A[1-3]\>"
syn match armRegister "\<V[1-8]\>"

" Conditional field to avoid repetition
let armCond = '\%(AL\|CC\|CS\|EQ\|GE\|GT\|HI\|HS\|LE\|LO\|LS\|LT\|MI\|NE\|PL\|VC\|VS\)\?'

"
" ARMv4 and thumb instructions
" 
exec 'syn match armv4Instr "\%(ADC\|ADD\|AND\|ASR\|BIC\|EOR\|LSL\|LSR\|MLA\|MOV\|MUL\|MVN\|NEG\|ORR\|ROR\|RRX\|RSB\|RSC\|SBC\|SMLAL\|SMULL\|SUB\|UMLAL\|UMULL\)' . armCond . 'S\?\>"'

exec 'syn match armv4InstrCond  "\%(B\|BL\|BX\|CDP\|CMN\|CMP\|LDC\|MCR\|MRC\|MRS\|MSR\|NOP\|POP\|PUSH\|STC\|SWI\|TEQ\|TST\)' . armCond . '\>"'

exec 'syn match armv4InstrCond  "ADR' . armCond . 'L\?\>"'

exec 'syn match armv4LDR    "\%(LDR\)' . armCond . '\%(B\?T\?\|H\|S[BH]\)\?\>"'
exec 'syn match armv4STR    "\%(STR\)' . armCond . '\%(B\?T\?\|H\)\?\>"'
exec 'syn match armv4Stack  "\%(LDM\|STM\)' . armCond . '\%([ID][BA]\|[EF][DA]\)\>"'
exec 'syn match armv4SWP    "SWP' . armCond . 'B\?\>"'

"syn match armRelative      "@R[0-7]\|@a\s*+\s*dptr\|@[ab]"

