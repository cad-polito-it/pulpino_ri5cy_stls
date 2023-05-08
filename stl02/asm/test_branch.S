.global test_branch
.text

test_branch:
	# ABI prologue
	addi sp, sp, -112     # allocate 112 bytes on the stack
	sw x1, 104(sp)        # save return address
	#sw x9, 96(sp)         # save callee-saved registers
	#sw x10, 88(sp)
	#sw x18, 80(sp)
	#sw x19, 72(sp)
	#sw x20, 64(sp)
	#sw x21, 56(sp)
	#sw x22, 48(sp)
	#sw x23, 40(sp)
	#sw x24, 32(sp)
	#sw x25, 24(sp)
	#sw x26, 16(sp)
	#sw x27, 8(sp)
	addi s0, sp, 112     # set up s0 to point to start of stack frame
	li t0, 0x00104000    # save stack pointer
	sw sp, 0(t0)

	li x3, 0
	li x1, 1
	li x2, 0xFFFFFFFF
	beqz x1, neveer
	bnez x0, neveer
	blez x1, neveer
	bgez x2, neveer
	bltz x0, neveer
	bgtz x0, neveer
	bgt  x2, x1, neveer
	ble  x1, x2, neveer
	bgtu x1, x2, neveer
	bleu x2, x1, neveer
	bne x2, x2, neveer
	addi x3, x3, 1
neveer:
	beqz x1, neveer
	bnez x0, neveer
	blez x1, neveer
	bgez x2, neveer
	bltz x0, neveer
	bgtz x0, neveer
	bgt  x2, x1, neveer
	ble  x1, x2, neveer
	bgtu x1, x2, neveer
	bleu x2, x1, neveer
	bne x2, x2, neveer
	addi x3, x3, 1
	beqz x0, take1
	addi x3, x3, 1
take1: 
	bnez x0, take2
	addi x3, x3, 1
take2: 
	blez x2, take3
	addi x3, x3, 1
take3: 
	blez x0, take4
	addi x3, x3, 1
take4: 
	bgez x1, take5
	addi x3, x3, 1
take5: 
	bgez x0, take6
	addi x3, x3, 1
take6: 
	bgtz x1, take7
	addi x3, x3, 1
take7: 
	bltz x2, take8
	addi x3, x3, 1
take8: 
	bgt  x1, x2, take9
	addi x3, x3, 1
take9: 
	ble  x2, x1, take10
	addi x3, x3, 1
take10: 
	ble  x2, x2, take11
	addi x3, x3, 1
take11: 
	bgtu x2, x1, take12
	addi x3, x3, 1
take12: 
	bleu x1, x2, take13
	addi x3, x3, 1
take13: 
	bleu x2, x2, take14
	addi x3, x3, 1
take14: 
	bne x2, x1, take15
	addi x3, x3, 1
take15:
	sw x3, 0(x31)

	# ABI epilogue
	li t0, 0x00104000    # restore stack pointer
	lw sp, 0(t0)
	#lw x27, 8(sp)        # restore callee-saved registers
	#lw x26, 16(sp)
	#lw x25, 24(sp)
	#lw x24, 32(sp)
	#lw x23, 40(sp)
	#lw x22, 48(sp)
	#lw x21, 56(sp)
	#lw x20, 64(sp)
	#lw x19, 72(sp)
	#lw x18, 80(sp)
	#lw x10, 88(sp)
	#lw x9, 96(sp)
	lw x1, 104(sp)       # restore return address
	addi sp, sp, 112     # deallocate stack space
	jr ra                # return to caller
