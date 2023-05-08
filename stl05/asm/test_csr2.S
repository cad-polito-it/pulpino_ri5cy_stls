.global test_csr2
.text

test_csr2:

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
	addi x5, x0, -1
	addi x4, x0, 1
	addi x3, x0, 31
	addi x6, x0, 136

	csrr x29, 0x7A0
	p.sw x29, x30(x31)
	csrrw x0, 0x7A0, x5
	csrr x29, 0x7A0
	p.sw x29, x30(x31)

	csrr x10, mtvec
	csrrs x10, mstatus, x6
	p.sw x10, x30(x31)
	csrrs x10, mstatus, x0
	p.sw x10, x30(x31)
	csrrs x10, mstatus, x6
	p.sw x10, x30(x31)

	lui x14, 0x10
	addi x14, x14, 1
	csrrs x15, 0x00, x14
	csrr x15, 0x00
	p.sw x15, x30(x31)
	lui x14, 0x01
	csrrs x15, 0x00, x14
	p.sw x15, x30(x31)
	csrr x15, 0x04
	p.sw x15, x30(x31)
	csrrw x15, 0x08, x5
	p.sw x15, x30(x31)
	csrr x15, 0x0C
	p.sw x15, x30(x31)
	csrr x15, 0x10
	p.sw x15, x30(x31)

	//NOSENSE
	csrr x15, 0x20
	p.sw x15, x30(x31)
	csrr x15, 0x24
	p.sw x15, x30(x31)
	csrr x15, 0x28
	p.sw x15, x30(x31)
	csrr x15, 0x2C
	p.sw x15, x30(x31)
	csrr x15, 0x30
	p.sw x15, x30(x31)
	csrr x15, 0x34
	p.sw x15, x30(x31)
	csrr x15, 0x38
	p.sw x15, x30(x31)
	csrr x15, 0x3C
	p.sw x15, x30(x31)
	//
	csrr x15, 0x40
	p.sw x15, x30(x31)
	csrr x15, 0x44
	p.sw x15, x30(x31)
	csrr x15, 0x48
	p.sw x15, x30(x31)
	csrr x15, 0x4C
	p.sw x15, x30(x31)
	csrr x15, 0x50
	p.sw x15, x30(x31)
	csrr x15, 0x54
	p.sw x15, x30(x31)
	csrr x15, 0x58
	p.sw x15, x30(x31)
	csrr x15, 0x5C
	p.sw x15, x30(x31)
	csrr x15, 0x60
	p.sw x15, x30(x31)
	csrr x15, 0x64
	p.sw x15, x30(x31)
	csrr x15, 0x68
	p.sw x15, x30(x31)
	csrr x15, 0x6C
	p.sw x15, x30(x31)
	csrr x15, 0x70
	p.sw x15, x30(x31)
	csrr x15, 0x74
	p.sw x15, x30(x31)
	csrr x15, 0x78
	p.sw x15, x30(x31)
	csrr x15, 0x7C
	p.sw x15, x30(x31)


	//GPRS
	csrr x15, 0x400
	p.sw x15, x30(x31)
	csrr x15, 0x404
	p.sw x15, x30(x31)
	csrr x15, 0x408
	p.sw x15, x30(x31)
	csrr x15, 0x40C
	p.sw x15, x30(x31)
	csrr x15, 0x410
	p.sw x15, x30(x31)
	csrr x15, 0x414
	p.sw x15, x30(x31)
	csrr x15, 0x418
	p.sw x15, x30(x31)
	csrr x15, 0x41C
	p.sw x15, x30(x31)
	//NOSENSE
	csrr x15, 0x420
	p.sw x15, x30(x31)
	csrr x15, 0x424
	p.sw x15, x30(x31)
	csrr x15, 0x428
	p.sw x15, x30(x31)
	csrr x15, 0x42C
	p.sw x15, x30(x31)
	csrr x15, 0x430
	p.sw x15, x30(x31)
	csrr x15, 0x434
	p.sw x15, x30(x31)
	csrr x15, 0x438
	p.sw x15, x30(x31)
	csrr x15, 0x43C
	p.sw x15, x30(x31)
	//
	csrr x15, 0x440
	p.sw x15, x30(x31)
	csrr x15, 0x444
	p.sw x15, x30(x31)
	csrr x15, 0x448
	p.sw x15, x30(x31)
	csrr x15, 0x44C
	p.sw x15, x30(x31)
	csrr x15, 0x450
	p.sw x15, x30(x31)
	csrr x15, 0x454
	p.sw x15, x30(x31)
	csrr x15, 0x458
	p.sw x15, x30(x31)
	csrr x15, 0x45C
	p.sw x15, x30(x31)
	csrr x15, 0x460
	p.sw x15, x30(x31)
	csrr x15, 0x464
	p.sw x15, x30(x31)
	csrr x15, 0x468
	p.sw x15, x30(x31)
	csrr x15, 0x46C
	p.sw x15, x30(x31)
	csrr x15, 0x470
	p.sw x15, x30(x31)
	csrr x15, 0x474
	p.sw x15, x30(x31)
	csrr x15, 0x478
	p.sw x15, x30(x31)
	csrr x15, 0x47C
	p.sw x15, x30(x31)
	//mret
	csrrs x15, 0x00000000, x0
	csrr x15, 0x00
	p.sw x15, x30(x31)

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



	nop
	nop
	nop

	//new
	csrr x29, mstatus
	p.sw x29, x30(x31)
	csrr x29, mtvec
	p.sw x29, x30(x31)
	csrr x29, mepc
	p.sw x29, x30(x31)
	csrr x29, mcause
	p.sw x29, x30(x31)

	add x5, x5, x5
	nop
	nop
	nop

	//new
	csrr x29, mstatus
	p.sw x29, x30(x31)
	csrr x29, mtvec
	p.sw x29, x30(x31)
	csrr x29, mepc
	p.sw x29, x30(x31)
	csrr x29, mcause
	p.sw x29, x30(x31)

	div x1, x0, x0
	nop
	nop
	nop
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
	csrr x29, 0x7A1
	p.sw x29, x30(x31)
	csrrs x0, 0x7A1, x6
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x780
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x781
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x782
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x783
	p.sw x29, x30(x31)
	p.sw x29, x30(x31)
	csrrs x0, 0x7A1, x0
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x780
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x781
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x782
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x783
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x784
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x785
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x786
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x787
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x788
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x789
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x78A
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x78B
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x78C
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x78D
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x78E
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x78F
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x790
	p.sw x29, x30(x31)
	//PCC[r_all]
	csrr x29, 0x79F
	p.sw x29, x30(x31)
	//PCC[r_all]
	addi x1, x0, 1
	sub x9, x0, x1
	csrrw x0, 0x79F,x9 
	csrr x9, 0x79F
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x780
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x781
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x782
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x783
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x784
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x785
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x786
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x787
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x788
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x789
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x78A
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x78B
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x78C
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x78D
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x78E
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x78F
	p.sw x29, x30(x31)
	//PCC[r0-31]
	csrr x29, 0x790
	p.sw x29, x30(x31)
	//PCC[r_all]
	csrr x29, 0x79F
	//PCER
	csrr x29, 0x7A0
	p.sw x29, x30(x31)
	//PCMR
	csrr x29, 0x7A1
	p.sw x29, x30(x31)
	csrrw x0, 0x7A1, x6
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

	//writenew pcmr


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


	//write bits
	csrrs x0, cycle, x6
	csrrs x29, cycle, x0
	p.sw x29, x30(x31)

	csrrc x0, cycle, x6
	csrrs x29, cycle, x0
	p.sw x29, x30(x31)

	//immediate
	csrrsi x0, cycle, 31
	csrrs x29, cycle, x0
	p.sw x29, x30(x31)

	csrrci x0, cycle, 31
	csrrs x29, cycle, x0
	p.sw x29, x30(x31)

	csrrwi x0, cycle, 31
	csrrs x29, cycle, x0
	p.sw x29, x30(x31)

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
