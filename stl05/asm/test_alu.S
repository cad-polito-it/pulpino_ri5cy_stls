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

	lui x31,256

	addi x1,x1,-1
	sw x1, 0(x31)
	xor x1,x1,x1
	addi x2,x1,-1
	sw x2, 0(x31)
	addi x3,x1,-1
	sw x3, 0(x31)
	addi x4,x1,-1
	sw x4, 0(x31)
	addi x5,x1,-1
	sw x5, 0(x31)
	addi x6,x1,-1
	sw x6, 0(x31)
	addi x7,x1,-1
	sw x7, 0(x31)
	addi x8,x1,-1
	sw x8, 0(x31)
	addi x9,x1,-1
	sw x9, 0(x31)
	addi x10,x1,-1
	sw x10, 0(x31)
	addi x11,x1,-1
	sw x11, 0(x31)
	addi x12,x1,-1
	sw x12, 0(x31)
	addi x13,x1,-1
	sw x13, 0(x31)
	addi x14,x1,-1
	sw x14, 0(x31)
	addi x15,x1,-1
	sw x15, 0(x31)
	addi x16,x1,-1
	sw x16, 0(x31)
	addi x17,x1,-1
	sw x17, 0(x31)
	addi x18,x1,-1
	sw x18, 0(x31)
	addi x19,x1,-1
	sw x19, 0(x31)
	addi x20,x1,-1
	sw x20, 0(x31)
	addi x21,x1,-1
	sw x21, 0(x31)
	addi x22,x1,-1
	sw x22, 0(x31)
	addi x23,x1,-1
	sw x23, 0(x31)
	addi x24,x1,-1
	sw x24, 0(x31)
	addi x25,x1,-1
	sw x25, 0(x31)
	addi x26,x1,-1
	sw x26, 0(x31)
	addi x27,x1,-1
	sw x27, 0(x31)
	addi x28,x1,-1
	sw x28, 0(x31)
	addi x29,x1,-1
	sw x29, 0(x31)
	addi x30,x1,-1
	sw x30, 0(x31)

	lui x30,256
	addi x31,x1,-1
	sw x31, 0(x30)

	lui x31,256

	xor x2,x2,x2
	addi x2,x2,31
	xor x12,x12,x12
	xor x13,x13,x13
	addi x13,x13,31
	xor x14,x14,x14
	addi x11,x0,1

	xor x1,x1,x1
	addi x1,x1,2


	slli x12,x13,5

	lp.setup x1,x2,lf6
	lp.setup x0,x1,lf5
	p.extractr x30,x11,x12
	sw x30, 0(x31)
	p.extractur x30,x11,x12
	sw x30, 0(x31)
	p.insertr x30,x11,x12
	sw x30, 0(x31)
	p.bclrr x30,x11,x12
	sw x30, 0(x31)
	p.bsetr x30,x11,x12
	sw x30, 0(x31)
	p.ror x30,x11,x12
	sw x30, 0(x31)
lf5:		
	addi x12,x12,1			
	addi x13,x13,-1
	slli x12,x13,5
	addi x1,x1,1	
