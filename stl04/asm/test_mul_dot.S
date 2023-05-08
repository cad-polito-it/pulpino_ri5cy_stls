.global test_mul_dot
.text

test_mul_dot:

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
	xor x6, x6, x6
	xor x3, x3, x3
	lui x8, 0x11111
	ori x8, x8, 0x111
	addi x1, x0, 0x1
	addi x15, x0, 0x3


	lp.setupi x1, 0x10, ext_loop_end

	lp.setupi x0, 0x10, in_loop_end

	mulh x4, x6, x3
	p.mac x5, x6, x3

	p.sw x4, x15(x2!)
	p.sw x5, x15(x2!)

	p.msu x4, x6, x3
	mul x5, x6, x3

	p.sw x4, x15(x2!)
	p.sw x5, x15(x2!)

in_loop_end:
	add x6, x6, x8

ext_loop_end:
	add x3, x3, x8


	lui x2, 0x00104
	xor x6, x6, x6
	xor x3, x3, x3
	lui x8, 0x11111
	ori x8, x8, 0x111
	addi x1, x0, 0x1
	addi x15, x0, 0x3



	lp.setupi x1, 0x10, ext_loop_end2

	lp.setupi x0, 0x10, in_loop_end2

	p.machhuN x7, x6, x3, 1
	pv.dotsp.h x9, x6, x3

	p.sw x7, x15(x2!)
	p.sw x9, x15(x2!)

	pv.dotup.b x7, x6, x3
	pv.sdotusp.sc.b x9, x6, x3

	p.sw x7, x15(x2!)
	p.sw x9, x15(x2!)

in_loop_end2:
	add x6, x6, x8

ext_loop_end2:
	add x3, x3, x8

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
