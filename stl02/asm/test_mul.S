#include "asm_utils.h"

.global test_mul
.text

test_mul:
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

	li x31, 0x00100000
	li  x1, 0x00000000
	li  x2, 0x00000000
	li x30, 0x11111111
	li x28, 0xFFFFFFFF
loopp:	
	p.muls x3, x1, x2
	p.mulhhs x6, x1, x2
	p.mac x4, x1, x2
	p.msu x5, x1, x2
	sw  x3, 1(x31)
	sw  x4, 2(x31)
	sw  x5, 3(x31)
	sw  x6, 4(x31)
	p.mulu x7, x1, x2
	p.mulhhu x8, x1, x2
	p.macsRN x9, x1, x2, 0
	p.machhsRN x10, x1, x2, 0
	pv.dotusp.sc.h x11, x1, x2
	pv.sdotusp.sc.b x12, x1, x2
	sw  x7, 1(x31)
	sw  x8, 2(x31)
	sw  x9, 3(x31)
	sw  x10, 4(x31)
	sw  x11, 5(x31)
	sw  x12, 6(x31)
	beq x2, x28, end2
	p.adduN x2, x2, x30,0
	j loopp
end2:
	xor x2, x2, x2
	beq x1, x28, end3
	p.adduN x1, x1, x30, 0
	j loopp