lf6: 		
	slli x11,x11,1


	xor x12,x12,x12
	addi x12,x12,-1
	xor x11,x11,x11
	addi x11,x11,-1
	xor x2,x2,x2
	addi x2,x2,-1
	xor x1,x1,x1
	addi x1,x1,-1
	xor x3,x3,x3
	addi x3,x3,32

	lp.setup x0,x3,gir
	p.ff1 x30,x1
	sw x30, 0(x31)
	p.cnt x30,x1
	sw x30, 0(x31)
	p.fl1 x30,x1
	sw x30, 0(x31)
	p.clb x30,x1
	sw x30, 0(x31)
	p.extract x30,x1,16,15
	sw x30, 0(x31)
	p.extract x30,x1,15,16
	sw x30, 0(x31)
	p.extract x30,x1,7,24
	sw x30, 0(x31)
	p.extract x30,x1,24,7
	sw x30, 0(x31)
	p.extractu x30,x1,16,15
	sw x30, 0(x31)
	p.extractu x30,x1,15,16
	sw x30, 0(x31)
	p.extractu x30,x1,7,24
	sw x30, 0(x31)
	p.extractu x30,x1,24,7
	sw x30, 0(x31)
	p.insert x30,x1,16,15
	sw x30, 0(x31)
	p.insert x30,x1,15,16
	sw x30, 0(x31)
	p.insert x30,x1,7,24
	sw x30, 0(x31)
	p.insert x30,x1,24,7
	sw x30, 0(x31)
	p.bclr x30,x1,16,15
	sw x30, 0(x31)
	p.bclr x30,x1,15,16
	sw x30, 0(x31)
	p.bclr x30,x1,7,24
	sw x30, 0(x31)
	p.bclr x30,x1,24,7
	sw x30, 0(x31)
	p.bset x30,x1,16,15
	sw x30, 0(x31)
	p.bset x30,x1,15,16
	sw x30, 0(x31)
	p.bset x30,x1,7,24
	sw x30, 0(x31)
	p.bset x30,x1,24,7
	sw x30, 0(x31)


	pv.extract.h x30,x1,1
	sw x30, 0(x31)
	pv.extract.h x30,x1,0
	sw x30, 0(x31)
	pv.extract.b x30,x1,2
	sw x30, 0(x31)
	pv.extract.b x30,x1,1
	sw x30, 0(x31)
	pv.extract.b x30,x1,0
	sw x30, 0(x31)
	pv.extractu.h x30,x1,1
	sw x30, 0(x31)
	pv.extractu.h x30,x1,0
	sw x30, 0(x31)
	pv.extractu.b x30,x1,2
	sw x30, 0(x31)
	pv.extractu.b x30,x1,1
	sw x30, 0(x31)
	pv.extractu.b x30,x1,0
	sw x30, 0(x31)
	pv.insert.h x30,x1,1
	sw x30, 0(x31)
	pv.insert.h x30,x1,0
	sw x30, 0(x31)
	pv.insert.b x30,x1,2
	sw x30, 0(x31)
	pv.insert.b x30,x1,1
	sw x30, 0(x31)
	pv.insert.b x30,x1,0
	sw x30, 0(x31)


	pv.add.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.add.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.add.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.add.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.add.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.add.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.add.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.add.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.sub.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.sub.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.sub.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.sub.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.sub.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.sub.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.sub.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.sub.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.avg.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.avg.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.avg.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.avg.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.avg.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.avg.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.avg.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.avg.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.avgu.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.avgu.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.avgu.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.avgu.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.avgu.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.avgu.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.avgu.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.avgu.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.min.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.min.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.min.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.min.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.min.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.min.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.min.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.min.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.minu.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.minu.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.minu.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.minu.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.minu.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.minu.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.minu.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.minu.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.max.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.max.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.max.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.max.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.max.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.max.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.max.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.max.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.maxu.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.maxu.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.maxu.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.maxu.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.maxu.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.maxu.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.maxu.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.maxu.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.srl.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.srl.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.srl.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.srl.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.srl.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.srl.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.srl.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.srl.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.sra.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.sra.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.sra.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.sra.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.sra.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.sra.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.sra.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.sra.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.sll.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.sll.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.sll.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.sll.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.sll.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.sll.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.sll.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.sll.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.or.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.or.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.or.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.or.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.or.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.or.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.or.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.or.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.xor.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.xor.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.xor.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.xor.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.xor.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.xor.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.xor.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.xor.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.and.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.and.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.and.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.and.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.and.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.and.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.and.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.and.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.dotup.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.dotup.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.dotup.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.dotup.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.dotup.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.dotup.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.dotup.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.dotup.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.dotusp.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.dotusp.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.dotusp.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.dotusp.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.dotusp.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.dotusp.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.dotusp.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.dotusp.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.dotsp.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.dotsp.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.dotsp.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.dotsp.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.dotsp.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.dotsp.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.dotsp.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.dotsp.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.sdotup.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.sdotup.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.sdotup.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.sdotup.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.sdotup.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.sdotup.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.sdotup.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.sdotup.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.sdotusp.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.sdotusp.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.sdotusp.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.sdotusp.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.sdotusp.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.sdotusp.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.sdotusp.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.sdotusp.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.sdotsp.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.sdotsp.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.sdotsp.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.sdotsp.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.sdotsp.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.sdotsp.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.sdotsp.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.sdotsp.sci.b x30,x1,16
	sw x30, 0(x31)


	pv.shuffle.sci.h x30,x1,2
	sw x30, 0(x31)
	pv.shuffle.sci.h x30,x1,4
	sw x30, 0(x31)
	pv.shuffle.sci.h x30,x1,8
	sw x30, 0(x31)
	pv.shuffle.sci.h x30,x1,16
	sw x30, 0(x31)

	pv.shuffleI0.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.shuffleI0.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.shuffleI0.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.shuffleI0.sci.b x30,x1,16
	sw x30, 0(x31)

	pv.shuffleI1.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.shuffleI1.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.shuffleI1.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.shuffleI1.sci.b x30,x1,16
	sw x30, 0(x31)

	pv.shuffleI2.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.shuffleI2.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.shuffleI2.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.shuffleI2.sci.b x30,x1,16
	sw x30, 0(x31)

	pv.shuffleI3.sci.b x30,x1,2
	sw x30, 0(x31)
	pv.shuffleI3.sci.b x30,x1,4
	sw x30, 0(x31)
	pv.shuffleI3.sci.b x30,x1,8
	sw x30, 0(x31)
	pv.shuffleI3.sci.b x30,x1,16
	sw x30, 0(x31)


