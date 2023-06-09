.global test_multiplier
.text

test_multiplier:

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


	li x2,0x00000000
	li x3,0x00000000
	mulh x4,x2,x3
	sw x4,0(x0)
	mul x5,x2,x3
	sw x5,0(x0)
	p.mac x6,x2,x3
	sw x6,0(x0)
	p.macsN x1,x2,x3,3
	sw x1,0(x0)
	p.machhsN x7,x2,x3,4
	sw x7,0(x0)
	p.machhsRN x8,x2,x3,3
	sw x8,0(x0)
	p.macuN x9,x2,x3,4
	sw x9,0(x0)
	p.machhuN x10,x2,x3,3
	sw x10,0(x0)
	p.macuRN x11,x2,x3,4
	sw x11,0(x0)
	p.machhuRN x12,x2,x3,3
	sw x12,0(x0)
	p.mulhhuRN x13,x2,x3,4
	sw x13,0(x0)
	p.msu x14,x2,x3
	sw x14,0(x0)
	p.muls x15,x2,x3
	sw x15,0(x0)
	p.mulhhs x16,x2,x3
	sw x16,0(x0)
	p.mulsN x17,x2,x3,3
	sw x17,0(x0)
	p.mulhhsN x18,x2,x3,3
	sw x18,0(x0)
	p.mulsRN x19,x2,x3,3
	sw x19,0(x0)
	p.mulhhsRN x20,x2,x3,3
	sw x20,0(x0)
	p.mulu x21,x2,x3
	sw x21,0(x0)
	p.mulhhu x22,x2,x3
	sw x22,0(x0)
	p.muluN x23,x2,x3,3
	sw x23,0(x0)
	p.mulhhu x24,x2,x3
	sw x24,0(x0)
	p.muluN x25,x2,x3,3
	sw x25,0(x0)
	p.mulhhuN x26,x2,x3,3
	sw x26,0(x0)
	p.muluRN x27,x2,x3,3
	sw x27,0(x0)
	pv.dotusp.h x1,x2,x3
	sw x1,0(x0)
	pv.dotusp.b x4,x2,x3
	sw x4,0(x0)
	pv.dotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.dotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotup.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotup.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotusp.h x5,x2,x3
	nop
	sw x5,0(x0)
	pv.sdotusp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.sci.h x10,x2,31
	sw x10,0(x0)



	li x2,0x00000000
	li x3,0xFFFFFFFF
	mulh x4,x2,x3
	sw x4,0(x0)
	mul x5,x2,x3
	sw x5,0(x0)
	p.mac x6,x2,x3
	sw x6,0(x0)
	p.macsN x1,x2,x3,3
	sw x1,0(x0)
	p.machhsN x7,x2,x3,4
	sw x7,0(x0)
	p.machhsRN x8,x2,x3,3
	sw x8,0(x0)
	p.macuN x9,x2,x3,4
	sw x9,0(x0)
	p.machhuN x10,x2,x3,3
	sw x10,0(x0)
	p.macuRN x11,x2,x3,4
	sw x11,0(x0)
	p.machhuRN x12,x2,x3,3
	sw x12,0(x0)
	p.mulhhuRN x13,x2,x3,4
	sw x13,0(x0)
	p.msu x14,x2,x3
	sw x14,0(x0)
	p.muls x15,x2,x3
	sw x15,0(x0)
	p.mulhhs x16,x2,x3
	sw x16,0(x0)
	p.mulsN x17,x2,x3,3
	sw x17,0(x0)
	p.mulhhsN x18,x2,x3,3
	sw x18,0(x0)
	p.mulsRN x19,x2,x3,3
	sw x19,0(x0)
	p.mulhhsRN x20,x2,x3,3
	sw x20,0(x0)
	p.mulu x21,x2,x3
	sw x21,0(x0)
	p.mulhhu x22,x2,x3
	sw x22,0(x0)
	p.muluN x23,x2,x3,3
	sw x23,0(x0)
	p.mulhhu x24,x2,x3
	sw x24,0(x0)
	p.muluN x25,x2,x3,3
	sw x25,0(x0)
	p.mulhhuN x26,x2,x3,3
	sw x26,0(x0)
	p.muluRN x27,x2,x3,3
	sw x27,0(x0)
	pv.dotusp.h x1,x2,x3
	sw x1,0(x0)
	pv.dotusp.b x4,x2,x3
	sw x4,0(x0)
	pv.dotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.dotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotup.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotup.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotusp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotusp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.sci.h x10,x2,31
	sw x10,0(x0)

	li x2,0xFFFFFFFF
	li x3,0x00000000
	mulh x4,x2,x3
	sw x4,0(x0)
	mul x5,x2,x3
	sw x5,0(x0)
	p.mac x6,x2,x3
	sw x6,0(x0)
	p.macsN x1,x2,x3,3
	sw x1,0(x0)
	p.machhsN x7,x2,x3,4
	sw x7,0(x0)
	p.machhsRN x8,x2,x3,3
	sw x8,0(x0)
	p.macuN x9,x2,x3,4
	sw x9,0(x0)
	p.machhuN x10,x2,x3,3
	sw x10,0(x0)
	p.macuRN x11,x2,x3,4
	sw x11,0(x0)
	p.machhuRN x12,x2,x3,3
	sw x12,0(x0)
	p.mulhhuRN x13,x2,x3,4
	sw x13,0(x0)
	p.msu x14,x2,x3
	sw x14,0(x0)
	p.muls x15,x2,x3
	sw x15,0(x0)
	p.mulhhs x16,x2,x3
	sw x16,0(x0)
	p.mulsN x17,x2,x3,3
	sw x17,0(x0)
	p.mulhhsN x18,x2,x3,3
	sw x18,0(x0)
	p.mulsRN x19,x2,x3,3
	sw x19,0(x0)
	p.mulhhsRN x20,x2,x3,3
	sw x20,0(x0)
	p.mulu x21,x2,x3
	sw x21,0(x0)
	p.mulhhu x22,x2,x3
	sw x22,0(x0)
	p.muluN x23,x2,x3,3
	sw x23,0(x0)
	p.mulhhu x24,x2,x3
	sw x24,0(x0)
	p.muluN x25,x2,x3,3
	sw x25,0(x0)
	p.mulhhuN x26,x2,x3,3
	sw x26,0(x0)
	p.muluRN x27,x2,x3,3
	sw x27,0(x0)
	pv.dotusp.h x1,x2,x3
	sw x1,0(x0)
	pv.dotusp.b x4,x2,x3
	sw x4,0(x0)
	pv.dotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.dotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotup.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotup.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotusp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotusp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.sci.h x10,x2,31
	sw x10,0(x0)

	li x2,0xFFFFFFFF
	li x3,0xFFFFFFFF
	mulh x4,x2,x3
	sw x4,0(x0)
	mul x5,x2,x3
	sw x5,0(x0)
	p.mac x6,x2,x3
	sw x6,0(x0)
	p.macsN x1,x2,x3,3
	sw x1,0(x0)
	p.machhsN x7,x2,x3,4
	sw x7,0(x0)
	p.machhsRN x8,x2,x3,3
	sw x8,0(x0)
	p.macuN x9,x2,x3,4
	sw x9,0(x0)
	p.machhuN x10,x2,x3,3
	sw x10,0(x0)
	p.macuRN x11,x2,x3,4
	sw x11,0(x0)
	p.machhuRN x12,x2,x3,3
	sw x12,0(x0)
	p.mulhhuRN x13,x2,x3,4
	sw x13,0(x0)
	p.msu x14,x2,x3
	sw x14,0(x0)
	p.muls x15,x2,x3
	sw x15,0(x0)
	p.mulhhs x16,x2,x3
	sw x16,0(x0)
	p.mulsN x17,x2,x3,3
	sw x17,0(x0)
	p.mulhhsN x18,x2,x3,3
	sw x18,0(x0)
	p.mulsRN x19,x2,x3,3
	sw x19,0(x0)
	p.mulhhsRN x20,x2,x3,3
	sw x20,0(x0)
	p.mulu x21,x2,x3
	sw x21,0(x0)
	p.mulhhu x22,x2,x3
	sw x22,0(x0)
	p.muluN x23,x2,x3,3
	sw x23,0(x0)
	p.mulhhu x24,x2,x3
	sw x24,0(x0)
	p.muluN x25,x2,x3,3
	sw x25,0(x0)
	p.mulhhuN x26,x2,x3,3
	sw x26,0(x0)
	p.muluRN x27,x2,x3,3
	sw x27,0(x0)
	pv.dotusp.h x1,x2,x3
	sw x1,0(x0)
	pv.dotusp.b x4,x2,x3
	sw x4,0(x0)
	pv.dotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.dotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotup.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotup.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotusp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotusp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.sci.h x10,x2,3
	sw x10,0(x0)


	li x2,0x0000FFFF
	li x3,0x0000FFFF
	mulh x4,x2,x3
	sw x4,0(x0)
	mul x5,x2,x3
	sw x5,0(x0)
	p.mac x6,x2,x3
	sw x6,0(x0)
	p.macsN x1,x2,x3,3
	sw x1,0(x0)
	p.machhsN x7,x2,x3,4
	sw x7,0(x0)
	p.machhsRN x8,x2,x3,3
	sw x8,0(x0)
	p.macuN x9,x2,x3,4
	sw x9,0(x0)
	p.machhuN x10,x2,x3,3
	sw x10,0(x0)
	p.macuRN x11,x2,x3,4
	sw x11,0(x0)
	p.machhuRN x12,x2,x3,3
	sw x12,0(x0)
	p.mulhhuRN x13,x2,x3,4
	sw x13,0(x0)
	p.msu x14,x2,x3
	sw x14,0(x0)
	p.muls x15,x2,x3
	sw x15,0(x0)
	p.mulhhs x16,x2,x3
	sw x16,0(x0)
	p.mulsN x17,x2,x3,3
	sw x17,0(x0)
	p.mulhhsN x18,x2,x3,3
	sw x18,0(x0)
	p.mulsRN x19,x2,x3,3
	sw x19,0(x0)
	p.mulhhsRN x20,x2,x3,3
	sw x20,0(x0)
	p.mulu x21,x2,x3
	sw x21,0(x0)
	p.mulhhu x22,x2,x3
	sw x22,0(x0)
	p.muluN x23,x2,x3,3
	sw x23,0(x0)
	p.mulhhu x24,x2,x3
	sw x24,0(x0)
	p.muluN x25,x2,x3,3
	sw x25,0(x0)
	p.mulhhuN x26,x2,x3,3
	sw x26,0(x0)
	p.muluRN x27,x2,x3,3
	sw x27,0(x0)
	pv.dotusp.h x1,x2,x3
	sw x1,0(x0)
	pv.dotusp.b x4,x2,x3
	sw x4,0(x0)
	pv.dotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.dotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotup.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotup.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotusp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotusp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.sci.h x10,x2,3
	sw x10,0(x0)

	li x2,0xFFFF0000
	li x3,0xFFFF0000
	mulh x4,x2,x3
	sw x4,0(x0)
	mul x5,x2,x3
	sw x5,0(x0)
	p.mac x6,x2,x3
	sw x6,0(x0)
	p.macsN x1,x2,x3,3
	sw x1,0(x0)
	p.machhsN x7,x2,x3,4
	sw x7,0(x0)
	p.machhsRN x8,x2,x3,3
	sw x8,0(x0)
	p.macuN x9,x2,x3,4
	sw x9,0(x0)
	p.machhuN x10,x2,x3,3
	sw x10,0(x0)
	p.macuRN x11,x2,x3,4
	sw x11,0(x0)
	p.machhuRN x12,x2,x3,3
	sw x12,0(x0)
	p.mulhhuRN x13,x2,x3,4
	sw x13,0(x0)
	p.msu x14,x2,x3
	sw x14,0(x0)
	p.muls x15,x2,x3
	sw x15,0(x0)
	p.mulhhs x16,x2,x3
	sw x16,0(x0)
	p.mulsN x17,x2,x3,3
	sw x17,0(x0)
	p.mulhhsN x18,x2,x3,3
	sw x18,0(x0)
	p.mulsRN x19,x2,x3,3
	sw x19,0(x0)
	p.mulhhsRN x20,x2,x3,3
	sw x20,0(x0)
	p.mulu x21,x2,x3
	sw x21,0(x0)
	p.mulhhu x22,x2,x3
	sw x22,0(x0)
	p.muluN x23,x2,x3,3
	sw x23,0(x0)
	p.mulhhu x24,x2,x3
	sw x24,0(x0)
	p.muluN x25,x2,x3,3
	sw x25,0(x0)
	p.mulhhuN x26,x2,x3,3
	sw x26,0(x0)
	p.muluRN x27,x2,x3,3
	sw x27,0(x0)
	pv.dotusp.h x1,x2,x3
	sw x1,0(x0)
	pv.dotusp.b x4,x2,x3
	sw x4,0(x0)
	pv.dotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.dotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotup.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotup.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotusp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotusp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.sci.h x10,x2,3
	sw x10,0(x0)


	li x2,0x00FF00FF
	li x3,0x00FF00FF
	mulh x4,x2,x3
	sw x4,0(x0)
	mul x5,x2,x3
	sw x5,0(x0)
	p.mac x6,x2,x3
	sw x6,0(x0)
	p.macsN x1,x2,x3,3
	sw x1,0(x0)
	p.machhsN x7,x2,x3,4
	sw x7,0(x0)
	p.machhsRN x8,x2,x3,3
	sw x8,0(x0)
	p.macuN x9,x2,x3,4
	sw x9,0(x0)
	p.machhuN x10,x2,x3,3
	sw x10,0(x0)
	p.macuRN x11,x2,x3,4
	sw x11,0(x0)
	p.machhuRN x12,x2,x3,3
	sw x12,0(x0)
	p.mulhhuRN x13,x2,x3,4
	sw x13,0(x0)
	p.msu x14,x2,x3
	sw x14,0(x0)
	p.muls x15,x2,x3
	sw x15,0(x0)
	p.mulhhs x16,x2,x3
	sw x16,0(x0)
	p.mulsN x17,x2,x3,3
	sw x17,0(x0)
	p.mulhhsN x18,x2,x3,3
	sw x18,0(x0)
	p.mulsRN x19,x2,x3,3
	sw x19,0(x0)
	p.mulhhsRN x20,x2,x3,3
	sw x20,0(x0)
	p.mulu x21,x2,x3
	sw x21,0(x0)
	p.mulhhu x22,x2,x3
	sw x22,0(x0)
	p.muluN x23,x2,x3,3
	sw x23,0(x0)
	p.mulhhu x24,x2,x3
	sw x24,0(x0)
	p.muluN x25,x2,x3,3
	sw x25,0(x0)
	p.mulhhuN x26,x2,x3,3
	sw x26,0(x0)
	p.muluRN x27,x2,x3,3
	sw x27,0(x0)
	pv.dotusp.h x1,x2,x3
	sw x1,0(x0)
	pv.dotusp.b x4,x2,x3
	sw x4,0(x0)
	pv.dotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.dotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotup.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotup.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotusp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotusp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.sci.h x10,x2,3
	sw x10,0(x0)


	li x2,0xFFFF0000
	li x3,0x0000FFFF
	mulh x4,x2,x3
	sw x4,0(x0)
	mul x5,x2,x3
	sw x5,0(x0)
	p.mac x6,x2,x3
	sw x6,0(x0)
	p.macsN x1,x2,x3,3
	sw x1,0(x0)
	p.machhsN x7,x2,x3,4
	sw x7,0(x0)
	p.machhsRN x8,x2,x3,3
	sw x8,0(x0)
	p.macuN x9,x2,x3,4
	sw x9,0(x0)
	p.machhuN x10,x2,x3,3
	sw x10,0(x0)
	p.macuRN x11,x2,x3,4
	sw x11,0(x0)
	p.machhuRN x12,x2,x3,3
	sw x12,0(x0)
	p.mulhhuRN x13,x2,x3,4
	sw x13,0(x0)
	p.msu x14,x2,x3
	sw x14,0(x0)
	p.muls x15,x2,x3
	sw x15,0(x0)
	p.mulhhs x16,x2,x3
	sw x16,0(x0)
	p.mulsN x17,x2,x3,3
	sw x17,0(x0)
	p.mulhhsN x18,x2,x3,3
	sw x18,0(x0)
	p.mulsRN x19,x2,x3,3
	sw x19,0(x0)
	p.mulhhsRN x20,x2,x3,3
	sw x20,0(x0)
	p.mulu x21,x2,x3
	sw x21,0(x0)
	p.mulhhu x22,x2,x3
	sw x22,0(x0)
	p.muluN x23,x2,x3,3
	sw x23,0(x0)
	p.mulhhu x24,x2,x3
	sw x24,0(x0)
	p.muluN x25,x2,x3,3
	sw x25,0(x0)
	p.mulhhuN x26,x2,x3,3
	sw x26,0(x0)
	p.muluRN x27,x2,x3,3
	sw x27,0(x0)
	pv.dotusp.h x1,x2,x3
	sw x1,0(x0)
	pv.dotusp.b x4,x2,x3
	sw x4,0(x0)
	pv.dotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.dotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotup.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotup.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotusp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotusp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.sci.h x10,x2,3
	sw x10,0(x0)
	pv.shuffle.h x11,x2,x3
	sw x11,0(x0)
	pv.shuffle.b x12,x2,x3
	sw x12,0(x0)

	li x30,0

	li x2,0xFFFFFFFF
