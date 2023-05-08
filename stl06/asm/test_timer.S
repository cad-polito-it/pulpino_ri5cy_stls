.global test_timer
.text

test_timer:

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
#                       _______ _                                            #
#                      |__   __(_)                                           #
#                         | |   _ _ __ ___   ___ _ __                        #
#                         | |  | | '_ ` _ \ / _ \ '__|                       #
#                         | |  | | | | | | |  __/ |                          #
#                         |_|  |_|_| |_| |_|\___|_|                          #
#                                                                            #
#                                                                            #
##############################################################################

	# Timer faults are hard to detect by the processor itself, this section
	# probably needs an ATE
	rdcycle             x1
	sw                  x1,     0(x0)
	rdcycleh            x2
	sw                  x2,     0(x0)
	rdtime              x3
	sw                  x3,     0(x0)
	rdtimeh             x4
	sw                  x4,     0(x0)
	rdinstret           x5
	sw                  x5,     0(x0)
	rdinstreth          x6
	sw                  x6,     0(x0)

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
	##lw x10, 88(sp)
	#lw x9, 96(sp)
	lw x1, 104(sp)       # restore return address
	addi sp, sp, 112     # deallocate stack space
	jr ra                # return to caller
