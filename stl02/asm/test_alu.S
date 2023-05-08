#include "asm_utils.h"

.global test_alu
.text

test_alu:
	# ABI prologue
	addi sp, sp, -112     # allocate 112 bytes on the stack
	sw x1, 104(sp)        # save return address
	sw x9, 96(sp)         # save callee-saved registers
	sw x10, 88(sp)
	sw x18, 80(sp)
	sw x19, 72(sp)
	sw x20, 64(sp)
	sw x21, 56(sp)
	sw x22, 48(sp)
	sw x23, 40(sp)
	sw x24, 32(sp)
	sw x25, 24(sp)
	sw x26, 16(sp)
	sw x27, 8(sp)
	addi s0, sp, 112     # set up s0 to point to start of stack frame
	li t0, 0x00104000    # save stack pointer
	sw sp, 0(t0)

	AUIPC x1, 0xFFFFF
	AUIPC x1, 0x00000
	AUIPC x1, 0x00001
	li x31, 0x00100100
	li  x1, 0x00000000
	li  x2, 0x00000000
	li x30, 0x11111111
	li x28, 0xFFFFFFFF
loopalu:
	p.adduN x7, x1, x2, 0
	p.subN x8, x1, x2, 0
	p.clipr x11, x1, x2
	div x9, x1, x2
	REM x10,x1,x2
	REMu x16,x2,x1
	divu x15,x2,x1
	pv.add.h x3, x1, x2
	pv.sub.b x4, x1, x2
	pv.shuffle.b x5, x1, x2
	pv.shuffle.h x6, x1, x2
	sw  x7, 0(x31)
	sw  x8, 0(x31)
	sw  x9, 0(x31)
	sw  x10, 4(x31)
	sw  x3, 4(x31)
	sw  x4, 4(x31)
	sw  x5, 4(x31)
	sw  x6, 4(x31)
	sw  x11, 4(x31)
	sw  x15, 4(x31)
	sw  x16, 4(x31)
	beq x2, x28, end2alu
	p.adduN x2, x2, x30, 0
	j loopalu
end2alu:
	xor x2, x2, x2
	beq x1, x28, end3alu
	p.adduN x1, x1, x30, 0
	j loopalu
end3alu:
	li  x4, 0xEFFFFFFF
	li  x2, 0x55555555
	li  x8, 0xCCCCCCCC
	li  x1, 0x00000001
	li  x13, 2
	li  x29, 144
loopdiv: 
	div x3, x2, x1
	REM x10,x2,x1
	REMu x11,x2,x1
	divu x9,x2,x1
	div x5, x8, x1
	REM x6,x8,x1
	REMu x12,x8,x1
	divu x7,x8,x1
	addi x14, x13, 0
	p.adduN x13, x1, x13, 0
	addi x1, x14, 0
	beq x1, x29, end_div
	sw  x3, 4(x31)
	sw  x10, 4(x31)
	sw  x9, 0(x31)
	sw  x5, 4(x31)
	sw  x6, 4(x31)
	sw  x7, 0(x31)
	sw  x11, 4(x31)
	sw  x12, 0(x31)
	j loopdiv
end_div:
	li x1, 0x00000000
	li x2, 0x0000FFFF
	li x13, 0x00000000
	li x14, 0x0000FFFF
	li x15, 0x00FF00FF
	li x16, 0x33333333
	li x17, 0x0F0F0F0F
	li x18, 0xF0F0F0F0
	li x19, 0x00000001
	li x20, 0xFFFFFFFF
	li x21, 0x765ABCDE
