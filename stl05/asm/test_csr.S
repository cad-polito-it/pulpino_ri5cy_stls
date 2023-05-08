.global test_csr
.text

test_csr:

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

	lui x31, 256
	addi x30, x0, 4
	xor x3, x3, x3
	xor x4, x4, x4
	addi x4, x4, 1
	addi x3, x3, 31

	//read all
	csrr x29, cycle
	p.sw x29, x30(x31)
	csrr x29, time
	p.sw x29, x30(x31)
	csrr x29, instret
	p.sw x29, x30(x31)
	csrr x29, cycleh
	p.sw x29, x30(x31)
	csrr x29, timeh
	p.sw x29, x30(x31)
	csrr x29, instreth
	p.sw x29, x30(x31)

	//new
	csrr x29, mstatus
	p.sw x29, x30(x31)
	csrr x29, mtvec
	p.sw x29, x30(x31)
	csrr x29, mepc
	p.sw x29, x30(x31)
	csrr x29, mcause
	p.sw x29, x30(x31)
	//MHARTID
	csrr x29, 0xF14
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x780
	p.sw x29, x30(x31)
	//PCER
	csrr x29, 0x7A0
	p.sw x29, x30(x31)
	//PCMR
	csrr x29, 0x7A1
	p.sw x29, x30(x31)
	//HWLP
	csrr x29, 0x7B0
	p.sw x29, x30(x31)
	//PRV LVL
	csrr x29,0xC10
	p.sw x29, x30(x31)
	//UHARTID
	csrr x29,0x014
	p.sw x29, x30(x31)

	//write all ffffffff
	csrrw x0, cycle, x3
	csrrs x29, cycle, x0
	p.sw x29, x30(x31)
	csrrw x0, time, x3
	csrrs x29, time, x0
	p.sw x29, x30(x31)
	csrrw x0, instret, x3
	csrrs x29, instret, x0
	p.sw x29, x30(x31)
	csrrw x0, cycleh, x3
	csrrs x29, cycleh, x0
	p.sw x29, x30(x31)
	csrrw x0, timeh, x3
	csrrs x29, timeh, x0
	p.sw x29, x30(x31)
	csrrw x0, instreth, x3
	csrrs x29, instreth, x0
	p.sw x29, x30(x31)

	//write all 00000000
	csrrw x0, cycle, x0
	csrrs x29, cycle, x0
	p.sw x29, x30(x31)
	csrrw x0, time, x0
	csrrs x29, time, x0
	p.sw x29, x30(x31)
	csrrw x0, instret, x0
	csrrs x29, instret, x0
	p.sw x29, x30(x31)
	csrrw x0, cycleh, x0
	csrrs x29, cycleh, x0
	p.sw x29, x30(x31)
	csrrw x0, timeh, x0
	csrrs x29, timeh, x0
	p.sw x29, x30(x31)
	csrrw x0, instreth, x0
	csrrs x29, instreth, x0
	p.sw x29, x30(x31)

	xor x5, x5, x5
	addi x5, x5, 32
	xor x6, x6, x6
	lp.setup x0, x5, lcsr

	//write bits
	csrrs x0, cycle, x6
	csrrs x29, cycle, x0
	p.sw x29, x30(x31)
	csrrs x0, time, x6
	csrrs x29, time, x0
	p.sw x29, x30(x31)
	csrrs x0, instret, x6
	csrrs x29, instret, x0
	p.sw x29, x30(x31)
	csrrs x0, cycleh, x6
	csrrs x29, cycleh, x0
	p.sw x29, x30(x31)
	csrrs x0, timeh, x6
	csrrs x29, timeh, x0
	p.sw x29, x30(x31)
	csrrs x0, instreth, x6
	csrrs x29, instreth, x0
	p.sw x29, x30(x31)

	csrrc x0, cycle, x6
	csrrs x29, cycle, x0
	p.sw x29, x30(x31)
	csrrc x0, time, x6
	csrrs x29, time, x0
	p.sw x29, x30(x31)
	csrrc x0, instret, x6
	csrrs x29, instret, x0
	p.sw x29, x30(x31)
	csrrc x0, cycleh, x6
	csrrs x29, cycleh, x0
	p.sw x29, x30(x31)
	csrrc x0, timeh, x6
	csrrs x29, timeh, x0
	p.sw x29, x30(x31)
	csrrc x0, instreth, x6
	csrrs x29, instreth, x0
	p.sw x29, x30(x31)
lcsr:
	addi x6, x6, 1

	//immediate
	csrrsi x0, cycle, 31
	csrrs x29, cycle, x0
	p.sw x29, x30(x31)
	csrrsi x0, time, 31
	csrrs x29, time, x0
	p.sw x29, x30(x31)
	csrrsi x0, instret, 31
	csrrs x29, instret, x0
	p.sw x29, x30(x31)
	csrrsi x0, cycleh, 31
	csrrs x29, cycleh, x0
	p.sw x29, x30(x31)
	csrrsi x0, timeh, 31
	csrrs x29, timeh, x0
	p.sw x29, x30(x31)
	csrrsi x0, instreth, 31
	csrrs x29, instreth, x0
	p.sw x29, x30(x31)

	csrrci x0, cycle, 31
	csrrs x29, cycle, x0
	p.sw x29, x30(x31)
	csrrci x0, time, 31
	csrrs x29, time, x0
	p.sw x29, x30(x31)
	csrrci x0, instret, 31
	csrrs x29, instret, x0
	p.sw x29, x30(x31)
	csrrci x0, cycleh, 31
	csrrs x29, cycleh, x0
	p.sw x29, x30(x31)
	csrrci x0, timeh, 31
	csrrs x29, timeh, x0
	p.sw x29, x30(x31)
	csrrci x0, instreth, 31
	csrrs x29, instreth, x0
	p.sw x29, x30(x31)

	csrrwi x0, cycle, 31
	csrrs x29, cycle, x0
	p.sw x29, x30(x31)
	csrrwi x0, time, 31
	csrrs x29, time, x0
	p.sw x29, x30(x31)
	csrrwi x0, instret, 31
	csrrs x29, instret, x0
	p.sw x29, x30(x31)
	csrrwi x0, cycleh, 31
	csrrs x29, cycleh, x0
	p.sw x29, x30(x31)
	csrrwi x0, timeh, 31
	csrrs x29, timeh, x0
	p.sw x29, x30(x31)
	csrrwi x0, instreth, 31
	csrrs x29, instreth, x0
	p.sw x29, x30(x31)


	//scall
	sbreak
	//ecall
	ebreak

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

