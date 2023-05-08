
#include "asm_utils.h"


.global test_compressed
.text

test_compressed:  
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

	li x11, 0x00100100
	li x14, 3
	li x9, 0xFFFFFFFF
	li x13, 0xFFFFFFFF
	li x15, 0xCCCCCCCCC
	li x12, 0
	sw x0, 4(x11)
.option rvc
	c.li x10, 1
	c.add x10, x9
	c.sw x10, 0(x11)
	c.addi x10, 1
	c.sw x10, 0(x11)
	c.addi16sp sp, 0x20
	c.nop
	c.nop
.option norvc
	sw sp, 0(x11)
.option rvc
	c.addi4spn x10, sp, 0x20
	c.sw x10, 0(x11)
	c.mv x12, x10
	c.sw x12, 0(x11)
	c.sub x10, x9
	c.sw x10, 0(x11)
	c.andi x9, 15
	c.sw x9, 0(x11)
	c.li x9, 1
	c.xor x9, x13
	c.sw x9, 0(x11)
	c.or x9, x13
	c.sw x9, 0(x11)
	c.and x9, x13
	c.sw x9, 0(x11)
	c.srai x15, 5
	c.sw x15, 0(x11)
	c.slli x15, 7
	c.sw x15, 0(x11)
	c.beqz x15, neveer2
	c.addi x8, 1
neveer2:
	c.sw x8, 0(x11)
	c.lw x12, 4(x11)
	c.sw x12, 0(x11)
	c.bnez x12, neveer2
	c.lwsp x2, 0(sp)
	c.swsp x12, 0(sp)
	c.lwsp x12, 0(sp)
	c.swsp x2, 0(sp)
	c.ebreak
.option norvc
	GEN_BLOCK_J(c.j, 1)
	GEN_BLOCK_J(c.jal, 0)
	GEN_BLOCK_JR(c.jr, 1)
	GEN_BLOCK_JR(c.jalr, 0)
	addi x1, x1, 1
helper_error:
	sw x1, 0x(x11)

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