aluu:
	p.extractu x3, x1, 31, 0
	sw  x3, 0(x31)
	p.extractr x3, x1, x2
	sw  x3, 0(x31)
	p.extractur x3, x1, x2
	sw  x3, 0(x31)
	p.insertr x3, x1, x2
	sw  x3, 0(x31)
	p.bclrr x3, x1, x2
	sw  x3, 0(x31)
	p.bsetr x3, x1, x2
	sw  x3, 0(x31)
	p.abs x3, x1
	sw  x3, 0(x31)
	p.slet x3, x1, x2
	sw  x3, 0(x31)
	p.sletu x3, x1, x2
	sw  x3, 0(x31)
	p.min x3, x1, x2
	sw  x3, 0(x31)
	p.minu x3, x1, x2
	sw  x3, 0(x31)
	p.max x3, x1, x2
	sw  x3, 0(x31)
	p.maxu x3, x1, x2
	sw  x3, 0(x31)
	p.exths x3, x1
	sw  x3, 0(x31)
	p.exthz x3, x1
	sw  x3, 0(x31)
	p.extbs x3, x1
	sw  x3, 0(x31)
	p.extbz x3, x1
	sw  x3, 0(x31)
	p.clip x3, x1, 1
	sw  x3, 0(x31)
	p.clipu x3, x1, 2
	sw  x3, 0(x31)
	p.clipr x3, x1, x2
	sw  x3, 0(x31)
	p.clipur x3, x1, x2
	sw  x3, 0(x31)
	p.addN x3, x1, x2, 0
	sw  x3, 0(x31)
	p.adduN x3, x1, x2, 0
	sw  x3, 0(x31)
	p.addRN x3, x1, x2, 0
	sw  x3, 0(x31)
	p.adduRN x3, x1, x2, 0
	sw  x3, 0(x31)
	p.subN x3, x1, x2, 0
	sw  x3, 0(x31)
	p.subuN x3, x1, x2, 0
	sw  x3, 0(x31)
	p.subRN x3, x1, x2, 0
	sw  x3, 0(x31)
	p.subuRN x3, x1, x2, 0
	sw  x3, 0(x31)
	p.addNr x3, x1, x2
	sw  x3, 0(x31)
	p.adduNr x3, x1, x2
	sw  x3, 0(x31)
	p.addRNr x3, x1, x2
	sw  x3, 0(x31)
	p.adduRNr x3, x1, x2
	sw  x3, 0(x31)
	p.subNr x3, x1, x2
	sw  x3, 0(x31)
	p.subuNr x3, x1, x2
	sw  x3, 0(x31)
	p.subRNr x3, x1, x2
	sw  x3, 0(x31)
	p.subuRNr x3, x1, x2
	sw  x3, 0(x31)
	pv.add.h x3, x1, x2
	sw  x3, 0(x31)
	pv.add.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.add.b x3, x1, x2
	sw  x3, 0(x31)
	pv.add.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.sub.h x3, x1, x2
	sw  x3, 0(x31)
	pv.sub.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.sub.b x3, x1, x2
	sw  x3, 0(x31)
	pv.sub.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.avg.h x3, x1, x2
	sw  x3, 0(x31)
	pv.avg.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.avg.b x3, x1, x2
	sw  x3, 0(x31)
	pv.avg.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.avgu.h x3, x1, x2
	sw  x3, 0(x31)
	pv.avgu.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.avgu.b x3, x1, x2
	sw  x3, 0(x31)
	pv.avgu.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.min.h x3, x1, x2
	sw  x3, 0(x31)
	pv.min.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.min.b x3, x1, x2
	sw  x3, 0(x31)
	pv.min.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.minu.h x3, x1, x2
	sw  x3, 0(x31)
	pv.minu.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.minu.b x3, x1, x2
	sw  x3, 0(x31)
	pv.minu.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.max.h x3, x1, x2
	sw  x3, 0(x31)
	pv.max.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.max.b x3, x1, x2
	sw  x3, 0(x31)
	pv.max.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.maxu.h x3, x1, x2
	sw  x3, 0(x31)
	pv.maxu.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.maxu.b x3, x1, x2
	sw  x3, 0(x31)
	pv.maxu.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.srl.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.srl.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.sra.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.sra.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.sll.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.sll.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.or.h x3, x1, x2
	sw  x3, 0(x31)
	pv.or.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.or.b x3, x1, x2
	sw  x3, 0(x31)
	pv.or.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.xor.h x3, x1, x2
	sw  x3, 0(x31)
	pv.xor.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.xor.b x3, x1, x2
	sw  x3, 0(x31)
	pv.xor.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.and.h x3, x1, x2
	sw  x3, 0(x31)
	pv.and.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.and.b x3, x1, x2
	sw  x3, 0(x31)
	pv.and.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.abs.h x3, x1
	sw  x3, 0(x31)
	pv.abs.b x3, x1
	sw  x3, 0(x31)
	pv.shuffle.h x3, x1, x2
	sw  x3, 0(x31)
	pv.shuffle.b x3, x1, x2
	sw  x3, 0(x31)
	pv.extract.h x3, x1, 0
	sw  x3, 0(x31)
	pv.extract.b x3, x1, 1
	sw  x3, 0(x31)
	pv.extractu.h x3, x1, 1
	sw  x3, 0(x31)
	pv.extractu.b x3, x1, 2
	sw  x3, 0(x31)
	pv.shuffle.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.shuffleI0.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.shuffleI1.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.shuffleI2.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.shuffleI3.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.shuffle2.h x3, x1, x2
	sw  x3, 0(x31)
	pv.shuffle2.b x3, x1, x2
	sw  x3, 0(x31)

	pv.shuffle.h x3, x1, x3
	pv.shuffle.b x3, x3, x2
	pv.shuffle.sci.h x3, x3, 1
	sw  x3, 0(x31)
	pv.shuffle.sci.h x3, x3, 2
	sw  x3, 0(x31)
	pv.shuffle.sci.h x3, x3, 3
	sw  x3, 0(x31)
	pv.shuffleI0.sci.b x3, x3, 21
	sw  x3, 0(x31)
	pv.shuffleI1.sci.b x3, x3, 10
	sw  x3, 0(x31)
	pv.shuffleI2.sci.b x3, x3, 21
	sw  x3, 0(x31)
	pv.shuffleI3.sci.b x3, x3, 10
	sw  x3, 0(x31)
	pv.shuffle2.h x3, x3, x2
	sw  x3, 0(x31)
	pv.shuffle2.b x3, x1, x3
	sw  x3, 0(x31)
	pv.extract.h x3, x3, 0
	sw  x3, 0(x31)
	pv.extract.b x3, x3, 1
	sw  x3, 0(x31)
	pv.extractu.h x3, x3, 1
	sw  x3, 0(x31)
	pv.extractu.b x3, x3, 2
	sw  x3, 0(x31)
	pv.pack.h x3, x1, x2
	sw  x3, 0(x31)
	pv.packhi.b x3, x1, x2
	sw  x3, 0(x31)
	pv.packlo.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpeq.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpeq.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpeq.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpeq.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpne.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpne.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpne.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpne.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpgt.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpgt.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpgt.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpgt.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpge.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpge.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpge.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpge.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmplt.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmplt.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmplt.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmplt.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmple.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmple.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmple.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmple.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpgtu.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpgtu.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpgtu.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpgtu.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpgeu.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpgeu.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpgeu.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpgeu.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpltu.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpltu.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpltu.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpltu.sc.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpleu.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpleu.sc.h x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpleu.b x3, x1, x2
	sw  x3, 0(x31)
	pv.cmpleu.sc.b x3, x1, x2
	sw  x3, 0(x31)
	divu x3, x1, x2
	sw  x3, 0(x31)
	p.adduN x3, x1, x2, 0
	sw  x3, 0(x31)
	p.subN x3, x1, x2, 0
	sw  x3, 0(x31)
	div x3, x1, x2
	sw  x3, 0(x31)
	REM x3,x1,x2
	sw  x3, 0(x31)
	REMU x3,x1,x2
	sw  x3, 0(x31)
	srl x3, x1, x2
	sw  x3, 0(x31)
	sll x3, x1, x2
	sw  x3, 0(x31)
	sra x3, x1, x2
	sw  x3, 0(x31)
	SLT x3,x1,x2
	sw  x3, 0(x31)
	SLTU x3,x1,x2
	sw  x3, 0(x31)
	XOR x3,x1,x2
	sw  x3, 0(x31)
	OR x3,x1,x2
	sw  x3, 0(x31)
	AND x3,x1,x2
	sw  x3, 0(x31)

	bne x1, x13, num2
	li x1, 0x0000FFFF
	li x2, 0xFFFF0000
	j aluu
