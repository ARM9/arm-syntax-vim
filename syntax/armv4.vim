" Vim syntax file
" Language: ARMv4
" Maintainer: ARM9

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

if version >= 508 || !exists("did_armv4_syntax_inits")
  if version < 508
    let did_armv4_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  so <sfile>:p:h/include/arm_base_syntax.vim

  HiLink armv4Instr          armInstructions
  HiLink armv4InstrCond      armInstructions
  HiLink armv4InstrNoCond    armInstructions
  HiLink armv4LDR            armInstructions
  HiLink armv4STR            armInstructions
  HiLink armv4Stack          armInstructions
  HiLink armv4SWP            armInstructions

  HiLink armNumericOp        armOperator
  HiLink armRelative         armOperator

  " Link to standard syn groups so the 'colorschemes' work
  HiLink armOperator     Operator
  HiLink armNumber       Number
  HiLink armComment      Comment
  HiLink armString       String

  HiLink armIdentifier   Label
  HiLink armLabel        Label
  HiLink gasDirective    PreProc
  HiLink armDirective    PreProc
  HiLink armCPreProc     Identifier

  HiLink armRegister     Type
  HiLink armInstructions Function

  HiLink armTodo         Todo
  delcommand HiLink
endif

let b:current_syntax = "armv4"

