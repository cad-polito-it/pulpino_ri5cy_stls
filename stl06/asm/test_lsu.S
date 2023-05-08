.global test_lsu
.text

test_lsu:

	# ABI prologue
	addi sp, sp, -112     # allocate 112 bytes on the stack
	sw x1, 104(sp)        # save return address
	#sw x9, 96(sp)         # save callee-saved registers
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
	mv x29, sp           # save stack pointer

##############################################################################
#                   __  __                                                   #
#                  |  \/  |                                                  #
#                  | \  / | ___ _ __ ___   ___  _ __ _   _                   #
#                  | |\/| |/ _ \ '_ ` _ \ / _ \| '__| | | |                  #
#                  | |  | |  __/ | | | | | (_) | |  | |_| |                  #
#                  |_|  |_|\___|_| |_| |_|\___/|_|   \__, |                  #
#                                                     __/ |                  #
#                                                    |___/                   #
#                                                                            #
##############################################################################

	# Store and load word, halfword, byte
	li                  x2,     0xc2c76c49
	li                  x4,     0x100c91
	sw                  x2,     0(x4)
	lw                  x2,     0(x4)
	li                  x4,     0x1047ba
	sw                  x2,     0(x4)
	li                  x28,    0xe5dd2a8
	li                  x23,    0x103d08
	sw                  x28,    0(x23)
	lw                  x5,     0(x23)
	li                  x23,    0x101b59
	sw                  x5,     0(x23)
	li                  x19,    0x8e0de182
	li                  x17,    0x103a70
	sw                  x19,    0(x17)
	lw                  x18,    0(x17)
	li                  x17,    0x1057dd
	sw                  x18,    0(x17)
	li                  x7,     0x86a8e2d
	li                  x18,    0x10564b
	sh                  x7,     0(x18)
	lh                  x30,    0(x18)
	li                  x18,    0x10620d
	sw                  x30,    0(x18)
	li                  x4,     0x7c8e5b75
	li                  x28,    0x104546
	sh                  x4,     0(x28)
	lh                  x1,     0(x28)
	li                  x28,    0x106897
	sw                  x1,     0(x28)
	li                  x11,    0x3dff324a
	li                  x24,    0x100b2d
	sh                  x11,    0(x24)
	lh                  x10,    0(x24)
	li                  x24,    0x107025
	sw                  x10,    0(x24)
	li                  x18,    0x11f0a287
	li                  x12,    0x1069b0
	sb                  x18,    0(x12)
	lb                  x2,     0(x12)
	li                  x12,    0x1077f8
	sw                  x2,     0(x12)
	li                  x2,     0xd38130eb
	li                  x16,    0x101514
	sb                  x2,     0(x16)
	lb                  x6,     0(x16)
	li                  x16,    0x105ca3
	sw                  x6,     0(x16)
	li                  x31,    0xd17f550f
	li                  x5,     0x106fa7
	sb                  x31,    0(x5)
	lb                  x27,    0(x5)
	li                  x5,     0x10531c
	sw                  x27,    0(x5)

	# Post-increment instructions
	addi                x1,     x0,     1
	addi                x2,     x0,     0
	p.sb                x1,     1(x2!)
	sw                  x2,     0(x0)
	p.sb                x1,     x1(x2!)
	sw                  x2,     0(x0)
	p.sb                x1,     x1(x2)
	addi                x2,     x0,     0
	p.sh                x1,     1(x2!)
	sw                  x2,     0(x0)
	p.sh                x1,     x1(x2!)
	sw                  x2,     0(x0)
	p.sh                x1,     x1(x2)
	addi                x2,     x0,     0
	p.sw                x1,     1(x2!)
	sw                  x2,     0(x0)
	p.sw                x1,     x1(x2!)
	sw                  x2,     0(x0)
	p.sw                x1,     x1(x2)
	addi                x2,     x0,     0
	p.lb                x1,     1(x2!)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	p.lb                x1,     x1(x2!)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	p.lb                x1,     x1(x2)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	addi                x2,     x0,     0
	p.lbu               x1,     1(x2!)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	p.lbu               x1,     x1(x2!)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	p.lbu               x1,     x1(x2)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	addi                x2,     x0,     0
	p.lh                x1,     1(x2!)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	p.lh                x1,     x1(x2!)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	p.lh                x1,     x1(x2)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	addi                x2,     x0,     0
	p.lhu               x1,     1(x2!)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	p.lhu               x1,     x1(x2!)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	p.lhu               x1,     x1(x2)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	addi                x2,     x0,     0
	p.lw                x1,     1(x2!)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	p.lw                x1,     x1(x2!)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	p.lw                x1,     x1(x2)
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)

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
	#lw x9, 96(sp)
	lw x1, 104(sp)       # restore return address
	addi sp, sp, 112     # deallocate stack space
	jr ra                # return to caller