num2:	
	bne x1, x14, num3
	li x1, 0x00FF00FF
	li x2, 0xCCCCCCCC
	j aluu	
num3:
	bne x1, x15, num4
	li x1, 0x33333333
	li x2, 0x55555555
	j aluu	
num4:
	bne x1, x16, num5
	li x1, 0x0F0F0F0F
	li x2, 0x0F0F0F0F
	j aluu
num5:
	bne x1, x17, num6
	li x1, 0xF0F0F0F0
	li x2, 0xF0F0F0F0
	j aluu
num6:
	bne x1, x18, num7
	li x1, 0x00000001
	li x2, 0xFFFFFFFF
	j aluu
num7:
	bne x1, x19, num8
	li x1, 0xFFFFFFFF
	li x2, 0x00000000
	j aluu
num8:
	bne x1, x20, num9
	li x1, 0x765ABCDE
	li x2, 0x43210ABC
	j aluu
num9:

test_ff:
	li x1, 0x80000000
	li x2, 0x00000000
cnt_bit:
	p.ff1 x3, x1
	p.fl1 x4, x1
	sw  x3, 0(x31)
	sw  x4, 0(x31)
	beq x1, x2, end_cnt
	srli x1, x1, 1
	j cnt_bit
end_cnt:

test_clb:
	li x6, 1
	li x1, 0xFFFFFFFF
