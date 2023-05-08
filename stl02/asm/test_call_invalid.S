.global test_call_invalid
.text

test_call_invalid: 

	# ABI prologue
	addi sp, sp, -112     # allocate 112 bytes on the stack
	sw x1, 104(sp)        # save return address
	sw x9, 96(sp)         # save callee-saved registers
	sw x10, 88(sp)
	#sw x18, 80(sp)
	#sw x19, 72(sp)
	sw x20, 64(sp)
	#sw x21, 56(sp)
	#sw x22, 48(sp)
	#sw x23, 40(sp)
	#sw x24, 32(sp)
	#sw x25, 24(sp)
	#sw x26, 16(sp)
	sw x27, 8(sp)
	addi s0, sp, 112     # set up s0 to point to start of stack frame
	li t0, 0x00104000    # save stack pointer
	sw sp, 0(t0)


	li x3, 10
	li x28, 0xFFFFFFFF
	li x29, 0xFFFFFFFF
	csrrw x0, 0x305, x0
	csrr x30, 0x305
	addi x30,x30, 0x88
	li x20, ecall_insn_handler
	slli x20,x20, 20
	li x10, 0x1F00
	slli x10,x10,7
	add x20,x20,x10
	add x20,x20, 0x67
	sw x20, 0(x30)
	csrw 0x38D, x20
	li x10, return
	csrw 0x341, x10
	li x1, 1
	ecall
return:
	li x28, 0
	li x29, 0
	nop
	j end_call
	li x27, 0xFFFFFFFF
	sw x27, 0(x0)
loop1:
	j loop1

ecall_insn_handler:
	sw x28, 0(x0)
	sw x29, 0(x0)
	li x30, 0xFFFFFFFF
	add x1,x1,1
	li x2, 4
	beq x1,x2, return
	mret

end_call:

	li x28, 0xFFFFFFFF
	li x29, 0xFFFFFFFF

	csrrw x0, 0x305, x0
	csrr x30, 0x305
	addi x30,x30, 0x84
	li x20, fault_instr_insn_handler
	slli x20,x20, 20
	li x10, 0x1F00
	slli x10,x10,7
	add x20,x20,x10
	add x20,x20, 0x67
	sw x20, 0(x30)
	csrw 0x38D, x20
	.word 0xFFFFFFFF
	sw x28, 0(x0)
	sw x29, 0(x0)
loop2:
	j loop2

fault_instr_insn_handler:
	li x28, 0x0
	li x29, 0x0
	sw x28, 0(x0)
	sw x29, 0(x0)
	li x30, 0xFFFFFFFF
	j finish_int

finish_int:

	# ABI epilogue
	li t0, 0x00104000    # restore stack pointer
	lw sp, 0(t0)
	lw x27, 8(sp)        # restore callee-saved registers
	#lw x26, 16(sp)
	#lw x25, 24(sp)
	#lw x24, 32(sp)
	#lw x23, 40(sp)
	#lw x22, 48(sp)
	#lw x21, 56(sp)
	lw x20, 64(sp)
	#lw x19, 72(sp)
	#lw x18, 80(sp)
	lw x10, 88(sp)
	lw x9, 96(sp)
	lw x1, 104(sp)       # restore return address
	addi sp, sp, 112     # deallocate stack space
	jr ra                # return to caller
