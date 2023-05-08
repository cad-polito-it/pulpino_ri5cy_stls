
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

	csrr x30, 0x00
	sw x30, 0(x0)
	csrrci x30, 0x300, 7
	csrrci x30, 0x300, 3
	csrrsi x30, 0x300, 7
	sw x30, 0(x0)
	csrrsi x30, 0x300, 3
	sw x30, 0(x0)
	csrrci x30, 0x300, 7
	sw x30, 0(x0)
	csrrci x30, 0x300, 3
	sw x30, 0(x0)
	csrr x30, 0x300
	sw x30, 0(x0)

	li x28, 0xFFFFFFFE
	li x1, 1
	csrrwi x30, 0x341, 1
	csrrw x30, 0x341, x28
	sw x30, 0(x0)
	csrrw x30, 0x341, x1
	sw x30, 0(x0)
	csrr x30, 0x342
	sw x30, 0(x0)
	csrrwi x30, 0x305, 1
	csrrw x30, 0x305, x28
	sw x30, 0(x0)
	csrrw x30, 0x305, x1
	sw x30, 0(x0)
	csrr x30, 0x014
	sw x30, 0(x0)
	csrr x30, 0xF14
	sw x30, 0(x0)
	csrrsi x30, 0x7A1, 1
	csrrsi x30, 0x7A1, 0
	csrrci x30, 0x7A1, 1
	sw x30, 0(x0)
	csrrci x30, 0x7A1, 0
	sw x30, 0(x0)
	csrrsi x30, 0x7A1, 1
	sw x30, 0(x0)

	csrrsi x30, 0x7A0, 20
	csrrsi x30, 0x7A0, 19
	csrrsi x30, 0x7A0, 18
	csrrsi x30, 0x7A0, 17
	csrrsi x30, 0x7A0, 16
	csrrsi x30, 0x7A0, 15
	csrrsi x30, 0x7A0, 14
	csrrsi x30, 0x7A0, 13
	csrrsi x30, 0x7A0, 12
	csrrsi x30, 0x7A0, 11
	csrrsi x30, 0x7A0, 10
	csrrsi x30, 0x7A0, 9
	csrrsi x30, 0x7A0, 8
	csrrsi x30, 0x7A0, 7
	csrrsi x30, 0x7A0, 6
	csrrsi x30, 0x7A0, 5
	csrrsi x30, 0x7A0, 4
	csrrsi x30, 0x7A0, 3
	csrrsi x30, 0x7A0, 2
	csrrsi x30, 0x7A0, 1
	csrrsi x30, 0x7A0, 0
	csrrci x30, 0x7A0, 20
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 19
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 18
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 17
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 16
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 15
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 14
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 13
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 12
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 11
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 10
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 9
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 8
	sw x30, 0(x0)
	csrrsi x30, 0x7A1, 0
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 7
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 6
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 5
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 4
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 3
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 2
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 1
	sw x30, 0(x0)
	csrrci x30, 0x7A0, 0
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 20
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 19
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 18
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 17
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 16
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 15
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 14
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 13
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 12
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 11
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 10
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 9
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 8
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 7
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 6
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 5
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 4
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 3
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 2
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 1
	sw x30, 0(x0)
	csrrsi x30, 0x7A0, 0
	sw x30, 0(x0)
	csrw  0x780, x28
	csrw  0x781, x28
	csrw  0x782, x28
	csrw  0x783, x28
	csrw  0x784, x28
	csrw  0x785, x28
	csrw  0x786, x28
	csrw  0x787, x28
	csrw  0x788, x28
	csrw  0x789, x28
	csrw  0x78A, x28
	csrw  0x78B, x28
	csrw  0x78C, x28
	csrw  0x78D, x28
	csrw  0x78E, x28
	csrw  0x78F, x28
	csrw  0x790, x28
	csrw  0x791, x28
	csrw  0x792, x28
	csrw  0x793, x28
	csrw  0x794, x28
	csrw  0x79F, x28
	csrrw x26, 0x780, x27
	csrrw x25, 0x781, x27
	csrrw x24, 0x782, x27
	csrrw x23, 0x783, x27
	csrrw x22, 0x784, x27
	csrrw x21, 0x785, x27
	csrrw x20, 0x786, x27
	csrrw x19, 0x787, x27
	sw x26, 0(x0)
	sw x25, 0(x0)
	sw x24, 0(x0)
	sw x23, 0(x0)
	sw x22, 0(x0)
	sw x21, 0(x0)
	sw x20, 0(x0)
	sw x19, 0(x0)

	csrrw x26, 0x788, x27
	csrrw x25, 0x789, x27
	csrrw x24, 0x78A, x27
	csrrw x23, 0x78B, x27
	csrrw x22, 0x78C, x27
	csrrw x21, 0x78D, x27
	csrrw x20, 0x78E, x27
	csrrw x19, 0x78F, x27
	sw x26, 0(x0)
	sw x25, 0(x0)
	sw x24, 0(x0)
	sw x23, 0(x0)
	sw x22, 0(x0)
	sw x21, 0(x0)
	sw x20, 0(x0)
	sw x19, 0(x0)

	csrrw x26, 0x790, x27
	csrrw x25, 0x791, x27
	csrrw x24, 0x792, x27
	csrrw x23, 0x793, x27
	csrrw x22, 0x794, x27
	sw x26, 0(x0)
	sw x25, 0(x0)
	sw x24, 0(x0)
	sw x23, 0(x0)
	sw x22, 0(x0)

	csrrw x19, 0x79F, x27
	sw x19, 0(x0)