gir: 
	srli x1,x1,1


	xor x2,x2,x2
	xor x1,x1,x1
	xor x6,x6,x6
	xor x4,x4,x4
	xor x3,x3,x3

	addi x6,x6,1
	addi x4,x4,-1


	lui x31,256 
	addi x2,x2,1
	sub x4,x0,x2
	xor x2,x2,x2
	xor x19,x19,x19
	addi x19,x19,16

	lui x1,69905
	ori x1,x1,273



	lp.setup x0,x19,lba1

lba2:
	p.slet x5,x2,x3
	p.sw x5,x6(x31!)
	p.sletu x5,x2,x3
	p.sw x5,x6(x31!)
	p.min x5,x2,x3
	p.sw x5,x6(x31!)
	p.minu x5,x2,x3
	p.sw x5,x6(x31!)
	p.max x5,x2,x3
	p.sw x5,x6(x31!)
	p.maxu x5,x2,x3
	p.sw x5,x6(x31!)
	p.clipr x5,x2,x3
	p.sw x5,x6(x31!)
	p.clipur x5,x2,x3
	p.sw x5,x6(x31!)
	p.addNr x5,x2,x3
	p.sw x5,x6(x31!)
	p.adduNr x5,x2,x3
	p.sw x5,x6(x31!)
	p.addRNr x5,x2,x3
	p.sw x5,x6(x31!)
	p.adduRNr x5,x2,x3
	p.sw x5,x6(x31!)
	p.subNr x5,x2,x3
	p.sw x5,x6(x31!)
	p.subuNr x5,x2,x3
	p.sw x5,x6(x31!)
	p.subRNr x5,x2,x3
	p.sw x5,x6(x31!)
	p.subuRNr x5,x2,x3
	p.sw x5,x6(x31!)
	p.addN x5,x2,x3,1
	p.sw x5,x6(x31!)
	p.adduN x5,x2,x3,3
	p.sw x5,x6(x31!)
	p.addRN x5,x2,x3,5
	p.sw x5,x6(x31!)
	p.adduRN x5,x2,x3,7
	p.sw x5,x6(x31!)
	p.subN x5,x2,x3,9
	p.sw x5,x6(x31!)
	p.subuN x5,x2,x3,11
	p.sw x5,x6(x31!)
	p.subRN x5,x2,x3,13
	p.sw x5,x6(x31!)
	p.subuRN x5,x2,x3,15
	p.sw x5,x6(x31!)
	pv.add.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.add.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.add.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.add.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sub.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sub.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sub.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sub.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.avg.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.avg.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.avg.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.avg.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.avgu.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.avgu.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.avgu.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.avgu.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.min.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.min.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.min.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.min.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.minu.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.minu.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.minu.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.minu.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.max.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.max.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.max.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.max.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.maxu.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.maxu.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.maxu.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.maxu.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.srl.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.srl.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.srl.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.srl.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sra.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sra.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sra.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sra.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sll.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sll.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sll.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sll.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.or.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.or.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.or.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.or.sc.b x5,x2,x3
	p.sw x5,x6(x31!)

	pv.xor.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.xor.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.xor.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.xor.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.and.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.and.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.and.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.and.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.dotup.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.dotup.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.dotup.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.dotup.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.dotusp.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.dotusp.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.dotusp.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.dotusp.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.dotsp.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.dotsp.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.dotsp.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.dotsp.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sdotup.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sdotup.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sdotup.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sdotup.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sdotusp.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sdotusp.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sdotusp.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sdotusp.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sdotsp.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sdotsp.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sdotsp.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.sdotsp.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.shuffle.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.shuffle.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.shuffle2.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.shuffle2.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.pack.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.packhi.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.packlo.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpeq.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpeq.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpeq.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpeq.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpne.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpne.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpne.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpne.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpgt.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpgt.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpgt.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpgt.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpge.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpge.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpge.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpge.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmplt.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmplt.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmplt.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmplt.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmple.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmple.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmple.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmple.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpgtu.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpgtu.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpgtu.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpgtu.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpgeu.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpgeu.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpgeu.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpgeu.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpltu.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpltu.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpltu.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpltu.sc.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpleu.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpleu.sc.h x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpleu.b x5,x2,x3
	p.sw x5,x6(x31!)
	pv.cmpleu.sc.b x5,x2,x3
	p.sw x5,x6(x31!)

	div x5,x2,x3
	p.sw x5,x6(x31!)
	rem x5,x2,x3
	p.sw x5,x6(x31!)
	remu x5,x2,x3
	p.sw x5,x6(x31!)
	divu x5,x2,x3
	p.sw x5,x6(x31!)
	rem x5,x2,x3
	p.sw x5,x6(x31!)
	remu x5,x2,x3
	p.sw x5,x6(x31!)

	div x5,x3,x2
	p.sw x5,x6(x31!)
	rem x5,x3,x2
	p.sw x5,x6(x31!)
	remu x5,x3,x2
	p.sw x5,x6(x31!)
	divu x5,x3,x2
	p.sw x5,x6(x31!)
	rem x5,x3,x2
	p.sw x5,x6(x31!)
	remu x5,x3,x2
	p.sw x5,x6(x31!)

