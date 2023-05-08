.global test_misc
.text

test_misc:

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
	xor x31,x31,x31


	lui x31,512
	lui x29,256
	lui x30, 1024
	lui x1,32768
	addi x11,x11,32

	lp.setup x0,x11,lrecov1

	csrr x29,0x7b0
	p.sw x29,x30(x31)
	csrr x29,0x7b1
	p.sw x29,x30(x31)
	csrr x29,0x7b2
	p.sw x29,x30(x31)
	csrr x29,0x7b4
	p.sw x29,x30(x31)
	csrr x29,0x7b5
	p.sw x29,x30(x31)
	csrr x29,0x7b6
	p.sw x29,x30(x31)

	srai x1,x1,1
lrecov1: 
	p.sw x1,x30(x31)


	addi x7, x0, 32
	addi x8,x0, -1

	lp.starti x1,lprecov2
	lp.endi x1, lprecov2
	lp.count x1,x7
	lp.starti x0, lprecov3
	lp.endi x0,lprecov3
	lp.counti x0,16

	csrr x29,0x7b0
	p.sw x29,x30(x31)
	csrr x29,0x7b1
	p.sw x29,x30(x31)
	csrr x29,0x7b2
	p.sw x29,x30(x31)
	csrr x29,0x7b4
	p.sw x29,x30(x31)
	csrr x29,0x7b5
	p.sw x29,x30(x31)
	csrr x29,0x7b6
lprecov3: 
	p.sw x29,x30(x31)

lprecov2: 
	nop


	lui x31,256
	addi x20,x20,-1
	addi x18,x18,1
	addi x21,x21,63


	lp.setup x0,x21,comprl1
	.option rvc
	c.li x8,15
	c.nop
	sw x8,4(x31)
	c.nop
	c.li x9,4
	c.nop
	sw x10,4(x31)
	c.nop
	c.li x4,1
	c.nop
	sw x4,4(x31)
	c.nop
	c.li x5,31
	c.nop
	sw x5,4(x31)
	c.nop
	c.lui x9,1
	c.nop
	sw x9,4(x31)
	c.nop
	c.addi x8,7
	c.nop
	sw x8,4(x31)
	c.nop
	c.slli x8,3
	c.nop
	sw x8,4(x31)	
	c.nop
	c.srli x8,2
	c.nop
	sw x8,4(x31)
	c.nop
	c.srai x8,1
	c.nop
	sw x8,4(x31)
	c.nop
	c.and x8,x9
	c.nop
	sw x9,4(x31)
	c.nop
	c.or x8,x9
	c.nop
	sw x8,4(x31)
	c.nop
	c.xor x8,x9
	c.nop
	sw x8,4(x31)
	c.nop
	c.sub x8,x9
	c.nop
	sw x3,4(x31)
	c.nop
	c.add x8,x9
	c.nop
	sw x3,4(x31)
	c.nop
	c.sub x9,x8
	c.nop
	sw x5,4(x31)
	c.nop

