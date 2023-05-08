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

	li x30,0
	li x31,0x11111111

	li x1,0xFFFFFFFF
	p.abs x3,x1
	sw x3,0(x3)
	li x1,0x0000FFFF
	p.abs x3,x1
	sw x3,0(x3)
	li x1,0x00FF00FF
	p.abs x3,x1
	sw x3,0(x3)
	li x1,0x0F0F0F0F
	p.abs x3,x1
	sw x3,0(x3)
	li x1,0x00000000
	p.abs x3,x1
	sw x3,0(x3)
	li x1,0xFFFFFFFF
	p.lw x3,0x000(x1)
	sw x3,0(x4)
	p.lhu x4,0x00F(x1)
	sw x4,0(x4)
	li x2,0x00FF00FF
	p.lw x3,x2(x1)
	sw x3,0(x3)
	p.lbu x4,x2(x1)
	p.lb x3,x2(x1)
	p.lw x4,x2(x1)
	li x1,0xFFFFFFFF
	p.sw x3,0x000(x1)
	p.sh x4,0x00F(x1)
	li x2,0x00FF00FF
	p.sw x3,x2(x1)
	p.sb x4,x2(x1)
	p.sb x3,x2(x1)
	p.sw x4,x2(x1)

	li x2, 0x00FF00FF
	li x3, 0x0000FFFF
	GEN_BLOCK_GENERIC_ALU()
	li x2, 0x0000FFFF
	li x3, 0xFFFF0000
	GEN_BLOCK_GENERIC_ALU()
	li x2, 0x0F0F0F0F
	li x3, 0x00FF00FF
	GEN_BLOCK_GENERIC_ALU()
	li x2, 0x00FF00FF
	li x3, 0x55555555
	GEN_BLOCK_GENERIC_ALU()
	li x2, 0x33333333
	li x3, 0x55555555
	GEN_BLOCK_GENERIC_ALU()

	li x31, 0x00100000
	GEN_BLOCK_ALU_IMM(0x00000000, 0x00000000)
	GEN_BLOCK_ALU_IMM(31, 1)
	slli x1,x4,31
	sw x1,0(x31)
	srli x1,x4,31
	sw x1,0(x31)
	srai x1,x4,31
	sw x1,0(x31)
	GEN_BLOCK_ALU_IMM(0x00000000, 0xFFFFFFFF)
	GEN_BLOCK_ALU_IMM(30, 3) 
	slli x1,x4,31
	sw x1,0(x31)
	srli x1,x4,31
	sw x1,0(x31)
	srai x1,x4,31
	sw x1,0(x31)
	GEN_BLOCK_ALU_IMM(0xFFFFFFFF, 0x00000000) 
	slli x1,x4,31
	sw x1,0(x31)
	srli x1,x4,31
	sw x1,0(x31)
	srai x1,x4,31
	sw x1,0(x31)
	GEN_BLOCK_ALU_IMM(28, 7) 
	slli x1,x4,31
	sw x1,0(x31)
	srli x1,x4,31
	sw x1,0(x31)
	srai x1,x4,31
	sw x1,0(x31)
	GEN_BLOCK_ALU_IMM(0xFFFFFFFF, 0xFFFFFFFF) 

	li x31, 0x00100000
	li  x1, 0x00000000
	li  x2, 0x00000000
	li x30, 0x11111111
	li x27, 0xFFFFFFFF	

loopdiv:
	add x7,x1,x2
	sw  x7,0(x31)
	sub x8,x1,x2
	sw  x8,0(x31)
	REM x10,x1,x2
	sw  x10,0(x31)
	div x11, x1, x2
	sw  x11,0(x31)
	p.adduN x13, x1, x2, 0
	sw  x13,0(x31)
	pv.sub.b x17, x1, x2
	sw  x17,0(x31)
	divu x18, x7, x17
	sw  x18,0(x31)
	beq x2, x27, division1
	nop
	nop
	nop
	add x2,x2,x30
	j loopdiv
division1:
	xor x2, x2, x2
	beq x1, x27, division2
	nop
	nop
	nop
	add x1,x1,x30
	j loopdiv
division2:

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

