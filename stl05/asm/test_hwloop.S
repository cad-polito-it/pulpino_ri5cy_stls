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

	lui x31, 256
	addi x5, x0, 1
	sub x6, x0, x5
	xor x3, x3, x3
	//srli x6, x6, 30

	nop
	lp.starti x1, abl1s
	lp.count x1, x6
	lp.endi x1, abl1e
	lp.starti x0, abl0s
	lp.count x0, x6
	lp.endi x0, abl0e
abl1s:
	nop
abl0s:
	nop
	nop
	nop
	nop
	j endabl
	nop

abl0e: 
	nop
abl1e:
	nop
endabl:
	csrr x9, 0x7B0
	p.sw x9, 0(x31)
	csrr x9, 0x7B1
	p.sw x9, 0(x31)
	csrr x9, 0x7B2
	p.sw x9, 0(x31)
	csrr x9, 0x7B4
	p.sw x9, 0(x31)
	csrr x9, 0x7B5
	p.sw x9, 0(x31)
	csrr x9, 0x7B6
	p.sw x9, 0(x31)
	nop

	xor x6, x6, x6
	nop
	lp.starti x1, abl1s2
	lp.count x1, x6
	lp.endi x1, abl1e2
	lp.starti x0, abl0s2
	lp.count x0, x6
	lp.endi x0, abl0e2
abl1s2:
	nop
abl0s2:
	nop
	nop
	nop
	nop
	j endabl2
	nop

abl0e2: 
	nop
abl1e2:
	nop
endabl2:
	csrr x9, 0x7B0
	p.sw x9, 0(x31)
	csrr x9, 0x7B1
	p.sw x9, 0(x31)
	csrr x9, 0x7B2
	p.sw x9, 0(x31)
	csrr x9, 0x7B4
	p.sw x9, 0(x31)
	csrr x9, 0x7B5
	p.sw x9, 0(x31)
	csrr x9, 0x7B6
	p.sw x9, 0(x31)

	nop

	addi x6, x6, 0
	lp.setup x0, x6, ablsh1
	csrr x9, 0x7B0
	p.sw x9, 0(x31)
	csrr x9, 0x7B1
	p.sw x9, 0(x31)
	csrr x9, 0x7B2
	p.sw x9, 0(x31)
	csrr x9, 0x7B4
	p.sw x9, 0(x31)
	csrr x9, 0x7B5
	p.sw x9, 0(x31)
	csrr x9, 0x7B6
	p.sw x9, 0(x31)
	j xxx1
ablsh1:
	nop
	nop
xxx1:
	nop

	addi x6, x6, 0
	lp.setup x1, x6, ablsh2
	csrr x9, 0x7B0
	p.sw x9, 0(x31)
	csrr x9, 0x7B1
	p.sw x9, 0(x31)
	csrr x9, 0x7B2
	p.sw x9, 0(x31)
	csrr x9, 0x7B4
	p.sw x9, 0(x31)
	csrr x9, 0x7B5
	p.sw x9, 0(x31)
	csrr x9, 0x7B6
	p.sw x9, 0(x31)
	j xxx2
ablsh2:
	nop
	nop
xxx2:
	nop

	sub x6, x0, x5
	lp.setup x0, x6, ablsh3
	csrr x9, 0x7B0
	p.sw x9, 0(x31)
	csrr x9, 0x7B1
	p.sw x9, 0(x31)
	csrr x9, 0x7B2
	p.sw x9, 0(x31)
	csrr x9, 0x7B4
	p.sw x9, 0(x31)
	csrr x9, 0x7B5
	p.sw x9, 0(x31)
	csrr x9, 0x7B6
	p.sw x9, 0(x31)
	j xxx3
ablsh3:
	nop
	nop
xxx3:
	nop


	sub x6, x0, x5
	lp.setup x1, x6, ablsh4
	csrr x9, 0x7B0
	p.sw x9, 0(x31)
	csrr x9, 0x7B1
	p.sw x9, 0(x31)
	csrr x9, 0x7B2
	p.sw x9, 0(x31)
	csrr x9, 0x7B4
	p.sw x9, 0(x31)
	csrr x9, 0x7B5
	p.sw x9, 0(x31)
	csrr x9, 0x7B6
	p.sw x9, 0(x31)
	j xxx4
ablsh4:
	nop
	nop
xxx4:
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