end3:
		p.mac x3, x1, x2
		sw  x3, 1(x31)
		p.msu x3, x1, x2
		sw  x3, 2(x31)
		p.muls x3, x1, x2
		sw  x3, 13(x31)
		p.mulhhs x3, x1, x2
		sw  x3, 14(x31)
		p.mulhhsN x3, x1, x2, 3
		sw  x3, 16(x31)
		p.mulsRN x3, x1, x2, 4
		sw  x3, 17(x31)
		p.mulhhsRN x3, x1, x2, 5
		sw  x3, 18(x31)
		p.mulu x3, x1, x2
		sw  x3, 19(x31)
		p.mulhhu x3, x1, x2
		sw  x3, 10(x31)
		p.mulhhuN x3, x1, x2, 7
		sw  x3, 12(x31)
		p.muluRN x3, x1, x2, 8
		sw  x3, 21(x31)
		p.mulhhuRN x3, x1, x2, 9
		sw  x3, 31(x31)
		p.macsN x3, x1, x2, 10
		sw  x3, 41(x31)
		p.machhsN x3, x1, x2, 11
		sw  x3, 51(x31)
		p.macsRN x3, x1, x2, 12
		sw  x3, 61(x31)
		p.machhsRN x3, x1, x2, 13
		sw  x3, 71(x31)
		p.macuN x3, x1, x2, 14
		sw  x3, 81(x31)
		p.machhuN x3, x1, x2, 15
		sw  x3, 91(x31)
		p.macuRN x3, x1, x2, 16
		sw  x3, 5(x31)
		p.machhuRN x3, x1, x2, 17
		sw  x3, 6(x31)
		  	p.mulhsu x5,x1,x2
		p.mulh x22,x1,x2
		p.mulhu x23,x1,x2
		p.msu x28, x1, x2
		sw  x5, 3(x31)
		sw  x22, 4(x31)
		sw  x23, 5(x31)
		sw  x28, 6(x31)
	pv.dotup.h x15, x1, x2
	sw  x15, 1(x31)
	pv.dotup.sc.h x15, x1, x2
	sw  x15, 1(x31)
	pv.dotup.b x15, x1, x2
	sw  x15, 1(x31)
	pv.dotup.sc.b x15, x1, x2
	sw  x15, 1(x31)
	pv.dotusp.h x15, x1, x2
	sw  x15, 1(x31)
	pv.dotusp.sc.h x15, x1, x2
	sw  x15, 1(x31)
	pv.dotusp.b x15, x1, x2
	sw  x15, 1(x31)
	pv.dotusp.sc.b x15, x1, x2
	sw  x15, 1(x31)
	pv.dotsp.h x15, x1, x2
	sw  x15, 1(x31)
	pv.dotsp.sc.h x15, x1, x2
	sw  x15, 1(x31)
	pv.dotsp.b x15, x1, x2
	sw  x15, 1(x31)
	pv.dotsp.sc.b x15, x1, x2
	sw  x15, 1(x31)
	pv.sdotup.h x15, x1, x2
	sw  x15, 1(x31)
	pv.sdotup.sc.h x15, x1, x2
	sw  x15, 1(x31)
	pv.sdotup.b x15, x1, x2
	sw  x15, 1(x31)
	pv.sdotup.sc.b x15, x1, x2
	sw  x15, 1(x31)
	pv.sdotusp.h x15, x1, x2
	sw  x15, 1(x31)
	pv.sdotusp.sc.h x15, x1, x2
	sw  x15, 1(x31)
	pv.sdotusp.b x15, x1, x2
	sw  x15, 1(x31)
	pv.sdotusp.sc.b x15, x1, x2
	sw  x15, 1(x31)
	pv.sdotsp.h x15, x1, x2
	sw  x15, 1(x31)
	pv.sdotsp.sc.h x15, x1, x2
	sw  x15, 1(x31)
	pv.sdotsp.b x15, x1, x2
	sw  x15, 1(x31)
	pv.sdotsp.sc.b x15, x1, x2
	sw  x15, 1(x31)
	pv.dotup.sci.b x15, x1, 63
	sw  x15, 1(x31)
	pv.dotusp.sci.h x15, x1, 31
	sw  x15, 1(x31)
	pv.dotusp.sci.b x15, x1, 31
	sw  x15, 1(x31)
	pv.dotsp.sci.h x15, x1, 31
	sw  x15, 1(x31)
	pv.dotsp.sci.b x15, x1, 31
	sw  x15, 1(x31)
	pv.sdotup.sci.h x15, x1, 63
	sw  x15, 1(x31)
	pv.sdotup.sci.b x15, x1, 63
	sw  x15, 1(x31)
	pv.sdotusp.sci.h x15, x1, 31
	sw  x15, 1(x31)
	pv.dotup.sci.h x15, x1, 63
	sw  x15, 1(x31)
	pv.sdotusp.sci.b x15, x1, 31
	sw  x15, 1(x31)
	pv.sdotsp.sci.h x15, x1, 31
	sw  x15, 1(x31)
	pv.sdotsp.sci.b x15, x1, 31
	sw  x15, 1(x31)
	pv.dotup.sci.b x15, x1, 0
	sw  x15, 1(x31)
	pv.dotusp.sci.h x15, x1, 0
	sw  x15, 1(x31)
	pv.dotusp.sci.b x15, x1, 0
	sw  x15, 1(x31)
	pv.dotsp.sci.h x15, x1, 0
	sw  x15, 1(x31)
	pv.dotsp.sci.b x15, x1, 0
	sw  x15, 1(x31)
	pv.sdotup.sci.h x15, x1, 0
	sw  x15, 1(x31)
	pv.sdotup.sci.b x15, x1, 0
	sw  x15, 1(x31)
	pv.sdotusp.sci.h x15, x1, 0
	sw  x15, 1(x31)
	pv.dotup.sci.h x15, x1, 0
	sw  x15, 1(x31)
	pv.sdotusp.sci.b x15, x1, 0
	sw  x15, 1(x31)
	pv.sdotsp.sci.h x15, x1, 0
	sw  x15, 1(x31)
	pv.sdotsp.sci.b x15, x1, 0
	sw  x15, 1(x31)
	GEN_BLOCK_SHF( p.muluN, 0x55555555, 0x00000001)
	GEN_BLOCK_SHF( p.muluN, 0xCCCCCCCC, 0x00000001)
	GEN_BLOCK_SHF( p.mulsN, 0x55555555, 0x00000001)
	GEN_BLOCK_SHF( p.mulsN, 0xCCCCCCCC, 0x00000001)
	GEN_BLOCK_SHF( p.mulsRN, 0x00000001, 0xFFFFFFFF)
	GEN_BLOCK_SHF( p.mulhhsRN, 0x00000001, 0xFFFFFFFF)

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