lba1:	
	add x2,x2,x1     

	p.abs x5,x3
	p.sw x5,x6(x31!)
	p.exths x5,x3
	p.sw x5,x6(x31!)
	p.exthz x5,x3
	p.sw x5,x6(x31!)
	p.extbs x5,x3
	p.sw x5,x6(x31!)
	p.extbz x5,x3
	p.sw x5,x6(x31!)
	p.clip x5,x3,16
	p.sw x5,x6(x31!)
	p.clipu x5,x3,16
	p.sw x5,x6(x31!)
	pv.abs.h x5,x5 
	p.sw x5,x6(x31!)
	pv.abs.b x5,x5 
	p.sw x5,x6(x31!)


	xor x2,x2,x2
	add x3,x3,x1
	bne x3,x4,lba1

	xor x4,x4,x4
	xor x5,x5,x5
	xor x2,x2,x2
	xor x3,x3,x3
	addi x4,x4,2047
	addi x5,x5,255

	div x6,x4,x5
	nop
	nop
	nop

	nop
	p.sw x6,x2(x31!)

	div x6,x5,x4
	nop
	p.sw x6,x2(x31!)

	xor x4,x4,x4
	xor x5,x5,x5

	div x6,x4,x5
	nop
	p.sw x6,x2(x31!)

	addi x4,x4,-1
	addi x5,x5,-1

	divu x6,x4,x5
	nop
	p.sw x6,x2(x31!)

	xor x5,x5,x5
	addi x5,x5,2
