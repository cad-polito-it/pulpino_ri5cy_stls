.global test_hwloop
.text

test_hwloop:

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
#                _    ___          __  _                                     #
#               | |  | \ \        / / | |                                    #
#               | |__| |\ \  /\  / /  | | ___   ___  _ __  ___               #
#               |  __  | \ \/  \/ /   | |/ _ \ / _ \| '_ \/ __|              #
#               | |  | |  \  /\  /    | | (_) | (_) | |_) \__ \              #
#               |_|  |_|   \/  \/     |_|\___/ \___/| .__/|___/              #
#                                                   | |                      #
#                                                   |_|                      #
#                                                                            #
##############################################################################

	# lp.setup
	addi                x1,     x0,     30
	addi                x2,     x0,     0
	lp.setup            x0,     x1,     hwloop_test_1
	addi                x2,     x2,     1
hwloop_test_1:
	sw                  x2,     0(x0)

	addi                x1,     x0,     30
	addi                x2,     x0,     0
	lp.setup            x1,     x1,     hwloop_test_2
	addi                x2,     x2,     1
	addi                x0,     x0,     0
hwloop_test_2:
	sw                  x2,     0(x0)

	# lp.setupi
	addi                x2,     x0,     0
	lp.setupi           x0,     10,     30
	addi                x2,     x2,     1
	addi                x0,     x0,     0
	addi                x0,     x0,     0
	addi                x0,     x0,     0
	addi                x0,     x0,     0
	addi                x0,     x0,     0
	addi                x0,     x0,     0
	addi                x0,     x0,     0
	addi                x0,     x0,     0
	addi                x0,     x0,     0
	addi                x0,     x0,     0
	sw                  x2,     0(x0)

	# Long loops
	addi                x1,     x0,     100
	addi                x2,     x0,     0
	lp.starti           x0,     hwl_start1
	lp.endi             x0,     hwl_end1
	lp.count            x0,     x1
hwl_start1:
	addi                x2,     x2,     1
	addi                x0,     x0,     0
hwl_end1:
	sw                  x2,     0(x0)
	addi                x1,     x0,     100
	addi                x2,     x0,     0
	lp.starti           x0,     hwl_start2
	lp.endi             x0,     hwl_end2
	lp.counti           x0,     50
hwl_start2:
	addi                x2,     x2,     1
	addi                x0,     x0,     0
hwl_end2:
	sw                  x2,     0(x0)

	# Nested loops
	addi                x1,     x0,     10
	addi                x2,     x0,     10
	addi                x3,     x0,     0
	addi                x4,     x0,     0
	lp.setup            x0,     x1,     nested_1
	addi                x3,     x3,     1
	lp.setup            x1,     x2,     nested_2
	addi                x4,     x4,     1
	addi                x0,     x0,     0
nested_2:
	sw                  x2,     0(x0)
nested_1:
	sw                  x2,     0(x0)

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
