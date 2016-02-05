
so <sfile>:p:h/armv5_base_syntax.vim

" VFP/NEON registers
syn match armv6Register "\<[SD]\%(3[01]\|[12]\?[0-9]\)\>"
syn match armv6Register "\<Q\%(1[0-5]\|[0-9]\)\>"

"
" ARMv6 instructions
"
exec 'syn match armv6Instr "\%(SH\?\|Q\|U[QH]\?\)\%(ADD16\|SUB16\|ADD8\|SUB8\|ASX\|SAX\)' . armCond . '\>"'

exec 'syn match armv6Instr "\%(USAD8\|USADA8\|SSAT\|SSAT16\|USAT\|USAT16\)' . armCond . '\>"'

exec 'syn match armv6Instr "\%(MOVT\|MOVW\|MRA\|MAR\|ORN\|BFC\|BFI\|SBFX\|UBFX\)' . armCond . '\>"'

exec 'syn match armv6Instr "\%(PKHBT\|PKHTB\|SXTH\|SXTB16\|SXTB\|SXTAH\|SXTAB16\|SXTAB\|UXTH\|UXTB\|UXTB16\|UXTAH\|UXTAB16\|UXTAB\|RBIT\|REV\|REV16\|REVSH\|SEL\)' . armCond . '\>"'

exec 'syn match armv6Mul "\%(UMAAL\|SMUAD\|SMLAD\|SMLALD\|SMUSD\|SMLSD\|SMLSLD\|SMMUL\|SMMLA\|SMMLS\)' . armCond . '\>"'

exec 'syn match armv6LDR "\%(LDREX[HBD]\)' . armCond . '\>"'
exec 'syn match armv6STR "\%(STREX[HBD]\|CLREX\)' . armCond . '\>"'

syn match armv6InstrNoCond "\%(IT[TE]\{0,3\}\|CBN\?Z\|TBB\|TBH\|CPSID\|CPSIE\|CPS\|SETEND\|SRS\%(IA\|IB\|DA\|DB\)\|RFE\%(IA\|IB\|DA\|DB\)\)\>"
syn keyword armv6InstrNoCond MRRC2 MCRR2

exec 'syn match armv7Instr "\%(DBG\|DMB\|DSB\|ISB\|SEV\|WFE\|WFI\|YIELD\)' . armCond . '\>"'

"
" VFP/NEON
"
let neonDatatype = '\%(\.[isu]\?\%(8\|16\|32\|64\)\|\.f32\|\.f64\)\?'

exec 'syn match armVfpInstr "\%(FMUL\|FNMUL\|FMAC\|FNMAC\|FMSC\|FNMSC\|FADD\|FSUB\|FDIV\|FCPY\|FABS\|FNEG\|FSQRT\|FCMPE\?Z\?\|FCMPZ\|FCVTD\|FCVTS\|FUITO\|FSITO\|FTOUIZ\?\|FTOSIZ\?\|FST\|FLD\|FTO\%(SH\|SL\|UH\|UL\)\|F\%(SH\|SL\|UH\|UL\)TO\)[SD]' . armCond . '\>"'

exec 'syn match armVfpInstr "\%(FMSR\|FMRS\|FMDLR\|FMRDL\|FMDHR\|FMRDH\|FMXR\|FMRX\|FMSTAT\|FCONST\)' . armCond . '\>"'

exec 'syn match armVfpInstr "\%(FSTMIA\|FSTMDB\|FLDMIA\|FLDMDB\)[SDX]' . armCond . '\>"'

exec 'syn match armVfpInstr "\%(VMUL\|VNMUL\|VMLA\|VMLS\|VNMLS\|VNMLA\|VADD\|VSUB\|VDIV\|VABS\|VNEG\|VSQRT\|VCMPE\?\|VCVT[TB]\?\|VMOV\|VMSR\|VMRS\|VSTR\|VSTM\%(DB\|IA\|EA\|FD\)\?\|VPUSH\|VLDR\|VLDM\%(DB\|IA\|EA\|FD\)\?\|VPOP\)' . armCond . '\>"'

exec 'syn match armNeonInstr "\%(VABA\|VABD\|VABS\|VACGE\|VACGT\|VACLE\|VACLT\|VADD\|VADDHN\|VAND\|VBIC\|VBIF\|VBIT\|VBSL\|VCEQ\|VCLE\|VCLT\|VCGE\|VCGT\|VCLS\|VCLZ\|VCNT\|VCVTR\?\|VDUP\|VEOR\|VEXT\|VHADD\|VHSUB\|VLD[1234]\|VMAX\|VMIN\|VMLA\|VMLS\|VMOV\|VMOVL\|VMVN\|VQMOVN\|VQMOVUN\|VMUL\|VMLA\|VMLS\|VMULL\|VMLAL\|VMLSL\|VQABS\|VQNEG\|VORN\|VORR\|VPADD\|VPADAL\|VPMAX\|VPMIN\|VQADD\|VQDMLAL\|VQDMLSL\|VQDMULL\|VQDMUL\|VQDMULH\|VQRDMULH\|VQRSHL\|VQRSHR\|VRSHL\|VQSHRUN\|VQSHL\|VQSHR\|VQSUB\|VRADDH\|VRADDHN\|VRSUBHN\|VRECPE\|VRECPS\|VRSQRTE\|VRSQRTS\|VQSHLU\|VSHLL\|VREV\|VRHADD\|VRSHR\|VRSRA\|VRSHRN\|VRSUBH\|VSHL\|VSHR\|VQSHRN\|VQRSHRN\|VQRSHRUN\|VSLI\|VSRA\|VSRI\|VST[1234]\|VADDL\|VADDW\|VSUBL\|VSUBW\|VSUBH\|VSUBHN\|VSWP\|VTBL\|VTBX\|VTRN\|VTST\|VUZP\|VZIP\)' . armCond . neonDatatype . '\>"'

