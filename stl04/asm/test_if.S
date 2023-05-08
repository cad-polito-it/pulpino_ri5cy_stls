.global test_if
.text

test_if:

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

	lui x2, 0x00104

	lui x0, 0x00000
	lui x31, 0xFFFFF
	lui x0, 0xFFF00
	lui x31, 0x000FF

	p.sw x0, 1(x2!)
	p.sw x31, 1(x2!)
	p.sw x0, 1(x2!)
	p.sw x31, 1(x2!)

	lui x0, 0xF0F0F
	lui x31, 0x0F0F0
	lui x6, 0x33333

	p.sw x0, 1(x2!)
	p.sw x31, 1(x2!)
	p.sw x6, 1(x2!)

	lui x12, 0xCCCCC
	lui x10, 0x55555
	lui x5, 0xAAAAA

	p.sw x12, 1(x2!)
	p.sw x10, 1(x2!)
	p.sw x5, 1(x2!)


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
