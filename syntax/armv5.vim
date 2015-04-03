" Vim syntax file
" Language: ARMv5
" Maintainer: ARM9

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

if version >= 508 || !exists("did_armv5_syntax_inits")
  if version < 508
    let did_armv5_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  so <sfile>:p:h/include/armv5_base_syntax.vim

  HiLink armv4Instr         armv5Instructions
  HiLink armv5InstrCond     armv5Instructions
  HiLink armv5InstrNoCond   armv5Instructions
  HiLink armv5Mul           armv5Instructions
  HiLink armv5LDR           armv5Instructions
  HiLink armv5STR           armv5Instructions
  HiLink armv4Stack         armv5Instructions
  HiLink armv4SWP           armv5Instructions

  HiLink armNumericOp       armOperator
  HiLink armRelative        armOperator

  " Link to standard syn groups so the 'colorschemes' work
  HiLink armOperator        Operator
  HiLink armNumber          Number
  HiLink armComment         Comment
  HiLink armString          String

  HiLink armIdentifier      Label
  HiLink armLabel           Label
  HiLink gasDirective       PreProc
  HiLink armDirective       PreProc
  HiLink armCPreProc        Identifier

  HiLink armRegister        Type
  HiLink armv5Instructions  Function

  HiLink armTodo            Todo
  delcommand HiLink
endif

let b:current_syntax = "armv5"

