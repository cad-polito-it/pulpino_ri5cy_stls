.global test_alu
.text

test_alu:

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

	##################
	# DIVISOR
	##################


	lui x2, 0x00104
	xor x6, x6, x6
	xor x3, x3, x3
	lui x8, 0x11111
	ori x8, x8, 0x111
	addi x1, x0, 0x1
	addi x15, x0, 0x3

	# patterns t2

	lp.setupi x1, 0x10, alu_loop1_end

	lp.setupi x0, 0x10, alu_loop2_end

	div x4, x6, x3
	remu x5, x6, x3

	p.sw x4, x15(x2!)
	p.sw x5, x15(x2!)

	divu x4, x6, x3
	rem x5, x6, x3

	p.sw x4, x15(x2!)
	p.sw x5, x15(x2!)

alu_loop2_end:
	add x6, x6, x8

alu_loop1_end:
	add x3, x3, x8


	###########
	# LOGIC
	###########
	lui x2, 0x00104
	xor x7, x7, x7
	xor x9, x9, x9
	lui x10, 0x11111
	ori x10, x10, 0x111
	addi x1, x0, 0x1
	addi x16, x0, 0x2

	lp.setupi x1, 0x10, alu_loop3_end

	lp.setupi x0, 0x10, alu_loop4_end

	AND x11, x7, x9
	OR x12, x7, x9

	p.sw x11, x16(x2!)
	p.sw x12, x16(x2!)

	XOR x11, x7, x9
	pv.shuffle2.b x12, x7, x9

	p.sw x11, x16(x2!)
	p.sw x12, x16(x2!)

alu_loop3_end:
	add x7, x7, x10

alu_loop4_end:
	add x9, x9, x10


	###########
	# SHIFTER
	###########
	lui x2, 0x00104
	xor x13, x13, x13
	xor x14, x14, x14
	lui x15, 0x11111
	ori x15, x15, 0x111
	addi x1, x0, 0x1
	addi x18, x0, 0x5

	lp.setupi x1, 0x10, alu_loop5_end

	lp.setupi x0, 0x10, alu_loop6_end

	SLL x20, x13, x14
	SRL x21, x13, x14

	p.sw x20, x18(x2!)
	p.sw x21, x18(x2!)

	p.ror x20, x13, x14
	p.subNr x21, x13, x14

	p.sw x20, x18(x2!)
	p.sw x21, x18(x2!)

alu_loop6_end:
	add x13, x13, x15

alu_loop5_end:
	add x14, x14, x15


	###########
	# COMPARATOR
	###########

	lui x2, 0x00104
	xor x22, x22, x22
	xor x25, x25, x25
	lui x23, 0x11111
	ori x23, x23, 0x111
	addi x1, x0, 0x1
	addi x24, x0, 0x7

	lp.setupi x1, 0x10, alu_loop7_end

	lp.setupi x0, 0x10, alu_loop8_end

	SLT x26, x25, x22
	p.maxu x27, x25, x22

	p.sw x26, x24(x2!)
	p.sw x27, x24(x2!)

	p.clipr x26, x25, x22
	pv.cmpge.sc.h x27, x25, x22

	p.sw x26, x24(x2!)
	p.sw x27, x24(x2!)

alu_loop8_end:
	add x25, x25, x23

alu_loop7_end:
	add x22, x22, x23


	###########
	# VARIOUS
	###########

	lui x2, 0x00104
	xor x28, x28, x28
	xor x29, x29, x29
	lui x23, 0x11111
	ori x23, x23, 0x111
	addi x1, x0, 0x1
	addi x24, x0, 0x11

	lp.setupi x1, 0x10, alu_loop9_end

	lp.setupi x0, 0x10, alu_loop10_end

	p.subRN x30, x28, x29, 3
	pv.add.b x31, x28, x29

	p.sw x30, x24(x2!)
	p.sw x31, x24(x2!)

	p.insertr x30, x28, x29
	pv.avgu.sc.b x31, x28, x29

	p.sw x30, x24(x2!)
	p.sw x31, x24(x2!)

alu_loop10_end:
	add x28, x28, x23

alu_loop9_end:
	add x29, x29, x23

	###########
	# SINGLE OPERATOR
	###########

	lui x31, 0x00104
	xor x2, x2, x2
	lui x23, 0x11111
	ori x23, x23, 0x111
	addi x24, x0, 0x1



	lp.setupi x0, 0x10, alu_loop11_end

	p.cnt x10, x2
	p.abs x11, x2
	p.extractu x12, x2, 5, 7
	p.bset x13, x2, 3, 11
	p.fl1 x14, x2
	p.clb x15, x2


	p.sw x10, x24(x2!)
	p.sw x11, x24(x2!)
	p.sw x12, x24(x2!)
	p.sw x13, x24(x2!)
	p.sw x14, x24(x2!)
	p.sw x15, x24(x2!)

alu_loop11_end:
	add x2, x2, x23

	################
	# COMPRESSED
	################
	nop
	.option rvc
	c.addi x3, 12
	c.addi x2, 16 
	c.slli x2, 4
	.option norvc
	nop

	lui x1, 0x00104
	p.sw x3, 1(x1!)
	p.sw x2, 1(x1!)



	###########
	# SINGLE OPERATOR 2
	###########



	lui x31, 0x00104
	xor x2, x2, x2
	lui x23, 0x11111
	ori x23, x23, 0x111
	addi x24, x0, 0x1



	lp.setupi x0, 0x10, alu_loop31_end

	p.exths x10, x2
	p.extbz x11, x2
	p.clipu x12, x2, 5
	p.bclr x13, x2, 3, 11
	p.ff1 x14, x2
	p.clb x15, x2


	p.sw x10, x24(x2!)
	p.sw x11, x24(x2!)
	p.sw x12, x24(x2!)
	p.sw x13, x24(x2!)
	p.sw x14, x24(x2!)
	p.sw x15, x24(x2!)

alu_loop31_end:
	add x2, x2, x23



	##################
	# DIVISOR
	##################


	lui x11, 0x00104
	xor x8, x8, x8
	xor x12, x12, x12
	lui x4, 0x10101
	ori x4, x4, 0x010
	addi x1, x0, 0x1
	addi x15, x0, 0x4

	# patterns t2

	lp.setupi x1, 0x10, alu_loop21_end

	lp.setupi x0, 0x10, alu_loop20_end



	divu x6, x8, x12
	rem x5, x8, x12
	div x5, x8, x12
	remu x6, x8, x12

	p.sw x6, x15(x11!)
	p.sw x5, x15(x11!)
	p.sw x6, x15(x11!)
	p.sw x5, x15(x11!)

alu_loop20_end:
	add x12, x12, x4

alu_loop21_end:
	add x8, x8, x4

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