clbb:	
	p.clb x3, x1
	p.cnt x4, x1
	sw  x3, 0(x31)
	sw  x4, 0(x31)
	sub x1, x1, x6
	sll x6, x6, 1
	beq x6, x0, end_clb
	j clbb
end_clb:

test_ror:
	li x6, 31
	li x2, 0
	li x1, 0xCCCCCCCC
	li x4, 0xB6DB6DB6
rorr:
	p.ror x3, x1, x2
	p.ror x3, x4, x2
	sw  x3, 0(x31)
	add x2, x2, 1
	beq x2, x6, end_ror
	j rorr
end_ror:

test_manip:
	xor x2, x2, x2
	li x6, 1
	li x1, 0xFFFFFFFF
	li x5, 0x000003E0
	li x7, 31
manip1:
	p.extractr x3, x1, x2
	sw  x3, 0(x31)
	p.bclrr x3, x1, x2
	sw  x3, 0(x31)
	p.insertr x3, x1, x2
	sw  x3, 0(x31)
	p.bsetr x3, x1, x2
	sw  x3, 0(x31)
	beq x2, x7, manip2
	add x2, x2, 1
	j manip1
manip2: 
	add x2, x2, 0x00000020
	add x7, x2, 0
	sub x7, x7, x6
	andi x2, x2, 0xFFFFFFE0
	beq x7, x5, end_manip
	j manip1
end_manip: 
	beq x1, x0, end_manip2
	li x1, 0
	li x2, 0xFFFFFFFF
	li x7, 31
	j manip1
end_manip2:

test_insert:
	li x3, 0x00000000
	li x1, 0xFFFFFFFF
	pv.insert.h x3, x1, 0
	li x3, 0x00000000
	sw  x3, 4(x31)
	pv.insert.h x3, x1, 1
	li x3, 0x00000000
	sw  x3, 4(x31)
	pv.insert.b x3, x1, 0
	li x3, 0x00000000
	sw  x3, 4(x31)
	pv.insert.b x3, x1, 1
	li x3, 0x00000000
	sw  x3, 4(x31)
	pv.insert.b x3, x1, 2
	li x3, 0x00000000
	sw  x3, 4(x31)
	pv.insert.b x3, x1, 3
	li x3, 0xFFFFFFFF
	li x1, 0x00000000
	pv.insert.h x3, x1, 0
	li x3, 0xFFFFFFFF
	sw  x3, 4(x31)
	pv.insert.h x3, x1, 1
	li x3, 0xFFFFFFFF
	sw  x3, 4(x31)
	pv.insert.b x3, x1, 0
	li x3, 0xFFFFFFFF
	sw  x3, 4(x31)
	pv.insert.b x3, x1, 1
	li x3, 0xFFFFFFFF
	sw  x3, 4(x31)
	pv.insert.b x3, x1, 2
	li x3, 0xFFFFFFFF
	sw  x3, 4(x31)
	pv.insert.b x3, x1, 3
	li x3, 0xFFFFFFFF
	sw  x3, 4(x31)


