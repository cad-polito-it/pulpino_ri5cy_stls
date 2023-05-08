.global test_ls
.text

test_ls:

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
	li t0, 0x00102000    # save stack pointer
	sw sp, 0(t0)

	lui x2, 0x00104

	xor x1, x1, x1
	xor x3, x3, x3
	xori x3, x3, -1
	p.sw x1, 1(x2!)
	p.sw x3, 1(x2!)

	lui x1, 0xFFFF0
	lui x3, 0xFFFF0
	xori x3, x3, -1
	p.sw x1, 1(x2!)
	p.sw x3, 1(x2!)

	 
	lui x1, 0x00FF0
	ori x1, x1, 0x0FF
	lui x3, 0x00FF0
	ori x3, x1, 0x0FF
	xori x3, x3, -1
	p.sw x1, 1(x2!)
	p.sw x3, 1(x2!)


	lui x1, 0xF0F0F
	ori x1, x1, 0x0F0
	lui x3, 0xF0F0F
	ori x3, x3, 0x0F0
	xori x3, x3, -1
	p.sw x1, 1(x2!)
	p.sw x3, 1(x2!)

	lui x1, 0x33333
	ori x1, x1, 0x333
	lui x3, 0x33333
	ori x3, x3, 0x333
	xori x3, x3, -1
	p.sw x1, 1(x2!)
	p.sw x3, 1(x2!)


	lui x1, 0x55555
	ori x1, x1, 0x555
	lui x3, 0x55555
	ori x3, x3, 0x555
	xori x3, x3, -1
	p.sw x1, 1(x2!)
	p.sw x3, 1(x2!)


	lui x2, 0x00104
	lui x1, 0x00100


	lp.setupi x0, 0xC, ext_loop_end6

	p.lw x31, 1(x2!)
	pv.dotup.h x3, x31, x30 
	mulhsu x4, x31, x30

	lhu x30, 0(x2)
	pv.dotsp.b x5, x31, x30
	mulhu x6, x31, x30

	p.sw x3, 0(x1)
	p.sw x4, 1(x1)
	p.sw x5, 2(x1)
	p.sw x5, 3(x1)

	p.sb x3, 0(x1)
	p.sb x4, 1(x1)
	p.sb x5, 2(x1)
	p.sb x5, 3(x1)


ext_loop_end6:

	lui x1, 0x00000
	lui x3, 0xFFFFF
	ori x3, x3, 0x0FF
	sll x3, x3, 4
	ori x3, x3, 0x0FF

	sw x0, 0(x1)
	nop
	nop
	nop
	sw x3, 0(x3)

	lw x5, 0(x1)
	nop
	nop
	nop
	lw x6, 0(x3)

	lui x3, 0x33333
	ori x3, x3, 0x333

	sw x3, 0(x3)
	lw x6, 0(x3)

	# ABI epilogue
	li t0, 0x00102000    # restore stack pointer
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
