.global test_load_store
.text

test_load_store:  
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


	li x31, 0xFFFFFFFF
	sw x31, 0(x31)
	p.lb x5, 0(x31!)
	sw x5, 0(x0)
	p.lbu x5, 0(x31!)
	sw x5, 0(x0)
	p.lh x5, 0(x31!)
	sw x5, 0(x0)
	p.lhu x5, 0(x31!)
	sw x5, 0(x0)
	p.lw x5, 0(x31!)
	sw x5, 0(x0)
	p.lb x5, x0(x31!)
	sw x5, 0(x0)
	p.lbu x5, x0(x31!)
	sw x5, 0(x0)
	p.lh x5, x0(x31!)
	sw x5, 0(x0)
	p.lhu x5, x0(x31!)
	sw x5, 0(x0)
	p.lw x5, x0(x31!)
	sw x5, 0(x0)
	p.lb x5, x0(x31)
	sw x5, 0(x0)
	p.lbu x5, x0(x31)
	sw x5, 0(x0)
	p.lh x5, x0(x31)
	sw x5, 0(x0)
	p.lhu x5, x0(x31)
	sw x5, 0(x0)
	p.lw x5, x0(x31)
	sw x5, 0(x0)
	sw x0, 0(x31)
	p.lb x5, 0(x31!)
	sw x5, 0(x0)
	p.lbu x5, 0(x31!)
	sw x5, 0(x0)
	p.lh x5, 0(x31!)
	sw x5, 0(x0)
	p.lhu x5, 0(x31!)
	sw x5, 0(x0)
	p.lw x5, 0(x31!)
	sw x5, 0(x0)
	p.lb x5, x0(x31!)
	sw x5, 0(x0)
	p.lbu x5, x0(x31!)
	sw x5, 0(x0)
	p.lh x5, x0(x31!)
	sw x5, 0(x0)
	p.lhu x5, x0(x31!)
	sw x5, 0(x0)
	p.lw x5, x0(x31!)
	sw x5, 0(x0)
	p.lb x5, x0(x31)
	sw x5, 0(x0)
	p.lbu x5, x0(x31)
	sw x5, 0(x0)
	p.lh x5, x0(x31)
	sw x5, 0(x0)
	p.lhu x5, x0(x31)
	sw x5, 0(x0)
	p.lw x5, x0(x31)
	sw x5, 0(x0)
	li x28, 0xFFFFFFFF
	li x30, 0x11111111
	li x1, 0
	li x2, 0
	li x31, 0x00100100
loopld:
	p.adduN x3, x0, x1, 0
	p.lw x5, x2(x3!)
	sw x5, 0(x31)
	sw x3,  0(x31)
	beq x2, x28, endld
	p.adduN x2, x2, x30, 0
	j loopld
endld:  xor x2, x2, x2
	beq x1, x28, endld2
	p.adduN x1, x1, x30, 0
	j loopld
endld2:
	li x5, 0xFFFFFFFF
	li x4, 4
	li x6, 8
	li x31, 0xFFFFFFFF
	p.sb x5, 4(x31!)
	p.sb x0, 4(x31!)
	p.sh x5, 4(x31!)
	p.sh x0, 4(x31!)
	p.sw x5, 4(x31!)
	p.sw x0, 4(x31!)
	p.sb x5, x4(x31!)
	p.sb x0, x4(x31!)
	p.sh x5, x4(x31!)
	p.sh x0, x4(x31!)
	p.sw x5, x4(x31!)
	p.sw x0, x4(x31!)
	p.sb x5, x4(x31)
	p.sb x0, x4(x31)
	p.sh x5, x6(x31)
	p.sw x5, x0(x31)
	p.sw x0, x0(x31)
	sw x5, 0(x0)
	p.lb x4, 1(x31!)
	p.lw x4, 1(x31!)
	p.lh x4, 1(x31!)
	p.lbu x4, 2(x31!)
	p.lhu x4, 1(x31!)
	li x31, 0
	p.sb x5, 1(x31!)
	p.sw x0, 1(x31!)
	p.sh x5, 1(x31!)
	li x31, 0
	li x1, 1
	li x2, 2
	li x3, 3
	p.sb x0, x1(x31)
	p.sh x0, x2(x31)
	p.sw x5, x3(x31)
	li x2, 0xFFFFFFFF
	li x10, 0
	li x15, 0xFFFFFFFF
	p.sw x2, 1(x15!)
	sw x15,  0(x31)
	p.sw x2, 0(x15!)
	sw x15,  0(x31)
	p.sw x2, 0x3F(x15!)
	sw x15,  0(x31)
	p.sw x2, 0(x10!)
	sw x10,  0(x31)
	p.sw x2, 0x3F(x10!)
	sw x10,  0(x31)
	li x15, 0xCCCCCCCC
	p.sw x2, 0x20(x15!)
	sh x15,  0(x31)
	p.sw x2, 0(x15!)
	sw x15,  0(x31)
	p.sw x0, 0x3F(x15!)
	sw x15,  0(x31)
	p.sb x0, 0(x10!)
	sw x10,  0(x31)
	p.sh x0, 0x3F(x10!)
	sw x10,  0(x31)
	p.sb x2, 1(x15!)
	p.sh x2, 0(x15!)
	p.sw x2, 0(x10!)
	p.sb x2, x3(x31!)
	p.sh x2, x3(x31!)
	p.sw x2, x3(x31!)
	li x3, 1
	li x2, 0xFFFFFFFF
	p.sb x0, x0(x31)
	p.sh x0, x4(x31)
	p.sb x2, x0(x31)
	p.sh x2, x4(x31)
	p.sw x2, x3(x2)
	p.sw x2, x2(x3)

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