loopmul1:

	li x3,0xFFFFFFFF
	li x31, 0x11111111

	mulh x4,x2,x3
	sw x4,0(x0)
	mul x5,x2,x3
	sw x5,0(x0)
	p.mac x6,x2,x3
	sw x6,0(x0)
	p.macsN x1,x2,x3,3
	sw x1,0(x0)
	p.machhsN x7,x2,x3,4
	sw x7,0(x0)
	p.machhsRN x8,x2,x3,3
	sw x8,0(x0)
	p.macuN x9,x2,x3,4
	sw x9,0(x0)
	p.machhuN x10,x2,x3,3
	sw x10,0(x0)
	p.macuRN x11,x2,x3,4
	sw x11,0(x0)
	p.machhuRN x12,x2,x3,3
	sw x12,0(x0)
	p.mulhhuRN x13,x2,x3,4
	sw x13,0(x0)
	p.msu x14,x2,x3
	sw x14,0(x0)
	p.muls x15,x2,x3
	sw x15,0(x0)
	p.mulhhs x16,x2,x3
	sw x16,0(x0)
	p.mulsN x17,x2,x3,3
	sw x17,0(x0)
	p.mulhhsN x18,x2,x3,3
	sw x18,0(x0)
	p.mulsRN x19,x2,x3,3
	sw x19,0(x0)
	p.mulhhsRN x20,x2,x3,3
	sw x20,0(x0)
	p.mulu x21,x2,x3
	sw x21,0(x0)
	p.mulhhu x22,x2,x3
	sw x22,0(x0)
	p.muluN x23,x2,x3,4
	sw x23,0(x0)
	p.mulhhu x24,x2,x3
	sw x24,0(x0)
	p.muluN x25,x2,x3,3
	sw x25,0(x0)
	p.mulhhuN x26,x2,x3,3
	sw x26,0(x0)
	p.muluRN x27,x2,x3,3
	sw x27,0(x0)
	pv.dotusp.h x1,x2,x3
	sw x1,0(x0)
	pv.dotusp.b x4,x2,x3
	sw x4,0(x0)
	pv.dotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.dotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotup.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotup.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotusp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotusp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.sci.h x10,x2,3
	sw x10,0(x0)

	sub x2,x2,x31
	nop
	nop
	nop
	bne x2,x30,loopmul1
	nop
	nop
	nop
	li x30,0
	li x3,0xFFFFFFFF
