.global test_hwloop
.text

test_hwloop:
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

	li x31, 0x00000000
	li x25, 0xFFFFFFFF
	li x1,1
	csrw 0x7B0, x31
	csrw 0x7B1, x31
	csrw 0x7B2, x31
	csrw 0x7B4, x31
	csrw 0x7B5, x31
	csrw 0x7B6, x31
	csrrw x1, 0x7B0, x25
	csrrw x2, 0x7B1, x25
	csrrw x3, 0x7B2, x25
	csrrw x4, 0x7B4, x25
	csrrw x5, 0x7B5, x25
	csrrw x6, 0x7B6, x25
	sw x1, 0(x0)
	sw x2, 0(x0)
	sw x3, 0(x0)
	sw x4, 0(x0)
	sw x5, 0(x0)
	sw x6, 0(x0)
	csrr x7, 0x7B0
	csrr x8, 0x7B1
	csrr x9, 0x7B2
	csrr x10, 0x7B4
	csrr x11, 0x7B5
	csrr x12, 0x7B6
	sw x7, 0(x0)
	sw x8, 0(x0)
	sw x9, 0(x0)
	sw x10, 0(x0)
	sw x11, 0(x0)
	sw x12, 0(x0)

	lp.starti x0, HW_loopx0
	lp.endi x0, end_HW_loopx0
	lp.counti x0, 0xF
	csrr x7, 0x7B0
	csrr x8, 0x7B1
	sw x7, 0(x0)
	sw x8, 0(x0)
HW_loopx0: 
	csrr x9, 0x7B2
end_HW_loopx0: 
	sw x9, 0(x0)

	li x2, 10
	lp.starti x1, HW_loopx1
	lp.endi x1, end_HW_loopx1
	lp.count x1, x2
	csrr x7, 0x7B4
	csrr x8, 0x7B5
	nop
	sw x7, 0(x0)
	sw x8, 0(x0)
HW_loopx1:
	csrr x9, 0x7B6
end_HW_loopx1: 
	sw x9, 0(x0)

	li x2, 4
	lp.setup x0, x2, end_HW_loopx0_2
	addi x2,x2, 15
end_HW_loopx0_2: 
	sw x2, 0(x0)

	lp.setupi x0, 31, end_HW_loopx0_3
	addi x2,x2, 15
	nop
end_HW_loopx0_3: 
	sw x2, 0(x0)

	lp.setup x1, x2, end_HW_loopx0_4
	addi x2,x2, 15
end_HW_loopx0_4: 
	sw x2, 0(x0)

	lp.setupi x1, 31, end_HW_loopx0_5
	addi x2,x2, 15
end_HW_loopx0_5: 
	sw x2, 0(x0)

	li x2, 4
	lp.setup x0, x2, end_HW_loopx0_22
	addi x2,x2, 15
	nop
end_HW_loopx0_22: 
	sw x2, 0(x0)

	lp.setupi x0, 4, end_HW_loopx0_33
	addi x2,x2, 15
	nop
	nop
end_HW_loopx0_33: 
	sw x2, 0(x0)

	lp.setup x1, x2, end_HW_loopx0_44
	addi x2,x2, 15
	nop
end_HW_loopx0_44: 
	sw x2, 0(x0)

	lp.setupi x1, 4, end_HW_loopx0_55
	addi x2,x2, 15
	nop
	nop
end_HW_loopx0_55: 
	sw x2, 0(x0)

	li x5, 2
	li x3, 3
	li x2, 0x80000000
	lp.starti x0, HW_loopx05
	lp.endi x0, end_HW_loopx05
	lp.count x0, x2
HW_loopx05: 
	beq x5, x3, endl1
	add x5, x5, 1
	csrr x9, 0x7B2
end_HW_loopx05: 
	sw x9, 0(x0)
endl1:

	li x5, 2
	lp.starti x1, HW_loopx15
	lp.endi x1, end_HW_loopx15
	lp.count x1, x2
HW_loopx15:
	beq x5, x3, endl2
	add x5, x5, 1
	csrr x9, 0x7B6
end_HW_loopx15: 
	sw x9, 0(x0)
endl2:

	li x5, 2
	lp.starti x0, HW_loopx06
	lp.endi x0, end_HW_loopx06
	lp.counti x0, 0x800
HW_loopx06: 
	beq x5, x3, endl16
	add x5, x5, 1
	csrr x9, 0x7B2
end_HW_loopx06: 
	sw x9, 0(x0)
endl16:

	li x5, 2
	lp.starti x1, HW_loopx16
	lp.endi x1, end_HW_loopx16
	lp.counti x1, 0x800
	HW_loopx16:
	beq x5, x3, endl26
	add x5, x5, 1
	csrr x9, 0x7B6
end_HW_loopx16: 
	sw x9, 0(x0)
endl26:

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

