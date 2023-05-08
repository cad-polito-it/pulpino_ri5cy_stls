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
	li t0, 0x00104000    # save stack pointer
	sw sp, 0(t0)

	xor x0,x0,x0
	xor x1,x1,x1
	xor x2,x2,x2
	xor x3,x3,x3
	xor x4,x4,x4
	xor x5,x5,x5
	xor x6,x6,x6
	xor x7,x7,x7
	xor x8,x8,x8
	xor x9,x9,x9
	xor x10,x10,x10
	xor x11,x11,x11
	xor x12,x12,x12
	xor x13,x13,x13
	xor x14,x14,x14
	xor x15,x15,x15
	xor x16,x16,x16
	xor x17,x17,x17
	xor x18,x18,x18
	xor x19,x19,x19
	xor x20,x20,x20
	xor x21,x21,x21
	xor x22,x22,x22
	xor x23,x23,x23
	xor x24,x24,x24
	xor x25,x25,x25
	xor x26,x26,x26
	xor x27,x27,x27
	xor x28,x28,x28
	xor x29,x29,x29
	xor x30,x30,x30


	lui x31, 256
	addi x29,x29,4
	addi x30,x30,1

	sub x0, x0, x30
	nop
	nop
	nop
	nop
	p.sw x0, x29(x31!)
	sub x31,x31,x29
	p.lw x0,x29(x31!)
	nop
	nop
	nop
	nop
	xor x0, x0,x0
	nop
	nop
	nop
	nop
	p.sw x0,x29(x31!)
	sub x31,x31,x29
	p.lw x0,x29(x31!)
	nop
	nop
	nop
	nop

	sub x1, x1, x30
	nop
	nop
	nop
	nop
	p.sw x1, x29(x31!)
	sub x31,x31,x29
	p.lw x1,x29(x31!)
	nop
	nop
	nop
	nop
	xor x1, x1,x1
	nop
	nop
	nop
	nop
	p.sw x1,x29(x31!)
	sub x31,x31,x29
	p.lw x1,x29(x31!)
	nop
	nop
	nop
	nop

	sub x2, x2, x30
	nop
	nop
	nop
	nop
	p.sw x2, x29(x31!)
	sub x31,x31,x29
	p.lw x2,x29(x31!)
	nop
	nop
	nop
	nop
	xor x2, x2,x2
	nop
	nop
	nop
	nop
	p.sw x2,x29(x31!)
	sub x31,x31,x29
	p.lw x2,x29(x31!)
	nop
	nop
	nop
	nop

	sub x3, x3, x30
	nop
	nop
	nop
	nop
	p.sw x3, x29(x31!)
	sub x31,x31,x29
	p.lw x3,x29(x31!)
	nop
	nop
	nop
	nop
	xor x3, x3,x3
	nop
	nop
	nop
	nop
	p.sw x3,x29(x31!)
	sub x31,x31,x29
	p.lw x3,x29(x31!)
	nop
	nop
	nop
	nop

	sub x4, x4, x30
	nop
	nop
	nop
	nop
	p.sw x4, x29(x31!)
	sub x31,x31,x29
	p.lw x4,x29(x31!)
	nop
	nop
	nop
	nop
	xor x4, x4,x4
	nop
	nop
	nop
	p.sw x4,x29(x31!)
	sub x31,x31,x29
	p.lw x4,x29(x31!)
	nop
	nop
	nop

	sub x5, x5, x30
	nop
	nop
	nop
	p.sw x5, x29(x31!)
	sub x31,x31,x29
	p.lw x5,x29(x31!)
	nop
	nop
	nop
	xor x5, x5,x5
	nop
	nop
	nop
	p.sw x5,x29(x31!)
	sub x31,x31,x29
	p.lw x5,x29(x31!)
	nop
	nop
	nop

	sub x6, x6, x30
	nop
	nop
	nop
	nop
	p.sw x6, x29(x31!)
	sub x31,x31,x29
	p.lw x6,x29(x31!)
	nop
	nop
	nop
	nop
	xor x6, x6,x6
	nop
	nop
	nop
	nop
	p.sw x6,x29(x31!)
	sub x31,x31,x29
	p.lw x6,x29(x31!)
	nop
	nop
	nop
	nop

	sub x7, x7, x30
	nop
	nop
	nop
	nop
	p.sw x7, x29(x31!)
	sub x31,x31,x29
	p.lw x7,x29(x31!)
	nop
	nop
	nop
	xor x7, x7,x7
	nop
	nop
	nop
	p.sw x7,x29(x31!)
	sub x31,x31,x29
	p.lw x7,x29(x31!)
	nop
	nop
	nop
	nop

	sub x8, x8, x30
	nop
	nop
	nop
	nop
	p.sw x8, x29(x31!)
	sub x31,x31,x29
	p.lw x8,x29(x31!)
	nop
	nop
	nop
	nop
	xor x8, x8,x8
	nop
	nop
	nop
	nop
	p.sw x8,x29(x31!)
	sub x31,x31,x29
	p.lw x8,x29(x31!)
	nop
	nop
	nop
	nop

	sub x9, x9, x30
	nop
	nop
	nop
	nop
	p.sw x9, x29(x31!)
	sub x31,x31,x29
	p.lw x9,x29(x31!)
	nop
	nop
	nop
	nop
	xor x9, x9,x9
	nop
	nop
	nop
	nop
	p.sw x9,x29(x31!)
	sub x31,x31,x29
	p.lw x9,x29(x31!)
	nop
	nop
	nop
	nop

	sub x10, x10, x30
	nop
	nop
	nop
	nop
	p.sw x10, x29(x31!)
	sub x31,x31,x29
	p.lw x10,x29(x31!)
	nop
	nop
	nop
	nop
	xor x10, x10,x10
	nop
	nop
	nop
	nop
	p.sw x10,x29(x31!)
	sub x31,x31,x29
	p.lw x10,x29(x31!)
	nop
	nop
	nop
	nop

	sub x11, x11, x30
	nop
	nop
	nop
	nop
	p.sw x11, x29(x31!)
	sub x31,x31,x29
	p.lw x11,x29(x31!)
	nop
	nop
	nop
	nop
	xor x11, x11,x11
	nop
	nop
	nop
	nop
	p.sw x11,x29(x31!)
	sub x31,x31,x29
	p.lw x11,x29(x31!)
	nop
	nop
	nop
	nop

	sub x12, x12, x30
	nop
	nop
	nop
	nop
	p.sw x12, x29(x31!)
	sub x31,x31,x29
	p.lw x12,x29(x31!)
	nop
	nop
	nop
	nop
	xor x12, x12,x12
	nop
	nop
	nop
	nop
	p.sw x12,x29(x31!)
	sub x31,x31,x29
	p.lw x12,x29(x31!)
	nop
	nop
	nop
	nop

	sub x13, x13, x30
	nop
	nop
	nop
	nop
	p.sw x13, x29(x31!)
	sub x31,x31,x29
	p.lw x13,x29(x31!)
	nop
	nop
	nop
	nop
	xor x13, x13,x13
	nop
	nop
	nop
	nop
	p.sw x13,x29(x31!)
	sub x31,x31,x29
	p.lw x13,x29(x31!)
	nop
	nop
	nop
	nop

	sub x14, x14, x30
	nop
	nop
	nop
	nop
	p.sw x14, x29(x31!)
	sub x31,x31,x29
	p.lw x14,x29(x31!)
	nop
	nop
	nop
	nop
	xor x14, x14,x14
	nop
	nop
	nop
	nop
	p.sw x14,x29(x31!)
	sub x31,x31,x29
	p.lw x14,x29(x31!)
	nop
	nop
	nop
	nop

	sub x15, x15, x30
	nop
	nop
	nop
	nop
	p.sw x15, x29(x31!)
	sub x31,x31,x29
	p.lw x15,x29(x31!)
	nop
	nop
	nop
	nop
	xor x15, x15,x15
	nop
	nop
	nop
	nop
	p.sw x15,x29(x31!)
	sub x31,x31,x29
	p.lw x15,x29(x31!)
	nop
	nop
	nop
	nop

	sub x16, x16, x30
	nop
	nop
	nop
	nop
	p.sw x16, x29(x31!)
	sub x31,x31,x29
	p.lw x16,x29(x31!)
	nop
	nop
	nop
	nop
	xor x16, x16,x16
	nop
	nop
	nop
	nop
	p.sw x16,x29(x31!)
	sub x31,x31,x29
	p.lw x16,x29(x31!)
	nop
	nop
	nop
	nop

	sub x17, x17, x30
	nop
	nop
	nop
	nop
	p.sw x17, x29(x31!)
	sub x31,x31,x29
	p.lw x17,x29(x31!)
	nop
	nop
	nop
	nop
	xor x17, x17,x17
	nop
	nop
	nop
	nop
	p.sw x17,x29(x31!)
	sub x31,x31,x29
	p.lw x17,x29(x31!)
	nop
	nop
	nop
	nop

	sub x18, x18, x30
	nop
	nop
	nop
	nop
	p.sw x18, x29(x31!)
	sub x31,x31,x29
	p.lw x18,x29(x31!)
	nop
	nop
	nop
	nop
	xor x18, x18,x18
	nop
	nop
	nop
	nop
	p.sw x18,x29(x31!)
	sub x31,x31,x29
	p.lw x18,x29(x31!)
	nop
	nop
	nop
	nop

	sub x19, x19, x30
	nop
	nop
	nop
	nop
	p.sw x19, x29(x31!)
	sub x31,x31,x29
	p.lw x19,x29(x31!)
	nop
	nop
	nop
	nop
	xor x19, x19,x19
	nop
	nop
	nop
	nop
	p.sw x19,x29(x31!)
	sub x31,x31,x29
	p.lw x19,x29(x31!)
	nop
	nop
	nop
	nop

	sub x20, x20, x30
	nop
	nop
	nop
	nop
	p.sw x20, x29(x31!)
	sub x31,x31,x29
	p.lw x20,x29(x31!)
	nop
	nop
	nop
	nop
	xor x20, x20,x20
	nop
	nop
	nop
	nop
	p.sw x20,x29(x31!)
	sub x31,x31,x29
	p.lw x20,x29(x31!)
	nop
	nop
	nop
	nop

	sub x21, x21, x30
	nop
	nop
	nop
	nop
	p.sw x21, x29(x31!)
	sub x31,x31,x29
	p.lw x21,x29(x31!)
	nop
	nop
	nop
	nop
	xor x21, x21,x21
	nop
	nop
	nop
	nop
	p.sw x21,x29(x31!)
	sub x31,x31,x29
	p.lw x21,x29(x31!)
	nop
	nop
	nop
	nop

	sub x22, x22, x30
	nop
	nop
	nop
	nop
	p.sw x22, x29(x31!)
	sub x31,x31,x29
	p.lw x22,x29(x31!)
	nop
	nop
	nop
	nop
	xor x22, x22,x22
	nop
	nop
	nop
	nop
	p.sw x22,x29(x31!)
	sub x31,x31,x29
	p.lw x22,x29(x31!)
	nop
	nop
	nop
	nop

	sub x23, x23, x30
	nop
	nop
	nop
	nop
	p.sw x23, x29(x31!)
	sub x31,x31,x29
	p.lw x23,x29(x31!)
	nop
	nop
	nop
	nop
	xor x23, x23,x23
	nop
	nop
	nop
	nop
	p.sw x23,x29(x31!)
	sub x31,x31,x29
	p.lw x23,x29(x31!)
	nop
	nop
	nop
	nop

	sub x24, x24, x30
	nop
	nop
	nop
	nop
	p.sw x24, x29(x31!)
	sub x31,x31,x29
	p.lw x24,x29(x31!)
	nop
	nop
	nop
	nop
	xor x24, x24,x24
	nop
	nop
	nop
	nop
	p.sw x24,x29(x31!)
	sub x31,x31,x29
	p.lw x24,x29(x31!)
	nop
	nop
	nop
	nop

	sub x25, x25, x30
	nop
	nop
	nop
	nop
	p.sw x25, x29(x31!)
	sub x31,x31,x29
	p.lw x25,x29(x31!)
	nop
	nop
	nop
	nop
	xor x25, x25,x25
	nop
	nop
	nop
	nop
	p.sw x25,x29(x31!)
	sub x31,x31,x29
	p.lw x25,x29(x31!)
	nop
	nop
	nop
	nop

	sub x26, x26, x30
	nop
	nop
	nop
	nop
	p.sw x26, x29(x31!)
	sub x31,x31,x29
	p.lw x26,x29(x31!)
	nop
	nop
	nop
	nop
	xor x26, x26,x26
	nop
	nop
	nop
	nop
	p.sw x26,x29(x31!)
	sub x31,x31,x29
	p.lw x26,x29(x31!)
	nop
	nop
	nop
	nop

	sub x27, x27, x30
	nop
	nop
	nop
	nop
	p.sw x27, x29(x31!)
	sub x31,x31,x29
	p.lw x27,x29(x31!)
	nop
	nop
	nop
	nop
	xor x27, x27,x27
	nop
	nop
	nop
	nop
	p.sw x27,x29(x31!)
	sub x31,x31,x29
	p.lw x27,x29(x31!)
	nop
	nop
	nop
	nop

	sub x28, x28, x30
	nop
	nop
	nop
	nop
	p.sw x28, x29(x31!)
	sub x31,x31,x29
	p.lw x8,x29(x31!)
	nop
	nop
	nop
	nop
	xor x28, x28,x28
	nop
	nop
	nop
	nop
	p.sw x28,x29(x31!)
	sub x31,x31,x29
	p.lw x28,x29(x31!)
	nop
	nop
	nop
	nop

	xor x1,x1,x1
	xor x2,x2,x2
	xor x3,x3,x3
	xor x4,x4,x4
	xor x29,x29,x29
	xor x30,x30,x30
	add x1,x0,x31
	xor x31,x31,x31
	addi x3,x3,4

	addi x2,x2,1

	sub x29, x29, x2
	nop
	nop
	nop
	nop
	p.sw x29, x3(x1!)
	sub x1,x1,x3
	p.lw x29,x3(x1!)
	nop
	nop
	nop
	nop
	xor x29,x29,x29
	nop
	nop
	nop
	nop
	p.sw x29,x3(x1!)
	sub x1,x1,x3
	p.lw x29,x3(x1!)
	nop
	nop
	nop	     		 
	nop
	sub x30, x30, x2
	nop
	nop
	nop
	nop
	p.sw x30, x3(x1!)
	sub x1,x1,x3
	p.lw x30,x3(x1!)
	nop
	nop
	nop
	nop
	xor x30,x30,x30
	nop
	nop
	nop
	nop
	p.sw x30,x3(x1!)
	sub x1,x1,x3
	p.lw x30,x3(x1!)
	nop
	nop
	nop
	nop
	sub x31, x31, x2
	nop
	nop
	nop
	nop
	p.sw x31, x3(x1!)
	sub x1,x1,x3
	p.lw x31,x3(x1!)
	nop
	nop
	nop
	nop
	xor x31,x31,x31
	nop
	nop
	nop
	nop
	p.sw x31,x3(x1!)
	sub x1,x1,x3
	p.lw x31,x3(x1!)
	nop
	nop	 
	nop
	nop

	xor x0,x0,x0
	add x31,x0,x1
	xor x1,x1,x1
	xor x2,x2,x2
	xor x3,x3,x3
	xor x4,x4,x4
	xor x5,x5,x5
	xor x6,x6,x6
	xor x7,x7,x7
	xor x8,x8,x8
	xor x9,x9,x9
	xor x10,x10,x10
	xor x11,x11,x11
	xor x12,x12,x12
	xor x13,x13,x13
	xor x14,x14,x14
	xor x15,x15,x15
	xor x16,x16,x16
	xor x17,x17,x17
	xor x18,x18,x18
	xor x19,x19,x19
	xor x20,x20,x20
	xor x21,x21,x21
	xor x22,x22,x22
	xor x23,x23,x23
	xor x24,x24,x24
	xor x25,x25,x25
	xor x26,x26,x26
	xor x27,x27,x27
	xor x28,x28,x28
	xor x29,x29,x29
	xor x30,x30,x30

	addi x29,x29,4
	addi x30,x30,1

	sub x0, x0, x30
	p.sw x0, x29(x31!)
	sub x31,x31,x29
	p.lw x0,x29(x31!)

	xor x0, x0,x0
	p.sw x0,x29(x31!)
	sub x31,x31,x29
	p.lw x0,x29(x31!)

	sub x1, x1, x30
	p.sw x1, x29(x31!)
	sub x31,x31,x29
	p.lw x1,x29(x31!)

	xor x1, x1,x1
	p.sw x1,x29(x31!)
	sub x31,x31,x29
	p.lw x1,x29(x31!)

	sub x2, x2, x30
	p.sw x2, x29(x31!)
	sub x31,x31,x29
	p.lw x2,x29(x31!)

	xor x2, x2,x2
	p.sw x2,x29(x31!)
	sub x31,x31,x29
	p.lw x2,x29(x31!)

	sub x3, x3, x30
	p.sw x3, x29(x31!)
	sub x31,x31,x29
	p.lw x3,x29(x31!)

	xor x3, x3,x3
	p.sw x3,x29(x31!)
	sub x31,x31,x29
	p.lw x3,x29(x31!)

	sub x4, x4, x30
	p.sw x4, x29(x31!)
	sub x31,x31,x29
	p.lw x4,x29(x31!)

	xor x4, x4,x4
	p.sw x4,x29(x31!)
	sub x31,x31,x29
	p.lw x4,x29(x31!)

	sub x5, x5, x30
	p.sw x5, x29(x31!)
	sub x31,x31,x29
	p.lw x5,x29(x31!)

	xor x5, x5,x5
	p.sw x5,x29(x31!)
	sub x31,x31,x29
	p.lw x5,x29(x31!)

	sub x6, x6, x30
	p.sw x6, x29(x31!)
	sub x31,x31,x29
	p.lw x6,x29(x31!)

	xor x6, x6,x6
	p.sw x6,x29(x31!)
	sub x31,x31,x29
	p.lw x6,x29(x31!)

	sub x7, x7, x30
	p.sw x7, x29(x31!)
	sub x31,x31,x29
	p.lw x7,x29(x31!)

	xor x7, x7,x7
	p.sw x7,x29(x31!)
	sub x31,x31,x29
	p.lw x7,x29(x31!)

	sub x8, x8, x30
	p.sw x8, x29(x31!)
	sub x31,x31,x29
	p.lw x8,x29(x31!)

	xor x8, x8,x8
	p.sw x8,x29(x31!)
	sub x31,x31,x29
	p.lw x8,x29(x31!)

	sub x9, x9, x30
	p.sw x9, x29(x31!)
	sub x31,x31,x29
	p.lw x9,x29(x31!)

	xor x9, x9,x9
	p.sw x9,x29(x31!)
	sub x31,x31,x29
	p.lw x9,x29(x31!)

	sub x10, x10, x30
	p.sw x10, x29(x31!)
	sub x31,x31,x29
	p.lw x10,x29(x31!)

	xor x10, x10,x10
	p.sw x10,x29(x31!)
	sub x31,x31,x29
	p.lw x10,x29(x31!)

	sub x11, x11, x30
	p.sw x11, x29(x31!)
	sub x31,x31,x29
	p.lw x11,x29(x31!)

	xor x11, x11,x11
	p.sw x11,x29(x31!)
	sub x31,x31,x29
	p.lw x0,x29(x31!)

	sub x12, x12, x30
	p.sw x12, x29(x31!)
	sub x31,x31,x29
	p.lw x12,x29(x31!)

	xor x12, x12,x12
	p.sw x12,x29(x31!)
	sub x31,x31,x29
	p.lw x12,x29(x31!)

	sub x13, x13, x30
	p.sw x13, x29(x31!)
	sub x31,x31,x29
	p.lw x13,x29(x31!)

	xor x13, x13,x13
	p.sw x13,x29(x31!)
	sub x31,x31,x29
	p.lw x13,x29(x31!)

	sub x14, x14, x30
	p.sw x14, x29(x31!)
	sub x31,x31,x29
	p.lw x14,x29(x31!)

	xor x14, x14,x14
	p.sw x14,x29(x31!)
	sub x31,x31,x29
	p.lw x14,x29(x31!)

	sub x15, x15, x30
	p.sw x15, x29(x31!)
	sub x31,x31,x29
	p.lw x15,x29(x31!)

	xor x15, x15,x15
	p.sw x15,x29(x31!)
	sub x31,x31,x29
	p.lw x15,x29(x31!)

	sub x16, x16, x30
	p.sw x16, x29(x31!)
	sub x31,x31,x29
	p.lw x16,x29(x31!)

	xor x16, x16,x16
	p.sw x16,x29(x31!)
	sub x31,x31,x29
	p.lw x16,x29(x31!)

	sub x17, x17, x30
	p.sw x17, x29(x31!)
	sub x31,x31,x29
	p.lw x17,x29(x31!)

	xor x17, x17,x17
	p.sw x17,x29(x31!)
	sub x31,x31,x29
	p.lw x17,x29(x31!)

	sub x18, x18, x30
	p.sw x18, x29(x31!)
	sub x31,x31,x29
	p.lw x18,x29(x31!)

	xor x18, x18,x18
	p.sw x18,x29(x31!)
	sub x31,x31,x29
	p.lw x18,x29(x31!)

	sub x19, x19, x30
	p.sw x19, x29(x31!)
	sub x31,x31,x29
	p.lw x19,x29(x31!)

	xor x19, x19,x19
	p.sw x19,x29(x31!)
	sub x31,x31,x29
	p.lw x19,x29(x31!)

	sub x20, x20, x30
	p.sw x20, x29(x31!)
	sub x31,x31,x29
	p.lw x20,x29(x31!)

	xor x20, x20,x20
	p.sw x20,x29(x31!)
	sub x31,x31,x29
	p.lw x20,x29(x31!)

	sub x21, x21, x30
	p.sw x21, x29(x31!)
	sub x31,x31,x29
	p.lw x21,x29(x31!)

	xor x21, x21,x21
	p.sw x21,x29(x31!)
	sub x31,x31,x29
	p.lw x21,x29(x31!)

	sub x22, x22, x30
	p.sw x22, x29(x31!)
	sub x31,x31,x29
	p.lw x22,x29(x31!)

	xor x22, x22,x22
	p.sw x22,x29(x31!)
	sub x31,x31,x29
	p.lw x22,x29(x31!)

	sub x23, x23, x30
	p.sw x23, x29(x31!)
	sub x31,x31,x29
	p.lw x23,x29(x31!)

	xor x23, x23,x23
	p.sw x23,x29(x31!)
	sub x31,x31,x29
	p.lw x23,x29(x31!)

	sub x24, x24, x30
	p.sw x24, x29(x31!)
	sub x31,x31,x29
	p.lw x24,x29(x31!)

	xor x24, x24,x24
	p.sw x24,x29(x31!)
	sub x31,x31,x29
	p.lw x24,x29(x31!)

	sub x25, x25, x30
	p.sw x25, x29(x31!)
	sub x31,x31,x29
	p.lw x25,x29(x31!)

	xor x25, x25,x25
	p.sw x25,x29(x31!)
	sub x31,x31,x29
	p.lw x25,x29(x31!)

	sub x26, x26, x30
	p.sw x26, x29(x31!)
	sub x31,x31,x29
	p.lw x26,x29(x31!)

	xor x26, x26,x26
	p.sw x26,x29(x31!)
	sub x31,x31,x29
	p.lw x26,x29(x31!)

	sub x27, x27, x30
	p.sw x27, x29(x31!)
	sub x31,x31,x29
	p.lw x27,x29(x31!)

	xor x27, x27,x27
	p.sw x27,x29(x31!)
	sub x31,x31,x29
	p.lw x27,x29(x31!)

	sub x28, x28, x30
	p.sw x28, x29(x31!)
	sub x31,x31,x29
	p.lw x28,x29(x31!)

	xor x28, x28,x28
	p.sw x28,x29(x31!)
	sub x31,x31,x29
	p.lw x28,x29(x31!)

	xor x29,x29,x29
	xor x3,x3,x3
	addi x3,x3,4

	sub x29, x29, x30
	p.sw x29,x3(x31!)
	sub x31,x31,x3
	p.lw x29,x3(x31!)

	xor x29, x29,x29
	p.sw x29,x3(x31!)
	sub x31,x31,x3
	p.lw x29,x29(x31!)

	xor x1,x1,x1
	xor x2,x2,x2

	add x1,x2,x31

	xor x30,x30,x30
	xor x31,x31,x31
	addi x2,x2,1

	sub x30, x30, x2
	p.sw x30, x3(x1!)
	sub x1,x1,x3
	p.lw x30,x3(x1!)

	xor x30,x30,x30
	p.sw x30,x3(x1!)
	sub x1,x1,x3
	p.lw x30,x3(x1!)

	sub x31, x31, x2
	p.sw x31, x3(x1!)
	sub x31,x31,x3
	p.lw x31,x3(x1!)

	xor x31,x31,x31
	p.sw x31,x3(x1!)
	sub x31,x31,x3
	p.lw x31,x3(x1!)

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
