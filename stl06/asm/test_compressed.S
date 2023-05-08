.global test_compressed
.text

test_compressed:

	# ABI prologue
	addi sp, sp, -112     # allocate 112 bytes on the stack
	sw x1, 104(sp)        # save return address
	#sw x9, 96(sp)         # save callee-saved registers
	sw x10, 88(sp)
	#sw x18, 80(sp)
	#sw x19, 72(sp)
	#sw x20, 64(sp)
	#sw x21, 56(sp)
	#sw x22, 48(sp)
	#sw x23, 40(sp)
	#sw x24, 32(sp)
	#sw x25, 24(sp)
	#sw x26, 16(sp)
	#sw x27, 8(sp)
	addi s0, sp, 112     # set up s0 to point to start of stack frame
	li t0, 0x00104000    # save stack pointer
	sw sp, 0(t0)

##############################################################################
#           _____                                                 _          #
#          / ____|                                               | |         #
#         | |     ___  _ __ ___  _ __  _ __ ___  ___ ___  ___  __| |         #
#         | |    / _ \| '_ ` _ \| '_ \| '__/ _ \/ __/ __|/ _ \/ _` |         #
#         | |___| (_) | | | | | | |_) | | |  __/\__ \__ \  __/ (_| |         #
#          \_____\___/|_| |_| |_| .__/|_|  \___||___/___/\___|\__,_|         #
#                               | |                                          #
#                               |_|                                          #
#                                                                            #
##############################################################################
	li                  a0,     0x00100000
	li                  x8,     0xffffffff
	addi                x0,     x0,     0
.option rvc
	c.j                 test_cj
	c.mv                s0,     a0
test_cj:
	c.sw                s0,     0(a0)
	c.jal               test_cjal
	c.mv                s0,     a0
test_cjal:
	c.sw                s0,     0(a0)
	c.beqz              x8,     test_beqz
	c.mv                s0,     a0
	c.sw                s0,     0(a0)
test_beqz:
	c.addi              x8,     -1
	c.bnez              x8,     test_bnez
	c.mv                s0,     a0
test_bnez:
	c.sw                s0,     0(a0)
	c.slli              s1,     1
	c.sw                s1,     0(a0)
	c.srli              s1,     1
	c.sw                s1,     0(a0)
	c.srai              s1,     1
	c.sw                s1,     0(a0)
	c.add               s0,     s1
	c.sw                s0,     0(a0)
	c.sub               a0,     a0
	c.sw                s0,     0(a0)
.option norvc
	addi                x0,     x0,     0


	# ABI epilogue
	li t0, 0x00104000    # restore stack pointer
	lw sp, 0(t0)
	#lw x27, 8(sp)        # restore callee-saved registers
	#lw x26, 16(sp)
	#lw x25, 24(sp)
	#lw x24, 32(sp)
	#lw x23, 40(sp)
	#lw x22, 48(sp)
	#lw x21, 56(sp)
	#lw x20, 64(sp)
	#lw x19, 72(sp)
	#lw x18, 80(sp)
	lw x10, 88(sp)
	#lw x9, 96(sp)
	lw x1, 104(sp)       # restore return address
	addi sp, sp, 112     # deallocate stack space
	jr ra                # return to caller