comprl1: 
	.option norvc


	xor x0,x0,x0
	xor x31,x31,x31
	add x31,x31,x1
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
	addi x29,x29,-1
	addi x30,x30,4

	lui x0,1048560
	srl x0,x0,3
	nop
	nop
	nop
	nop
	p.sw x0, x30(x31!)
	sub x31,x31,x30
	p.lw x0,x30(x31!)
	nop
	nop
	nop
	nop
	xor x0,x0,x29  
	nop
	nop
	nop
	nop
	p.sw x0, x30(x31!)
	sub x31,x31,x30
	p.lw x0,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x1,1048560
	srl x1,x1,3
	nop
	nop
	nop
	nop
	p.sw x1, x30(x31!)
	sub x31,x31,x30
	p.lw x1,x30(x31!)
	nop
	nop
	nop
	nop
	xor x1,x1,x29  
	nop
	nop
	nop
	nop
	p.sw x1, x30(x31!)
	sub x31,x31,x30
	p.lw x1,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x2,1048560
	srl x2,x2,3
	nop
	nop
	nop
	nop
	p.sw x2, x30(x31!)
	sub x31,x31,x30
	p.lw x2,x30(x31!)
	nop
	nop
	nop
	nop
	xor x2,x2,x29  
	nop
	nop
	nop
	nop
	p.sw x2, x30(x31!)
	sub x31,x31,x30
	p.lw x2,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x3,1048560
	srl x3,x3,3
	nop
	nop
	nop
	nop
	p.sw x3, x30(x31!)
	sub x31,x31,x30
	p.lw x3,x30(x31!)
	nop
	nop
	nop
	nop
	xor x3,x3,x29  
	nop
	nop
	nop
	nop
	p.sw x3, x30(x31!)
	sub x31,x31,x30
	p.lw x3,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x4,1048560
	srl x4,x4,3
	nop
	nop
	nop
	nop
	p.sw x4, x30(x31!)
	sub x31,x31,x30
	p.lw x4,x30(x31!)
	nop
	nop
	nop
	nop
	xor x4,x4,x29  
	nop
	nop
	nop
	nop
	p.sw x4, x30(x31!)
	sub x31,x31,x30
	p.lw x4,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x5,1048560
	srl x5,x5,3
	nop
	nop
	nop
	nop
	p.sw x5, x30(x31!)
	sub x31,x31,x30
	p.lw x5,x30(x31!)
	nop
	nop
	nop
	nop
	xor x5,x5,x29  
	nop
	nop
	nop
	nop
	p.sw x5, x30(x31!)
	sub x31,x31,x30
	p.lw x5,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x6,1048560
	srl x6,x6,3
	nop
	nop
	nop
	nop
	p.sw x6, x30(x31!)
	sub x31,x31,x30
	p.lw x6,x30(x31!)
	nop
	nop
	nop
	nop
	xor x6,x6,x29  
	nop
	nop
	nop
	nop
	p.sw x6, x30(x31!)
	sub x31,x31,x30
	p.lw x6,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x7,1048560
	srl x7,x7,3
	nop
	nop
	nop
	nop
	p.sw x7, x30(x31!)
	sub x31,x31,x30
	p.lw x7,x30(x31!)
	nop
	nop
	nop
	nop
	xor x7,x7,x29  
	nop
	nop
	nop
	nop
	p.sw x7, x30(x31!)
	sub x31,x31,x30
	p.lw x7,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x8,1048560
	srl x8,x8,3
	nop
	nop
	nop
	nop
	p.sw x8, x30(x31!)
	sub x31,x31,x30
	p.lw x8,x30(x31!)
	nop
	nop
	nop
	nop
	xor x8,x8,x29  
	nop
	nop
	nop
	nop
	p.sw x8, x30(x31!)
	sub x31,x31,x30
	p.lw x8,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x9,1048560
	srl x9,x9,3
	nop
	nop
	nop
	nop
	p.sw x9, x30(x31!)
	sub x31,x31,x30
	p.lw x9,x30(x31!)
	nop
	nop
	nop
	nop
	xor x9,x9,x29  
	nop
	nop
	nop
	nop
	p.sw x9, x30(x31!)
	sub x31,x31,x30
	p.lw x9,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x10,1048560
	srl x10,x10,3
	nop
	nop
	nop
	nop
	p.sw x10, x30(x31!)
	sub x31,x31,x30
	p.lw x10,x30(x31!)
	nop
	nop
	nop
	nop
	xor x10,x10,x29  
	nop
	nop
	nop
	nop
	p.sw x10, x30(x31!)
	sub x31,x31,x30
	p.lw x10,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x11,1048560
	srl x11,x11,3
	nop
	nop
	nop
	nop
	p.sw x11, x30(x31!)
	sub x31,x31,x30
	p.lw x11,x30(x31!)
	nop
	nop
	nop
	nop
	xor x11,x11,x29  
	nop
	nop
	nop
	nop
	p.sw x11, x30(x31!)
	sub x31,x31,x30
	p.lw x11,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x12,1048560
	srl x12,x12,3
	nop
	nop
	nop
	nop
	p.sw x12, x30(x31!)
	sub x31,x31,x30
	p.lw x12,x30(x31!)
	nop
	nop
	nop
	nop
	xor x12,x12,x29  
	nop
	nop
	nop
	nop
	p.sw x13, x30(x31!)
	sub x31,x31,x30
	p.lw x13,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x14,1048560
	srl x14,x14,3
	nop
	nop
	nop
	nop
	p.sw x14, x30(x31!)
	sub x31,x31,x30
	p.lw x14,x30(x31!)
	nop
	nop
	nop
	nop
	xor x14,x14,x29  
	nop
	nop
	nop
	nop
	p.sw x14, x30(x31!)
	sub x31,x31,x30
	p.lw x14,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x15,1048560
	srl x15,x15,3
	nop
	nop
	nop
	nop
	p.sw x15, x30(x31!)
	sub x31,x31,x30
	p.lw x15,x30(x31!)
	nop
	nop
	nop
	nop
	xor x15,x15,x29  
	nop
	nop
	nop
	nop
	p.sw x15, x30(x31!)
	sub x31,x31,x30
	p.lw x15,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x16,1048560
	srl x16,x16,3
	nop
	nop
	nop
	nop
	p.sw x16, x30(x31!)
	sub x31,x31,x30
	p.lw x16,x30(x31!)
	nop
	nop
	nop
	nop
	xor x16,x16,x29  
	nop
	nop
	nop
	nop
	p.sw x16, x30(x31!)
	sub x31,x31,x30
	p.lw x16,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x17,1048560
	srl x17,x17,3
	nop
	nop
	nop
	nop
	p.sw x17, x30(x31!)
	sub x31,x31,x30
	p.lw x17,x30(x31!)
	nop
	nop
	nop
	nop
	xor x17,x17,x29  
	nop
	nop
	nop
	nop
	p.sw x17, x30(x31!)
	sub x31,x31,x30
	p.lw x17,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x18,1048560
	srl x18,x18,3
	nop
	nop
	nop
	nop
	p.sw x18, x30(x31!)
	sub x31,x31,x30
	p.lw x18,x30(x31!)
	nop
	nop
	nop
	nop
	xor x18,x18,x29  
	nop
	nop
	nop
	nop
	p.sw x18, x30(x31!)
	sub x31,x31,x30
	p.lw x18,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x19,1048560
	srl x19,x19,3
	nop
	nop
	nop
	nop
	p.sw x19, x30(x31!)
	sub x31,x31,x30
	p.lw x19,x30(x31!)
	nop
	nop
	nop
	nop
	xor x19,x19,x29  
	nop
	nop
	nop
	nop

	lui x20,1048560
	srl x20,x20,3
	nop
	nop
	nop
	nop
	p.sw x20, x30(x31!)
	sub x31,x31,x30
	p.lw x20,x30(x31!)
	nop
	nop
	nop
	nop
	xor x20,x20,x29  
	nop
	nop
	nop
	nop
	p.sw x20, x30(x31!)
	sub x31,x31,x30
	p.lw x20,x30(x31!)
	nop
	nop
	nop
	nop
	nop


	lui x21,1048560
	srl x21,x21,3
	nop
	nop
	nop
	nop
	p.sw x21, x30(x31!)
	sub x31,x31,x30
	p.lw x21,x30(x31!)
	nop
	nop
	nop
	nop
	xor x21,x21,x29  
	nop
	nop
	nop
	nop
	p.sw x21, x30(x31!)
	sub x31,x31,x30
	p.lw x21,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x22,1048560
	srl x22,x22,3
	nop
	nop
	nop
	nop
	p.sw x22, x30(x31!)
	sub x31,x31,x30
	p.lw x22,x30(x31!)
	nop
	nop
	nop
	nop
	xor x22,x22,x29  
	nop
	nop
	nop
	nop
	p.sw x22, x30(x31!)
	sub x31,x31,x30
	p.lw x22,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x23,1048560
	srl x23,x23,3
	nop
	nop
	nop
	nop
	p.sw x23, x30(x31!)
	sub x31,x31,x30
	p.lw x23,x30(x31!)
	nop
	nop
	nop
	nop
	xor x23,x23,x29  
	nop
	nop
	nop
	nop
	p.sw x23, x30(x31!)
	sub x31,x31,x30
	p.lw x23,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x24,1048560
	srl x24,x24,3
	nop
	nop
	nop
	nop
	p.sw x24, x30(x31!)
	sub x31,x31,x30
	p.lw x24,x30(x31!)
	nop
	nop
	nop
	nop
	xor x24,x24,x29  
	nop
	nop
	nop
	nop
	p.sw x24, x30(x31!)
	sub x31,x31,x30
	p.lw x24,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x25,1048560
	srl x25,x25,3
	nop
	nop
	nop
	nop
	p.sw x25, x30(x31!)
	sub x31,x31,x30
	p.lw x25,x30(x31!)
	nop
	nop
	nop
	nop
	xor x25,x25,x29  
	nop
	nop
	nop
	nop
	p.sw x25, x30(x31!)
	sub x31,x31,x30
	p.lw x25,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x26,1048560
	srl x26,x26,3
	nop
	nop
	nop
	nop
	p.sw x26, x30(x31!)
	sub x31,x31,x30
	p.lw x26,x30(x31!)
	nop
	nop
	nop
	nop
	xor x26,x26,x29  
	nop
	nop
	nop
	nop
	p.sw x26, x30(x31!)
	sub x31,x31,x30
	p.lw x26,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x27,1048560
	srl x27,x27,3
	nop
	nop
	nop
	nop
	p.sw x27, x30(x31!)
	sub x31,x31,x30
	p.lw x27,x30(x31!)
	nop
	nop
	nop
	nop
	xor x27,x27,x29  
	nop
	nop
	nop
	nop
	p.sw x27, x30(x31!)
	sub x31,x31,x30
	p.lw x27,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x27,1048560
	srl x27,x27,3
	nop
	nop
	nop
	nop
	p.sw x27, x30(x31!)
	sub x31,x31,x30
	p.lw x27,x30(x31!)
	nop
	nop
	nop
	nop
	xor x27,x27,x29  
	nop
	nop
	nop
	nop
	p.sw x27, x30(x31!)
	sub x31,x31,x30
	p.lw x27,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x28,1048560
	srl x28,x28,3
	nop
	nop
	nop
	nop
	p.sw x28, x30(x31!)
	sub x31,x31,x30
	p.lw x28,x30(x31!)
	nop
	nop
	nop
	nop
	xor x28,x28,x29  
	nop
	nop
	nop
	nop
	p.sw x28, x30(x31!)
	sub x31,x31,x30
	p.lw x28,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	xor x1,x1,x1
	add x1,x31,x1
	xor x31,x31,x31
	xor x2,x2,x2
	addi x2,x2,4
	xor x3,x3,x3
	addi x3,x3,-1

	lui x29,1048560
	srl x29,x29,3
	nop
	nop
	nop
	nop
	p.sw x29, x2(x1!)
	sub x1,x1,x2
	p.lw x29,x2(x1!)
	nop
	nop
	nop
	nop
	xor x29,x29,x3  
	nop
	nop
	nop
	nop
	p.sw x29, x2(x1!)
	sub x1,x1,x2
	p.lw x29,x2(x1!)
	nop
	nop
	nop
	nop
	nop

	lui x30,1048560
	srl x30,x30,3
	nop
	nop
	nop
	nop
	p.sw x30, x2(x1!)
	sub x1,x1,x2
	p.lw x30,x2(x1!)
	nop
	nop
	nop
	nop
	xor x30,x30,x3  
	nop
	nop
	nop
	nop
	p.sw x30, x2(x1!)
	sub x1,x1,x2
	p.lw x30,x2(x1!)
	nop
	nop
	nop
	nop
	nop

	lui x31,1048560
	srl x31,x31,3
	nop
	nop
	nop
	nop
	p.sw x31, x2(x1!)
	sub x1,x1,x2
	p.lw x31,x2(x1!)
	nop
	nop
	nop
	nop
	xor x31,x31,x3  
	nop
	nop
	nop
	nop
	p.sw x31, x2(x1!)
	sub x1,x1,x2
	p.lw x31,x2(x1!)
	nop
	nop
	nop
	nop
	nop

	xor x0,x0,x0
	xor x31,x31,x31
	add x31,x31,x1
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

	addi x29,x29,-1
	addi x30,x30,4

	lui x0,4080
	ori x0,x0,255
	nop
	nop
	nop
	nop
	p.sw x0, x30(x31!)
	sub x31,x31,x30
	p.lw x0,x30(x31!)
	nop
	nop
	nop
	nop
	xor x0,x0,x29  
	nop
	nop
	nop
	nop
	p.sw x0, x30(x31!)
	sub x31,x31,x30
	p.lw x0,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x1,4080
	ori x1,x1,255
	nop
	nop
	nop
	nop
	p.sw x1, x30(x31!)
	sub x31,x31,x30
	p.lw x1,x30(x31!)
	nop
	nop
	nop
	nop
	xor x1,x1,x29  
	nop
	nop
	nop
	nop
	p.sw x1, x30(x31!)
	sub x31,x31,x30
	p.lw x1,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x2,4080
	ori x2,x2,255
	nop
	nop
	nop
	nop
	p.sw x2, x30(x31!)
	sub x31,x31,x30
	p.lw x2,x30(x31!)
	nop
	nop
	nop
	nop
	xor x2,x2,x29  
	nop
	nop
	nop
	nop
	p.sw x2, x30(x31!)
	sub x31,x31,x30
	p.lw x2,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x3,4080
	ori x3,x3,255
	nop
	nop
	nop
	nop
	p.sw x3, x30(x31!)
	sub x31,x31,x30
	p.lw x3,x30(x31!)
	nop
	nop
	nop
	nop
	xor x3,x3,x29  
	nop
	nop
	nop
	nop
	p.sw x3, x30(x31!)
	sub x31,x31,x30
	p.lw x3,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x4,4080
	ori x4,x4,255
	nop
	nop
	nop
	nop
	p.sw x4, x30(x31!)
	sub x31,x31,x30
	p.lw x4,x30(x31!)
	nop
	nop
	nop
	nop
	xor x4,x4,x29  
	nop
	nop
	nop
	nop
	p.sw x4, x30(x31!)
	sub x31,x31,x30
	p.lw x4,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x5,4080
	ori x5,x5,255
	nop
	nop
	nop
	nop
	p.sw x5, x30(x31!)
	sub x31,x31,x30
	p.lw x5,x30(x31!)
	nop
	nop
	nop
	nop
	xor x5,x5,x29  
	nop
	nop
	nop
	nop
	p.sw x5, x30(x31!)
	sub x31,x31,x30
	p.lw x5,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x6,4080
	ori x6,x6,255
	nop
	nop
	nop
	nop
	p.sw x6, x30(x31!)
	sub x31,x31,x30
	p.lw x6,x30(x31!)
	nop
	nop
	nop
	nop
	xor x6,x6,x29  
	nop
	nop
	nop
	nop
	p.sw x6, x30(x31!)
	sub x31,x31,x30
	p.lw x6,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x7,4080
	ori x7,x7,255
	nop
	nop
	nop
	nop
	p.sw x7, x30(x31!)
	sub x31,x31,x30
	p.lw x7,x30(x31!)
	nop
	nop
	nop
	nop
	xor x7,x7,x29  
	nop
	nop
	nop
	nop
	p.sw x7, x30(x31!)
	sub x31,x31,x30
	p.lw x7,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x8,4080
	ori x8,x8,255
	nop
	nop
	nop
	nop
	p.sw x8, x30(x31!)
	sub x31,x31,x30
	p.lw x8,x30(x31!)
	nop
	nop
	nop
	nop
	xor x8,x8,x29  
	nop
	nop
	nop
	nop
	p.sw x8, x30(x31!)
	sub x31,x31,x30
	p.lw x8,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x9,4080
	ori x9,x9,255
	nop
	nop
	nop
	nop
	p.sw x9, x30(x31!)
	sub x31,x31,x30
	p.lw x9,x30(x31!)
	nop
	nop
	nop
	nop
	xor x9,x9,x29  
	nop
	nop
	nop
	nop
	p.sw x9, x30(x31!)
	sub x31,x31,x30
	p.lw x9,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x10,4080
	ori x10,x10,255
	nop
	nop
	nop
	nop
	p.sw x10, x30(x31!)
	sub x31,x31,x30
	p.lw x10,x30(x31!)
	nop
	nop
	nop
	nop
	xor x10,x10,x29  
	nop
	nop
	nop
	nop
	p.sw x10, x30(x31!)
	sub x31,x31,x30
	p.lw x10,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x11,4080
	ori x11,x11,255
	nop
	nop
	nop
	nop
	p.sw x11, x30(x31!)
	sub x31,x31,x30
	p.lw x11,x30(x31!)
	nop
	nop
	nop
	nop
	xor x11,x11,x29  
	nop
	nop
	nop
	nop
	p.sw x11, x30(x31!)
	sub x31,x31,x30
	p.lw x11,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x12,4080
	ori x12,x12,255
	nop
	nop
	nop
	nop
	p.sw x12, x30(x31!)
	sub x31,x31,x30
	p.lw x12,x30(x31!)
	nop
	nop
	nop
	nop
	xor x12,x12,x29  
	nop
	nop
	nop
	nop
	p.sw x13, x30(x31!)
	sub x31,x31,x30
	p.lw x13,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x14,4080
	ori x14,x14,255
	nop
	nop
	nop
	nop
	p.sw x14, x30(x31!)
	sub x31,x31,x30
	p.lw x14,x30(x31!)
	nop
	nop
	nop
	nop
	xor x14,x14,x29  
	nop
	nop
	nop
	nop
	p.sw x14, x30(x31!)
	sub x31,x31,x30
	p.lw x14,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x15,4080
	ori x15,x15,255
	nop
	nop
	nop
	nop
	p.sw x15, x30(x31!)
	sub x31,x31,x30
	p.lw x15,x30(x31!)
	nop
	nop
	nop
	nop
	xor x15,x15,x29  
	nop
	nop
	nop
	nop
	p.sw x15, x30(x31!)
	sub x31,x31,x30
	p.lw x15,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x16,4080
	ori x16,x16,255
	nop
	nop
	nop
	nop
	p.sw x16, x30(x31!)
	sub x31,x31,x30
	p.lw x16,x30(x31!)
	nop
	nop
	nop
	nop
	xor x16,x16,x29  
	nop
	nop
	nop
	nop
	p.sw x16, x30(x31!)
	sub x31,x31,x30
	p.lw x16,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x17,4080
	ori x17,x17,255
	nop
	nop
	nop
	nop
	p.sw x17, x30(x31!)
	sub x31,x31,x30
	p.lw x17,x30(x31!)
	nop
	nop
	nop
	nop
	xor x17,x17,x29  
	nop
	nop
	nop
	nop
	p.sw x17, x30(x31!)
	sub x31,x31,x30
	p.lw x17,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x18,4080
	ori x18,x18,255
	nop
	nop
	nop
	nop
	p.sw x18, x30(x31!)
	sub x31,x31,x30
	p.lw x18,x30(x31!)
	nop
	nop
	nop
	nop
	xor x18,x18,x29  
	nop
	nop
	nop
	nop
	p.sw x18, x30(x31!)
	sub x31,x31,x30
	p.lw x18,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x19,4080
	ori x19,x19,255
	nop
	nop
	nop
	nop
	p.sw x19, x30(x31!)
	sub x31,x31,x30
	p.lw x19,x30(x31!)
	nop
	nop
	nop
	nop
	xor x19,x19,x29  
	nop
	nop
	nop
	nop

	lui x20,4080
	ori x20,x20,255
	nop
	nop
	nop
	nop
	p.sw x20, x30(x31!)
	sub x31,x31,x30
	p.lw x20,x30(x31!)
	nop
	nop
	nop
	nop
	xor x20,x20,x29  
	nop
	nop
	nop
	nop
	p.sw x20, x30(x31!)
	sub x31,x31,x30
	p.lw x20,x30(x31!)
	nop
	nop
	nop
	nop
	nop


	lui x21,4080
	ori x21,x21,255
	nop
	nop
	nop
	nop
	p.sw x21, x30(x31!)
	sub x31,x31,x30
	p.lw x21,x30(x31!)
	nop
	nop
	nop
	nop
	xor x21,x21,x29  
	nop
	nop
	nop
	nop
	p.sw x21, x30(x31!)
	sub x31,x31,x30
	p.lw x21,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x22,4080
	ori x22,x22,255
	nop
	nop
	nop
	nop
	p.sw x22, x30(x31!)
	sub x31,x31,x30
	p.lw x22,x30(x31!)
	nop
	nop
	nop
	nop
	xor x22,x22,x29  
	nop
	nop
	nop
	nop
	p.sw x22, x30(x31!)
	sub x31,x31,x30
	p.lw x22,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x23,4080
	ori x23,x23,255
	nop
	nop
	nop
	nop
	p.sw x23, x30(x31!)
	sub x31,x31,x30
	p.lw x23,x30(x31!)
	nop
	nop
	nop
	nop
	xor x23,x23,x29  
	nop
	nop
	nop
	nop
	p.sw x23, x30(x31!)
	sub x31,x31,x30
	p.lw x23,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x24,4080
	ori x24,x24,255
	nop
	nop
	nop
	nop
	p.sw x24, x30(x31!)
	sub x31,x31,x30
	p.lw x24,x30(x31!)
	nop
	nop
	nop
	nop
	xor x24,x24,x29  
	nop
	nop
	nop
	nop
	p.sw x24, x30(x31!)
	sub x31,x31,x30
	p.lw x24,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x25,4080
	ori x25,x25,255
	nop
	nop
	nop
	nop
	p.sw x25, x30(x31!)
	sub x31,x31,x30
	p.lw x25,x30(x31!)
	nop
	nop
	nop
	nop
	xor x25,x25,x29  
	nop
	nop
	nop
	nop
	p.sw x25, x30(x31!)
	sub x31,x31,x30
	p.lw x25,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x26,4080
	ori x26,x26,255
	nop
	nop
	nop
	nop
	p.sw x26, x30(x31!)
	sub x31,x31,x30
	p.lw x26,x30(x31!)
	nop
	nop
	nop
	nop
	xor x26,x26,x29  
	nop
	nop
	nop
	nop
	p.sw x26, x30(x31!)
	sub x31,x31,x30
	p.lw x26,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x27,4080
	ori x27,x27,255
	nop
	nop
	nop
	nop
	p.sw x27, x30(x31!)
	sub x31,x31,x30
	p.lw x27,x30(x31!)
	nop
	nop
	nop
	nop
	xor x27,x27,x29  
	nop
	nop
	nop
	nop
	p.sw x27, x30(x31!)
	sub x31,x31,x30
	p.lw x27,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x27,4080
	ori x27,x27,255
	nop
	nop
	nop
	nop
	p.sw x27, x30(x31!)
	sub x31,x31,x30
	p.lw x27,x30(x31!)
	nop
	nop
	nop
	nop
	xor x27,x27,x29  
	nop
	nop
	nop
	nop
	p.sw x27, x30(x31!)
	sub x31,x31,x30
	p.lw x27,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x28,4080
	ori x28,x28,255
	nop
	nop
	nop
	nop
	p.sw x28, x30(x31!)
	sub x31,x31,x30
	p.lw x28,x30(x31!)
	nop
	nop
	nop
	nop
	xor x28,x28,x29  
	nop
	nop
	nop
	nop
	p.sw x28, x30(x31!)
	sub x31,x31,x30
	p.lw x28,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	xor x1,x1,x1
	add x1,x31,x1
	xor x31,x31,x31
	xor x2,x2,x2
	addi x2,x2,4
	xor x3,x3,x3
	addi x3,x3,-1

	lui x29,4080
	ori x29,x29,255
	nop
	nop
	nop
	nop
	p.sw x29, x2(x1!)
	sub x1,x1,x2
	p.lw x29,x2(x1!)
	nop
	nop
	nop
	nop
	xor x29,x29,x3  
	nop
	nop
	nop
	nop
	p.sw x29, x2(x1!)
	sub x1,x1,x2
	p.lw x29,x2(x1!)
	nop
	nop
	nop
	nop
	nop

	lui x30,4080
	ori x30,x30,255
	nop
	nop
	nop
	nop
	p.sw x30, x2(x1!)
	sub x1,x1,x2
	p.lw x30,x2(x1!)
	nop
	nop
	nop
	nop
	xor x30,x30,x3  
	nop
	nop
	nop
	nop
	p.sw x30, x2(x1!)
	sub x1,x1,x2
	p.lw x30,x2(x1!)
	nop
	nop
	nop
	nop
	nop

	lui x31,4080
	ori x31,x31,255
	nop
	nop
	nop
	nop
	p.sw x31, x2(x1!)
	sub x1,x1,x2
	p.lw x31,x2(x1!)
	nop
	nop
	nop
	nop
	xor x31,x31,x3  
	nop
	nop
	nop
	nop
	p.sw x31, x2(x1!)
	sub x1,x1,x2
	p.lw x31,x2(x1!)
	nop
	nop
	nop
	nop

	xor x0,x0,x0
	xor x31,x31,x31
	add x31,x31,x1
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

	addi x29,x29,-1
	addi x30,x30,4

	lui x0,986895
	ori x0,x0,240
	nop
	nop
	nop
	nop
	p.sw x0, x30(x31!)
	sub x31,x31,x30
	p.lw x0,x30(x31!)
	nop
	nop
	nop
	nop
	xor x0,x0,x29  
	nop
	nop
	nop
	nop
	p.sw x0, x30(x31!)
	sub x31,x31,x30
	p.lw x0,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x1,986895
	ori x1,x1,240
	nop
	nop
	nop
	nop
	p.sw x1, x30(x31!)
	sub x31,x31,x30
	p.lw x1,x30(x31!)
	nop
	nop
	nop
	nop
	xor x1,x1,x29  
	nop
	nop
	nop
	nop
	p.sw x1, x30(x31!)
	sub x31,x31,x30
	p.lw x1,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x2,986895
	ori x2,x2,240
	nop
	nop
	nop
	nop
	p.sw x2, x30(x31!)
	sub x31,x31,x30
	p.lw x2,x30(x31!)
	nop
	nop
	nop
	nop
	xor x2,x2,x29  
	nop
	nop
	nop
	nop
	p.sw x2, x30(x31!)
	sub x31,x31,x30
	p.lw x2,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x3,986895
	ori x3,x3,240
	nop
	nop
	nop
	nop
	p.sw x3, x30(x31!)
	sub x31,x31,x30
	p.lw x3,x30(x31!)
	nop
	nop
	nop
	nop
	xor x3,x3,x29  
	nop
	nop
	nop
	nop
	p.sw x3, x30(x31!)
	sub x31,x31,x30
	p.lw x3,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x4,986895
	ori x4,x4,240
	nop
	nop
	nop
	nop
	p.sw x4, x30(x31!)
	sub x31,x31,x30
	p.lw x4,x30(x31!)
	nop
	nop
	nop
	nop
	xor x4,x4,x29  
	nop
	nop
	nop
	nop
	p.sw x4, x30(x31!)
	sub x31,x31,x30
	p.lw x4,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x5,986895
	ori x5,x5,240
	nop
	nop
	nop
	nop
	p.sw x5, x30(x31!)
	sub x31,x31,x30
	p.lw x5,x30(x31!)
	nop
	nop
	nop
	nop
	xor x5,x5,x29  
	nop
	nop
	nop
	nop
	p.sw x5, x30(x31!)
	sub x31,x31,x30
	p.lw x5,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x6,986895
	ori x6,x6,240
	nop
	nop
	nop
	nop
	p.sw x6, x30(x31!)
	sub x31,x31,x30
	p.lw x6,x30(x31!)
	nop
	nop
	nop
	nop
	xor x6,x6,x29  
	nop
	nop
	nop
	nop
	p.sw x6, x30(x31!)
	sub x31,x31,x30
	p.lw x6,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x7,986895
	ori x7,x7,240
	nop
	nop
	nop
	nop
	p.sw x7, x30(x31!)
	sub x31,x31,x30
	p.lw x7,x30(x31!)
	nop
	nop
	nop
	nop
	xor x7,x7,x29  
	nop
	nop
	nop
	nop
	p.sw x7, x30(x31!)
	sub x31,x31,x30
	p.lw x7,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x8,986895
	ori x8,x8,240
	nop
	nop
	nop
	nop
	p.sw x8, x30(x31!)
	sub x31,x31,x30
	p.lw x8,x30(x31!)
	nop
	nop
	nop
	nop
	xor x8,x8,x29  
	nop
	nop
	nop
	nop
	p.sw x8, x30(x31!)
	sub x31,x31,x30
	p.lw x8,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x9,986895
	ori x9,x9,240
	nop
	nop
	nop
	nop
	p.sw x9, x30(x31!)
	sub x31,x31,x30
	p.lw x9,x30(x31!)
	nop
	nop
	nop
	nop
	xor x9,x9,x29  
	nop
	nop
	nop
	nop
	p.sw x9, x30(x31!)
	sub x31,x31,x30
	p.lw x9,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x10,986895
	ori x10,x10,240
	nop
	nop
	nop
	nop
	p.sw x10, x30(x31!)
	sub x31,x31,x30
	p.lw x10,x30(x31!)
	nop
	nop
	nop
	nop
	xor x10,x10,x29  
	nop
	nop
	nop
	nop
	p.sw x10, x30(x31!)
	sub x31,x31,x30
	p.lw x10,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x11,986895
	ori x11,x11,240
	nop
	nop
	nop
	nop
	p.sw x11, x30(x31!)
	sub x31,x31,x30
	p.lw x11,x30(x31!)
	nop
	nop
	nop
	nop
	xor x11,x11,x29  
	nop
	nop
	nop
	nop
	p.sw x11, x30(x31!)
	sub x31,x31,x30
	p.lw x11,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x12,986895
	ori x12,x12,240
	nop
	nop
	nop
	nop
	p.sw x12, x30(x31!)
	sub x31,x31,x30
	p.lw x12,x30(x31!)
	nop
	nop
	nop
	nop
	xor x12,x12,x29  
	nop
	nop
	nop
	nop
	p.sw x13, x30(x31!)
	sub x31,x31,x30
	p.lw x13,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x14,986895
	ori x14,x14,240
	nop
	nop
	nop
	nop
	p.sw x14, x30(x31!)
	sub x31,x31,x30
	p.lw x14,x30(x31!)
	nop
	nop
	nop
	nop
	xor x14,x14,x29  
	nop
	nop
	nop
	nop
	p.sw x14, x30(x31!)
	sub x31,x31,x30
	p.lw x14,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x15,986895
	ori x15,x15,240
	nop
	nop
	nop
	nop
	p.sw x15, x30(x31!)
	sub x31,x31,x30
	p.lw x15,x30(x31!)
	nop
	nop
	nop
	nop
	xor x15,x15,x29  
	nop
	nop
	nop
	nop
	p.sw x15, x30(x31!)
	sub x31,x31,x30
	p.lw x15,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x16,986895
	ori x16,x16,240
	nop
	nop
	nop
	nop
	p.sw x16, x30(x31!)
	sub x31,x31,x30
	p.lw x16,x30(x31!)
	nop
	nop
	nop
	nop
	xor x16,x16,x29  
	nop
	nop
	nop
	nop
	p.sw x16, x30(x31!)
	sub x31,x31,x30
	p.lw x16,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x17,986895
	ori x17,x17,240
	nop
	nop
	nop
	nop
	p.sw x17, x30(x31!)
	sub x31,x31,x30
	p.lw x17,x30(x31!)
	nop
	nop
	nop
	nop
	xor x17,x17,x29  
	nop
	nop
	nop
	nop
	p.sw x17, x30(x31!)
	sub x31,x31,x30
	p.lw x17,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x18,986895
	ori x18,x18,240
	nop
	nop
	nop
	nop
	p.sw x18, x30(x31!)
	sub x31,x31,x30
	p.lw x18,x30(x31!)
	nop
	nop
	nop
	nop
	xor x18,x18,x29  
	nop
	nop
	nop
	nop
	p.sw x18, x30(x31!)
	sub x31,x31,x30
	p.lw x18,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x19,986895
	ori x19,x19,240
	nop
	nop
	nop
	nop
	p.sw x19, x30(x31!)
	sub x31,x31,x30
	p.lw x19,x30(x31!)
	nop
	nop
	nop
	nop
	xor x19,x19,x29  
	nop
	nop
	nop
	nop

	lui x20,986895
	ori x20,x20,240
	nop
	nop
	nop
	nop
	p.sw x20, x30(x31!)
	sub x31,x31,x30
	p.lw x20,x30(x31!)
	nop
	nop
	nop
	nop
	xor x20,x20,x29  
	nop
	nop
	nop
	nop
	p.sw x20, x30(x31!)
	sub x31,x31,x30
	p.lw x20,x30(x31!)
	nop
	nop
	nop
	nop
	nop


	lui x21,986895
	ori x21,x21,240
	nop
	nop
	nop
	nop
	p.sw x21, x30(x31!)
	sub x31,x31,x30
	p.lw x21,x30(x31!)
	nop
	nop
	nop
	nop
	xor x21,x21,x29  
	nop
	nop
	nop
	nop
	p.sw x21, x30(x31!)
	sub x31,x31,x30
	p.lw x21,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x22,986895
	ori x22,x22,240
	nop
	nop
	nop
	nop
	p.sw x22, x30(x31!)
	sub x31,x31,x30
	p.lw x22,x30(x31!)
	nop
	nop
	nop
	nop
	xor x22,x22,x29  
	nop
	nop
	nop
	nop
	p.sw x22, x30(x31!)
	sub x31,x31,x30
	p.lw x22,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x23,986895
	ori x23,x23,240
	nop
	nop
	nop
	nop
	p.sw x23, x30(x31!)
	sub x31,x31,x30
	p.lw x23,x30(x31!)
	nop
	nop
	nop
	nop
	xor x23,x23,x29  
	nop
	nop
	nop
	nop
	p.sw x23, x30(x31!)
	sub x31,x31,x30
	p.lw x23,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x24,986895
	ori x24,x24,240
	nop
	nop
	nop
	nop
	p.sw x24, x30(x31!)
	sub x31,x31,x30
	p.lw x24,x30(x31!)
	nop
	nop
	nop
	nop
	xor x24,x24,x29  
	nop
	nop
	nop
	nop
	p.sw x24, x30(x31!)
	sub x31,x31,x30
	p.lw x24,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x25,986895
	ori x25,x25,240
	nop
	nop
	nop
	nop
	p.sw x25, x30(x31!)
	sub x31,x31,x30
	p.lw x25,x30(x31!)
	nop
	nop
	nop
	nop
	xor x25,x25,x29  
	nop
	nop
	nop
	nop
	p.sw x25, x30(x31!)
	sub x31,x31,x30
	p.lw x25,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x26,986895
	ori x26,x26,240
	nop
	nop
	nop
	nop
	p.sw x26, x30(x31!)
	sub x31,x31,x30
	p.lw x26,x30(x31!)
	nop
	nop
	nop
	nop
	xor x26,x26,x29  
	nop
	nop
	nop
	nop
	p.sw x26, x30(x31!)
	sub x31,x31,x30
	p.lw x26,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x27,986895
	ori x27,x27,240
	nop
	nop
	nop
	nop
	p.sw x27, x30(x31!)
	sub x31,x31,x30
	p.lw x27,x30(x31!)
	nop
	nop
	nop
	nop
	xor x27,x27,x29  
	nop
	nop
	nop
	nop
	p.sw x27, x30(x31!)
	sub x31,x31,x30
	p.lw x27,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x27,986895
	ori x27,x27,240
	nop
	nop
	nop
	nop
	p.sw x27, x30(x31!)
	sub x31,x31,x30
	p.lw x27,x30(x31!)
	nop
	nop
	nop
	nop
	xor x27,x27,x29  
	nop
	nop
	nop
	nop
	p.sw x27, x30(x31!)
	sub x31,x31,x30
	p.lw x27,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	lui x28,986895
	ori x28,x28,240
	nop
	nop
	nop
	nop
	p.sw x28, x30(x31!)
	sub x31,x31,x30
	p.lw x28,x30(x31!)
	nop
	nop
	nop
	nop
	xor x28,x28,x29  
	nop
	nop
	nop
	nop
	p.sw x28, x30(x31!)
	sub x31,x31,x30
	p.lw x28,x30(x31!)
	nop
	nop
	nop
	nop
	nop

	xor x1,x1,x1
	add x1,x31,x1
	xor x31,x31,x31
	xor x2,x2,x2
	addi x2,x2,4
	xor x3,x3,x3
	addi x3,x3,-1

	lui x29,986895
	ori x29,x29,240
	nop
	nop
	nop
	nop
	p.sw x29, x2(x1!)
	sub x1,x1,x2
	p.lw x29,x2(x1!)
	nop
	nop
	nop
	nop
	xor x29,x29,x3  
	nop
	nop
	nop
	nop
	p.sw x29, x2(x1!)
	sub x1,x1,x2
	p.lw x29,x2(x1!)
	nop
	nop
	nop
	nop
	nop

	lui x30,986895
	ori x30,x30,240
	nop
	nop
	nop
	nop
	p.sw x30, x2(x1!)
	sub x1,x1,x2
	p.lw x30,x2(x1!)
	nop
	nop
	nop
	nop
	xor x30,x30,x3  
	nop
	nop
	nop
	nop
	p.sw x30, x2(x1!)
	sub x1,x1,x2
	p.lw x30,x2(x1!)
	nop
	nop
	nop
	nop
	nop

	lui x31,986895
	ori x31,x31,240
	nop
	nop
	nop
	nop
	p.sw x31, x2(x1!)
	sub x1,x1,x2
	p.lw x31,x2(x1!)
	nop
	nop
	nop
	nop
	xor x31,x31,x3  
	nop
	nop
	nop
	nop
	p.sw x31, x2(x1!)
	sub x1,x1,x2
	p.lw x31,x2(x1!)
	nop
	nop
	nop
	nop

	xor x1, x1, x1
	xor x2, x2, x2
	xor x3, x3, x3
	xor x4, x4, x4
	xor x5, x5, x5
	xor x6, x6, x6
	xor x7, x7, x7
	xor x8, x8, x8
	xor x9, x9, x9
	xor x10, x10, x10
	xor x30, x30, x30
	xor x31, x31, x31

	lui x31, 256
	addi x30, x30, 4
	addi x1, x1, 1 		//x2=1
	//addi x, x1, 31		//x1=loopcount
	lui x3, 69905		//
	ori x3, x3, 273		//x3=11111111
	//sub x6, x6, x2		//x6=FFFFFFFF
	//sub x7, x7, x2		//x7=FFFFFFFF
	addi x8, x8, 31		//x8=31
	addi x9, x9, 2		//x9=2
	xor x11, x11, x11
	addi x11, x11, 1
	slli x12, x8, 5

	lui x31, 256
	addi x30, x30, 4
	addi x1, x1, 1 		//x1=1
	addi x2, x2, 16		//x2=16
	addi x4, x4, 32		//x4=32
	lui x3, 69905		//
	ori x3, x3, 273		//x3=11111111
	srli x8, x3, 1		//x8=08888888
	sub x5, x5, x1		//x5=FFFFFFFF
	//x6=rs2
	lui x7, 4369		//
	ori x7, x7, 273		//x7=01111111
	lp.setup x1, x2, loop2
	lp.setup x0, x2, loop1
	div x29, x5, x6
	p.sw x29, x30(x31)
	divu x29, x5, x6
	p.sw x29, x30(x31)
	rem x29, x5, x6
	p.sw x29, x30(x31)
	remu x29, x5, x6
	p.sw x29, x30(x31)
loop1:	
	add x6, x6, x3

	xor x6, x6, x6
loop2:	
	sub x5, x5, x3

	lui x10, 524288
	addi x11, x11, 1
	lp.setup x0, x4, loop3
	div x29, x10, x11
	p.sw x29, x30(x31)
	divu x29, x10, x11
	p.sw x29, x30(x31)
	rem x29, x10, x11
	p.sw x29, x30(x31)
	remu x29, x10, x11
	p.sw x29, x30(x31)

	srai x10, x10, 1
	slli x11, x11, 1
loop3:	
	addi x11, x11, 1

	lui x10, 524288
	addi x11, x11, 1
	lp.setup x0, x4, loop4
	div x29, x11, x10
	p.sw x29, x30(x31)
	divu x29, x11, x10
	p.sw x29, x30(x31)
	rem x29, x11, x10
	p.sw x29, x30(x31)
	remu x29, x11, x10
	p.sw x29, x30(x31)

	srai x10, x10, 1
	slli x11, x11, 1
loop4:	
	addi x11, x11, 1
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