fg:
	divu x4,x4,x5
	nop
	sw x4,0(x31)
	bne x4,x0,fg



	lui x10, 524288
	xor x11,x11,x11
	addi x11,x11,1
	xor x12,x12,x12
	addi x12,x12,31
	xor x13,x13,x13
	xor x14,x14,x14

ldi1:
	ldi2:
		div x5,x10,x11
		p.sw x5,x6(x31!)
		rem x5,x10,x11
		p.sw x5,x6(x31!)
		remu x5,x10,x11
		p.sw x5,x6(x31!)
		divu x5,x10,x11
		p.sw x5,x6(x31!)
		rem x5,x10,x11
		p.sw x5,x6(x31!)
		remu x5,x10,x11
		p.sw x5,x6(x31!)

		div x5,x11,x10
		p.sw x5,x6(x31!)
		rem x5,x11,x10
		p.sw x5,x6(x31!)
		remu x5,x11,x10
		p.sw x5,x6(x31!)
		divu x5,x11,x10
		p.sw x5,x6(x31!)
		rem x5,x11,x10
		p.sw x5,x6(x31!)
		remu x5,x11,x10
		p.sw x5,x6(x31!)

		srli x10,x10,1
		bne x10,x0,ldi2
	
	slli x11,x11,1
	bne x11,x0,ldi1



	lui x7,699050
	ori x7,x7,-1366
	lui x8,349525
	ori x7,x7,1365
	or x9,x8,x7
	p.sw x9,x2(x31!)
	or x9,x7,x8
	p.sw x9, x2(x31!)

	and x9,x8,x7
	p.sw x9, x2(x31!)

	xor x8,x8,x8
	addi x8,x8,-1
	add x7,x0,x8

	or x9,x8,x7
	p.sw x9, x2(x31!)

	and x9,x8,x7
	p.sw x9, x2(x31!)

	xor x7,x7,x7
	ori x7,x7,255
	xor x8,x8,x8
	ori x8,x8,512
	and x9,x8,x7
	p.sw x9,x2(x31!)


	addi x1,x0,1
l11:
	slli x1,x1,1
	p.sw x1,x2(x31!)
	bne x1,x0,l11


	addi x1,x0,-1
	ori x5,x0,1
l12:
	srl x1,x1,x5
	addi x5,x5,1
	p.sw x1,x2(x31!)	
	bne x1,x0,l12

	lui x5,524288

	xor x8,x8,x8
	addi x8,x8,-1
l5:
	srai x5,x5,1
	p.sw x5,x2(x31!)
	xor x6,x5,x8
	p.sw x6,x2(x31!)
	bne x5,x8,l5

	and x5,x5,x0
	addi x5,x5,1023
	xor x8,x8,x8
l6:
	srai x5,x5,1
	p.sw x5,x2(x31!)
	xor x6,x5,x8
	p.sw x6,x2(x31!)
	bne x5,x8,l6

	lui x31,256
	xor x7,x7,x7
	addi x7,x7,255

	xor x9,x9,x9
	addi x9,x9,127

	xor x1,x1,x1
	addi x1,x1,1
	xor x10,x10,x10
	addi x10,x10,6
cic:
	p.mac x8,x7,x9
	p.sw x8, x2(x31!)
	p.msu x10,x7,x9
	p.sw x10, x2(x31!)
	p.muls x8,x7,x9
	p.sw x8, x2(x31!)
	p.muluRN x8, x9,x7,5		
	p.sw x8, x2(x31!)
	p.macuRN x8,x7,x9,6
	p.sw x8, x2(x31!)

	sub x9,x9,x1
	bne x9,x0,cic

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
