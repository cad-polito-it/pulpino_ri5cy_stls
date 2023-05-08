
.global test_rf2
.text

test_rf2:

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

	xor x1, x1, x1
	addi x2, x0, 4
	sub x3, x0, x2
	lui x31, 0x00104
	addi x4, x0, 120

sw_loop_z:
	p.sw x1, x2(x31!)
	sub x4, x4, x2
	bne x4, x0, sw_loop_z

addi x4, x0, 120	
sw_loop_o:
	p.sw x1, x2(x31!)
	sub x4, x4, x2
	bne x4, x0, sw_loop_o
	
	lui x31, 0x00104
	lui x30, 0x00105

	p.lw x1, x2(x31!)
	p.sw x1, x2(x30!)
	add x5, x0, x31
	add x4, x0, x30
	addi x1, x0, 4
	p.lw x2, x1(x5!)
	p.lw x3, x1(x5!)
	p.sw x2, x1(x4!)
	p.sw x3, x1(x4!)
	add x2, x0, x4
	add x3, x0, x5
	p.lw x4, x1(x3!)
	p.lw x5, x1(x3!)
	p.lw x6, x1(x3!)
	p.sw x4, x1(x2!)
	p.sw x5, x1(x2!)
	p.sw x6, x1(x2!)
	add x1, x0, x3
	add x6, x0, x2
	addi x4, x0, 4
	p.lw x7, x4(x1!)
	p.lw x8, x4(x1!)
	p.lw x9, x4(x1!)
	p.lw x10, x4(x1!)
	p.sw x7, x4(x6!)
	p.sw x8, x4(x6!)
	p.sw x9, x4(x6!)
	p.sw x10, x4(x6!)


	p.lw x11, x4(x1!)
	p.sw x11, x4(x6!)
	add x15, x0, x1
	add x14, x0, x6
	addi x11, x0, 4
	p.lw x12, x11(x15!)
	p.lw x13, x11(x15!)
	p.sw x12, x11(x14!)
	p.sw x13, x11(x14!)
	add x12, x0, x14
	add x13, x0, x15
	p.lw x14, x11(x13!)
	p.lw x15, x11(x13!)
	p.lw x16, x11(x13!)
	p.sw x14, x11(x12!)
	p.sw x15, x11(x12!)
	p.sw x16, x11(x12!)
	add x11, x0, x13
	add x16, x0, x12
	addi x14, x0, 4
	p.lw x17, x14(x11!)
	p.lw x18, x14(x11!)
	p.lw x19, x14(x11!)
	p.lw x20, x14(x11!)
	p.sw x17, x14(x16!)
	p.sw x18, x14(x16!)
	p.sw x19, x14(x16!)
	p.sw x20, x14(x16!)


	p.lw x21, x14(x11!)
	p.sw x21, x14(x16!)
	add x25, x0, x11
	add x24, x0, x16
	addi x21, x0, 4
	p.lw x22, x21(x15!)
	p.lw x23, x21(x15!)
	p.sw x22, x21(x14!)
	p.sw x23, x21(x14!)
	add x22, x0, x14
	add x23, x0, x15
	p.lw x24, x21(x23!)
	p.lw x25, x21(x23!)
	p.lw x26, x21(x23!)
	p.sw x24, x21(x22!)
	p.sw x25, x21(x22!)
	p.sw x26, x21(x22!)
	add x21, x0, x23
	add x26, x0, x22
	addi x24, x0, 4
	p.lw x27, x24(x11!)
	p.lw x28, x24(x11!)
	p.lw x29, x24(x11!)
	p.lw x30, x24(x11!)
	p.sw x27, x24(x16!)
	p.sw x28, x24(x16!)
	p.sw x29, x24(x16!)
	p.sw x30, x24(x16!)

	p.lw x31, x24(x11!)
	p.sw x31, x24(x16!)


	lui x31, 0x00104
	lui x30, 0x00105

	p.lhu x1, x2(x31!)
	p.sh x1, x2(x30!)
	add x5, x0, x31
	add x4, x0, x30
	addi x1, x0, 4
	p.lhu x2, x1(x5!)
	p.lhu x3, x1(x5!)
	p.sh x2, x1(x4!)
	p.sh x3, x1(x4!)
	add x2, x0, x4
	add x3, x0, x5
	p.lhu x4, x1(x3!)
	p.lhu x5, x1(x3!)
	p.lhu x6, x1(x3!)
	p.sh x4, x1(x2!)
	p.sh x5, x1(x2!)
	p.sh x6, x1(x2!)
	add x1, x0, x3
	add x6, x0, x2
	addi x4, x0, 4
	p.lhu x7, x4(x1!)
	p.lhu x8, x4(x1!)
	p.lhu x9, x4(x1!)
	p.lhu x10, x4(x1!)
	p.sh x7, x4(x6!)
	p.sh x8, x4(x6!)
	p.sh x9, x4(x6!)
	p.sh x10, x4(x6!)


	p.lhu x11, x4(x1!)
	p.sh x11, x4(x6!)
	add x15, x0, x1
	add x14, x0, x6
	addi x11, x0, 4
	p.lhu x12, x11(x15!)
	p.lhu x13, x11(x15!)
	p.sh x12, x11(x14!)
	p.sh x13, x11(x14!)
	add x12, x0, x14
	add x13, x0, x15
	p.lhu x14, x11(x13!)
	p.lhu x15, x11(x13!)
	p.lhu x16, x11(x13!)
	p.sh x14, x11(x12!)
	p.sh x15, x11(x12!)
	p.sh x16, x11(x12!)
	add x11, x0, x13
	add x16, x0, x12
	addi x14, x0, 4
	p.lhu x17, x14(x11!)
	p.lhu x18, x14(x11!)
	p.lhu x19, x14(x11!)
	p.lhu x20, x14(x11!)
	p.sh x17, x14(x16!)
	p.sh x18, x14(x16!)
	p.sh x19, x14(x16!)
	p.sh x20, x14(x16!)


	p.lhu x21, x14(x11!)
	p.sh x21, x14(x16!)
	add x25, x0, x11
	add x24, x0, x16
	addi x21, x0, 4
	p.lhu x22, x21(x15!)
	p.lhu x23, x21(x15!)
	p.sh x22, x21(x14!)
	p.sh x23, x21(x14!)
	add x22, x0, x14
	add x23, x0, x15
	p.lhu x24, x21(x23!)
	p.lhu x25, x21(x23!)
	p.lhu x26, x21(x23!)
	p.sh x24, x21(x22!)
	p.sh x25, x21(x22!)
	p.sh x26, x21(x22!)
	add x21, x0, x23
	add x26, x0, x22
	addi x24, x0, 4
	p.lhu x27, x24(x11!)
	p.lhu x28, x24(x11!)
	p.lhu x29, x24(x11!)
	p.lhu x30, x24(x11!)
	p.sh x27, x24(x16!)
	p.sh x28, x24(x16!)
	p.sh x29, x24(x16!)
	p.sh x30, x24(x16!)

	p.lhu x31, x24(x11!)
	p.sh x31, x24(x16!)

	lui x31, 0x00104
	lui x30, 0x00105

	p.lh x1, x2(x31!)
	p.sh x1, x2(x30!)
	add x5, x0, x31
	add x4, x0, x30
	addi x1, x0, 4
	p.lh x2, x1(x5!)
	p.lh x3, x1(x5!)
	p.sh x2, x1(x4!)
	p.sh x3, x1(x4!)
	add x2, x0, x4
	add x3, x0, x5
	p.lh x4, x1(x3!)
	p.lh x5, x1(x3!)
	p.lh x6, x1(x3!)
	p.sh x4, x1(x2!)
	p.sh x5, x1(x2!)
	p.sh x6, x1(x2!)
	add x1, x0, x3
	add x6, x0, x2
	addi x4, x0, 4
	p.lh x7, x4(x1!)
	p.lh x8, x4(x1!)
	p.lh x9, x4(x1!)
	p.lh x10, x4(x1!)
	p.sh x7, x4(x6!)
	p.sh x8, x4(x6!)
	p.sh x9, x4(x6!)
	p.sh x10, x4(x6!)


	p.lh x11, x4(x1!)
	p.sh x11, x4(x6!)
	add x15, x0, x1
	add x14, x0, x6
	addi x11, x0, 4
	p.lh x12, x11(x15!)
	p.lh x13, x11(x15!)
	p.sh x12, x11(x14!)
	p.sh x13, x11(x14!)
	add x12, x0, x14
	add x13, x0, x15
	p.lh x14, x11(x13!)
	p.lh x15, x11(x13!)
	p.lh x16, x11(x13!)
	p.sh x14, x11(x12!)
	p.sh x15, x11(x12!)
	p.sh x16, x11(x12!)
	add x11, x0, x13
	add x16, x0, x12
	addi x14, x0, 4
	p.lh x17, x14(x11!)
	p.lh x18, x14(x11!)
	p.lh x19, x14(x11!)
	p.lh x20, x14(x11!)
	p.sh x17, x14(x16!)
	p.sh x18, x14(x16!)
	p.sh x19, x14(x16!)
	p.sh x20, x14(x16!)


	p.lh x21, x14(x11!)
	p.sh x21, x14(x16!)
	add x25, x0, x11
	add x24, x0, x16
	addi x21, x0, 4
	p.lh x22, x21(x15!)
	p.lh x23, x21(x15!)
	p.sh x22, x21(x14!)
	p.sh x23, x21(x14!)
	add x22, x0, x14
	add x23, x0, x15
	p.lh x24, x21(x23!)
	p.lh x25, x21(x23!)
	p.lh x26, x21(x23!)
	p.sh x24, x21(x22!)
	p.sh x25, x21(x22!)
	p.sh x26, x21(x22!)
	add x21, x0, x23
	add x26, x0, x22
	addi x24, x0, 4
	p.lh x27, x24(x11!)
	p.lh x28, x24(x11!)
	p.lh x29, x24(x11!)
	p.lh x30, x24(x11!)
	p.sh x27, x24(x16!)
	p.sh x28, x24(x16!)
	p.sh x29, x24(x16!)
	p.sh x30, x24(x16!)

	p.lh x31, x24(x11!)
	p.sh x31, x24(x16!)



	lui x31, 0x00104
	lui x30, 0x00105

	p.lb x1, x2(x31!)
	p.sb x1, x2(x30!)
	add x5, x0, x31
	add x4, x0, x30
	addi x1, x0, 4
	p.lb x2, x1(x5!)
	p.lb x3, x1(x5!)
	p.sb x2, x1(x4!)
	p.sb x3, x1(x4!)
	add x2, x0, x4
	add x3, x0, x5
	p.lb x4, x1(x3!)
	p.lb x5, x1(x3!)
	p.lb x6, x1(x3!)
	p.sb x4, x1(x2!)
	p.sb x5, x1(x2!)
	p.sb x6, x1(x2!)
	add x1, x0, x3
	add x6, x0, x2
	addi x4, x0, 4
	p.lb x7, x4(x1!)
	p.lb x8, x4(x1!)
	p.lb x9, x4(x1!)
	p.lb x10, x4(x1!)
	p.sb x7, x4(x6!)
	p.sb x8, x4(x6!)
	p.sb x9, x4(x6!)
	p.sb x10, x4(x6!)


	p.lb x11, x4(x1!)
	p.sb x11, x4(x6!)
	add x15, x0, x1
	add x14, x0, x6
	addi x11, x0, 4
	p.lb x12, x11(x15!)
	p.lb x13, x11(x15!)
	p.sb x12, x11(x14!)
	p.sb x13, x11(x14!)
	add x12, x0, x14
	add x13, x0, x15
	p.lb x14, x11(x13!)
	p.lb x15, x11(x13!)
	p.lb x16, x11(x13!)
	p.sb x14, x11(x12!)
	p.sb x15, x11(x12!)
	p.sb x16, x11(x12!)
	add x11, x0, x13
	add x16, x0, x12
	addi x14, x0, 4
	p.lb x17, x14(x11!)
	p.lb x18, x14(x11!)
	p.lb x19, x14(x11!)
	p.lb x20, x14(x11!)
	p.sb x17, x14(x16!)
	p.sb x18, x14(x16!)
	p.sb x19, x14(x16!)
	p.sb x20, x14(x16!)


	p.lb x21, x14(x11!)
	p.sb x21, x14(x16!)
	add x25, x0, x11
	add x24, x0, x16
	addi x21, x0, 4
	p.lb x22, x21(x15!)
	p.lb x23, x21(x15!)
	p.sb x22, x21(x14!)
	p.sb x23, x21(x14!)
	add x22, x0, x14
	add x23, x0, x15
	p.lb x24, x21(x23!)
	p.lb x25, x21(x23!)
	p.lb x26, x21(x23!)
	p.sb x24, x21(x22!)
	p.sb x25, x21(x22!)
	p.sb x26, x21(x22!)
	add x21, x0, x23
	add x26, x0, x22
	addi x24, x0, 4
	p.lb x27, x24(x11!)
	p.lb x28, x24(x11!)
	p.lb x29, x24(x11!)
	p.lb x30, x24(x11!)
	p.sb x27, x24(x16!)
	p.sb x28, x24(x16!)
	p.sb x29, x24(x16!)
	p.sb x30, x24(x16!)

	p.lb x31, x24(x11!)
	p.sb x31, x24(x16!)

	lui x31, 0x00104
	lui x30, 0x00105

	p.lbu x1, x2(x31!)
	p.sb x1, x2(x30!)
	add x5, x0, x31
	add x4, x0, x30
	addi x1, x0, 4
	p.lbu x2, x1(x5!)
	p.lbu x3, x1(x5!)
	p.sb x2, x1(x4!)
	p.sb x3, x1(x4!)
	add x2, x0, x4
	add x3, x0, x5
	p.lbu x4, x1(x3!)
	p.lbu x5, x1(x3!)
	p.lbu x6, x1(x3!)
	p.sb x4, x1(x2!)
	p.sb x5, x1(x2!)
	p.sb x6, x1(x2!)
	add x1, x0, x3
	add x6, x0, x2
	addi x4, x0, 4
	p.lbu x7, x4(x1!)
	p.lbu x8, x4(x1!)
	p.lbu x9, x4(x1!)
	p.lbu x10, x4(x1!)
	p.sb x7, x4(x6!)
	p.sb x8, x4(x6!)
	p.sb x9, x4(x6!)
	p.sb x10, x4(x6!)


	p.lbu x11, x4(x1!)
	p.sb x11, x4(x6!)
	add x15, x0, x1
	add x14, x0, x6
	addi x11, x0, 4
	p.lbu x12, x11(x15!)
	p.lbu x13, x11(x15!)
	p.sb x12, x11(x14!)
	p.sb x13, x11(x14!)
	add x12, x0, x14
	add x13, x0, x15
	p.lbu x14, x11(x13!)
	p.lbu x15, x11(x13!)
	p.lbu x16, x11(x13!)
	p.sb x14, x11(x12!)
	p.sb x15, x11(x12!)
	p.sb x16, x11(x12!)
	add x11, x0, x13
	add x16, x0, x12
	addi x14, x0, 4
	p.lbu x17, x14(x11!)
	p.lbu x18, x14(x11!)
	p.lbu x19, x14(x11!)
	p.lbu x20, x14(x11!)
	p.sb x17, x14(x16!)
	p.sb x18, x14(x16!)
	p.sb x19, x14(x16!)
	p.sb x20, x14(x16!)


	p.lbu x21, x14(x11!)
	p.sb x21, x14(x16!)
	add x25, x0, x11
	add x24, x0, x16
	addi x21, x0, 4
	p.lbu x22, x21(x15!)
	p.lbu x23, x21(x15!)
	p.sb x22, x21(x14!)
	p.sb x23, x21(x14!)
	add x22, x0, x14
	add x23, x0, x15
	p.lbu x24, x21(x23!)
	p.lbu x25, x21(x23!)
	p.lbu x26, x21(x23!)
	p.sb x24, x21(x22!)
	p.sb x25, x21(x22!)
	p.sb x26, x21(x22!)
	add x21, x0, x23
	add x26, x0, x22
	addi x24, x0, 4
	p.lbu x27, x24(x11!)
	p.lbu x28, x24(x11!)
	p.lbu x29, x24(x11!)
	p.lbu x30, x24(x11!)
	p.sb x27, x24(x16!)
	p.sb x28, x24(x16!)
	p.sb x29, x24(x16!)
	p.sb x30, x24(x16!)

	p.lbu x31, x24(x11!)
	p.sb x31, x24(x16!)

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
