.global test_self
.text

test_self:

	# ABI prologue
	addi sp, sp, -112     # allocate 112 bytes on the stack
	sw ra, 104(sp)        # save return address
	sw s0, 96(sp)         # save callee-saved registers
	sw s1, 88(sp)
	sw s2, 80(sp)
	sw s3, 72(sp)
	sw s4, 64(sp)
	sw s5, 56(sp)
	sw s6, 48(sp)
	sw s7, 40(sp)
	sw s8, 32(sp)
	sw s9, 24(sp)
	sw s10, 16(sp)
	sw s11, 8(sp)
	addi s0, sp, 112     # set up s0 to point to start of stack frame
	li t0, 0x00104000    # save stack pointer
	sw sp, 0(t0)


li x31,300
li x30,1
li x1,0xCCCCCCCC
li x2,0xAAAAAAAA

loop_self:

	not x3,x1
	not x4,x2
	neg x5,x1
	neg x6,x2
	mv x7,x1
	mv x8,x2
	seqz x9,x1
	snez x11,x1
	
	sw x3,8(x0)
	sw x4,12(x0)
	sw x5,16(x0)
	sw x6,20(x0)
	sw x7,24(x0)
	sw x8,28(x0)
	sw x9,32(x0)
	sw x11,40(x0)
	

	addi x3,x2,0x555
	andi x4,x1,0x555
	ori x5,x2,0x555
	xori x6,x1,0x555
	slti x7,x2,0x555
	sltiu x8,x1,0x555
	srai x9,x2,0x5
	srli x10,x1,0x7
	slli x11,x2,0x9
	and x12,x1,x2
	add x13,x1,x2
	or x14,x1,x2
	xor x15,x1,x2
	sll x16,x1,x2 
	slt x17,x1,x2
	sltu x18,x1,x2
	sub x19,x2,x1
	sra x20,x1,x2
	srl x21,x1,x2
	div x22,x1,x2
	divu x23,x1,x2
	rem x24,x1,x2 
	remu x25,x1,x2 
	p.extract x26,x2,0xF,0xA
	p.extract x27,x1,0xA,0x5
	p.extractu x28,x1,0x2,0x1
	p.extractu x29,x2,0x1,0xF
	sw x3,8(x0)
	sw x4,12(x0)
	sw x5,16(x0)
	sw x6,20(x0)
	sw x7,24(x0)
	sw x8,28(x0)
	sw x9,32(x0)
	sw x10,36(x0)
	sw x11,40(x0)
	sw x12,44(x0)
	sw x13,48(x0)
	sw x14,52(x0)
	sw x15,56(x0)
	sw x16,60(x0)
	sw x17,64(x0)
	sw x18,68(x0)
	sw x19,72(x0)
	sw x20,76(x0)
	sw x21,80(x0)
	sw x22,84(x0)
	sw x23,88(x0)
	sw x24,92(x0)
	sw x25,96(x0)
	sw x26,100(x0)
	sw x27,104(x0)
	sw x28,108(x0)
	sw x29,112(x0)


	p.insert x3,x1,0x3,0xC
	p.insert x4,x2,0x9,0xA
	p.bclr x5,x1,0x3,0xB
	p.bclr x6,x2,0xF,0xA
	p.bset x7,x1,0x7,0xD
	p.bset x8,x2,0xF,0x3
	p.extractr x9,x2,x1
	p.extractr x10,x1,x2
	p.insertr x11,x1,x29
	p.insertr x12,x1,x25
	p.bclrr x13,x1,x2
	p.bclrr x14,x2,x1
	p.bsetr x15,x1,x2
	p.bsetr x16,x2,x1
	p.ror x17,x1,x2
	p.ff1 x18,x1
	p.fl1 x19,x2
	p.clb x20,x1
	p.cnt x21,x2
	p.abs x22,x1
	p.slet x23,x1,x2
	p.sletu x24,x1,x2
	p.min x25,x2,x1
	p.minu x26,x2,x1
	p.max x27,x2,x1
	p.maxu x28,x2,x1
	p.exths x29,x2
	sw x3,8(x0)
	sw x4,12(x0)
	sw x5,16(x0)
	sw x6,20(x0)
	sw x7,24(x0)
	sw x8,28(x0)
	sw x9,32(x0)
	sw x10,36(x0)
	sw x11,40(x0)
	sw x12,44(x0)
	sw x13,48(x0)
	sw x14,52(x0)
	sw x15,56(x0)
	sw x16,60(x0)
	sw x17,64(x0)
	sw x18,68(x0)
	sw x19,72(x0)
	sw x20,76(x0)
	sw x21,80(x0)
	sw x22,84(x0)
	sw x23,88(x0)
	sw x24,92(x0)
	sw x25,96(x0)
	sw x26,100(x0)
	sw x27,104(x0)
	sw x28,108(x0)
	sw x29,112(x0)


	p.exthz x3,x2
	p.clip x4,x1,0xA
	p.clipu x5,x2,0x8
	p.clipur x6,x1,x2
	p.addN x7,x1,x2,0xD
	p.adduN x8,x1,x2,0x3
	p.addRN x9,x1,x2,0xC
	p.adduRN x10,x1,x2,0x7
	p.addNr x11,x1,x2
	p.adduNr x12,x1,x2
	p.addRNr x13,x1,x2
	p.adduRNr x14,x1,x2
	p.subN x15,x2,x1,0x9
	p.subuN x16,x2,x1,0xF
	p.subRN x17,x2,x1,0xC
	p.subuRN x18,x2,x1,0x2
	p.subNr x19,x1,x2
	pv.add.h x20,x1,x2
	pv.add.sc.h x21,x19,x13
	pv.add.sci.h x22,x17,0xF
	pv.add.b x23,x2,x11
	pv.add.sc.b x24,x1,x2
	pv.add.sci.b x25,x27,0x7
	pv.sub.h x26,x1,x2
	pv.sub.sc.h x27,x1,x2
	pv.sub.sci.h x28,x17,0xF
	pv.sub.b x29,x1,x2
	sw x3,8(x0)
	sw x4,12(x0)
	sw x5,16(x0)
	sw x6,20(x0)
	sw x7,24(x0)
	sw x8,28(x0)
	sw x9,32(x0)
	sw x10,36(x0)
	sw x11,40(x0)
	sw x12,44(x0)
	sw x13,48(x0)
	sw x14,52(x0)
	sw x15,56(x0)
	sw x16,60(x0)
	sw x17,64(x0)
	sw x18,68(x0)
	sw x19,72(x0)
	sw x20,76(x0)
	sw x21,80(x0)
	sw x22,84(x0)
	sw x23,88(x0)
	sw x24,92(x0)
	sw x25,96(x0)
	sw x26,100(x0)
	sw x27,104(x0)
	sw x28,108(x0)
	sw x29,112(x0)

	pv.sub.sc.b x3,x1,x2
	pv.sub.sci.b x4,x2,0x7
	pv.avg.h x5,x2,x1
	pv.avg.sc.h x6,x2,x1
	pv.avg.sci.h x7,x1,0xF
	pv.avg.b x8,x2,x1
	pv.avg.sc.b x9,x1,x2
	pv.avg.sci.b x10,x1,0x7
	pv.avgu.h x11,x2,x1
	pv.avgu.sc.h x12,x2,x1
	pv.avgu.sci.h x13,x1,0xF
	pv.avgu.b x14,x2,x1
	pv.avgu.sc.b x15,x2,x1
	pv.avgu.sci.b x16,x2,0x7
	pv.min.h x17,x2,x1
	pv.min.sc.h x18,x2,x1
	pv.min.sci.h x19,x1,0xF
	pv.min.b x20,x2,x1
	pv.min.sc.b x21,x2,x1
	pv.min.sci.b x22,x2,0x7
	pv.minu.h x23,x2,x1
	pv.minu.sc.h x24,x1,x2
	pv.minu.sci.h x25,x1,0xF
	pv.minu.b x26,x1,x2
	pv.minu.sc.b x27,x1,x2
	pv.minu.sci.b x28,x2,0x7
	pv.max.h x29,x1,x2
	sw x3,8(x0)
	sw x4,12(x0)
	sw x5,16(x0)
	sw x6,20(x0)
	sw x7,24(x0)
	sw x8,28(x0)
	sw x9,32(x0)
	sw x10,36(x0)
	sw x11,40(x0)
	sw x12,44(x0)
	sw x13,48(x0)
	sw x14,52(x0)
	sw x15,56(x0)
	sw x16,60(x0)
	sw x17,64(x0)
	sw x18,68(x0)
	sw x19,72(x0)
	sw x20,76(x0)
	sw x21,80(x0)
	sw x22,84(x0)
	sw x23,88(x0)
	sw x24,92(x0)
	sw x25,96(x0)
	sw x26,100(x0)
	sw x27,104(x0)
	sw x28,108(x0)
	sw x29,112(x0)

	pv.max.sc.h x3,x1,x2
	pv.max.sci.h x4,x1,0xF
	pv.max.b x5,x2,x1
	pv.max.sc.b x6,x2,x1
	pv.max.sci.b x7,x2,0x7
	pv.maxu.h x8,x1,x2
	pv.maxu.sc.h x9,x1,x2
	pv.maxu.sci.h x10,x17,0xF
	pv.maxu.b x11,x1,x2
	pv.maxu.sc.b x12,x9,x3
	pv.maxu.sci.b x13,x27,0x7
	pv.srl.h x14,x2,x1
	pv.srl.sc.h x15,x1,x2
	pv.srl.sci.h x16,x1,0xF
	pv.srl.b x17,x1,x2
	pv.srl.sc.b x18,x2,x1
	pv.srl.sci.b x19,x2,0x7
	pv.sra.h x20,x2,x1
	pv.sra.sc.h x21,x2,x1
	pv.sra.sci.h x22,x1,0xF
	pv.sra.b x23,x2,x1
	pv.sra.sc.b x24,x1,x2
	pv.sra.sci.b x25,x2,0x7
	pv.sll.h x26,x1,x2
	pv.sll.sc.h x27,x2,x1
	pv.sll.sci.h x28,x1,0xF
	pv.sll.b x29,x1,x2
	sw x3,8(x0)
	sw x4,12(x0)
	sw x5,16(x0)
	sw x6,20(x0)
	sw x7,24(x0)
	sw x8,28(x0)
	sw x9,32(x0)
	sw x10,36(x0)
	sw x11,40(x0)
	sw x12,44(x0)
	sw x13,48(x0)
	sw x14,52(x0)
	sw x15,56(x0)
	sw x16,60(x0)
	sw x17,64(x0)
	sw x18,68(x0)
	sw x19,72(x0)
	sw x20,76(x0)
	sw x21,80(x0)
	sw x22,84(x0)
	sw x23,88(x0)
	sw x24,92(x0)
	sw x25,96(x0)
	sw x26,100(x0)
	sw x27,104(x0)
	sw x28,108(x0)
	sw x29,112(x0)

	pv.sll.sc.b x3,x1,x2
	pv.sll.sci.b x4,x2,0x7
	pv.or.h x5,x1,x2
	pv.or.sc.h x6,x1,x2
	pv.or.sci.h x7,x1,0xF
	pv.or.b x8,x1,x2
	pv.or.sc.b x9,x1,x2
	pv.or.sci.b x10,x2,0x7
	pv.xor.h x11,x1,x2
	pv.xor.sc.h x12,x1,x2
	pv.xor.sci.h x13,x1,0xF
	pv.xor.b x14,x1,x2
	pv.xor.sc.b x15,x1,x2
	pv.xor.sci.b x16,x2,0x7
	pv.and.h x17,x1,x2
	pv.and.sc.h x18,x1,x2
	pv.and.sci.h x19,x1,0xF
	pv.and.b x20,x1,x2
	pv.and.sc.b x21,x1,x2
	pv.and.sci.b x22,x2,0x7
	pv.abs.h x23,x1
	pv.abs.b x24,x2
	pv.dotup.h x25,x1,x2
	pv.dotup.sc.h x26,x2,x1
	pv.dotup.sci.h x27,x1,0xF
	pv.dotup.b x28,x2,x1
	pv.dotup.sc.b x29,x2,x1
	sw x3,8(x0)
	sw x4,12(x0)
	sw x5,16(x0)
	sw x6,20(x0)
	sw x7,24(x0)
	sw x8,28(x0)
	sw x9,32(x0)
	sw x10,36(x0)
	sw x11,40(x0)
	sw x12,44(x0)
	sw x13,48(x0)
	sw x14,52(x0)
	sw x15,56(x0)
	sw x16,60(x0)
	sw x17,64(x0)
	sw x18,68(x0)
	sw x19,72(x0)
	sw x20,76(x0)
	sw x21,80(x0)
	sw x22,84(x0)
	sw x23,88(x0)
	sw x24,92(x0)
	sw x25,96(x0)
	sw x26,100(x0)
	sw x27,104(x0)
	sw x28,108(x0)
	sw x29,112(x0)


	pv.dotup.sci.b x3,x2,0x7
	pv.dotusp.h x4,x2,x1
	pv.dotusp.sc.h x5,x1,x2
	pv.dotusp.sci.h x6,x1,0xF
	pv.dotusp.b x7,x2,x1
	pv.dotusp.sc.b x8,x1,x2
	pv.dotusp.sci.b x9,x2,0x7
	pv.dotsp.h x10,x2,x1
	pv.dotsp.sc.h x11,x19,x13
	pv.dotsp.sci.h x12,x1,0xF
	pv.dotsp.b x13,x1,x2
	pv.dotsp.sc.b x14,x2,x1
	pv.dotsp.sci.b x15,x2,0x7
	pv.sdotup.h x16,x2,x1
	pv.sdotup.sc.h x17,x1,x2
	pv.sdotup.sci.h x18,x1,0xF
	pv.sdotup.b x19,x1,x2
	pv.sdotup.sc.b x20,x1,x2
	pv.sdotup.sci.b x21,x2,0x7
	pv.sdotusp.h x22,x2,x1
	pv.sdotusp.sc.h x23,x1,x2
	pv.sdotusp.sci.h x24,x1,0xF
	pv.sdotusp.b x25,x1,x2
	pv.sdotusp.sc.b x26,x2,x1
	pv.sdotusp.sci.b x27,x2,0x7
	pv.sdotsp.h x28,x1,x2
	pv.sdotsp.sc.h x29,x1,x2
	sw x3,8(x0)
	sw x4,12(x0)
	sw x5,16(x0)
	sw x6,20(x0)
	sw x7,24(x0)
	sw x8,28(x0)
	sw x9,32(x0)
	sw x10,36(x0)
	sw x11,40(x0)
	sw x12,44(x0)
	sw x13,48(x0)
	sw x14,52(x0)
	sw x15,56(x0)
	sw x16,60(x0)
	sw x17,64(x0)
	sw x18,68(x0)
	sw x19,72(x0)
	sw x20,76(x0)
	sw x21,80(x0)
	sw x22,84(x0)
	sw x23,88(x0)
	sw x24,92(x0)
	sw x25,96(x0)
	sw x26,100(x0)
	sw x27,104(x0)
	sw x28,108(x0)
	sw x29,112(x0)


	pv.sdotsp.sci.h x3,x1,0xF
	pv.sdotsp.b x4,x1,x2
	pv.sdotsp.sc.b x5,x1,x2
	pv.sdotsp.sci.b x6,x2,0x7
	pv.shuffle.h x7,x1,x2
	pv.shuffle.sci.h x8,x1,0x9
	pv.shuffle.b x9,x1,x2
	pv.shuffleI0.sci.b x10,x2,0x3
	pv.shuffleI1.sci.b x11,x1,0xA
	pv.shuffleI2.sci.b x12,x1,0xC
	pv.shuffleI3.sci.b x13,x2,0x4
	pv.shuffle2.h x14,x1,x2
	pv.shuffle2.b x15,x1,x2
	pv.pack.h x16,x2,x1
	pv.packhi.b x17,x1,x2
	pv.packlo.b x18,x1,x2
	pv.cmpeq.h x19,x2,x1
	pv.cmpeq.sc.h x20,x1,x2
	pv.cmpeq.sci.h x21,x1,0xA
	pv.cmpeq.b x22,x2,x1
	pv.cmpeq.sc.b x23,x1,x2
	pv.cmpeq.sci.b x24,x2,0x7
	pv.cmpne.h x25,x2,x1
	pv.cmpne.sc.h x26,x1,x2
	pv.cmpne.sci.h x27,x1,0x0
	pv.cmpne.b x28,x2,x1
	pv.cmpne.sc.b x29,x1,x2
	sw x3,8(x0)
	sw x4,12(x0)
	sw x5,16(x0)
	sw x6,20(x0)
	sw x7,24(x0)
	sw x8,28(x0)
	sw x9,32(x0)
	sw x10,36(x0)
	sw x11,40(x0)
	sw x12,44(x0)
	sw x13,48(x0)
	sw x14,52(x0)
	sw x15,56(x0)
	sw x16,60(x0)
	sw x17,64(x0)
	sw x18,68(x0)
	sw x19,72(x0)
	sw x20,76(x0)
	sw x21,80(x0)
	sw x22,84(x0)
	sw x23,88(x0)
	sw x24,92(x0)
	sw x25,96(x0)
	sw x26,100(x0)
	sw x27,104(x0)
	sw x28,108(x0)
	sw x29,112(x0)


	pv.cmpne.sci.b x3,x1,0xA
	pv.cmpgt.h x4,x1,x2
	pv.cmpgt.sc.h x5,x1,x2
	pv.cmpgt.sci.h x6,x2,0x0
	pv.cmpgt.b x7,x1,x2
	pv.cmpgt.sc.b x8,x1,x2
	pv.cmpgt.sci.b x9,x1,0xA
	pv.cmpge.h x10,x1,x2
	pv.cmpge.sc.h x11,x1,x2
	pv.cmpge.sci.h x12,x2,0x0
	pv.cmpge.b x13,x1,x2
	pv.cmpge.sc.b x14,x2,x1
	pv.cmpge.sci.b x15,x2,0xA
	pv.cmplt.h x16,x2,x1
	pv.cmplt.sc.h x17,x1,x2
	pv.cmplt.sci.h x18,x1,0x0
	pv.cmplt.b x19,x1,x2
	pv.cmplt.sc.b x20,x1,x2
	pv.cmplt.sci.b x21,x2,0xA
	pv.cmple.h x22,x1,x2
	pv.cmple.sc.h x23,x1,x2
	pv.cmple.sci.h x24,x2,0x0
	pv.cmple.b x25,x1,x2
	pv.cmple.sc.b x26,x2,x1
	pv.cmple.sci.b x27,x1,0xA
	pv.cmpgtu.h x28,x1,x2
	pv.cmpgtu.sc.h x29,x2,x1
	sw x3,8(x0)
	sw x4,12(x0)
	sw x5,16(x0)
	sw x6,20(x0)
	sw x7,24(x0)
	sw x8,28(x0)
	sw x9,32(x0)
	sw x10,36(x0)
	sw x11,40(x0)
	sw x12,44(x0)
	sw x13,48(x0)
	sw x14,52(x0)
	sw x15,56(x0)
	sw x16,60(x0)
	sw x17,64(x0)
	sw x18,68(x0)
	sw x19,72(x0)
	sw x20,76(x0)
	sw x21,80(x0)
	sw x22,84(x0)
	sw x23,88(x0)
	sw x24,92(x0)
	sw x25,96(x0)
	sw x26,100(x0)
	sw x27,104(x0)
	sw x28,108(x0)
	sw x29,112(x0)

	pv.cmpgtu.sci.h x3,x1,0x0
	pv.cmpgtu.b x4,x1,x2
	pv.cmpgtu.sc.b x5,x2,x1
	pv.cmpgtu.sci.b x6,x2,0xA
	pv.cmpgeu.h x7,x2,x1
	pv.cmpgeu.sc.h x8,x1,x2
	pv.cmpgeu.sci.h x9,x2,0x0
	pv.cmpgeu.b x10,x1,x2
	pv.cmpgeu.sc.b x11,x2,x1
	pv.cmpgeu.sci.b x12,x2,0xA
	pv.cmpltu.h x13,x2,x1
	pv.cmpltu.sc.h x14,x1,x2
	pv.cmpltu.sci.h x15,x1,0x0
	pv.cmpltu.b x16,x1,x2
	pv.cmpltu.sc.b x17,x1,x2
	pv.cmpltu.sci.b x18,x1,0xA
	pv.cmpleu.h x19,x2,x1
	pv.cmpleu.sc.h x20,x1,x2
	pv.cmpleu.sci.h x21,x2,0x0
	pv.cmpleu.b x22,x1,x2
	pv.cmpleu.sc.b x23,x2,x1
	pv.cmpleu.sci.b x24,x2,0xA
	sw x3,8(x0)
	sw x4,12(x0)
	sw x5,16(x0)
	sw x6,20(x0)
	sw x7,24(x0)
	sw x8,28(x0)
	sw x9,32(x0)
	sw x10,36(x0)
	sw x11,40(x0)
	sw x12,44(x0)
	sw x13,48(x0)
	sw x14,52(x0)
	sw x15,56(x0)
	sw x16,60(x0)
	sw x17,64(x0)
	sw x18,68(x0)
	sw x19,72(x0)
	sw x20,76(x0)
	sw x21,80(x0)
	sw x22,84(x0)
	sw x23,88(x0)
	sw x24,92(x0)

	mul x3,x1,x2
	mulh x4,x1,x2
	mulhsu x5,x1,x2
	mulhu x6,x2,x1
	p.mac x7,x4,x1
	p.msu x8,x5,x2
	p.muls x9,x5,x1
	p.mulhhs x10,x2,x6
	p.mulsN x11,x2,x1,0xB
	p.mulhhsN x12,x2,x1,0x7
	p.mulsRN x13,x3,x2,0xA
	p.mulhhsRN x14,x4,x5,0x3
	p.mulu x15,x13,x14
	p.mulhhu x16,x12,x11
	p.muluN x17,x6,x3,0x9
	p.mulhhuN x18,x2,x1,0xE
	p.muluRN x19,x18,x17,0xE
	p.mulhhuRN x20,x2,x1,0x3
	p.macsN x21,x2,x2,0xF
	p.machhsN x22,x13,x2,0xC
	p.macsRN x23,x12,x1,0x5
	p.machhsRN x24,x16,x2,0x4
	p.macuN x25,x3,x5,0xE
	p.machhuN x26,x14,x20,0x0
	p.macuRN x27,x25,x21,0xE
	p.machhuRN x28,x22,x9,0xA

	p.machhuRN x3,x22,x9,0x3
	p.macuRN x4,x25,x21,0xC
	p.machhuN x5,x14,x20,0x1
	p.macuN x6,x3,x5,0xC
	p.machhsRN x7,x16,x2,0x5
	p.macsRN x8,x12,x1,0x4
	p.machhsN x9,x13,x2,0xA
	p.macsN x10,x2,x2,0xF
	p.mulhhuRN x11,x2,x1,0x2
	p.muluRN x12,x18,x17,0x9
	p.mulhhuN x13,x2,x1,0x7
	p.muluN x14,x6,x3,0x9
	p.mulhhu x15,x12,x11
	p.mulu x16,x13,x14
	p.mulhhsRN x17,x4,x5,0x3
	p.mulsRN x18,x3,x2,0x8
	p.mulhhsN x19,x2,x1,0x7
	p.mulsN x20,x2,x1,0xD
	p.mulhhs x21,x2,x6
	p.muls x22,x5,x1
	p.mac x23,x4,x1
	mulhu x24,x2,x1
	mulhsu x25,x1,x2
	mulh x26,x1,x2
	mul x27,x1,x2

	sw x3,8(x0)
	sw x4,12(x0)
	sw x5,16(x0)
	sw x6,20(x0)
	sw x7,24(x0)
	sw x8,28(x0)
	sw x9,32(x0)
	sw x10,36(x0)
	sw x11,40(x0)
	sw x12,44(x0)
	sw x13,48(x0)
	sw x14,52(x0)
	sw x15,56(x0)
	sw x16,60(x0)
	sw x17,64(x0)
	sw x18,68(x0)
	sw x19,72(x0)
	sw x20,76(x0)
	sw x21,80(x0)
	sw x22,84(x0)
	sw x23,88(x0)
	sw x24,92(x0)
	sw x25,96(x0)
	sw x26,100(x0)
	sw x27,104(x0)
	sw x28,108(x0)

	
	sub x31,x31,x30
	addi x1,x1,0x555
	addi  x2,x1,0x7FF
	bnez x31,loop_self


	# ABI epilogue
	li t0, 0x00104000    # restore stack pointer
	lw sp, 0(t0)
	lw s11, 8(sp)        # restore callee-saved registers
	lw s10, 16(sp)
	lw s9, 24(sp)
	lw s8, 32(sp)
	lw s7, 40(sp)
	lw s6, 48(sp)
	lw s5, 56(sp)
	lw s4, 64(sp)
	lw s3, 72(sp)
	lw s2, 80(sp)
	lw s1, 88(sp)
	lw s0, 96(sp)
	lw ra, 104(sp)       # restore return address
	addi sp, sp, 112     # deallocate stack space
	jr ra                # return to caller

