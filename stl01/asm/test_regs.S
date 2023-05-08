.global test_regs
.text

test_regs:

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

	li x1,0x00000000
	li x2,0x00000000
	li x3,0x00000000
	li x4,0x00000000
	li x5,0x00000000
	li x6,0x00000000
	li x7,0x00000000
	li x8,0x00000000
	li x9,0x00000000
	li x10,0x00000000
	li x11,0x00000000
	li x12,0x00000000
	li x13,0x00000000
	li x14,0x00000000
	li x15,0x00000000
	li x16,0x00000000
	li x17,0x00000000
	li x18,0x00000000
	li x19,0x00000000
	li x20,0x00000000
	li x21,0x00000000
	li x23,0x00000000
	li x24,0x00000000
	li x25,0x00000000
	li x26,0x00000000
	li x27,0x00000000
	li x28,0x00000000
	li x29,0x00000000
	li x30,0x00000000
	li x31,0x00000000
	sw x1,0(x1)
	sw x2,4(x2)
	sw x3,8(x3)
	sw x4,2(x4)
	sw x5,16(x5)
	sw x6,20(x6)
	sw x7,24(x7)
	sw x8,28(x8)
	sw x9,32(x9)
	sw x10,36(x10)
	sw x11,40(x11)
	sw x12,44(x12)
	sw x13,48(x13)
	sw x14,52(x14)
	sw x15,56(x15)
	sw x16,60(x16)
	sw x17,64(x17)
	sw x18,68(x18)
	sw x19,72(x19)
	sw x20,76(x20)
	sw x21,80(x21)
	sw x22,84(x22)
	sw x23,88(x23)
	sw x24,92(x24)
	sw x25,96(x25)
	sw x26,100(x26)
	sw x27,104(x27)
	sw x28,108(x28)
	sw x29,112(x29)
	sw x30,116(x30)
	sw x31,120(x31)


	lb x15,56(x0)
	lb x16,60(x0)
	lb x17,64(x0)
	lb x18,68(x0)
	lb x19,72(x0)
	lb x20,76(x0)
	lb x21,80(x0)
	lb x22,84(x0)
	lb x23,88(x0)
	lb x24,92(x0)
	lb x25,96(x0)
	lb x26,100(x0)
	lb x27,104(x0)
	lb x28,108(x0)
	lb x29,112(x0)
	lb x30,116(x0)
	lb x31,120(x0)
	sb x15,56(x0)
	sb x16,60(x0)
	sb x17,64(x0)
	sb x18,68(x0)
	sb x19,72(x0)
	sb x20,76(x0)
	sb x21,80(x0)
	sb x22,84(x0)
	sb x23,88(x0)
	sb x24,92(x0)
	sb x25,96(x0)
	sb x26,100(x0)
	sb x27,104(x0)
	sb x28,108(x0)
	sb x29,112(x0)
	sb x30,116(x0)
	sb x31,120(x0)



	lbu x15,56(x0)
	lbu x16,60(x0)
	lbu x17,64(x0)
	lbu x18,68(x0)
	lbu x19,72(x0)
	lbu x20,76(x0)
	lbu x21,80(x0)
	lbu x22,84(x0)
	lbu x23,88(x0)
	lbu x24,92(x0)
	lbu x25,96(x0)
	lbu x26,100(x0)
	lbu x27,104(x0)
	lbu x28,108(x0)
	lbu x29,112(x0)
	lbu x30,116(x0)
	lbu x31,120(x0)
	sb x15,56(x0)
	sb x16,60(x0)
	sb x17,64(x0)
	sb x18,68(x0)
	sb x19,72(x0)
	sb x20,76(x0)
	sb x21,80(x0)
	sb x22,84(x0)
	sb x23,88(x0)
	sb x24,92(x0)
	sb x25,96(x0)
	sb x26,100(x0)
	sb x27,104(x0)
	sb x28,108(x0)
	sb x29,112(x0)
	sb x30,116(x0)
	sb x31,120(x0)


	lh x1,0(x0)
	lh x2,4(x0)
	lh x3,8(x0)
	lh x4,12(x0)
	lh x5,16(x0)
	lh x6,20(x0)
	lh x7,24(x0)
	lh x8,28(x0)
	lh x9,32(x0)
	lh x10,36(x0)
	lh x11,40(x0)
	lh x12,44(x0)
	lh x13,48(x0)
	lh x14,52(x0)
	sh x1,0(x0)
	sh x2,4(x0)
	sh x3,8(x0)
	sh x4,12(x0)
	sh x5,16(x0)
	sh x6,20(x0)
	sh x7,24(x0)
	sh x8,28(x0)
	sh x9,32(x0)
	sh x10,36(x0)
	sh x11,40(x0)
	sh x12,44(x0)
	sh x13,48(x0)
	sh x14,52(x0)


	lhu x1,0(x0)
	lhu x2,4(x0)
	lhu x3,8(x0)
	lhu x4,12(x0)
	lhu x5,16(x0)
	lhu x6,20(x0)
	lhu x7,24(x0)
	lhu x8,28(x0)
	lhu x9,32(x0)
	lhu x10,36(x0)
	lhu x11,40(x0)
	lhu x12,44(x0)
	lhu x13,48(x0)
	lhu x14,52(x0)
	sh x1,0(x0)
	sh x2,4(x0)
	sh x3,8(x0)
	sh x4,12(x0)
	sh x5,16(x0)
	sh x6,20(x0)
	sh x7,24(x0)
	sh x8,28(x0)
	sh x9,32(x0)
	sh x10,36(x0)
	sh x11,40(x0)
	sh x12,44(x0)
	sh x13,48(x0)
	sh x14,52(x0)

	lw x15,56(x0)
	lw x16,60(x0)
	lw x17,64(x0)
	lw x18,68(x0)
	lw x19,72(x0)
	lw x20,76(x0)
	lw x21,80(x0)
	lw x22,84(x0)
	lw x23,88(x0)
	lw x24,92(x0)
	lw x25,96(x0)
	lw x26,100(x0)
	lw x27,104(x0)
	lw x28,108(x0)
	lw x29,112(x0)
	lw x30,116(x0)
	lw x31,120(x0)
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
	sw x30,116(x0)
	sw x31,120(x0)

	li x1,0xFFFFFFFF
	li x2,0xFFFFFFFF
	li x3,0xFFFFFFFF
	li x4,0xFFFFFFFF
	li x5,0xFFFFFFFF
	li x6,0xFFFFFFFF
	li x7,0xFFFFFFFF
	li x8,0xFFFFFFFF
	li x9,0xFFFFFFFF
	li x10,0xFFFFFFFF
	li x11,0xFFFFFFFF
	li x12,0xFFFFFFFF
	li x13,0xFFFFFFFF
	li x14,0xFFFFFFFF
	li x15,0xFFFFFFFF
	li x16,0xFFFFFFFF
	li x17,0xFFFFFFFF
	li x18,0xFFFFFFFF
	li x19,0xFFFFFFFF
	li x20,0xFFFFFFFF
	li x21,0xFFFFFFFF
	li x23,0xFFFFFFFF
	li x24,0xFFFFFFFF
	li x25,0xFFFFFFFF
	li x26,0xFFFFFFFF
	li x27,0xFFFFFFFF
	li x28,0xFFFFFFFF
	li x29,0xFFFFFFFF
	li x30,0xFFFFFFFF
	li x31,0xFFFFFFFF

	sw x1,0(x0)
	sw x2,4(x0)
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
	sw x30,116(x0)
	sw x31,120(x0)


	lb x15,56(x0)
	lb x16,60(x0)
	lb x17,64(x0)
	lb x18,68(x0)
	lb x19,72(x0)
	lb x20,76(x0)
	lb x21,80(x0)
	lb x22,84(x0)
	lb x23,88(x0)
	lb x24,92(x0)
	lb x25,96(x0)
	lb x26,100(x0)
	lb x27,104(x0)
	lb x28,108(x0)
	lb x29,112(x0)
	lb x30,116(x0)
	lb x31,120(x0)
	sb x15,56(x0)
	sb x16,60(x0)
	sb x17,64(x0)
	sb x18,68(x0)
	sb x19,72(x0)
	sb x20,76(x0)
	sb x21,80(x0)
	sb x22,84(x0)
	sb x23,88(x0)
	sb x24,92(x0)
	sb x25,96(x0)
	sb x26,100(x0)
	sb x27,104(x0)
	sb x28,108(x0)
	sb x29,112(x0)
	sb x30,116(x0)
	sb x31,120(x0)



	lbu x15,56(x0)
	lbu x16,60(x0)
	lbu x17,64(x0)
	lbu x18,68(x0)
	lbu x19,72(x0)
	lbu x20,76(x0)
	lbu x21,80(x0)
	lbu x22,84(x0)
	lbu x23,88(x0)
	lbu x24,92(x0)
	lbu x25,96(x0)
	lbu x26,100(x0)
	lbu x27,104(x0)
	lbu x28,108(x0)
	lbu x29,112(x0)
	lbu x30,116(x0)
	lbu x31,120(x0)
	sb x15,56(x0)
	sb x16,60(x0)
	sb x17,64(x0)
	sb x18,68(x0)
	sb x19,72(x0)
	sb x20,76(x0)
	sb x21,80(x0)
	sb x22,84(x0)
	sb x23,88(x0)
	sb x24,92(x0)
	sb x25,96(x0)
	sb x26,100(x0)
	sb x27,104(x0)
	sb x28,108(x0)
	sb x29,112(x0)
	sb x30,116(x0)
	sb x31,120(x0)


	lh x1,0(x0)
	lh x2,4(x0)
	lh x3,8(x0)
	lh x4,12(x0)
	lh x5,16(x0)
	lh x6,20(x0)
	lh x7,24(x0)
	lh x8,28(x0)
	lh x9,32(x0)
	lh x10,36(x0)
	lh x11,40(x0)
	lh x12,44(x0)
	lh x13,48(x0)
	lh x14,52(x0)
	sh x1,0(x0)
	sh x2,4(x0)
	sh x3,8(x0)
	sh x4,12(x0)
	sh x5,16(x0)
	sh x6,20(x0)
	sh x7,24(x0)
	sh x8,28(x0)
	sh x9,32(x0)
	sh x10,36(x0)
	sh x11,40(x0)
	sh x12,44(x0)
	sh x13,48(x0)
	sh x14,52(x0)


	lhu x1,0(x0)
	lhu x2,4(x0)
	lhu x3,8(x0)
	lhu x4,12(x0)
	lhu x5,16(x0)
	lhu x6,20(x0)
	lhu x7,24(x0)
	lhu x8,28(x0)
	lhu x9,32(x0)
	lhu x10,36(x0)
	lhu x11,40(x0)
	lhu x12,44(x0)
	lhu x13,48(x0)
	lhu x14,52(x0)
	sh x1,0(x0)
	sh x2,4(x0)
	sh x3,8(x0)
	sh x4,12(x0)
	sh x5,16(x0)
	sh x6,20(x0)
	sh x7,24(x0)
	sh x8,28(x0)
	sh x9,32(x0)
	sh x10,36(x0)
	sh x11,40(x0)
	sh x12,44(x0)
	sh x13,48(x0)
	sh x14,52(x0)

	lw x15,56(x0)
	lw x16,60(x0)
	lw x17,64(x0)
	lw x18,68(x0)
	lw x19,72(x0)
	lw x20,76(x0)
	lw x21,80(x0)
	lw x22,84(x0)
	lw x23,88(x0)
	lw x24,92(x0)
	lw x25,96(x0)
	lw x26,100(x0)
	lw x27,104(x0)
	lw x28,108(x0)
	lw x29,112(x0)
	lw x30,116(x0)
	lw x31,120(x0)
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
	sw x30,116(x0)
	sw x31,120(x0)

	li x1,0
	li x2,0
	li x3,0
	li x4,0
	li x5,0
	li x6,0
	li x7,0
	li x8,0
	li x9,0
	li x10,0
	li x11,0
	li x12,0
	li x13,0
	li x14,0
	li x15,0
	li x16,0
	li x17,0
	li x18,0
	li x19,0
	li x20,0
	li x21,0
	li x23,0
	li x24,0
	li x25,0
	li x26,0
	li x27,0
	li x28,0
	li x29,0
	li x30,0
	li x31,0


	p.lb x1,0(x0)
	p.lb x2,4(x1)
	p.lb x3,8(x2)
	p.lb x4,12(x5)
	p.lb x5,16(x17)
	p.lb x6,20(x12)
	p.lb x7,24(x10)
	p.lb x8,28(x31)
	p.lb x9,60(x29)
	p.lb x10,32(x30)
	p.lb x11,36(x19)
	p.lb x12,40(x23)
	p.lb x13,44(x22)
	p.lb x14,48(x21)
	p.lb x15,60(x20)
	p.sb x1,63(x3!)
	p.sb x2,1000(x3!)
	p.sb x3,104(x3!)
	p.sb x4,52(x3!)
	p.sb x5,31(x3!)
	p.sb x6,78(x3!)
	p.sb x7,90(x3!)
	p.sb x8,99(x3!)
	p.sb x9,94(x3!)
	p.sb x10,27(x3!)
	p.sb x11,0(x3!)
	p.sb x12,11(x3!)
	p.sb x13,22(x3!)
	p.sb x14,18(x3!)
	p.sb x15,44(x3!)



	p.lb x16,x10(x0)
	p.lb x17,x30(x0)
	p.lb x18,x23(x0)
	p.lb x19,x21(x0)
	p.lb x20,x9(x0)
	p.lb x21,x4(x0)
	p.lb x22,x3(x0)
	p.lb x23,x31(x0)
	p.lb x24,x0(x0)
	p.lb x25,x8(x0)
	p.lb x26,x11(x0)
	p.lb x27,x23(x0)
	p.lb x28,x26(x0)
	p.lb x29,x1(x0)
	p.lb x30,x2(x0)
	p.sb x16,63(x0)
	p.sb x17,1000(x0)
	p.sb x18,104(x0)
	p.sb x19,52(x0)
	p.sb x20,31(x0)
	p.sb x21,78(x3)
	p.sb x22,90(x3)
	p.sb x23,99(x3)
	p.sb x24,94(x3)
	p.sb x25,27(x3)
	p.sb x26,0(x3)
	p.sb x27,11(x3)
	p.sb x28,22(x3)
	p.sb x29,18(x3)
	p.sb x30,44(x3)


	li x3,0


	p.lbu x1,0(x0)
	p.lbu x2,0(x0)
	p.lbu x3,60(x0)
	p.lbu x4,0(x0)
	p.lbu x5,0(x0)
	p.lbu x6,60(x0)
	p.lbu x7,0(x0)
	p.lbu x8,0(x0)
	p.lbu x9,60(x3)
	p.lbu x10,0(x3)
	p.lbu x11,0(x3)
	p.lbu x12,60(x3)
	p.lbu x13,0(x0)
	p.lbu x14,0(x0)
	p.lbu x15,60(x0)
	p.sb x1,63(x3)
	p.sb x2,1000(x3)
	p.sb x3,104(x3!)
	p.sb x4,52(x3!)
	p.sb x5,31(x3!)
	p.sb x6,78(x3!)
	p.sb x7,90(x3!)
	p.sb x8,99(x3!)
	p.sb x9,94(x3!)
	p.sb x10,27(x3!)
	p.sb x11,0(x3!)
	p.sb x12,11(x3!)
	p.sb x13,22(x3!)
	p.sb x14,18(x3!)
	p.sb x15,44(x3!)




	p.lbu x16,x10(x0)
	p.lbu x17,x30(x1)
	p.lbu x18,x23(x2)
	p.lbu x19,x21(x5)
	p.lbu x20,x9(x17)
	p.lbu x21,x4(x12)
	p.lbu x22,x3(x10)
	p.lbu x23,x31(x31)
	p.lbu x24,x0(x29)
	p.lbu x25,x8(x30)
	p.lbu x26,x11(x19)
	p.lbu x27,x23(x23)
	p.lbu x28,x26(x22)
	p.lbu x29,x1(x21)
	p.lbu x30,x2(x20)
	p.sb x16,63(x3)
	p.sb x17,1000(x3)
	p.sb x18,104(x3!)
	p.sb x19,52(x3!)
	p.sb x20,31(x3!)
	p.sb x21,78(x3!)
	p.sb x22,90(x3!)
	p.sb x23,99(x3!)
	p.sb x24,94(x3!)
	p.sb x25,27(x3!)
	p.sb x26,0(x3!)
	p.sb x27,11(x3!)
	p.sb x28,22(x3!)
	p.sb x29,18(x3!)
	p.sb x30,44(x3!)


	p.lh x1,0(x0)
	p.lh x2,0(x1)
	p.lh x3,60(x0)
	p.lh x4,0(x5)
	p.lh x5,0(x0)
	p.lh x6,60(x0)
	p.lh x7,0(x10)
	p.lh x8,0(x31)
	p.lh x9,60(x29)
	p.lh x10,0(x30)
	p.lh x11,0(x19)
	p.lh x12,60(x23)
	p.lh x13,0(x22)
	p.lh x14,0(x21)
	p.lh x15,60(x20)
	p.sh x1,63(x3!)
	p.sh x2,100(x3!)
	p.sh x3,104(x3!)
	p.sh x4,52(x3!)
	p.sh x5,31(x3!)
	p.sh x6,78(x3!)
	p.sh x7,90(x3!)
	p.sh x8,99(x3!)
	p.sh x9,94(x3!)
	p.sh x10,27(x3!)
	p.sh x11,0(x3!)
	p.sh x12,11(x3!)
	p.sh x13,22(x3!)
	p.sh x14,18(x3!)
	p.sh x15,44(x3!)


	li x3,0



	p.lh x16,x1(x0)
	p.lh x17,x2(x0)
	p.lh x18,x30(x0)
	p.lh x19,x20(x0)
	p.lh x20,x17(x0)
	p.lh x21,x19(x0)
	p.lh x22,x6(x0)
	p.lh x23,x8(x0)
	p.lh x24,x12(x0)
	p.lh x25,x19(x0)
	p.lh x26,x25(x0)
	p.lh x27,x23(x0)
	p.lh x28,x29(x0)
	p.lh x29,x28(x0)
	p.lh x30,x28(x0)
	p.sh x1,64(x3!)
	p.sh x2,100(x3!)
	p.sh x3,104(x3!)
	p.sh x4,52(x3!)
	p.sh x5,32(x3!)
	p.sh x6,78(x3!)
	p.sh x7,90(x3!)
	p.sh x8,100(x3!)
	p.sh x9,94(x3!)
	p.sh x10,36(x3!)
	p.sh x11,0(x3!)
	p.sh x12,12(x3!)
	p.sh x13,24(x3!)
	p.sh x14,16(x3!)
	p.sh x15,44(x3!)



	p.lhu x1,0(x0)
	p.lhu x2,0(x0)
	p.lhu x3,60(x0)
	p.lhu x4,0(x0)
	p.lhu x5,0(x0)
	p.lhu x6,60(x0)
	p.lhu x7,0(x0)
	p.lhu x8,0(x0)
	p.lhu x9,60(x3)
	p.lhu x10,0(x3)
	p.lhu x11,0(x3)
	p.lhu x12,60(x3)
	p.lhu x13,0(x3)
	p.lhu x14,0(x3)
	p.lhu x15,60(x3)
	p.sh x1,63(x3)
	p.sh x2,100(x3)
	p.sh x3,104(x3)
	p.sh x4,52(x3)
	p.sh x5,31(x3)
	p.sh x6,78(x3)
	p.sh x7,90(x3)
	p.sh x8,99(x3)
	p.sh x9,94(x3)
	p.sh x10,27(x3)
	p.sh x11,0(x3)
	p.sh x12,11(x3)
	p.sh x13,22(x3)
	p.sh x14,18(x3)
	p.sh x15,44(x3)




	li x1, 0
	li x2, 0
	li x3, 0
	li x4, 0
	li x5, 0
	li x6, 0
	li x7, 0
	li x8, 0
	li x9, 0
	li x10, 0
	li x11, 0
	li x12, 0
	li x13, 0
	li x14, 0
	li x15, 0
	li x16, 0
	li x17, 0
	li x18, 0
	li x19, 0
	li x20, 0
	li x21, 0
	li x22, 0
	li x23, 0
	li x24, 0
	li x25, 0
	li x26, 0
	li x27, 0
	li x28, 0
	li x29, 0
	li x30, 0
	li x31, 0




	p.lhu x1,x25(x0)
	p.lhu x2,x2(x0)
	p.lhu x3,x30(x0)
	p.lhu x4,x20(x0)
	p.lhu x5,x17(x0)
	p.lhu x6,x19(x0)
	p.lhu x7,x6(x0)
	p.lhu x8,x8(x3)
	p.lhu x9,x12(x0)
	p.lhu x10,x19(x3)
	p.lhu x11,x25(x0)
	p.lhu x12,x23(x3)
	p.lhu x13,x29(x0)
	p.lhu x14,x28(x0)
	p.lhu x15,x28(x0)
	p.sh x1,63(x3!)
	p.sh x2,100(x3!)
	p.sh x3,104(x3!)
	p.sh x4,52(x3!)
	p.sh x5,31(x3!)
	p.sh x6,78(x3!)
	p.sh x7,90(x3!)
	p.sh x8,99(x3!)
	p.sh x9,94(x3!)
	p.sh x10,27(x3!)
	p.sh x11,0(x3!)
	p.sh x12,11(x3!)
	p.sh x13,22(x3!)
	p.sh x14,18(x3!)
	p.sh x15,44(x3!)




	p.lw x1,0(x0)
	p.lw x2,0(x0)
	p.lw x3,60(x0)
	p.lw x4,0(x0)
	p.lw x5,0(x0)
	p.lw x6,60(x0)
	p.lw x7,0(x0)
	p.lw x8,0(x0)
	p.lw x9,60(x0)
	p.lw x10,0(x0)
	p.lw x11,0(x0)
	p.lw x12,60(x3)
	p.lw x13,0(x0)
	p.lw x14,0(x0)
	p.lw x15,60(x0)
	p.sw x1,63(x3)
	p.sw x2,1000(x0)
	p.sw x3,104(x3!)
	p.sw x4,52(x3!)
	p.sw x5,31(x3!)
	p.sw x6,78(x3!)
	p.sw x7,90(x3!)
	p.sw x8,99(x3!)
	p.sw x9,94(x3!)
	p.sw x10,27(x3!)
	p.sw x11,0(x3!)
	p.sw x12,11(x3!)
	p.sw x13,22(x3!)
	p.sw x14,18(x3!)
	p.sw x15,44(x3!)


	p.lw x16,x2(x0)
	p.lw x17,x4(x0)
	p.lw x18,x8(x0)
	p.lw x19,x1(x0)
	p.lw x20,x3(x0)
	p.lw x21,x6(x0)
	p.lw x22,x9(x0)
	p.lw x23,x25(x3)
	p.lw x24,x28(x0)
	p.lw x25,x22(x0)
	p.lw x26,x30(x0)
	p.lw x27,x31(x3)
	p.lw x28,x1(x0)
	p.lw x29,x28(x0)
	p.lw x30,x27(x0)
	p.sw x1,63(x3!)
	p.sw x2,1000(x3!)
	p.sw x3,104(x3!)
	p.sw x4,52(x3!)
	p.sw x5,31(x3!)
	p.sw x6,78(x3!)
	p.sw x7,90(x3!)
	p.sw x8,99(x3!)
	p.sw x9,94(x3!)
	p.sw x10,27(x3!)
	p.sw x11,0(x3!)
	p.sw x12,11(x3!)
	p.sw x13,22(x3!)
	p.sw x14,18(x3!)
	p.sw x15,44(x3!)



	li x3,0
	li x2,0
	li x4,0

again:
	rdcycleh x3
	rdcycle x2
	rdcycleh x4
	bne x3, x4, again

	sw x2,0(x0)
	sw x3,4(x0)
	sw x4,8(x0)

	csrr x1,0x785
	csrr x2,0x786
	sw x1,0(x0)
	sw x2,4(x0)

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

