.global test_forwarding_stall_jumps
.text

test_forwarding_stall_jumps:
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

	li x2, 0xFFFFFFFF
	csrw 0x000, x2
	csrr x10, 0x000
	sw x10, 0(x0)
	csrw 0x300, x2
	csrr x10, 0x300
	sw x10, 0(x0)
	li x4, 20
	sw x4, 0(x0)
	sw x4, 0(x0)
	sw x4, 0(x0)
	sw x4, 0(x0)
	lw x12, 0(x0)
	add x12, x12, x12
	sw x12, 0(x0)
	sw x12, 0(x0)
	sw x12, 0(x0)
	sw x12, 0(x0)
	jal jump_al
	li x7, 30
	nop
jump_al: 
	li x6, 0
	li x8, JALR_JUMP
	jalr x8
	li x6,0xFFFFFFFF
JALR_JUMP: 
	sw x6, 0(x0)
	li x6, 0xFFFFFFFF
	li x9, JALR_JUMP2
	jalr x9
	li x6,0
JALR_JUMP2: 
	sw x6, 0(x0)
	li x2, 0xFFFFFFFF
	csrw 0x00, x2
	csrr x10, 0x00
	sw x10, 0(x0)
	sw x10, 0(x0)
	sw x10, 0(x0)
	li x9, 0xFF
	mv x2, x9
	sw x2, 0(x0)
	csrw 0x00, 0x00000000
	csrr x10, 0x00
	sw x10, 0(x0)
	sw x10, 0(x0)
	sw x10, 0(x0)
	li x2, 0xFFFFFFFF
	csrw 0x04, x2
	csrr x10, 0x04
	sw x10, 0(x0)
	li x2, 0
	csrw 0x04, x2
	csrr x10, 0x04
	sw x10, 0(x0)
	li x2, 0xFFFFFFFF
	csrw 0x08, x2
	csrr x10, 0x08
	sw x10, 0(x0)
	li x2, 0
	csrw 0x08, x2
	csrr x10, 0x08
	sw x10, 0(x0)
BNEIMM_JUMP: 
	li x4, 0xFFF
	sw x4, 0(x0)
	li x4, 10
	p.beqimm x4, 10, BEQIMM_JUMP
	li x4, 0xFFF
BEQIMM_JUMP:
	sw x4, 0(x0)
	p.bneimm x4, 10, BNEIMM_JUMP
	sw x4, 0(x0)
	li x5, 20
	li x4, 10
	blt x4, x5, BLT_JUMP
	li x4, 0xFFFF
BLT_JUMP:
	sw x4, 0(x0)
	bge x5, x4, BGE_JUMP
	li x4, 0xFFFF
BGE_JUMP:
	sw x4, 0(x0)
	addi x1, x0, 1
	addi x2, x1, 2
	addi x3, x1, 11	
	addi x4, x1, 125
	addi x5, x1, 89
	add  x6, x1, x1
	add  x7, x6, x6
	add  x8, x6, x6	
	add  x9, x6, x6	
	add  x10, x4, x6
	sw x10, 4(x1)
	sw x10, 7(x1)
	sw x10, 11(x1)
	lw x11, 11(x1)
	lw x12, 11(x1)	
	lw x13, 11(x1)	
	sw x13, 12(x1)	
	add  x14, x6, x6
	lw x14, 11(x1)	
	add  x15, x6, x14
	add  x16, x6, x14
	add  x16, x6, x14
	lw x2, 4(x1)
	sw x18, 0(x31)
	sw x17, 0(x31)
	sw x6, 0(x31)
	sw x3, 0(x31)
	sw x7, 0(x31)
	sw x5, 0(x31)
	sw x15, 0(x31)
	sw x16, 0(x31)
	sw x14, 0(x31)

	addi x1, x0, 1
	addi x2, x1, 2
	addi x3, x2, 9
	addi x4, x3, 52
	sw x4, 4(x1)	
	lw x2, 4(x1)
	sw x2, 20(x1) 
	lw x2, 4(x2)
	lw x2, 4(x1)	
	addi x5, x2, 10
	addi x6, x2, 10
	addi x7, x2, 10
	sw x2, 0(x31)
	sw x3, 0(x31)
	sw x4, 0(x31)
	sw x5, 0(x31)
	sw x6, 0(x31)
	sw x7, 0(x31)

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

