" Vim syntax file
" Language: ARM
" Maintainer: ARM9

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

if version >= 508 || !exists("did_arm_syntax_inits")
  if version < 508
    let did_arm_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  so <sfile>:p:h/include/armv6_base_syntax.vim

  HiLink armv4Instr         armv6Instructions
  HiLink armv4Stack         armv6Instructions
  HiLink armv4SWP           armv6Instructions

  HiLink armv5InstrCond     armv6Instructions
  HiLink armv5InstrNoCond   armv6Instructions
  HiLink armv5Mul           armv6Instructions
  HiLink armv5LDR           armv6Instructions
  HiLink armv5STR           armv6Instructions

  HiLink armv6Instr         armv6Instructions
  HiLink armv6InstrNoCond   armv6Instructions
  HiLink armv6Mul           armv6Instructions
  HiLink armv6LDR           armv6Instructions
  HiLink armv6STR           armv6Instructions
  
  HiLink armv7Instr         armv6Instructions
  HiLink armVfpInstr        armv6Instructions
  HiLink armNeonInstr       armv6Instructions

  HiLink armNumericOp       armOperator
  HiLink armRelative        armOperator

  " Link to standard syn groups so the 'colorschemes' work
  HiLink armComment         Comment

  HiLink armOperator        Operator
  HiLink armNumber          Constant

  HiLink armString          String

  HiLink armIdentifier      Function
  HiLink armLabel           Function

  HiLink gasDirective       Preproc
  HiLink armDirective       Preproc
  HiLink armCPreProc        Identifier

  HiLink armRegister        Type
  HiLink armv6Register      Type
  HiLink armv6Instructions  Keyword

  HiLink armTodo            Todo
  delcommand HiLink
endif

let b:current_syntax = "arm"