loopmul2:
	li x2,0xFFFFFFFF

	li x31, 0x11111111

	mulh x4,x2,x3
	sw x4,0(x0)
	mul x5,x2,x3
	sw x5,0(x0)
	p.mac x6,x2,x3
	sw x6,0(x0)
	p.macsN x5,x2,x3,3
	sw x1,0(x0)
	p.machhsN x7,x2,x3,4
	sw x7,0(x0)
	p.machhsRN x8,x2,x3,3
	sw x8,0(x0)
	p.macuN x9,x2,x3,4
	sw x9,0(x0)
	p.machhuN x10,x2,x3,3
	sw x10,0(x0)
	p.macuRN x11,x2,x3,4
	sw x11,0(x0)
	p.machhuRN x12,x2,x3,3
	sw x12,0(x0)
	p.mulhhuRN x13,x2,x3,4
	sw x13,0(x0)
	p.msu x14,x2,x3
	sw x14,0(x0)
	p.muls x15,x2,x3
	sw x15,0(x0)
	p.mulhhs x16,x2,x3
	sw x16,0(x0)
	p.mulsN x17,x2,x3,3
	sw x17,0(x0)
	p.mulhhsN x18,x2,x3,3
	sw x18,0(x0)
	p.mulsRN x19,x2,x3,3
	sw x19,0(x0)
	p.mulhhsRN x20,x2,x3,3
	sw x20,0(x0)
	p.mulu x21,x2,x3
	sw x21,0(x0)
	p.mulhhu x22,x2,x3
	sw x22,0(x0)
	p.muluN x23,x2,x3,3
	sw x23,0(x0)
	p.mulhhu x24,x2,x3
	sw x24,0(x0)
	p.muluN x25,x2,x3,3
	sw x25,0(x0)
	p.mulhhuN x26,x2,x3,3
	sw x26,0(x0)
	p.muluRN x27,x2,x3,3
	sw x27,0(x0)
	pv.dotusp.h x4,x2,x3
	sw x1,0(x0)
	pv.dotusp.b x4,x2,x3
	sw x4,0(x0)
	pv.dotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.dotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotup.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotup.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotusp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotusp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.h x5,x2,x3
	sw x5,0(x0)
	pv.sdotsp.b x6,x2,x3
	sw x6,0(x0)
	pv.sdotsp.sci.h x10,x2,3
	sw x10,0(x0)

	sub x3,x3,x31
	nop
	nop
	nop
	bne x3,x30,loopmul2
	nop
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

