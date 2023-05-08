.global test_jumps
.text

test_jumps:

	# ABI prologue
	addi sp, sp, -112     # allocate 112 bytes on the stack
	sw x1, 104(sp)        # save return address
	#sw x9, 96(sp)         # save callee-saved registers
	#sw x10, 88(sp)
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
#                            _                                               #
#                           | |                                              #
#                           | |_   _ _ __ ___  _ __  ___                     #
#                       _   | | | | | '_ ` _ \| '_ \/ __|                    #
#                      | |__| | |_| | | | | | | |_) \__ \                    #
#                       \____/ \__,_|_| |_| |_| .__/|___/                    #
#                                             | |                            #
#                                             |_|                            #
##############################################################################

	# Jump and link
	# Reset x2, set x3
	add                 x2,     x0,     x0
	addi                x3,     x0,     1
	# Jump over the next few instructions, if it fails x2 is not set and check fails
	jal                 x1,     set_x2
	sw                  x2,     0(x0)
	# Check x2=1
	bne                 x2,     x3,     fail
	# Reset x2
	add                 x2,     x0,     x0
	# Jump over next few instruction, if it fails x2 will be set
	jal                 x0,     after_set_x2
set_x2:
	addi                x2,     x0,     1
	# Return to caller a few lines above
	jalr                x0,     x1,     0
after_set_x2:
	sw                  x2,     0(x0)
	# Check x2 was not set
	bne                 x2,     x0,     fail

##############################################################################
#                 ____                       _                               #
#                |  _ \                     | |                              #
#                | |_) |_ __ __ _ _ __   ___| |__   ___  ___                 #
#                |  _ <| '__/ _` | '_ \ / __| '_ \ / _ \/ __|                #
#                | |_) | | | (_| | | | | (__| | | |  __/\__ \                #
#                |____/|_|  \__,_|_| |_|\___|_| |_|\___||___/                #
#                                                                            #
#                                                                            #
##############################################################################

	# Branch if equal
	addi                x1,     x0,     1
	addi                x2,     x0,     1
	beq                 x1,     x2,     beq_test
	jal                 x0,     fail
beq_test:
	beq                 x1,     x0,     fail

	# Branch if not equal
	bne                 x0,     x1,     test_bne
	jal                 x0,     fail
test_bne:
	bne                 x1,     x1,     fail

	# Branch if greater or equal
	bge                 x1,     x0,     bge_test1
	jal                 x0,     fail
bge_test1:
	bge                 x0,     x0,     bge_test2
	jal                 x0,     fail
bge_test2:
	bge                 x0,     x1,     fail

	# Branch if greater or equal unsigned
	addi                x2,     x0,     -1
	bgeu                x2,     x0,     bgeu_test1
	jal                 x0,     fail
bgeu_test1:
	bgeu                x0,     x0,     bgeu_test2
	jal                 x0,     fail
bgeu_test2:
	bgeu                x0,     x2,     fail

	# Branch if less than
	blt                 x2,     x0,     blt_test
	jal                 x0,     fail
blt_test:
	blt                 x1,     x0,     fail

	# Branch if less than
	bltu                x0,     x2,     bltu_test
	jal                 x0,     fail
bltu_test:
	bltu                x2,     x0,     fail

	# Branch if equal to immediate
	addi                x1,     x0,     1
	p.beqimm            x1,     1,      beqimm_test
	jal                 x0,     fail
beqimm_test:
	p.beqimm            x1,     2,      fail

	# Branch if not equal to immediate
	addi                x1,     x0,     1
	p.bneimm            x1,     2,      bneimm_test
	jal                 x0,     fail
bneimm_test:
	p.bneimm            x1,     1,      fail

pass:
	li a0, 0
	j epilogue
fail:
	li a0, 1
epilogue:
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
	#lw x10, 88(sp)
	#lw x9, 96(sp)
	lw x1, 104(sp)       # restore return address
	addi sp, sp, 112     # deallocate stack space
	jr ra                # return to caller
