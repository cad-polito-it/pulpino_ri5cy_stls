.global test_exceptions
.text

test_exceptions:
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

	li x3, 0xFFFFFFFF
	li x4, 0x0000FFFF
	div x30, x3,x4
	add x30,x30,x30
	sub x30,x30,x30
	mul x30, x30,x30
	sw x30,0(x0)

	li x31, 0x00100100
	li x3, 7
	p.sw x3, x3(x3)
	p.sw x3, x3(x31!)
	p.sw x3, x3(x31!)
	p.sw x3, x3(x31!)
	sw x31, 0(x31)
	lw x2, 0(x31)
	sw x2, 0(x31)
	li x1, 1
	beq x1, x0, mai
	beq x1, x0, mai
	beq x1, x0, mai
mai:
	beq x0, x1, mai
	beq x0, x1, mai
	beq x0, x1, mai
	p.mac x1, x2, x3
	p.mac x1, x1, x1
	sw x1, 0(x0)

	p.mac x1, x2, x3
	nop
	p.mac x1, x1, x1
	nop
	sw x1, 0(x0)

	p.mac x1, x2, x3
	nop
	nop
	p.mac x1, x1, x1
	nop
	nop
	sw x1, 0(x0)

	lw x3, 0x(x31)
	p.mac x1, x2, x3
	nop
	nop
	nop
	p.mac x1, x1, x1
	nop
	nop
	nop
	sw x1, 0(x0)

	lw x2, 0x(x31)
	p.mac x1, x2, x3
	nop
	nop
	nop
	nop
	p.mac x1, x1, x1
	nop
	nop
	nop
	nop
	sw x1, 0(x0)
	li x31, 0x00100100
	LUI x1, 0xFFFFF
	sw x1, 0(x31)
	LUI x1, 0
	sw x1, 0(x31)
	la x13, WFI_PPC_1
	la x14, WFI_NPC_1
	la x15, WFI_NPC_2
	ebreak
WFI_PPC_1: 
	wfi
WFI_NPC_1: 
	addi x14, x13, 1
WFI_NPC_2: 
	addi x15, x13, 2

	la x13,     before_ill
	li x14,     0x84
	la x15,     after_ill
	nop
before_ill:
after_ill:  
	nop
	wfi
	call pippo
	call pippo
	addi x3, x3, 5
	call pippo
	j npippo
	pippo:
	addi x3, x3, 1
	ret
	ret
	ret
npippo:
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

