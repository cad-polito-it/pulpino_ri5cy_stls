#include "asm_utils.h"

.global test_register_file
.text

test_register_file:

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

	li x1,0
	li x2,0
	li x3,0
	li x4,0
	li x5,0
	li x6,0
	li x7,0
	li x8,0
	li x9,0
	li x10,0
	li x11,0
	li x12,0
	li x13,0
	li x14,0
	li x15,0
	li x16,0
	li x17,0
	li x18,0
	li x19,0
	li x20,0
	li x21,0
	li x22,0
	li x23,0
	li x24,0
	li x25,0
	li x26,0
	li x27,0
	li x28,0
	li x29,0
	li x30,0
	li x31,0

	p.lw x4,0(x4)
	nop
	nop
	nop
	p.sw x4, x4(x4)
	lh x5,0(x5)
	nop
	nop
	nop
	sw x5, 0(x0)
	lhu x6,0(x6)
	nop
	nop
	nop
	sh x6, 0(x0)
	lh x7,0(x7)
	nop
	nop
	nop
	sh x7, 0(x0)
	lbu x8,0(x8)
	nop
	nop
	nop
	sb x8, 0(x0)
	lb x10,0(x10)
	nop
	nop
	nop
	sb x10, 0(x0)
	lhu x11,0(x11)
	nop
	nop
	nop
	sb x12, 0(x0)
	p.lw x13,0(x13)
	nop
	nop
	nop
	p.sw x13, x13(x13)
	p.lw x14,0(x14)
	nop
	nop
	nop
	p.sw x14, x14(x14)
	p.lw x15,0(x15)
	nop
	nop
	nop
	p.sw x15, x15(x15)
	p.lw x16,0(x16)
	nop
	nop
	nop
	p.sw x16, x16(x16)
	p.lw x17,0(x17)
	nop
	nop
	nop
	p.sw x17, x17(x17)
	p.lw x18,0(x18)
	nop
	nop
	nop
	p.sw x18, x18(x18)
	p.lw x19,0(x19)
	nop
	nop
	nop
	p.sw x19, x19(x19)
	p.lw x20,0(x20)
	nop
	nop
	nop
	p.sw x20, x20(x20)
	p.lw x21,0(x21)
	nop
	nop
	nop
	p.sw x21, x21(x21)
	p.lw x22,0(x22)
	nop
	nop
	nop
	p.sw x22, x22(x22)
	p.lw x23,0(x23)
	nop
	nop
	nop
	p.sw x23, x23(x23)
	p.lw x23,0(x23)
	nop
	nop
	nop
	p.sw x23, x23(x23)
	p.lw x24,0(x24)
	nop
	nop
	nop
	p.sw x24, x24(x24)
	p.lw x25,0(x25)
	nop
	nop
	nop
	p.sw x25, x25(x25)
	p.lw x26,0(x26)
	nop
	nop
	nop
	p.sw x26, x26(x26)
	p.lw x27,0(x27)
	nop
	nop
	nop
	p.sw x27, x27(x27)
	p.lw x28,0(x28)
	nop
	nop
	nop
	p.sw x28, x28(x28)
	p.lw x29,0(x29)
	nop
	nop
	nop
	p.sw x29, x29(x29)
	p.lw x30,0(x30)
	nop
	nop
	nop
	p.sw x30, x30(x30)
	p.lb x1,0(x1!)
	nop
	nop
	nop
	p.sb x1,0(x1!)
	p.lbu x2,0(x2!)
	nop
	nop
	nop
	p.sb x2,0(x2!)
	p.lh x3,0(x3!)
	nop
	nop
	nop
	p.sh x3,0(x3!)
	p.lhu x4,0(x4!)
	nop
	nop
	nop
	p.sh x4,0(x4!)
	p.lb x5,x5(x5)
	nop
	nop
	nop
	p.sb x5,x5(x5)
	p.lbu x6,x6(x6)
	nop
	nop
	nop
	p.sb x6,x6(x6)
	p.lh x7,x7(x7)
	nop
	nop
	nop
	p.sh x7,x7(x7)
	p.lhu x8,x8(x8)
	nop
	nop
	nop
	p.sh x8,x8(x8)



	li x1,0
	li x2,0
	li x3,0
	li x4,0
	li x5,0
	li x6,0
	li x7,0
	li x8,0
	li x9,0
	li x10,0
	li x11,0
	li x12,0
	li x13,0
	li x14,0
	li x15,0
	li x16,0
	li x17,0
	li x18,0
	li x19,0
	li x20,0
	li x21,0
	li x22,0
	li x23,0
	li x24,0
	li x25,0
	li x26,0
	li x27,0
	li x28,0
	li x29,0
	li x30,0
	li x31,0

	GEN_BLOCK_MARCH1_MACPLUS(x1)
	GEN_BLOCK_MARCH1_MACPLUS(x2)
	GEN_BLOCK_MARCH1_MACPLUS(x3)
	GEN_BLOCK_MARCH1_MACPLUS(x4)
	GEN_BLOCK_MARCH1_MACPLUS(x5)
	GEN_BLOCK_MARCH1_MACPLUS(x6)
	GEN_BLOCK_MARCH1_MACPLUS(x7)
	GEN_BLOCK_MARCH1_MACPLUS(x8)
	GEN_BLOCK_MARCH1_MACPLUS(x9)
	GEN_BLOCK_MARCH1_MACPLUS(x10)
	GEN_BLOCK_MARCH1_MACPLUS(x11)
	GEN_BLOCK_MARCH1_MACPLUS(x12)
	GEN_BLOCK_MARCH1_MACPLUS(x13)
	GEN_BLOCK_MARCH1_MACPLUS(x14)
	GEN_BLOCK_MARCH1_MACPLUS(x15)
	GEN_BLOCK_MARCH1_MACPLUS(x16)
	GEN_BLOCK_MARCH1_MACPLUS(x17)
	GEN_BLOCK_MARCH1_MACPLUS(x18)
	GEN_BLOCK_MARCH1_MACPLUS(x19)
	GEN_BLOCK_MARCH1_MACPLUS(x20)
	GEN_BLOCK_MARCH1_MACPLUS(x21)
	GEN_BLOCK_MARCH1_MACPLUS(x22)
	GEN_BLOCK_MARCH1_MACPLUS(x23)
	GEN_BLOCK_MARCH1_MACPLUS(x24)
	GEN_BLOCK_MARCH1_MACPLUS(x25)
	GEN_BLOCK_MARCH1_MACPLUS(x26)
	GEN_BLOCK_MARCH1_MACPLUS(x27)
	GEN_BLOCK_MARCH1_MACPLUS(x28)
	GEN_BLOCK_MARCH1_MACPLUS(x29)
	GEN_BLOCK_MARCH1_MACPLUS(x30)
	GEN_BLOCK_MARCH1_MACPLUS(x31)


	GEN_BLOCK_MARCH2_MACPLUS(x31)
	GEN_BLOCK_MARCH2_MACPLUS(x30)
	GEN_BLOCK_MARCH2_MACPLUS(x29)
	GEN_BLOCK_MARCH2_MACPLUS(x28)
	GEN_BLOCK_MARCH2_MACPLUS(x27)
	GEN_BLOCK_MARCH2_MACPLUS(x26)
	GEN_BLOCK_MARCH2_MACPLUS(x25)
	GEN_BLOCK_MARCH2_MACPLUS(x24)
	GEN_BLOCK_MARCH2_MACPLUS(x23)
	GEN_BLOCK_MARCH2_MACPLUS(x22)
	GEN_BLOCK_MARCH2_MACPLUS(x21)
	GEN_BLOCK_MARCH2_MACPLUS(x20)
	GEN_BLOCK_MARCH2_MACPLUS(x19)
	GEN_BLOCK_MARCH2_MACPLUS(x18)
	GEN_BLOCK_MARCH2_MACPLUS(x17)
	GEN_BLOCK_MARCH2_MACPLUS(x16)
	GEN_BLOCK_MARCH2_MACPLUS(x15)
	GEN_BLOCK_MARCH2_MACPLUS(x14)
	GEN_BLOCK_MARCH2_MACPLUS(x13)
	GEN_BLOCK_MARCH2_MACPLUS(x12)
	GEN_BLOCK_MARCH2_MACPLUS(x11)
	GEN_BLOCK_MARCH2_MACPLUS(x10)
	GEN_BLOCK_MARCH2_MACPLUS(x9)
	GEN_BLOCK_MARCH2_MACPLUS(x8)
	GEN_BLOCK_MARCH2_MACPLUS(x7)
	GEN_BLOCK_MARCH2_MACPLUS(x6)
	GEN_BLOCK_MARCH2_MACPLUS(x5)
	GEN_BLOCK_MARCH2_MACPLUS(x4)
	GEN_BLOCK_MARCH2_MACPLUS(x3)
	GEN_BLOCK_MARCH2_MACPLUS( x2)
	GEN_BLOCK_MARCH2_MACPLUS( x1)

	GEN_BLOCK_RF_LS(  x1,0xFFFFFFFF )
	GEN_BLOCK_RF_LS(  x2,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x3,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x4,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x5,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x6,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x7,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x8,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x9,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x10,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x11,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x12,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x13,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x14,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x15,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x16,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x17,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x18,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x19,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x20,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x21,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x22,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x23,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x24,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x25,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x26,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x27,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x28,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x29,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x30,0xFFFFFFFF)
	GEN_BLOCK_RF_LS(  x31,0xFFFFFFFF)

	GEN_BLOCK_RF_LS(x1,0)
	GEN_BLOCK_RF_LS(x2,0)
	GEN_BLOCK_RF_LS(x3,0)
	GEN_BLOCK_RF_LS(x4,0)
	GEN_BLOCK_RF_LS(x5,0)
	GEN_BLOCK_RF_LS(x6,0)
	GEN_BLOCK_RF_LS(x7,0)
	GEN_BLOCK_RF_LS(x8,0)
	GEN_BLOCK_RF_LS(x9,0)
	GEN_BLOCK_RF_LS(x10,0)
	GEN_BLOCK_RF_LS(x11,0)
	GEN_BLOCK_RF_LS(x12,0)
	GEN_BLOCK_RF_LS(x13,0)
	GEN_BLOCK_RF_LS(x14,0)
	GEN_BLOCK_RF_LS(x15,0)
	GEN_BLOCK_RF_LS(x16,0)
	GEN_BLOCK_RF_LS(x17,0)
	GEN_BLOCK_RF_LS(x18,0)
	GEN_BLOCK_RF_LS(x19,0)
	GEN_BLOCK_RF_LS(x20,0)
	GEN_BLOCK_RF_LS(x21,0)
	GEN_BLOCK_RF_LS(x22,0)
	GEN_BLOCK_RF_LS(x23,0)
	GEN_BLOCK_RF_LS(x24,0)
	GEN_BLOCK_RF_LS(x25,0)
	GEN_BLOCK_RF_LS(x26,0)
	GEN_BLOCK_RF_LS(x27,0)
	GEN_BLOCK_RF_LS(x28,0)
	GEN_BLOCK_RF_LS(x29,0)
	GEN_BLOCK_RF_LS(x30,0)
	GEN_BLOCK_RF_LS(x31,0)	  

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
