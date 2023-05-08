.global test_lsu
.text

test_lsu:

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
	mv x4, sp            # save stack pointer
	

	xor x1,x1,x1
	addi x1,x1,-1
	lui x31,256
	lui x29,356
	lui x30,266
	xor x5,x5,x5
	addi x5,x5,31

lop10:
	sw x1,0(x31)
	sw x1,0(x29)
	
	lw x2, 0(x31)
	sw x2, 0(x30)
	sh x2, 0(x30)
	sb x2, 0(x30)

	lh x2, 0(x31)
	sw x2, 0(x30)
	sh x2, 0(x30)
	sb x2, 0(x30)
	
	lb x2, 0(x31)
	sw x2, 0(x30)
	sh x2, 0(x30)
	sb x2, 0(x30)
	
	lhu x2,0(x31)
	sw x2, 0(x30)
	sh x2, 0(x30)
	sb x2, 0(x30)
	
	lbu x2,0(x31)
	sw x2, 0(x30)
	sh x2, 0(x30)
	sb x2, 0(x30)


	
	p.lw x2,x0(x29!)
	p.sw x2,x5(x30!)
	p.sh x2,x5(x30!)
	p.sb x2,x5(x30!)
	
	p.lh x2,x0(x29!)
	p.sw x2,x5(x30!)
	p.sh x2,x5(x30!)
	p.sb x2,x5(x30!)
	
	p.lb x2,x0(x29!)
	p.sw x2,x5(x30!)
	p.sh x2,x5(x30!)
	p.sb x2,x5(x30!)
	
	p.lhu x2,x0(x29!)
	p.sw x2,x5(x30!)
	p.sh x2,x5(x30!)
	p.sb x2,x5(x30!)
	
	p.lbu x2,x0(x29!)
	p.sw x2,x5(x30!)
	p.sh x2,x5(x30!)
	p.sb x2,x5(x30!)

	
	add x5,x5,x5
	addi x31,x31,1
	addi x30,x30,1
	srli x1,x1,1
	bne x1,x0,lop10

	# ABI epilogue
	mv sp, x4            # restore stack pointer
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

