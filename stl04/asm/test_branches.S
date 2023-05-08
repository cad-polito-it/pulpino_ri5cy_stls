.global test_branches
.text

test_branches:

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

	lui x2, 0x00104

	addi x1, x0, 0x0
	lui x3, 0x00FF0
	ori x3, x3, 0x0FF
	addi x4, x0, 0x2
	addi x5, x0, 0x3
	addi x6, x0, 0x6
	addi x7, x0, -1
	addi x8, x0, -1

cmp_1:
	bne x1, x3, j_bne

cmp_2:
	beq x1, x0, j_beq

cmp_3:
	blt x4, x5, j_blt

cmp_4:
	bge x6, x5, j_bge

cmp_5:
	bltu x6, x7, j_bltu

cmp_6:
	bgeu x7, x8, j_bgeu
	jal x31, continue


j_bne:
	jal x31, cmp_2

j_beq:
	jal x31, cmp_3

j_blt:
	jal x31, cmp_4

j_bge:
	jal x31, cmp_5

j_bltu:
	jal x31, cmp_6

j_bgeu:
	addi x1, x0, 0x1
	addi x3, x0, 0x1
	addi x4, x0, 0x0FF
	addi x5, x0, 0x3
	addi x6, x0, 0x2
	addi x7, x0, 0x1
	addi x8, x0, 0x2
	jal x31, cmp_1

continue:
	nop
	nop
	nop
	nop

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
