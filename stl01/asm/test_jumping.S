.global test_jumping
.text

test_jumping:

	# ABI prologue
	addi sp, sp, -112     # allocate 112 bytes on the stack
	sw ra, 104(sp)        # save return address
	sw s0, 96(sp)         # save callee-saved registers
	sw s1, 88(sp)
	#sw s2, 80(sp)
	#sw s3, 72(sp)
	sw s4, 64(sp)
	sw s5, 56(sp)
	sw s6, 48(sp)
	#sw s7, 40(sp)
	#sw s8, 32(sp)
	#sw s9, 24(sp)
	#sw s10, 16(sp)
	#sw s11, 8(sp)
	addi s0, sp, 112     # set up s0 to point to start of stack frame
	li t0, 0x00104000    # save stack pointer
	sw sp, 0(t0)


	li x1,1
	li x2,0
	li x3,3
	li x4,0
	li x5,0
	li x6,0
	li x31,10

startPoint: 
	addi x1, x1, 1
	bgtz x1, startJumping

maximumAge: 
	addi x1, x1, 1
	bnez x1, growingUp


startJumping:  
	addi x1, x1, 1
   bgez x1, becomeMan

brotherComing: 
	addi x1, x1, 1
	nop
	nop
	li x2, 2
	bne x2, x1, growUpBrother

becomeMan: 
	addi x1, x1, 1
	j maximumAge

growUpSister: 
	addi x4, x4, 1
	ble x1, x4, becomingOldSister

growingUp: 
	blt x0, x1, brotherComing

becomingOldBrother: 
	sub x2, x2, x3
	beq x2, x0, oldBrother

tooOldBrother: 
	blt x2, x0, continueX1

finishingJumping: 
	li x4, 4
	bgt x4, x1, end_of_program

tooOldSister: 

growUpBrother: 
	addi x2, x2, 1
	bge x2, x0, becomingOldBrother

becomingOldSister: 
	addi x4, x4, 1
	bge x4, x1, tooOldSister

becomingOld: 
	sub x1, x1, x3
	blez x1, almostDead

oldBrother: 
	sub x2, x2, x3
	bge x0, x2, tooOldBrother

continueX1: 
	sub x1, x1, x3
	sub x1, x1, x3
	bltz x1, becomingOld

almostDead: 
	li x1, 0
	beqz x1, finishingJumping

sisterComing: 
	blt x1, x4, growUpSister

end_of_program:
	li x1,1
	li x2,50
	li x3,10
	lp.setup x1,x3,hw2
	lp.setup x0,x2,hw1
	call func
	csrr x3,0x7B0
	csrr x4,0x7B1
	csrr x5,0x7B2
	csrr x6,0x780 
	csrr x7,0x781
	csrr x8,0x79F
	sw x3,0(x0)
	sw x4,4(x0)
	sw x5,8(x0)
	sw x6,12(x0)
	sw x7,16(x0)
	sw x8,20(x0)	
hw1:
	csrr x9,0x7B6
	sw x9,2000(x0)

hw2:
j fin

func: 
	ret

fin: 
	li x1,1
	li x2,1
	li x3,50
	li x20,16
	li x21,-5
	li x22,7

	lp.setup x1,x2,here1
	lp.setup x0,x3,here2
	div x20,x20,x21
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	divu x20,x20,x22
	csrr x19,0x342	
here2:
	sw x19,0(x0)
	sw x20,4(x0)
here1:

	# ABI epilogue
	li t0, 0x00104000    # restore stack pointer
	lw sp, 0(t0)
	#lw s11, 8(sp)        # restore callee-saved registers
	#lw s10, 16(sp)
	#lw s9, 24(sp)
	#lw s8, 32(sp)
	#lw s7, 40(sp)
	lw s6, 48(sp)
	lw s5, 56(sp)
	lw s4, 64(sp)
	#lw s3, 72(sp)
	#lw s2, 80(sp)
	lw s1, 88(sp)
	lw s0, 96(sp)
	lw ra, 104(sp)       # restore return address
	addi sp, sp, 112     # deallocate stack space
	jr ra                # return to caller