test_compvi:
	li x1, 9 
	pv.cmpeq.sci.h x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpeq.sci.b x3, x1, 0
	sw  x3,0(x31)
	pv.cmpne.sci.h x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpne.sci.b x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpgt.sci.h x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpgt.sci.b x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpge.sci.h x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpge.sci.b x3, x1, 0
	sw  x3, 0(x31)
	pv.cmplt.sci.h x3, x1, 0
	sw  x3, 0(x31)
	pv.cmplt.sci.b x3, x1, 0
	sw  x3, 0(x31)
	pv.cmple.sci.h x3, x1, 0
	sw  x3, 0(x31)
	pv.cmple.sci.b x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpgtu.sci.h x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpgtu.sci.b x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpgeu.sci.h x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpgeu.sci.b x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpltu.sci.h x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpltu.sci.b x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpleu.sci.h x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpleu.sci.b x3, x1, 0
	sw  x3, 0(x31)
	pv.cmpeq.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpeq.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpne.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpne.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpgt.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpgt.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpge.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpge.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.cmplt.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.cmplt.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.cmple.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.cmple.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpgtu.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpgtu.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpgeu.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpgeu.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpltu.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpltu.sci.b x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpleu.sci.h x3, x1, 31
	sw  x3, 0(x31)
	pv.cmpleu.sci.b x3, x1, 31
	sw  x3, 0(x31)

	GEN_BLOCK_ALU_IMM(0xFFFFFFFF, 0x00000000) 
	GEN_BLOCK_ALU_IMM(0x00000000, 0xFFFFFFFF) 
	GEN_BLOCK_ALU_IMM(0xFFFFFFFF, 0xFFFFFFFF) 
	GEN_BLOCK_ALU_IMM(0x00000000, 0x00000000) 
	GEN_BLOCK_SHF2( pv.srl.sci.h , 0x00000000)
	GEN_BLOCK_SHF2( pv.sra.sci.h , 0xB6DB6DB6)
	GEN_BLOCK_SHF2( pv.sll.sci.h , 0xFFFFFFFF)
	GEN_BLOCK_SHF2( srli , 0xB6DB6DB6)
	GEN_BLOCK_SHF2( srai , 0xCCCCCCCC)
	GEN_BLOCK_SHF2( slli , 0x55555555)
	GEN_BLOCK_SHF( p.addN, 0x55555555, 0x00000001)
	GEN_BLOCK_SHF( p.addN, 0xB6DB6DB6, 0x00000001)
	GEN_BLOCK_SHF( p.subuN, 0xB6DB6DB6, 0x00000001)
	GEN_BLOCK_SHF( p.subuN, 0x55555555, 0x00000001)
	GEN_BLOCK_SHF( p.adduRN, 0x00000001, 0xFFFFFFFF)
	GEN_BLOCK_SHF( p.subRN, 0x00000001, 0xFFFFFFFF)

test_clip:
	li x1, 0xFFFF
	li x2, 0xEFFF
	p.clip x3, x1, 1
	sw x3, 0(x31)
	p.clip x3, x1, 2
	sw x3, 0(x31)
	p.clip x3, x1, 3
	sw x3, 0(x31)
	p.clip x3, x1, 4
	sw x3, 0(x31)
	p.clip x3, x1, 5
	sw x3, 0(x31)
	p.clip x3, x1, 6
	sw x3, 0(x31)
	p.clip x3, x1, 7
	sw x3, 0(x31)
	p.clip x3, x1, 8
	sw x3, 0(x31)
	p.clip x3, x2, 24
	sw x3, 0(x31)
	p.clip x3, x2, 25
	sw x3, 0(x31)
	p.clip x3, x2, 26
	sw x3, 0(x31)
	p.clip x3, x2, 27
	sw x3, 0(x31)
	p.clip x3, x2, 28
	sw x3, 0(x31)
	p.clip x3, x2, 29
	sw x3, 0(x31)
	p.clip x3, x2, 30
	sw x3, 0(x31)
	p.clip x3, x2, 31
	sw x3, 0(x31)
	p.clip x3, x0, 14
	sw x3, 0(x31)
	p.clip x3, x0, 15
	sw x3, 0(x31)
	p.clip x3, x0, 16
	sw x3, 0(x31)
	p.clip x3, x0, 17
	sw x3, 0(x31)
	p.clip x3, x0, 18
	sw x3, 0(x31)
	p.clip x3, x0, 19
	sw x3, 0(x31)
	p.clip x3, x0, 20
	sw x3, 0(x31)
	p.clip x3, x0, 21
	sw x3, 0(x31)
	p.clipu x3, x0, 13
	sw x3, 0(x31)
	p.clipu x3, x2, 12
	sw x3, 0(x31)
	p.clipu x3, x1, 11
	sw x3, 0(x31)
	p.clipur x3, x1, x0
	sw x3, 0(x31)
	p.clipur x3, x2, x0
	sw x3, 0(x31)
	p.clipur x3, x4, x1
	sw x3, 0(x31)

	# ABI epilogue
	li t0, 0x00104000    # restore stack pointer
	lw sp, 0(t0)
	lw x27, 8(sp)        # restore callee-saved registers
	lw x26, 16(sp)
	lw x25, 24(sp)
	lw x24, 32(sp)
	lw x23, 40(sp)
	lw x22, 48(sp)
	lw x21, 56(sp)
	lw x20, 64(sp)
	lw x19, 72(sp)
	lw x18, 80(sp)
	lw x10, 88(sp)
	lw x9, 96(sp)
	lw x1, 104(sp)       # restore return address
	addi sp, sp, 112     # deallocate stack space
	jr ra                # return to caller