perf:
	li x27 , 0x00000001

	csrw  0x79F, x27
	csrr  x26, 0x780
	csrr  x25, 0x781
	csrr  x24, 0x782
	csrr  x23, 0x783
	csrr  x22, 0x784
	csrr  x21, 0x785
	csrr  x20, 0x786
	csrr  x19, 0x787
	sw x26, 0(x0)
	sw x25, 0(x0)
	sw x24, 0(x0)
	sw x23, 0(x0)
	sw x22, 0(x0)
	sw x21, 0(x0)
	sw x20, 0(x0)
	sw x19, 0(x0)

	csrr  x26, 0x788
	csrr  x25, 0x789
	csrr  x24, 0x78A
	csrr  x23, 0x78B
	csrr  x22, 0x78C
	csrr  x21, 0x78D
	csrr  x20, 0x78E
	csrr  x19, 0x78F
	sw x26, 0(x0)
	sw x25, 0(x0)
	sw x24, 0(x0)
	sw x23, 0(x0)
	sw x22, 0(x0)
	sw x21, 0(x0)
	sw x20, 0(x0)
	sw x19, 0(x0)

	csrr  x26, 0x790
	csrr  x25, 0x791
	csrr  x24, 0x792
	csrr  x23, 0x793
	csrr  x22, 0x794
	sw x26, 0(x0)
	sw x25, 0(x0)
	sw x24, 0(x0)
	sw x23, 0(x0)
	sw x22, 0(x0)

	csrr  x19, 0x79F
	sw x19, 0(x0)
end_perf:

	csrrw x30, 0x341, x1
	sw x30, 0(x31)
	csrrw x30, 0x341, x28
	sw x30, 0(x31)
	csrr x30, 0x341
	sw x30, 0(x31)
	csrrw x30, 0x341, x0
	sw x30, 0(x0)
	csrrw x30, 0x341, x28
	sw x30, 0(x0)
	CSRRCI x29, 0x7B6, 0 
	sw x29, 0(x0)
	CSRRSI x29, 0x7B6, 0 
	sw x29, 0(x0)
	CSRRWI x29, 0x7B6, 0 
	sw x29, 0(x0)
	CSRRC x29, 0x7B6, x28 
	sw x29, 0(x0)
	CSRRS x29, 0x7B6, x28 
	sw x29, 0(x0)
	CSRRW x29, 0x7B6, x28 
	sw x29, 0(x0)
	RDCYCLE x5 
	sw x5, 0(x0) 
	RDCYCLEH x5 
	sw x5, 0(x0) 
	RDTIME x5 
	sw x5, 0(x0) 
	RDTIMEH x5 
	sw x5, 0(x0) 
	RDINSTRET x5 
	sw x5, 0(x0) 
	RDINSTRETH x5 
	sw x5, 0(x0) 

	csrw 0x7B2, x0
	csrrsi x30, 0x7B2, 31
	sw x30, 0(x31)
	csrrsi x30, 0x7B2, 30
	sw x30, 0(x31)
	csrrsi x30, 0x7B2, 29
	sw x30, 0(x31)
	csrrsi x30, 0x7B2, 28
	sw x30, 0(x31)
	csrrsi x30, 0x7B2, 27
	sw x30, 0(x31)
	csrrsi x30, 0x7B2, 26
	sw x30, 0(x31)
	csrrsi x30, 0x7B2, 25
	sw x30, 0(x31)
	csrrsi x30, 0x7B2, 24
	sw x30, 0(x31)
	csrrsi x30, 0x7B2, 23
	sw x30, 0(x31)
	csrrsi x30, 0x7B2, 22
	sw x30, 0(x31)
	csrrsi x30, 0x7B2, 21
	sw x30, 0(x31)
	csrrci x30, 0x7B2, 31
	sw x30, 0(x31)
	csrrci x30, 0x7B2, 30
	sw x30, 0(x31)
	csrrci x30, 0x7B2, 29
	sw x30, 0(x31)
	csrrci x30, 0x7B2, 28
	sw x30, 0(x31)
	csrrci x30, 0x7B2, 27
	sw x30, 0(x31)
	csrrci x30, 0x7B2, 26
	sw x30, 0(x31)
	csrrci x30, 0x7B2, 25
	sw x30, 0(x31)
	csrrci x30, 0x7B2, 24
	sw x30, 0(x31)
	csrrci x30, 0x7B2, 23
	sw x30, 0(x31)
	csrrci x30, 0x7B2, 22
	sw x30, 0(x31)
	csrrci x30, 0x7B2, 21
	sw x30, 0(x31)

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

