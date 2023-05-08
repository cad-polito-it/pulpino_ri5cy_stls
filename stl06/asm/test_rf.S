.global test_rf
.text

test_rf:

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

##############################################################################
#            _____            _     _              ______ _ _                #
#           |  __ \          (_)   | |            |  ____(_) |               #
#           | |__) |___  __ _ _ ___| |_ ___ _ __  | |__   _| | ___           #
#           |  _  // _ \/ _` | / __| __/ _ \ '__| |  __| | | |/ _ \          #
#           | | \ \  __/ (_| | \__ \ ||  __/ |    | |    | | |  __/          #
#           |_|  \_\___|\__, |_|___/\__\___|_|    |_|    |_|_|\___|          #
#                        __/ |                                               #
#                       |___/                                                #
#                                                                            #
##############################################################################
# MATS+ algorithm applied to register file. Only 1 data background sufficient
# due to stuck-at model not including coupling faults.
# Data backgrounds:
# 0xffffffff and 0x00000000

	# Write DBG[0]
	li                  x1,     0x0
	li                  x2,     0x0
	li                  x3,     0x0
	li                  x4,     0x0
	li                  x5,     0x0
	li                  x6,     0x0
	li                  x7,     0x0
	li                  x8,     0x0
	li                  x9,     0x0
	li                  x10,    0x0
	li                  x11,    0x0
	li                  x12,    0x0
	li                  x13,    0x0
	li                  x14,    0x0
	li                  x15,    0x0
	li                  x16,    0x0
	li                  x17,    0x0
	li                  x18,    0x0
	li                  x19,    0x0
	li                  x20,    0x0
	li                  x21,    0x0
	li                  x22,    0x0
	li                  x23,    0x0
	li                  x24,    0x0
	li                  x25,    0x0
	li                  x26,    0x0
	li                  x27,    0x0
	li                  x28,    0x0
	li                  x29,    0x0
	li                  x30,    0x0
	li                  x31,    0x0

	# For each register, read DBG[0], write DBG[1]
	bne                 x1,     x31,    fail
	li                  x1,     0xffffffff
	bne                 x2,     x31,    fail
	li                  x2,     0xffffffff
	bne                 x3,     x31,    fail
	li                  x3,     0xffffffff
	bne                 x4,     x31,    fail
	li                  x4,     0xffffffff
	bne                 x5,     x31,    fail
	li                  x5,     0xffffffff
	bne                 x6,     x31,    fail
	li                  x6,     0xffffffff
	bne                 x7,     x31,    fail
	li                  x7,     0xffffffff
	bne                 x8,     x31,    fail
	li                  x8,     0xffffffff
	bne                 x9,     x31,    fail
	li                  x9,     0xffffffff
	bne                 x10,    x31,    fail
	li                  x10,    0xffffffff
	bne                 x11,    x31,    fail
	li                  x11,    0xffffffff
	bne                 x12,    x31,    fail
	li                  x12,    0xffffffff
	bne                 x13,    x31,    fail
	li                  x13,    0xffffffff
	bne                 x14,    x31,    fail
	li                  x14,    0xffffffff
	bne                 x15,    x31,    fail
	li                  x15,    0xffffffff
	bne                 x16,    x31,    fail
	li                  x16,    0xffffffff
	bne                 x17,    x31,    fail
	li                  x17,    0xffffffff
	bne                 x18,    x31,    fail
	li                  x18,    0xffffffff
	bne                 x19,    x31,    fail
	li                  x19,    0xffffffff
	bne                 x20,    x31,    fail
	li                  x20,    0xffffffff
	bne                 x21,    x31,    fail
	li                  x21,    0xffffffff
	bne                 x22,    x31,    fail
	li                  x22,    0xffffffff
	bne                 x23,    x31,    fail
	li                  x23,    0xffffffff
	bne                 x24,    x31,    fail
	li                  x24,    0xffffffff
	bne                 x25,    x31,    fail
	li                  x25,    0xffffffff
	bne                 x26,    x31,    fail
	li                  x26,    0xffffffff
	bne                 x27,    x31,    fail
	li                  x27,    0xffffffff
	bne                 x28,    x31,    fail
	li                  x28,    0xffffffff
	bne                 x29,    x31,    fail
	li                  x29,    0xffffffff
	bne                 x30,    x31,    fail
	li                  x30,    0xffffffff
	bne                 x31,    x31,    fail
	li                  x31,    0xffffffff

	# For each register, read DBG[1], write DBG[0]
	bne                 x31,    x1,     fail
	li                  x31,    0x0
	bne                 x30,    x1,     fail
	li                  x30,    0x0
	bne                 x29,    x1,     fail
	li                  x29,    0x0
	bne                 x28,    x1,     fail
	li                  x28,    0x0
	bne                 x27,    x1,     fail
	li                  x27,    0x0
	bne                 x26,    x1,     fail
	li                  x26,    0x0
	bne                 x25,    x1,     fail
	li                  x25,    0x0
	bne                 x24,    x1,     fail
	li                  x24,    0x0
	bne                 x23,    x1,     fail
	li                  x23,    0x0
	bne                 x22,    x1,     fail
	li                  x22,    0x0
	bne                 x21,    x1,     fail
	li                  x21,    0x0
	bne                 x20,    x1,     fail
	li                  x20,    0x0
	bne                 x19,    x1,     fail
	li                  x19,    0x0
	bne                 x18,    x1,     fail
	li                  x18,    0x0
	bne                 x17,    x1,     fail
	li                  x17,    0x0
	bne                 x16,    x1,     fail
	li                  x16,    0x0
	bne                 x15,    x1,     fail
	li                  x15,    0x0
	bne                 x14,    x1,     fail
	li                  x14,    0x0
	bne                 x13,    x1,     fail
	li                  x13,    0x0
	bne                 x12,    x1,     fail
	li                  x12,    0x0
	bne                 x11,    x1,     fail
	li                  x11,    0x0
	bne                 x10,    x1,     fail
	li                  x10,    0x0
	bne                 x9,     x1,     fail
	li                  x9,     0x0
	bne                 x8,     x1,     fail
	li                  x8,     0x0
	bne                 x7,     x1,     fail
	li                  x7,     0x0
	bne                 x6,     x1,     fail
	li                  x6,     0x0
	bne                 x5,     x1,     fail
	li                  x5,     0x0
	bne                 x4,     x1,     fail
	li                  x4,     0x0
	bne                 x3,     x1,     fail
	li                  x3,     0x0
	bne                 x2,     x1,     fail
	li                  x2,     0x0
	bne                 x1,     x1,     fail
	li                  x1,     0x0

pass:
	li a0, 0
	j epilogue
fail:
	li a0, 1
epilogue:
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
