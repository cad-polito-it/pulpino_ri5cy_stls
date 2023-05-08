
.global test_rf
.text

test_rf:

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
	addi x4, x0, 0x001

	###################
	# x1 and x3
	###################

	xor x1, x1, x1
	xor x3, x3, x3
	p.sw x1, x4(x2!)
	p.sw x3, x4(x2!)
	xori x1, x1, -1
	xori x3, x3, -1
	p.sw x1, x4(x2!)
	p.sw x3, x4(x2!)

	lui x1, 0xFFFF0
	lui x3, 0xFFFF0
	p.sw x1, x4(x2!)
	p.sw x3, x4(x2!)
	xori x1, x1, -1
	xori x3, x3, -1
	p.sw x1, x4(x2!)
	p.sw x3, x4(x2!)

	 
	lui x1, 0x00FF0
	ori x1, x1, 0x0FF
	lui x3, 0x00FF0
	ori x3, x1, 0x0FF
	p.sw x1, x4(x2!)
	p.sw x3, x4(x2!)
	xori x1, x1, -1
	xori x3, x3, -1
	p.sw x1, x4(x2!)
	p.sw x3, x4(x2!)


	lui x1, 0xF0F0F
	ori x1, x1, 0x0F0
	lui x3, 0xF0F0F
	ori x3, x3, 0x0F0
	p.sw x1, x4(x2!)
	p.sw x3, x4(x2!)
	xori x1, x1, -1
	xori x3, x3, -1
	p.sw x1, x4(x2!)
	p.sw x3, x4(x2!)

	lui x1, 0x33333
	ori x1, x1, 0x333
	lui x3, 0x33333
	ori x3, x3, 0x333
	p.sw x1, x4(x2!)
	p.sw x3, x4(x2!)
	xori x1, x1, -1
	xori x3, x3, -1
	p.sw x1, x4(x2!)
	p.sw x3, x4(x2!)


	lui x1, 0x55555
	ori x1, x1, 0x555
	lui x3, 0x55555
	ori x3, x3, 0x555
	p.sw x1, x4(x2!)
	p.sw x3, x4(x2!)
	xori x1, x1, -1
	xori x3, x3, -1
	p.sw x1, x4(x2!)
	p.sw x3, x4(x2!)

	###################
	# x5 and x6
	###################

	xor x5, x5, x5
	xor x6, x6, x6
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)
	xori x5, x5, -1
	xori x6, x6, -1
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)

	lui x5, 0xFFFF0
	lui x6, 0xFFFF0
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)
	xori x5, x5, -1
	xori x6, x6, -1
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)

	 
	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	lui x6, 0x00FF0
	ori x6, x5, 0x0FF
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)
	xori x5, x5, -1
	xori x6, x6, -1
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)


	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	lui x6, 0xF0F0F
	ori x6, x6, 0x0F0
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)
	xori x5, x5, -1
	xori x6, x6, -1
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)

	lui x5, 0x33333
	ori x5, x5, 0x333
	lui x6, 0x33333
	ori x6, x6, 0x333
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)
	xori x5, x5, -1
	xori x6, x6, -1
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)


	lui x5, 0x55555
	ori x5, x5, 0x555
	lui x6, 0x55555
	ori x6, x6, 0x555
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)
	xori x5, x5, -1
	xori x6, x6, -1
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)

	###################
	# x5 and x6
	###################

	xor x5, x5, x5
	xor x6, x6, x6
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)
	xori x5, x5, -1
	xori x6, x6, -1
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)

	lui x5, 0xFFFF0
	lui x6, 0xFFFF0
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)
	xori x5, x5, -1
	xori x6, x6, -1
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)

	 
	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	lui x6, 0x00FF0
	ori x6, x5, 0x0FF
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)
	xori x5, x5, -1
	xori x6, x6, -1
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)


	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	lui x6, 0xF0F0F
	ori x6, x6, 0x0F0
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)
	xori x5, x5, -1
	xori x6, x6, -1
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)

	lui x5, 0x33333
	ori x5, x5, 0x333
	lui x6, 0x33333
	ori x6, x6, 0x333
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)
	xori x5, x5, -1
	xori x6, x6, -1
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)


	lui x5, 0x55555
	ori x5, x5, 0x555
	lui x6, 0x55555
	ori x6, x6, 0x555
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)
	xori x5, x5, -1
	xori x6, x6, -1
	p.sw x5, x4(x2!)
	p.sw x6, x4(x2!)

	###################
	# x7 and x8
	###################

	xor x7, x7, x7
	xor x8, x8, x8
	p.sw x7, x4(x2!)
	p.sw x8, x4(x2!)
	xori x7, x7, -1
	xori x8, x8, -1
	p.sw x7, x4(x2!)
	p.sw x8, x4(x2!)

	lui x7, 0xFFFF0
	lui x8, 0xFFFF0
	p.sw x7, x4(x2!)
	p.sw x8, x4(x2!)
	xori x7, x7, -1
	xori x8, x8, -1
	p.sw x7, x4(x2!)
	p.sw x8, x4(x2!)

	 
	lui x7, 0x00FF0
	ori x7, x7, 0x0FF
	lui x8, 0x00FF0
	ori x8, x7, 0x0FF
	p.sw x7, x4(x2!)
	p.sw x8, x4(x2!)
	xori x7, x7, -1
	xori x8, x8, -1
	p.sw x7, x4(x2!)
	p.sw x8, x4(x2!)


	lui x7, 0xF0F0F
	ori x7, x7, 0x0F0
	lui x8, 0xF0F0F
	ori x8, x8, 0x0F0
	p.sw x7, x4(x2!)
	p.sw x8, x4(x2!)
	xori x7, x7, -1
	xori x8, x8, -1
	p.sw x7, x4(x2!)
	p.sw x8, x4(x2!)

	lui x7, 0x33333
	ori x7, x7, 0x333
	lui x8, 0x33333
	ori x8, x8, 0x333
	p.sw x7, x4(x2!)
	p.sw x8, x4(x2!)
	xori x7, x7, -1
	xori x8, x8, -1
	p.sw x7, x4(x2!)
	p.sw x8, x4(x2!)


	lui x7, 0x55555
	ori x7, x7, 0x555
	lui x8, 0x55555
	ori x8, x8, 0x555
	p.sw x7, x4(x2!)
	p.sw x8, x4(x2!)
	xori x7, x7, -1
	xori x8, x8, -1
	p.sw x7, x4(x2!)
	p.sw x8, x4(x2!)

	###################
	# x9 and x10
	###################

	xor x9, x9, x9
	xor x10, x10, x10
	p.sw x9, x4(x2!)
	p.sw x10, x4(x2!)
	xori x9, x9, -1
	xori x10, x10, -1
	p.sw x9, x4(x2!)
	p.sw x10, x4(x2!)

	lui x9, 0xFFFF0
	lui x10, 0xFFFF0
	p.sw x9, x4(x2!)
	p.sw x10, x4(x2!)
	xori x9, x9, -1
	xori x10, x10, -1
	p.sw x9, x4(x2!)
	p.sw x10, x4(x2!)

	 
	lui x9, 0x00FF0
	ori x9, x9, 0x0FF
	lui x10, 0x00FF0
	ori x10, x9, 0x0FF
	p.sw x9, x4(x2!)
	p.sw x10, x4(x2!)
	xori x9, x9, -1
	xori x10, x10, -1
	p.sw x9, x4(x2!)
	p.sw x10, x4(x2!)


	lui x9, 0xF0F0F
	ori x9, x9, 0x0F0
	lui x10, 0xF0F0F
	ori x10, x10, 0x0F0
	p.sw x9, x4(x2!)
	p.sw x10, x4(x2!)
	xori x9, x9, -1
	xori x10, x10, -1
	p.sw x9, x4(x2!)
	p.sw x10, x4(x2!)

	lui x9, 0x33333
	ori x9, x9, 0x333
	lui x10, 0x33333
	ori x10, x10, 0x333
	p.sw x9, x4(x2!)
	p.sw x10, x4(x2!)
	xori x9, x9, -1
	xori x10, x10, -1
	p.sw x9, x4(x2!)
	p.sw x10, x4(x2!)


	lui x9, 0x55555
	ori x9, x9, 0x555
	lui x10, 0x55555
	ori x10, x10, 0x555
	p.sw x9, x4(x2!)
	p.sw x10, x4(x2!)
	xori x9, x9, -1
	xori x10, x10, -1
	p.sw x9, x4(x2!)
	p.sw x10, x4(x2!)

	###################
	# x11 and x12
	###################

	xor x11, x11, x11
	xor x12, x12, x12
	p.sw x11, x4(x2!)
	p.sw x12, x4(x2!)
	xori x11, x11, -1
	xori x12, x12, -1
	p.sw x11, x4(x2!)
	p.sw x12, x4(x2!)

	lui x11, 0xFFFF0
	lui x12, 0xFFFF0
	p.sw x11, x4(x2!)
	p.sw x12, x4(x2!)
	xori x11, x11, -1
	xori x12, x12, -1
	p.sw x11, x4(x2!)
	p.sw x12, x4(x2!)

	 
	lui x11, 0x00FF0
	ori x11, x11, 0x0FF
	lui x12, 0x00FF0
	ori x12, x11, 0x0FF
	p.sw x11, x4(x2!)
	p.sw x12, x4(x2!)
	xori x11, x11, -1
	xori x12, x12, -1
	p.sw x11, x4(x2!)
	p.sw x12, x4(x2!)


	lui x11, 0xF0F0F
	ori x11, x11, 0x0F0
	lui x12, 0xF0F0F
	ori x12, x12, 0x0F0
	p.sw x11, x4(x2!)
	p.sw x12, x4(x2!)
	xori x11, x11, -1
	xori x12, x12, -1
	p.sw x11, x4(x2!)
	p.sw x12, x4(x2!)

	lui x11, 0x33333
	ori x11, x11, 0x333
	lui x12, 0x33333
	ori x12, x12, 0x333
	p.sw x11, x4(x2!)
	p.sw x12, x4(x2!)
	xori x11, x11, -1
	xori x12, x12, -1
	p.sw x11, x4(x2!)
	p.sw x12, x4(x2!)


	lui x11, 0x55555
	ori x11, x11, 0x555
	lui x12, 0x55555
	ori x12, x12, 0x555
	p.sw x11, x4(x2!)
	p.sw x12, x4(x2!)
	xori x11, x11, -1
	xori x12, x12, -1
	p.sw x11, x4(x2!)
	p.sw x12, x4(x2!)

	###################
	# x13 and x14
	###################

	xor x13, x13, x13
	xor x14, x14, x14
	p.sw x13, x4(x2!)
	p.sw x14, x4(x2!)
	xori x13, x13, -1
	xori x14, x14, -1
	p.sw x13, x4(x2!)
	p.sw x14, x4(x2!)

	lui x13, 0xFFFF0
	lui x14, 0xFFFF0
	p.sw x13, x4(x2!)
	p.sw x14, x4(x2!)
	xori x13, x13, -1
	xori x14, x14, -1
	p.sw x13, x4(x2!)
	p.sw x14, x4(x2!)

	 
	lui x13, 0x00FF0
	ori x13, x13, 0x0FF
	lui x14, 0x00FF0
	ori x14, x13, 0x0FF
	p.sw x13, x4(x2!)
	p.sw x14, x4(x2!)
	xori x13, x13, -1
	xori x14, x14, -1
	p.sw x13, x4(x2!)
	p.sw x14, x4(x2!)


	lui x13, 0xF0F0F
	ori x13, x13, 0x0F0
	lui x14, 0xF0F0F
	ori x14, x14, 0x0F0
	p.sw x13, x4(x2!)
	p.sw x14, x4(x2!)
	xori x13, x13, -1
	xori x14, x14, -1
	p.sw x13, x4(x2!)
	p.sw x14, x4(x2!)

	lui x13, 0x33333
	ori x13, x13, 0x333
	lui x14, 0x33333
	ori x14, x14, 0x333
	p.sw x13, x4(x2!)
	p.sw x14, x4(x2!)
	xori x13, x13, -1
	xori x14, x14, -1
	p.sw x13, x4(x2!)
	p.sw x14, x4(x2!)


	lui x13, 0x55555
	ori x13, x13, 0x555
	lui x14, 0x55555
	ori x14, x14, 0x555
	p.sw x13, x4(x2!)
	p.sw x14, x4(x2!)
	xori x13, x13, -1
	xori x14, x14, -1
	p.sw x13, x4(x2!)
	p.sw x14, x4(x2!)

	###################
	# x15 and x16
	###################

	xor x15, x15, x15
	xor x16, x16, x16
	p.sw x15, x4(x2!)
	p.sw x16, x4(x2!)
	xori x15, x15, -1
	xori x16, x16, -1
	p.sw x15, x4(x2!)
	p.sw x16, x4(x2!)

	lui x15, 0xFFFF0
	lui x16, 0xFFFF0
	p.sw x15, x4(x2!)
	p.sw x16, x4(x2!)
	xori x15, x15, -1
	xori x16, x16, -1
	p.sw x15, x4(x2!)
	p.sw x16, x4(x2!)

	 
	lui x15, 0x00FF0
	ori x15, x15, 0x0FF
	lui x16, 0x00FF0
	ori x16, x15, 0x0FF
	p.sw x15, x4(x2!)
	p.sw x16, x4(x2!)
	xori x15, x15, -1
	xori x16, x16, -1
	p.sw x15, x4(x2!)
	p.sw x16, x4(x2!)


	lui x15, 0xF0F0F
	ori x15, x15, 0x0F0
	lui x16, 0xF0F0F
	ori x16, x16, 0x0F0
	p.sw x15, x4(x2!)
	p.sw x16, x4(x2!)
	xori x15, x15, -1
	xori x16, x16, -1
	p.sw x15, x4(x2!)
	p.sw x16, x4(x2!)

	lui x15, 0x33333
	ori x15, x15, 0x333
	lui x16, 0x33333
	ori x16, x16, 0x333
	p.sw x15, x4(x2!)
	p.sw x16, x4(x2!)
	xori x15, x15, -1
	xori x16, x16, -1
	p.sw x15, x4(x2!)
	p.sw x16, x4(x2!)


	lui x15, 0x55555
	ori x15, x15, 0x555
	lui x16, 0x55555
	ori x16, x16, 0x555
	p.sw x15, x4(x2!)
	p.sw x16, x4(x2!)
	xori x15, x15, -1
	xori x16, x16, -1
	p.sw x15, x4(x2!)
	p.sw x16, x4(x2!)


	###################
	# x17 and x18
	###################

	xor x17, x17, x17
	xor x18, x18, x18
	p.sw x17, x4(x2!)
	p.sw x18, x4(x2!)
	xori x17, x17, -1
	xori x18, x18, -1
	p.sw x17, x4(x2!)
	p.sw x18, x4(x2!)

	lui x17, 0xFFFF0
	lui x18, 0xFFFF0
	p.sw x17, x4(x2!)
	p.sw x18, x4(x2!)
	xori x17, x17, -1
	xori x18, x18, -1
	p.sw x17, x4(x2!)
	p.sw x18, x4(x2!)

	 
	lui x17, 0x00FF0
	ori x17, x17, 0x0FF
	lui x18, 0x00FF0
	ori x18, x17, 0x0FF
	p.sw x17, x4(x2!)
	p.sw x18, x4(x2!)
	xori x17, x17, -1
	xori x18, x18, -1
	p.sw x17, x4(x2!)
	p.sw x18, x4(x2!)


	lui x17, 0xF0F0F
	ori x17, x17, 0x0F0
	lui x18, 0xF0F0F
	ori x18, x18, 0x0F0
	p.sw x17, x4(x2!)
	p.sw x18, x4(x2!)
	xori x17, x17, -1
	xori x18, x18, -1
	p.sw x17, x4(x2!)
	p.sw x18, x4(x2!)

	lui x17, 0x33333
	ori x17, x17, 0x333
	lui x18, 0x33333
	ori x18, x18, 0x333
	p.sw x17, x4(x2!)
	p.sw x18, x4(x2!)
	xori x17, x17, -1
	xori x18, x18, -1
	p.sw x17, x4(x2!)
	p.sw x18, x4(x2!)


	lui x17, 0x55555
	ori x17, x17, 0x555
	lui x18, 0x55555
	ori x18, x18, 0x555
	p.sw x17, x4(x2!)
	p.sw x18, x4(x2!)
	xori x17, x17, -1
	xori x18, x18, -1
	p.sw x17, x4(x2!)
	p.sw x18, x4(x2!)


	###################
	# x19 and x20
	###################

	xor x19, x19, x19
	xor x20, x20, x20
	p.sw x19, x4(x2!)
	p.sw x20, x4(x2!)
	xori x19, x19, -1
	xori x20, x20, -1
	p.sw x19, x4(x2!)
	p.sw x20, x4(x2!)

	lui x19, 0xFFFF0
	lui x20, 0xFFFF0
	p.sw x19, x4(x2!)
	p.sw x20, x4(x2!)
	xori x19, x19, -1
	xori x20, x20, -1
	p.sw x19, x4(x2!)
	p.sw x20, x4(x2!)

	 
	lui x19, 0x00FF0
	ori x19, x19, 0x0FF
	lui x20, 0x00FF0
	ori x20, x19, 0x0FF
	p.sw x19, x4(x2!)
	p.sw x20, x4(x2!)
	xori x19, x19, -1
	xori x20, x20, -1
	p.sw x19, x4(x2!)
	p.sw x20, x4(x2!)


	lui x19, 0xF0F0F
	ori x19, x19, 0x0F0
	lui x20, 0xF0F0F
	ori x20, x20, 0x0F0
	p.sw x19, x4(x2!)
	p.sw x20, x4(x2!)
	xori x19, x19, -1
	xori x20, x20, -1
	p.sw x19, x4(x2!)
	p.sw x20, x4(x2!)

	lui x19, 0x33333
	ori x19, x19, 0x333
	lui x20, 0x33333
	ori x20, x20, 0x333
	p.sw x19, x4(x2!)
	p.sw x20, x4(x2!)
	xori x19, x19, -1
	xori x20, x20, -1
	p.sw x19, x4(x2!)
	p.sw x20, x4(x2!)


	lui x19, 0x55555
	ori x19, x19, 0x555
	lui x20, 0x55555
	ori x20, x20, 0x555
	p.sw x19, x4(x2!)
	p.sw x20, x4(x2!)
	xori x19, x19, -1
	xori x20, x20, -1
	p.sw x19, x4(x2!)
	p.sw x20, x4(x2!)


	###################
	# x21 and x22
	###################

	xor x21, x21, x21
	xor x22, x22, x22
	p.sw x21, x4(x2!)
	p.sw x22, x4(x2!)
	xori x21, x21, -1
	xori x22, x22, -1
	p.sw x21, x4(x2!)
	p.sw x22, x4(x2!)

	lui x21, 0xFFFF0
	lui x22, 0xFFFF0
	p.sw x21, x4(x2!)
	p.sw x22, x4(x2!)
	xori x21, x21, -1
	xori x22, x22, -1
	p.sw x21, x4(x2!)
	p.sw x22, x4(x2!)

	 
	lui x21, 0x00FF0
	ori x21, x21, 0x0FF
	lui x22, 0x00FF0
	ori x22, x21, 0x0FF
	p.sw x21, x4(x2!)
	p.sw x22, x4(x2!)
	xori x21, x21, -1
	xori x22, x22, -1
	p.sw x21, x4(x2!)
	p.sw x22, x4(x2!)


	lui x21, 0xF0F0F
	ori x21, x21, 0x0F0
	lui x22, 0xF0F0F
	ori x22, x22, 0x0F0
	p.sw x21, x4(x2!)
	p.sw x22, x4(x2!)
	xori x21, x21, -1
	xori x22, x22, -1
	p.sw x21, x4(x2!)
	p.sw x22, x4(x2!)

	lui x21, 0x33333
	ori x21, x21, 0x333
	lui x22, 0x33333
	ori x22, x22, 0x333
	p.sw x21, x4(x2!)
	p.sw x22, x4(x2!)
	xori x21, x21, -1
	xori x22, x22, -1
	p.sw x21, x4(x2!)
	p.sw x22, x4(x2!)


	lui x21, 0x55555
	ori x21, x21, 0x555
	lui x22, 0x55555
	ori x22, x22, 0x555
	p.sw x21, x4(x2!)
	p.sw x22, x4(x2!)
	xori x21, x21, -1
	xori x22, x22, -1
	p.sw x21, x4(x2!)
	p.sw x22, x4(x2!)

	###################
	# x23 and x24
	###################

	xor x23, x23, x23
	xor x24, x24, x24
	p.sw x23, x4(x2!)
	p.sw x24, x4(x2!)
	xori x23, x23, -1
	xori x24, x24, -1
	p.sw x23, x4(x2!)
	p.sw x24, x4(x2!)

	lui x23, 0xFFFF0
	lui x24, 0xFFFF0
	p.sw x23, x4(x2!)
	p.sw x24, x4(x2!)
	xori x23, x23, -1
	xori x24, x24, -1
	p.sw x23, x4(x2!)
	p.sw x24, x4(x2!)

	 
	lui x23, 0x00FF0
	ori x23, x23, 0x0FF
	lui x24, 0x00FF0
	ori x24, x23, 0x0FF
	p.sw x23, x4(x2!)
	p.sw x24, x4(x2!)
	xori x23, x23, -1
	xori x24, x24, -1
	p.sw x23, x4(x2!)
	p.sw x24, x4(x2!)


	lui x23, 0xF0F0F
	ori x23, x23, 0x0F0
	lui x24, 0xF0F0F
	ori x24, x24, 0x0F0
	p.sw x23, x4(x2!)
	p.sw x24, x4(x2!)
	xori x23, x23, -1
	xori x24, x24, -1
	p.sw x23, x4(x2!)
	p.sw x24, x4(x2!)

	lui x23, 0x33333
	ori x23, x23, 0x333
	lui x24, 0x33333
	ori x24, x24, 0x333
	p.sw x23, x4(x2!)
	p.sw x24, x4(x2!)
	xori x23, x23, -1
	xori x24, x24, -1
	p.sw x23, x4(x2!)
	p.sw x24, x4(x2!)


	lui x23, 0x55555
	ori x23, x23, 0x555
	lui x24, 0x55555
	ori x24, x24, 0x555
	p.sw x23, x4(x2!)
	p.sw x24, x4(x2!)
	xori x23, x23, -1
	xori x24, x24, -1
	p.sw x23, x4(x2!)
	p.sw x24, x4(x2!)

	###################
	# x25 and x26
	###################

	xor x25, x25, x25
	xor x26, x26, x26
	p.sw x25, x4(x2!)
	p.sw x26, x4(x2!)
	xori x25, x25, -1
	xori x26, x26, -1
	p.sw x25, x4(x2!)
	p.sw x26, x4(x2!)

	lui x25, 0xFFFF0
	lui x26, 0xFFFF0
	p.sw x25, x4(x2!)
	p.sw x26, x4(x2!)
	xori x25, x25, -1
	xori x26, x26, -1
	p.sw x25, x4(x2!)
	p.sw x26, x4(x2!)

	 
	lui x25, 0x00FF0
	ori x25, x25, 0x0FF
	lui x26, 0x00FF0
	ori x26, x25, 0x0FF
	p.sw x25, x4(x2!)
	p.sw x26, x4(x2!)
	xori x25, x25, -1
	xori x26, x26, -1
	p.sw x25, x4(x2!)
	p.sw x26, x4(x2!)


	lui x25, 0xF0F0F
	ori x25, x25, 0x0F0
	lui x26, 0xF0F0F
	ori x26, x26, 0x0F0
	p.sw x25, x4(x2!)
	p.sw x26, x4(x2!)
	xori x25, x25, -1
	xori x26, x26, -1
	p.sw x25, x4(x2!)
	p.sw x26, x4(x2!)

	lui x25, 0x33333
	ori x25, x25, 0x333
	lui x26, 0x33333
	ori x26, x26, 0x333
	p.sw x25, x4(x2!)
	p.sw x26, x4(x2!)
	xori x25, x25, -1
	xori x26, x26, -1
	p.sw x25, x4(x2!)
	p.sw x26, x4(x2!)


	lui x25, 0x55555
	ori x25, x25, 0x555
	lui x26, 0x55555
	ori x26, x26, 0x555
	p.sw x25, x4(x2!)
	p.sw x26, x4(x2!)
	xori x25, x25, -1
	xori x26, x26, -1
	p.sw x25, x4(x2!)
	p.sw x26, x4(x2!)

	###################
	# x27 and x28
	###################

	xor x27, x27, x27
	xor x28, x28, x28
	p.sw x27, x4(x2!)
	p.sw x28, x4(x2!)
	xori x27, x27, -1
	xori x28, x28, -1
	p.sw x27, x4(x2!)
	p.sw x28, x4(x2!)

	lui x27, 0xFFFF0
	lui x28, 0xFFFF0
	p.sw x27, x4(x2!)
	p.sw x28, x4(x2!)
	xori x27, x27, -1
	xori x28, x28, -1
	p.sw x27, x4(x2!)
	p.sw x28, x4(x2!)

	 
	lui x27, 0x00FF0
	ori x27, x27, 0x0FF
	lui x28, 0x00FF0
	ori x28, x27, 0x0FF
	p.sw x27, x4(x2!)
	p.sw x28, x4(x2!)
	xori x27, x27, -1
	xori x28, x28, -1
	p.sw x27, x4(x2!)
	p.sw x28, x4(x2!)


	lui x27, 0xF0F0F
	ori x27, x27, 0x0F0
	lui x28, 0xF0F0F
	ori x28, x28, 0x0F0
	p.sw x27, x4(x2!)
	p.sw x28, x4(x2!)
	xori x27, x27, -1
	xori x28, x28, -1
	p.sw x27, x4(x2!)
	p.sw x28, x4(x2!)

	lui x27, 0x33333
	ori x27, x27, 0x333
	lui x28, 0x33333
	ori x28, x28, 0x333
	p.sw x27, x4(x2!)
	p.sw x28, x4(x2!)
	xori x27, x27, -1
	xori x28, x28, -1
	p.sw x27, x4(x2!)
	p.sw x28, x4(x2!)


	lui x27, 0x55555
	ori x27, x27, 0x555
	lui x28, 0x55555
	ori x28, x28, 0x555
	p.sw x27, x4(x2!)
	p.sw x28, x4(x2!)
	xori x27, x27, -1
	xori x28, x28, -1
	p.sw x27, x4(x2!)
	p.sw x28, x4(x2!)

	###################
	# x29 and x30
	###################

	xor x29, x29, x29
	xor x30, x30, x30
	p.sw x29, x4(x2!)
	p.sw x30, x4(x2!)
	xori x29, x29, -1
	xori x30, x30, -1
	p.sw x29, x4(x2!)
	p.sw x30, x4(x2!)

	lui x29, 0xFFFF0
	lui x30, 0xFFFF0
	p.sw x29, x4(x2!)
	p.sw x30, x4(x2!)
	xori x29, x29, -1
	xori x30, x30, -1
	p.sw x29, x4(x2!)
	p.sw x30, x4(x2!)

	 
	lui x29, 0x00FF0
	ori x29, x29, 0x0FF
	lui x30, 0x00FF0
	ori x30, x29, 0x0FF
	p.sw x29, x4(x2!)
	p.sw x30, x4(x2!)
	xori x29, x29, -1
	xori x30, x30, -1
	p.sw x29, x4(x2!)
	p.sw x30, x4(x2!)


	lui x29, 0xF0F0F
	ori x29, x29, 0x0F0
	lui x30, 0xF0F0F
	ori x30, x30, 0x0F0
	p.sw x29, x4(x2!)
	p.sw x30, x4(x2!)
	xori x29, x29, -1
	xori x30, x30, -1
	p.sw x29, x4(x2!)
	p.sw x30, x4(x2!)

	lui x29, 0x33333
	ori x29, x29, 0x333
	lui x30, 0x33333
	ori x30, x30, 0x333
	p.sw x29, x4(x2!)
	p.sw x30, x4(x2!)
	xori x29, x29, -1
	xori x30, x30, -1
	p.sw x29, x4(x2!)
	p.sw x30, x4(x2!)


	lui x29, 0x55555
	ori x29, x29, 0x555
	lui x30, 0x55555
	ori x30, x30, 0x555
	p.sw x29, x4(x2!)
	p.sw x30, x4(x2!)
	xori x29, x29, -1
	xori x30, x30, -1
	p.sw x29, x4(x2!)
	p.sw x30, x4(x2!)

	###################
	# x31 and x0
	###################

	xor x31, x31, x31
	xor x0, x0, x0
	p.sw x31, x4(x2!)
	p.sw x0, x4(x2!)
	xori x31, x31, -1
	xori x0, x0, -1
	p.sw x31, x4(x2!)
	p.sw x0, x4(x2!)

	lui x31, 0xFFFF0
	lui x0, 0xFFFF0
	p.sw x31, x4(x2!)
	p.sw x0, x4(x2!)
	xori x31, x31, -1
	xori x0, x0, -1
	p.sw x31, x4(x2!)
	p.sw x0, x4(x2!)

	 
	lui x31, 0x00FF0
	ori x31, x31, 0x0FF
	lui x0, 0x00FF0
	ori x0, x31, 0x0FF
	p.sw x31, x4(x2!)
	p.sw x0, x4(x2!)
	xori x31, x31, -1
	xori x0, x0, -1
	p.sw x31, x4(x2!)
	p.sw x0, x4(x2!)


	lui x31, 0xF0F0F
	ori x31, x31, 0x0F0
	lui x0, 0xF0F0F
	ori x0, x0, 0x0F0
	p.sw x31, x4(x2!)
	p.sw x0, x4(x2!)
	xori x31, x31, -1
	xori x0, x0, -1
	p.sw x31, x4(x2!)
	p.sw x0, x4(x2!)

	lui x31, 0x33333
	ori x31, x31, 0x333
	lui x0, 0x33333
	ori x0, x0, 0x333
	p.sw x31, x4(x2!)
	p.sw x0, x4(x2!)
	xori x31, x31, -1
	xori x0, x0, -1
	p.sw x31, x4(x2!)
	p.sw x0, x4(x2!)


	lui x31, 0x55555
	ori x31, x31, 0x555
	lui x0, 0x55555
	ori x0, x0, 0x555
	p.sw x31, x4(x2!)
	p.sw x0, x4(x2!)
	xori x31, x31, -1
	xori x0, x0, -1
	p.sw x31, x4(x2!)
	p.sw x0, x4(x2!)

	lui x1, 0x00104
	addi x3, x0, 0x001

	###################
	# x2 and x4
	###################

	xor x2, x2, x2
	xor x4, x4, x4
	p.sw x2, x3(x1!)
	p.sw x4, x3(x1!)
	xori x2, x2, -1
	xori x4, x4, -1
	p.sw x2, x3(x1!)
	p.sw x4, x3(x1!)

	lui x2, 0xFFFF0
	lui x4, 0xFFFF0
	p.sw x2, x3(x1!)
	p.sw x4, x3(x1!)
	xori x2, x2, -1
	xori x4, x4, -1
	p.sw x2, x3(x1!)
	p.sw x4, x3(x1!)

	 
	lui x2, 0x00FF0
	ori x2, x2, 0x0FF
	lui x4, 0x00FF0
	ori x4, x2, 0x0FF
	p.sw x2, x3(x1!)
	p.sw x4, x3(x1!)
	xori x2, x2, -1
	xori x4, x4, -1
	p.sw x2, x3(x1!)
	p.sw x4, x3(x1!)


	lui x2, 0xF0F0F
	ori x2, x2, 0x0F0
	lui x4, 0xF0F0F
	ori x4, x4, 0x0F0
	p.sw x2, x3(x1!)
	p.sw x4, x3(x1!)
	xori x2, x2, -1
	xori x4, x4, -1
	p.sw x2, x3(x1!)
	p.sw x4, x3(x1!)

	lui x2, 0x33333
	ori x2, x2, 0x333
	lui x4, 0x33333
	ori x4, x4, 0x333
	p.sw x2, x3(x1!)
	p.sw x4, x3(x1!)
	xori x2, x2, -1
	xori x4, x4, -1
	p.sw x2, x3(x1!)
	p.sw x4, x3(x1!)


	lui x2, 0x55555
	ori x2, x2, 0x555
	lui x4, 0x55555
	ori x4, x4, 0x555
	p.sw x2, x3(x1!)
	p.sw x4, x3(x1!)
	xori x2, x2, -1
	xori x4, x4, -1
	p.sw x2, x3(x1!)
	p.sw x4, x3(x1!)


	##########################
	# patterns 6898
	# seconds 2741
	# % 70.65%
	##########################

	lui x2, 0x00104
	addi x4, x0, 0x001

	###################
	# x1 and x3
	###################

	xor x1, x1, x1
	xor x3, x3, x3
	sw x1, 0(x2)
	sw x3, 0(x2)
	xori x1, x1, -1
	xori x3, x3, -1
	sw x1, 0(x2)
	sw x3, 0(x2)

	lui x1, 0x0FDF0
	lui x3, 0xFFFF0
	sw x1, 0(x2)
	sw x3, 0(x2)
	xori x1, x1, -1
	xori x3, x3, -1
	sw x1, 0(x2)
	sw x3, 0(x2)

	 
	lui x1, 0xAA335
	ori x1, x1, 0x0FF
	lui x3, 0xAA335
	ori x3, x1, 0x0FF
	sw x1, 0(x2)
	sw x3, 0(x2)
	xori x1, x1, -1
	xori x3, x3, -1
	sw x1, 0(x2)
	sw x3, 0(x2)


	lui x1, 0xF0F0F
	ori x1, x1, 0x0F0
	lui x3, 0xF0F0F
	ori x3, x3, 0x0F0
	sw x1, 0(x2)
	sw x3, 0(x2)
	xori x1, x1, -1
	xori x3, x3, -1
	sw x1, 0(x2)
	sw x3, 0(x2)

	lui x1, 0x33333
	ori x1, x1, 0x333
	lui x3, 0x371FA
	ori x3, x3, 0x333
	sw x1, 0(x2)
	sw x3, 0(x2)
	xori x1, x1, -1
	xori x3, x3, -1
	sw x1, 0(x2)
	sw x3, 0(x2)


	lui x1, 0x1A45D
	ori x1, x1, 0x21F
	lui x3, 0x1A45D
	ori x3, x3, 0x21F
	sw x1, 0(x2)
	sw x3, 0(x2)
	xori x1, x1, -1
	xori x3, x3, -1
	sw x1, 0(x2)
	sw x3, 0(x2)

	###################
	# x5 and x6
	###################

	xor x5, x5, x5
	xor x6, x6, x6
	sw x5, 0(x2)
	sw x6, 0(x2)
	xori x5, x5, -1
	xori x6, x6, -1
	sw x5, 0(x2)
	sw x6, 0(x2)

	lui x5, 0xFFFF0
	lui x6, 0xFFFF0
	sw x5, 0(x2)
	sw x6, 0(x2)
	xori x5, x5, -1
	xori x6, x6, -1
	sw x5, 0(x2)
	sw x6, 0(x2)

	 
	lui x5, 0xAA335
	ori x5, x5, 0x0FF
	lui x6, 0xAA335
	ori x6, x5, 0x0FF
	sw x5, 0(x2)
	sw x6, 0(x2)
	xori x5, x5, -1
	xori x6, x6, -1
	sw x5, 0(x2)
	sw x6, 0(x2)


	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	lui x6, 0xF0F0F
	ori x6, x6, 0x0F0
	sw x5, 0(x2)
	sw x6, 0(x2)
	xori x5, x5, -1
	xori x6, x6, -1
	sw x5, 0(x2)
	sw x6, 0(x2)

	lui x5, 0x33333
	ori x5, x5, 0x333
	lui x6, 0x33333
	ori x6, x6, 0x333
	sw x5, 0(x2)
	sw x6, 0(x2)
	xori x5, x5, -1
	xori x6, x6, -1
	sw x5, 0(x2)
	sw x6, 0(x2)


	lui x5, 0x1A45D
	ori x5, x5, 0x21F
	lui x6, 0x1A45D
	ori x6, x6, 0x21F
	sw x5, 0(x2)
	sw x6, 0(x2)
	xori x5, x5, -1
	xori x6, x6, -1
	sw x5, 0(x2)
	sw x6, 0(x2)

	###################
	# x5 and x6
	###################

	xor x5, x5, x5
	xor x6, x6, x6
	sw x5, 0(x2)
	sw x6, 0(x2)
	xori x5, x5, -1
	xori x6, x6, -1
	sw x5, 0(x2)
	sw x6, 0(x2)

	lui x5, 0xFFFF0
	lui x6, 0xFFFF0
	sw x5, 0(x2)
	sw x6, 0(x2)
	xori x5, x5, -1
	xori x6, x6, -1
	sw x5, 0(x2)
	sw x6, 0(x2)

	 
	lui x5, 0xAA335
	ori x5, x5, 0x0FF
	lui x6, 0xAA335
	ori x6, x5, 0x0FF
	sw x5, 0(x2)
	sw x6, 0(x2)
	xori x5, x5, -1
	xori x6, x6, -1
	sw x5, 0(x2)
	sw x6, 0(x2)


	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	lui x6, 0xF0F0F
	ori x6, x6, 0x0F0
	sw x5, 0(x2)
	sw x6, 0(x2)
	xori x5, x5, -1
	xori x6, x6, -1
	sw x5, 0(x2)
	sw x6, 0(x2)

	lui x5, 0x33333
	ori x5, x5, 0x333
	lui x6, 0x33333
	ori x6, x6, 0x333
	sw x5, 0(x2)
	sw x6, 0(x2)
	xori x5, x5, -1
	xori x6, x6, -1
	sw x5, 0(x2)
	sw x6, 0(x2)


	lui x5, 0x1A45D
	ori x5, x5, 0x21F
	lui x6, 0x1A45D
	ori x6, x6, 0x21F
	sw x5, 0(x2)
	sw x6, 0(x2)
	xori x5, x5, -1
	xori x6, x6, -1
	sw x5, 0(x2)
	sw x6, 0(x2)

	###################
	# x7 and x8
	###################

	xor x7, x7, x7
	xor x8, x8, x8
	sw x7, 0(x2)
	sw x8, 0(x2)
	xori x7, x7, -1
	xori x8, x8, -1
	sw x7, 0(x2)
	sw x8, 0(x2)

	lui x7, 0xFFFF0
	lui x8, 0xFFFF0
	sw x7, 0(x2)
	sw x8, 0(x2)
	xori x7, x7, -1
	xori x8, x8, -1
	sw x7, 0(x2)
	sw x8, 0(x2)

	 
	lui x7, 0xAA335
	ori x7, x7, 0x0FF
	lui x8, 0xAA335
	ori x8, x7, 0x0FF
	sw x7, 0(x2)
	sw x8, 0(x2)
	xori x7, x7, -1
	xori x8, x8, -1
	sw x7, 0(x2)
	sw x8, 0(x2)


	lui x7, 0xF0F0F
	ori x7, x7, 0x0F0
	lui x8, 0xF0F0F
	ori x8, x8, 0x0F0
	sw x7, 0(x2)
	sw x8, 0(x2)
	xori x7, x7, -1
	xori x8, x8, -1
	sw x7, 0(x2)
	sw x8, 0(x2)

	lui x7, 0x33333
	ori x7, x7, 0x333
	lui x8, 0x33333
	ori x8, x8, 0x333
	sw x7, 0(x2)
	sw x8, 0(x2)
	xori x7, x7, -1
	xori x8, x8, -1
	sw x7, 0(x2)
	sw x8, 0(x2)


	lui x7, 0x1A45D
	ori x7, x7, 0x21F
	lui x8, 0x1A45D
	ori x8, x8, 0x21F
	sw x7, 0(x2)
	sw x8, 0(x2)
	xori x7, x7, -1
	xori x8, x8, -1
	sw x7, 0(x2)
	sw x8, 0(x2)

	###################
	# x9 and x10
	###################

	xor x9, x9, x9
	xor x10, x10, x10
	sw x9, 0(x2)
	sw x10, 0(x2)
	xori x9, x9, -1
	xori x10, x10, -1
	sw x9, 0(x2)
	sw x10, 0(x2)

	lui x9, 0xFFFF0
	lui x10, 0xFFFF0
	sw x9, 0(x2)
	sw x10, 0(x2)
	xori x9, x9, -1
	xori x10, x10, -1
	sw x9, 0(x2)
	sw x10, 0(x2)

	 
	lui x9, 0xAA335
	ori x9, x9, 0x0FF
	lui x10, 0xAA335
	ori x10, x9, 0x0FF
	sw x9, 0(x2)
	sw x10, 0(x2)
	xori x9, x9, -1
	xori x10, x10, -1
	sw x9, 0(x2)
	sw x10, 0(x2)


	lui x9, 0xF0F0F
	ori x9, x9, 0x0F0
	lui x10, 0xF0F0F
	ori x10, x10, 0x0F0
	sw x9, 0(x2)
	sw x10, 0(x2)
	xori x9, x9, -1
	xori x10, x10, -1
	sw x9, 0(x2)
	sw x10, 0(x2)

	lui x9, 0x33333
	ori x9, x9, 0x333
	lui x10, 0x33333
	ori x10, x10, 0x333
	sw x9, 0(x2)
	sw x10, 0(x2)
	xori x9, x9, -1
	xori x10, x10, -1
	sw x9, 0(x2)
	sw x10, 0(x2)


	lui x9, 0x1A45D
	ori x9, x9, 0x21F
	lui x10, 0x1A45D
	ori x10, x10, 0x21F
	sw x9, 0(x2)
	sw x10, 0(x2)
	xori x9, x9, -1
	xori x10, x10, -1
	sw x9, 0(x2)
	sw x10, 0(x2)

	###################
	# x11 and x12
	###################

	xor x11, x11, x11
	xor x12, x12, x12
	sw x11, 0(x2)
	sw x12, 0(x2)
	xori x11, x11, -1
	xori x12, x12, -1
	sw x11, 0(x2)
	sw x12, 0(x2)

	lui x11, 0xFFFF0
	lui x12, 0xFFFF0
	sw x11, 0(x2)
	sw x12, 0(x2)
	xori x11, x11, -1
	xori x12, x12, -1
	sw x11, 0(x2)
	sw x12, 0(x2)

	 
	lui x11, 0xAA335
	ori x11, x11, 0x0FF
	lui x12, 0xAA335
	ori x12, x11, 0x0FF
	sw x11, 0(x2)
	sw x12, 0(x2)
	xori x11, x11, -1
	xori x12, x12, -1
	sw x11, 0(x2)
	sw x12, 0(x2)


	lui x11, 0xF0F0F
	ori x11, x11, 0x0F0
	lui x12, 0xF0F0F
	ori x12, x12, 0x0F0
	sw x11, 0(x2)
	sw x12, 0(x2)
	xori x11, x11, -1
	xori x12, x12, -1
	sw x11, 0(x2)
	sw x12, 0(x2)

	lui x11, 0x33333
	ori x11, x11, 0x333
	lui x12, 0x33333
	ori x12, x12, 0x333
	sw x11, 0(x2)
	sw x12, 0(x2)
	xori x11, x11, -1
	xori x12, x12, -1
	sw x11, 0(x2)
	sw x12, 0(x2)


	lui x11, 0x1A45D
	ori x11, x11, 0x21F
	lui x12, 0x1A45D
	ori x12, x12, 0x21F
	sw x11, 0(x2)
	sw x12, 0(x2)
	xori x11, x11, -1
	xori x12, x12, -1
	sw x11, 0(x2)
	sw x12, 0(x2)

	###################
	# x13 and x14
	###################

	xor x13, x13, x13
	xor x14, x14, x14
	sw x13, 0(x2)
	sw x14, 0(x2)
	xori x13, x13, -1
	xori x14, x14, -1
	sw x13, 0(x2)
	sw x14, 0(x2)

	lui x13, 0xFFFF0
	lui x14, 0xFFFF0
	sw x13, 0(x2)
	sw x14, 0(x2)
	xori x13, x13, -1
	xori x14, x14, -1
	sw x13, 0(x2)
	sw x14, 0(x2)

	 
	lui x13, 0xAA335
	ori x13, x13, 0x0FF
	lui x14, 0xAA335
	ori x14, x13, 0x0FF
	sw x13, 0(x2)
	sw x14, 0(x2)
	xori x13, x13, -1
	xori x14, x14, -1
	sw x13, 0(x2)
	sw x14, 0(x2)


	lui x13, 0xF0F0F
	ori x13, x13, 0x0F0
	lui x14, 0xF0F0F
	ori x14, x14, 0x0F0
	sw x13, 0(x2)
	sw x14, 0(x2)
	xori x13, x13, -1
	xori x14, x14, -1
	sw x13, 0(x2)
	sw x14, 0(x2)

	lui x13, 0x33333
	ori x13, x13, 0x333
	lui x14, 0x33333
	ori x14, x14, 0x333
	sw x13, 0(x2)
	sw x14, 0(x2)
	xori x13, x13, -1
	xori x14, x14, -1
	sw x13, 0(x2)
	sw x14, 0(x2)


	lui x13, 0x1A45D
	ori x13, x13, 0x21F
	lui x14, 0x1A45D
	ori x14, x14, 0x21F
	sw x13, 0(x2)
	sw x14, 0(x2)
	xori x13, x13, -1
	xori x14, x14, -1
	sw x13, 0(x2)
	sw x14, 0(x2)

	###################
	# x15 and x16
	###################

	xor x15, x15, x15
	xor x16, x16, x16
	sw x15, 0(x2)
	sw x16, 0(x2)
	xori x15, x15, -1
	xori x16, x16, -1
	sw x15, 0(x2)
	sw x16, 0(x2)

	lui x15, 0xFFFF0
	lui x16, 0xFFFF0
	sw x15, 0(x2)
	sw x16, 0(x2)
	xori x15, x15, -1
	xori x16, x16, -1
	sw x15, 0(x2)
	sw x16, 0(x2)

	 
	lui x15, 0xAA335
	ori x15, x15, 0x0FF
	lui x16, 0xAA335
	ori x16, x15, 0x0FF
	sw x15, 0(x2)
	sw x16, 0(x2)
	xori x15, x15, -1
	xori x16, x16, -1
	sw x15, 0(x2)
	sw x16, 0(x2)


	lui x15, 0xF0F0F
	ori x15, x15, 0x0F0
	lui x16, 0xF0F0F
	ori x16, x16, 0x0F0
	sw x15, 0(x2)
	sw x16, 0(x2)
	xori x15, x15, -1
	xori x16, x16, -1
	sw x15, 0(x2)
	sw x16, 0(x2)

	lui x15, 0x33333
	ori x15, x15, 0x333
	lui x16, 0x33333
	ori x16, x16, 0x333
	sw x15, 0(x2)
	sw x16, 0(x2)
	xori x15, x15, -1
	xori x16, x16, -1
	sw x15, 0(x2)
	sw x16, 0(x2)


	lui x15, 0x1A45D
	ori x15, x15, 0x21F
	lui x16, 0x1A45D
	ori x16, x16, 0x21F
	sw x15, 0(x2)
	sw x16, 0(x2)
	xori x15, x15, -1
	xori x16, x16, -1
	sw x15, 0(x2)
	sw x16, 0(x2)


	###################
	# x17 and x18
	###################

	xor x17, x17, x17
	xor x18, x18, x18
	sw x17, 0(x2)
	sw x18, 0(x2)
	xori x17, x17, -1
	xori x18, x18, -1
	sw x17, 0(x2)
	sw x18, 0(x2)

	lui x17, 0xFFFF0
	lui x18, 0xFFFF0
	sw x17, 0(x2)
	sw x18, 0(x2)
	xori x17, x17, -1
	xori x18, x18, -1
	sw x17, 0(x2)
	sw x18, 0(x2)

	 
	lui x17, 0xAA335
	ori x17, x17, 0x0FF
	lui x18, 0xAA335
	ori x18, x17, 0x0FF
	sw x17, 0(x2)
	sw x18, 0(x2)
	xori x17, x17, -1
	xori x18, x18, -1
	sw x17, 0(x2)
	sw x18, 0(x2)


	lui x17, 0xF0F0F
	ori x17, x17, 0x0F0
	lui x18, 0xF0F0F
	ori x18, x18, 0x0F0
	sw x17, 0(x2)
	sw x18, 0(x2)
	xori x17, x17, -1
	xori x18, x18, -1
	sw x17, 0(x2)
	sw x18, 0(x2)

	lui x17, 0x33333
	ori x17, x17, 0x333
	lui x18, 0x33333
	ori x18, x18, 0x333
	sw x17, 0(x2)
	sw x18, 0(x2)
	xori x17, x17, -1
	xori x18, x18, -1
	sw x17, 0(x2)
	sw x18, 0(x2)


	lui x17, 0x1A45D
	ori x17, x17, 0x21F
	lui x18, 0x1A45D
	ori x18, x18, 0x21F
	sw x17, 0(x2)
	sw x18, 0(x2)
	xori x17, x17, -1
	xori x18, x18, -1
	sw x17, 0(x2)
	sw x18, 0(x2)


	###################
	# x19 and x20
	###################

	xor x19, x19, x19
	xor x20, x20, x20
	sw x19, 0(x2)
	sw x20, 0(x2)
	xori x19, x19, -1
	xori x20, x20, -1
	sw x19, 0(x2)
	sw x20, 0(x2)

	lui x19, 0xFFFF0
	lui x20, 0xFFFF0
	sw x19, 0(x2)
	sw x20, 0(x2)
	xori x19, x19, -1
	xori x20, x20, -1
	sw x19, 0(x2)
	sw x20, 0(x2)

	 
	lui x19, 0xAA335
	ori x19, x19, 0x0FF
	lui x20, 0xAA335
	ori x20, x19, 0x0FF
	sw x19, 0(x2)
	sw x20, 0(x2)
	xori x19, x19, -1
	xori x20, x20, -1
	sw x19, 0(x2)
	sw x20, 0(x2)


	lui x19, 0xF0F0F
	ori x19, x19, 0x0F0
	lui x20, 0xF0F0F
	ori x20, x20, 0x0F0
	sw x19, 0(x2)
	sw x20, 0(x2)
	xori x19, x19, -1
	xori x20, x20, -1
	sw x19, 0(x2)
	sw x20, 0(x2)

	lui x19, 0x33333
	ori x19, x19, 0x333
	lui x20, 0x33333
	ori x20, x20, 0x333
	sw x19, 0(x2)
	sw x20, 0(x2)
	xori x19, x19, -1
	xori x20, x20, -1
	sw x19, 0(x2)
	sw x20, 0(x2)


	lui x19, 0x1A45D
	ori x19, x19, 0x21F
	lui x20, 0x1A45D
	ori x20, x20, 0x21F
	sw x19, 0(x2)
	sw x20, 0(x2)
	xori x19, x19, -1
	xori x20, x20, -1
	sw x19, 0(x2)
	sw x20, 0(x2)


	###################
	# x21 and x22
	###################

	xor x21, x21, x21
	xor x22, x22, x22
	sw x21, 0(x2)
	sw x22, 0(x2)
	xori x21, x21, -1
	xori x22, x22, -1
	sw x21, 0(x2)
	sw x22, 0(x2)

	lui x21, 0xFFFF0
	lui x22, 0xFFFF0
	sw x21, 0(x2)
	sw x22, 0(x2)
	xori x21, x21, -1
	xori x22, x22, -1
	sw x21, 0(x2)
	sw x22, 0(x2)

	 
	lui x21, 0xAA335
	ori x21, x21, 0x0FF
	lui x22, 0xAA335
	ori x22, x21, 0x0FF
	sw x21, 0(x2)
	sw x22, 0(x2)
	xori x21, x21, -1
	xori x22, x22, -1
	sw x21, 0(x2)
	sw x22, 0(x2)


	lui x21, 0xF0F0F
	ori x21, x21, 0x0F0
	lui x22, 0xF0F0F
	ori x22, x22, 0x0F0
	sw x21, 0(x2)
	sw x22, 0(x2)
	xori x21, x21, -1
	xori x22, x22, -1
	sw x21, 0(x2)
	sw x22, 0(x2)

	lui x21, 0x33333
	ori x21, x21, 0x333
	lui x22, 0x33333
	ori x22, x22, 0x333
	sw x21, 0(x2)
	sw x22, 0(x2)
	xori x21, x21, -1
	xori x22, x22, -1
	sw x21, 0(x2)
	sw x22, 0(x2)


	lui x21, 0x1A45D
	ori x21, x21, 0x21F
	lui x22, 0x1A45D
	ori x22, x22, 0x21F
	sw x21, 0(x2)
	sw x22, 0(x2)
	xori x21, x21, -1
	xori x22, x22, -1
	sw x21, 0(x2)
	sw x22, 0(x2)

	###################
	# x23 and x24
	###################

	xor x23, x23, x23
	xor x24, x24, x24
	sw x23, 0(x2)
	sw x24, 0(x2)
	xori x23, x23, -1
	xori x24, x24, -1
	sw x23, 0(x2)
	sw x24, 0(x2)

	lui x23, 0xFFFF0
	lui x24, 0xFFFF0
	sw x23, 0(x2)
	sw x24, 0(x2)
	xori x23, x23, -1
	xori x24, x24, -1
	sw x23, 0(x2)
	sw x24, 0(x2)

	 
	lui x23, 0xAA335
	ori x23, x23, 0x0FF
	lui x24, 0xAA335
	ori x24, x23, 0x0FF
	sw x23, 0(x2)
	sw x24, 0(x2)
	xori x23, x23, -1
	xori x24, x24, -1
	sw x23, 0(x2)
	sw x24, 0(x2)


	lui x23, 0xF0F0F
	ori x23, x23, 0x0F0
	lui x24, 0xF0F0F
	ori x24, x24, 0x0F0
	sw x23, 0(x2)
	sw x24, 0(x2)
	xori x23, x23, -1
	xori x24, x24, -1
	sw x23, 0(x2)
	sw x24, 0(x2)

	lui x23, 0x33333
	ori x23, x23, 0x333
	lui x24, 0x33333
	ori x24, x24, 0x333
	sw x23, 0(x2)
	sw x24, 0(x2)
	xori x23, x23, -1
	xori x24, x24, -1
	sw x23, 0(x2)
	sw x24, 0(x2)


	lui x23, 0x1A45D
	ori x23, x23, 0x21F
	lui x24, 0x1A45D
	ori x24, x24, 0x21F
	sw x23, 0(x2)
	sw x24, 0(x2)
	xori x23, x23, -1
	xori x24, x24, -1
	sw x23, 0(x2)
	sw x24, 0(x2)

	###################
	# x25 and x26
	###################

	xor x25, x25, x25
	xor x26, x26, x26
	sw x25, 0(x2)
	sw x26, 0(x2)
	xori x25, x25, -1
	xori x26, x26, -1
	sw x25, 0(x2)
	sw x26, 0(x2)

	lui x25, 0xFFFF0
	lui x26, 0xFFFF0
	sw x25, 0(x2)
	sw x26, 0(x2)
	xori x25, x25, -1
	xori x26, x26, -1
	sw x25, 0(x2)
	sw x26, 0(x2)

	 
	lui x25, 0xAA335
	ori x25, x25, 0x0FF
	lui x26, 0xAA335
	ori x26, x25, 0x0FF
	sw x25, 0(x2)
	sw x26, 0(x2)
	xori x25, x25, -1
	xori x26, x26, -1
	sw x25, 0(x2)
	sw x26, 0(x2)


	lui x25, 0xF0F0F
	ori x25, x25, 0x0F0
	lui x26, 0xF0F0F
	ori x26, x26, 0x0F0
	sw x25, 0(x2)
	sw x26, 0(x2)
	xori x25, x25, -1
	xori x26, x26, -1
	sw x25, 0(x2)
	sw x26, 0(x2)

	lui x25, 0x33333
	ori x25, x25, 0x333
	lui x26, 0x33333
	ori x26, x26, 0x333
	sw x25, 0(x2)
	sw x26, 0(x2)
	xori x25, x25, -1
	xori x26, x26, -1
	sw x25, 0(x2)
	sw x26, 0(x2)


	lui x25, 0x1A45D
	ori x25, x25, 0x21F
	lui x26, 0x1A45D
	ori x26, x26, 0x21F
	sw x25, 0(x2)
	sw x26, 0(x2)
	xori x25, x25, -1
	xori x26, x26, -1
	sw x25, 0(x2)
	sw x26, 0(x2)

	###################
	# x27 and x28
	###################

	xor x27, x27, x27
	xor x28, x28, x28
	sw x27, 0(x2)
	sw x28, 0(x2)
	xori x27, x27, -1
	xori x28, x28, -1
	sw x27, 0(x2)
	sw x28, 0(x2)

	lui x27, 0xFFFF0
	lui x28, 0xFFFF0
	sw x27, 0(x2)
	sw x28, 0(x2)
	xori x27, x27, -1
	xori x28, x28, -1
	sw x27, 0(x2)
	sw x28, 0(x2)

	 
	lui x27, 0xAA335
	ori x27, x27, 0x0FF
	lui x28, 0xAA335
	ori x28, x27, 0x0FF
	sw x27, 0(x2)
	sw x28, 0(x2)
	xori x27, x27, -1
	xori x28, x28, -1
	sw x27, 0(x2)
	sw x28, 0(x2)


	lui x27, 0xF0F0F
	ori x27, x27, 0x0F0
	lui x28, 0xF0F0F
	ori x28, x28, 0x0F0
	sw x27, 0(x2)
	sw x28, 0(x2)
	xori x27, x27, -1
	xori x28, x28, -1
	sw x27, 0(x2)
	sw x28, 0(x2)

	lui x27, 0x33333
	ori x27, x27, 0x333
	lui x28, 0x33333
	ori x28, x28, 0x333
	sw x27, 0(x2)
	sw x28, 0(x2)
	xori x27, x27, -1
	xori x28, x28, -1
	sw x27, 0(x2)
	sw x28, 0(x2)


	lui x27, 0x1A45D
	ori x27, x27, 0x21F
	lui x28, 0x1A45D
	ori x28, x28, 0x21F
	sw x27, 0(x2)
	sw x28, 0(x2)
	xori x27, x27, -1
	xori x28, x28, -1
	sw x27, 0(x2)
	sw x28, 0(x2)

	###################
	# x29 and x30
	###################

	xor x29, x29, x29
	xor x30, x30, x30
	sw x29, 0(x2)
	sw x30, 0(x2)
	xori x29, x29, -1
	xori x30, x30, -1
	sw x29, 0(x2)
	sw x30, 0(x2)

	lui x29, 0xFFFF0
	lui x30, 0xFFFF0
	sw x29, 0(x2)
	sw x30, 0(x2)
	xori x29, x29, -1
	xori x30, x30, -1
	sw x29, 0(x2)
	sw x30, 0(x2)

	 
	lui x29, 0xAA335
	ori x29, x29, 0x0FF
	lui x30, 0xAA335
	ori x30, x29, 0x0FF
	sw x29, 0(x2)
	sw x30, 0(x2)
	xori x29, x29, -1
	xori x30, x30, -1
	sw x29, 0(x2)
	sw x30, 0(x2)


	lui x29, 0xF0F0F
	ori x29, x29, 0x0F0
	lui x30, 0xF0F0F
	ori x30, x30, 0x0F0
	sw x29, 0(x2)
	sw x30, 0(x2)
	xori x29, x29, -1
	xori x30, x30, -1
	sw x29, 0(x2)
	sw x30, 0(x2)

	lui x29, 0x33333
	ori x29, x29, 0x333
	lui x30, 0x33333
	ori x30, x30, 0x333
	sw x29, 0(x2)
	sw x30, 0(x2)
	xori x29, x29, -1
	xori x30, x30, -1
	sw x29, 0(x2)
	sw x30, 0(x2)


	lui x29, 0x1A45D
	ori x29, x29, 0x21F
	lui x30, 0x1A45D
	ori x30, x30, 0x21F
	sw x29, 0(x2)
	sw x30, 0(x2)
	xori x29, x29, -1
	xori x30, x30, -1
	sw x29, 0(x2)
	sw x30, 0(x2)

	###################
	# x31 and x0
	###################

	xor x31, x31, x31
	xor x0, x0, x0
	sw x31, 0(x2)
	sw x0, 0(x2)
	xori x31, x31, -1
	xori x0, x0, -1
	sw x31, 0(x2)
	sw x0, 0(x2)

	lui x31, 0xFFFF0
	lui x0, 0xFFFF0
	sw x31, 0(x2)
	sw x0, 0(x2)
	xori x31, x31, -1
	xori x0, x0, -1
	sw x31, 0(x2)
	sw x0, 0(x2)

	 
	lui x31, 0xAA335
	ori x31, x31, 0x0FF
	lui x0, 0xAA335
	ori x0, x31, 0x0FF
	sw x31, 0(x2)
	sw x0, 0(x2)
	xori x31, x31, -1
	xori x0, x0, -1
	sw x31, 0(x2)
	sw x0, 0(x2)


	lui x31, 0xF0F0F
	ori x31, x31, 0x0F0
	lui x0, 0xF0F0F
	ori x0, x0, 0x0F0
	sw x31, 0(x2)
	sw x0, 0(x2)
	xori x31, x31, -1
	xori x0, x0, -1
	sw x31, 0(x2)
	sw x0, 0(x2)

	lui x31, 0x33333
	ori x31, x31, 0x333
	lui x0, 0x33333
	ori x0, x0, 0x333
	sw x31, 0(x2)
	sw x0, 0(x2)
	xori x31, x31, -1
	xori x0, x0, -1
	sw x31, 0(x2)
	sw x0, 0(x2)


	lui x31, 0x1A45D
	ori x31, x31, 0x21F
	lui x0, 0x1A45D
	ori x0, x0, 0x21F
	sw x31, 0(x2)
	sw x0, 0(x2)
	xori x31, x31, -1
	xori x0, x0, -1
	sw x31, 0(x2)
	sw x0, 0(x2)

	lui x1, 0x00104
	addi x3, x0, 0x001

	###################
	# x2 and x4
	###################

	xor x2, x2, x2
	xor x4, x4, x4
	sw x2, 0(x1)
	sw x4, 0(x1)
	xori x2, x2, -1
	xori x4, x4, -1
	sw x2, 0(x1)
	sw x4, 0(x1)

	lui x2, 0xFFFF0
	lui x4, 0xFFFF0
	sw x2, 0(x1)
	sw x4, 0(x1)
	xori x2, x2, -1
	xori x4, x4, -1
	sw x2, 0(x1)
	sw x4, 0(x1)

	 
	lui x2, 0xAA335
	ori x2, x2, 0x0FF
	lui x4, 0xAA335
	ori x4, x2, 0x0FF
	sw x2, 0(x1)
	sw x4, 0(x1)
	xori x2, x2, -1
	xori x4, x4, -1
	sw x2, 0(x1)
	sw x4, 0(x1)


	lui x2, 0xF0F0F
	ori x2, x2, 0x0F0
	lui x4, 0xF0F0F
	ori x4, x4, 0x0F0
	sw x2, 0(x1)
	sw x4, 0(x1)
	xori x2, x2, -1
	xori x4, x4, -1
	sw x2, 0(x1)
	sw x4, 0(x1)

	lui x2, 0x33333
	ori x2, x2, 0x333
	lui x4, 0x33333
	ori x4, x4, 0x333
	sw x2, 0(x1)
	sw x4, 0(x1)
	xori x2, x2, -1
	xori x4, x4, -1
	sw x2, 0(x1)
	sw x4, 0(x1)


	lui x2, 0x1A45D
	ori x2, x2, 0x21F
	lui x4, 0x1A45D
	ori x4, x4, 0x21F
	sw x2, 0(x1)
	sw x4, 0(x1)
	xori x2, x2, -1
	xori x4, x4, -1
	sw x2, 0(x1)
	sw x4, 0(x1)

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

