
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

exec 'syn match armv6Instr "\%(SH\?\|Q\|U[QH]\?\)\%(ADD16\|SUB16\|ADD8\|SUB8\|ASX\|SAX\)' . armCond . '\>"'

exec 'syn match armv6Instr "\%(USAD8\|USADA8\|SSAT\|SSAT16\|USAT\|USAT16\)' . armCond . '\>"'

exec 'syn match armv6Instr "\%(MOVT\|MRA\|MAR\|MRRC2\|MCRR2\|ORN\|BFC\|BFI\|SBFX\|UBFX\)' . armCond . '\>"'

exec 'syn match armv6Instr "\%(PKHBT\|PKHTB\|SXTH\|SXTB16\|SXTB\|SXTAH\|SXTAB16\|SXTAB\|UXTH\|UXTB\|UXTB16\|UXTAH\|UXTAB16\|UXTAB\|RBIT\|REV\|REV16\|REVSH\|SEL\)' . armCond . '\>"'

exec 'syn match armv6Mul "\%(UMAAL\|SMUAD\|SMLAD\|SMLALD\|SMUSD\|SMLSD\|SMLSLD\|SMMUL\|SMMLA\|SMMLS\)' . armCond . '\>"'

exec 'syn match armv6LDR "\%(LDREX[HBD]\)' . armCond . '\>"'
exec 'syn match armv6STR "\%(STREX[HBD]\|CLREX\)' . armCond . '\>"'

syn match armv6InstrNoCond "\%(IT\|CBN\?Z\|TBB\|TBH\|CPSID\|CPSIE\|CPS\|SETEND\|SRS\%(IA\|IB\|DA\|DB\)\|RFE\%(IA\|IB\|DA\|DB\)\)\>"

exec 'syn match armv7Instr "\%(DBG\|DMB\|DSB\|ISB\|SEV\|WFE\|WFI\|YIELD\)' . armCond . '\>"'

"
" VFP/NEON
"

exec 'syn match armVfpInstr "\%(FMUL\|FNMUL\|FMAC\|FNMAC\|FMSC\|FNMSC\|FADD\|FSUB\|FDIV\|FCPY\|FABS\|FNEG\|FSQRT\|FCMPE\?\|FCMPE\?Z\|FCVTD\|FCVTS\|FUITO\|FSITO\|FTOUI\|FTOSI\|FST\|FLD\|FTO\%(SH\|SL\|UH\|UL\)\|F\%(SH\|SL\|UH\|UL\)TO\)[SD]' . armCond . '\>"'

exec 'syn match armVfpInstr "\%(FMSR\|FMDLR\|FMRDL\|FMDHR\|FMRDH\|FMXR\|FMRX\|FMSTAT\|FCONST\)' . armCond . '\>"'

exec 'syn match armVfpInstr "\%(FSTMIA\|FSTMDB\|FLDMIA\|FLDMDB\)[SDX]' . armCond . '\>"'

exec 'syn match armVfpInstr "\%(VMUL\|VNMUL\|VMLA\|VMLS\|VNMLS\|VNMLA\|VADD\|VSUB\|VDIV\|VABS\|VNEG\|VSQRT\|VCMPE\?\|VCVT[TB]\?\|VMOV\|VMSR\|VMRS\|VSTR\|VSTM\%(DB\|IA\|EA\|FD\)\?\|VPUSH\|VLDR\|VLDM\%(DB\|IA\|EA\|FD\)\?\|VPOP\)' . armCond . '\>"'


exec 'syn match armNeonInstr "\%(VABA\|VABD\|VABS\|VACGE\|VACGT\|VACLE\|VACLT\|VADD\|VADDHN\|VAND\|VBIC\|VBIF\|VBIT\|VBSL\|VCEQ\|VCLE\|VCLT\|VCGE\|VCGT\|VCLE\|VCLT\|VCLS\|VCLZ\|VCNT\|VCVT\|VDUP\|VERO\|VEXT\|VHADD\|VHSUB\|VLD\|VMAX\|VMIN\|VMLA\|VMLS\|VMOV\|VMOVL\|VMVN\|VQMOVN\|VQMOVUN\|VMUL\|VMLA\|VMLS\|VMULL\|VMLAL\|VMLSL\|VQABS\|VQNEG\|VORN\|VORR\|VPADD\|VPADAL\|VPMAX\|VPMIN\|VQADD\|VQDMLAL\|VQDMLSL\|VQDMULL\|VQDMUL\|VQDMULH\|VQRDMULH\|VQRSHL\|VQRSHR\|VRSHL\|VQSHRUN\|VQSHL\|VQSHR\|VQSUB\|VRADDH\|VRADDHN\|VRSUBHN\|VRECPE\|VRECPS\|VRSQRTE\|VRSQRTS\|VQSHLU\|VSHLL\|VREV\|VRHADD\|VRSHR\|VRSRA\|VRSHRN\|VRSUBH\|VSHL\|VSHR\|VQSHRN\|VQRSHRN\|VQRSHRUN\|VSLI\|VSRA\|VSRI\|VST\|VADDL\|VADDW\|VSUBL\|VSUBW\|VSUBH\|VSUBHN\|VSWP\|VTBL\|VTBX\|VTRN\|VTST\|VUZP\|VZIP\)' . armCond . '\>"'

