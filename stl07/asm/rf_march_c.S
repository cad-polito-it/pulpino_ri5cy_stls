# vim:ft=riscv32asm

REG_LIST_SIZE = 31

.comm saved_regs,REG_LIST_SIZE*4,4
.text
.align	2
.globl  rf_march_c
.type   rf_march_c , @function

rf_march_c:
    # Save registers
    lui x5,%hi(saved_regs)
    addi x5,x5,%lo(saved_regs)
    sw x1, 0(x5)
    addi x5,x5,4
    sw x2, 0(x5)
    addi x5,x5,4
    sw x3, 0(x5)
    addi x5,x5,4
    sw x4, 0(x5)
    addi x5,x5,4
    sw x6, 0(x5)
    addi x5,x5,4
    sw x7, 0(x5)
    addi x5,x5,4
    sw x8, 0(x5)
    addi x5,x5,4
    sw x9, 0(x5)
    addi x5,x5,4
    sw x10, 0(x5)
    addi x5,x5,4
    sw x11, 0(x5)
    addi x5,x5,4
    sw x12, 0(x5)
    addi x5,x5,4
    sw x13, 0(x5)
    addi x5,x5,4
    sw x14, 0(x5)
    addi x5,x5,4
    sw x15, 0(x5)
    addi x5,x5,4
    sw x16, 0(x5)
    addi x5,x5,4
    sw x17, 0(x5)
    addi x5,x5,4
    sw x18, 0(x5)
    addi x5,x5,4
    sw x19, 0(x5)
    addi x5,x5,4
    sw x20, 0(x5)
    addi x5,x5,4
    sw x21, 0(x5)
    addi x5,x5,4
    sw x22, 0(x5)
    addi x5,x5,4
    sw x23, 0(x5)
    addi x5,x5,4
    sw x24, 0(x5)
    addi x5,x5,4
    sw x25, 0(x5)
    addi x5,x5,4
    sw x26, 0(x5)
    addi x5,x5,4
    sw x27, 0(x5)
    addi x5,x5,4
    sw x28, 0(x5)
    addi x5,x5,4
    sw x29, 0(x5)
    addi x5,x5,4
    sw x30, 0(x5)
    addi x5,x5,4
    sw x31, 0(x5)

    # Write 0
    li x1,0
    li x2,0
    li x3,0
    li x4,0
    li x5,0
    li x6,0
    li x7,0
    li x8,0
    li x9,0
    li x10,0
    li x11,0
    li x12,0
    li x13,0
    li x14,0
    li x15,0
    li x16,0
    li x17,0
    li x18,0
    li x19,0
    li x20,0
    li x21,0
    li x22,0
    li x23,0
    li x24,0
    li x25,0
    li x26,0
    li x27,0
    li x28,0
    li x29,0
    li x30,0
    li x31,0

    # Read 0 write 1
    bne x0,x1,fail
    li x1,-1
    bne x0,x2,fail
    li x2,-1
    bne x0,x3,fail
    li x3,-1
    bne x0,x4,fail
    li x4,-1
    bne x0,x5,fail
    li x5,-1
    bne x0,x6,fail
    li x6,-1
    bne x0,x7,fail
    li x7,-1
    bne x0,x8,fail
    li x8,-1
    bne x0,x9,fail
    li x9,-1
    bne x0,x10,fail
    li x10,-1
    bne x0,x11,fail
    li x11,-1
    bne x0,x12,fail
    li x12,-1
    bne x0,x13,fail
    li x13,-1
    bne x0,x14,fail
    li x14,-1
    bne x0,x15,fail
    li x15,-1
    bne x0,x16,fail
    li x16,-1
    bne x0,x17,fail
    li x17,-1
    bne x0,x18,fail
    li x18,-1
    bne x0,x19,fail
    li x19,-1
    bne x0,x20,fail
    li x20,-1
    bne x0,x21,fail
    li x21,-1
    bne x0,x22,fail
    li x22,-1
    bne x0,x23,fail
    li x23,-1
    bne x0,x24,fail
    li x24,-1
    bne x0,x25,fail
    li x25,-1
    bne x0,x26,fail
    li x26,-1
    bne x0,x27,fail
    li x27,-1
    bne x0,x28,fail
    li x28,-1
    bne x0,x29,fail
    li x29,-1
    bne x0,x30,fail
    li x30,-1
    bne x0,x31,fail
    li x31,-1

    # Read 1 write 0
    xori x1,x1,-1
    bne x0,x1,fail
    li x1,0
    xori x2,x2,-1
    bne x0,x2,fail
    li x2,0
    xori x3,x3,-1
    bne x0,x3,fail
    li x3,0
    xori x4,x4,-1
    bne x0,x4,fail
    li x4,0
    xori x5,x5,-1
    bne x0,x5,fail
    li x5,0
    xori x6,x6,-1
    bne x0,x6,fail
    li x6,0
    xori x7,x7,-1
    bne x0,x7,fail
    li x7,0
    xori x8,x8,-1
    bne x0,x8,fail
    li x8,0
    xori x9,x9,-1
    bne x0,x9,fail
    li x9,0
    xori x10,x10,-1
    bne x0,x10,fail
    li x10,0
    xori x11,x11,-1
    bne x0,x11,fail
    li x11,0
    xori x12,x12,-1
    bne x0,x12,fail
    li x12,0
    xori x13,x13,-1
    bne x0,x13,fail
    li x13,0
    xori x14,x14,-1
    bne x0,x14,fail
    li x14,0
    xori x15,x15,-1
    bne x0,x15,fail
    li x15,0
    xori x16,x16,-1
    bne x0,x16,fail
    li x16,0
    xori x17,x17,-1
    bne x0,x17,fail
    li x17,0
    xori x18,x18,-1
    bne x0,x18,fail
    li x18,0
    xori x19,x19,-1
    bne x0,x19,fail
    li x19,0
    xori x20,x20,-1
    bne x0,x20,fail
    li x20,0
    xori x21,x21,-1
    bne x0,x21,fail
    li x21,0
    xori x22,x22,-1
    bne x0,x22,fail
    li x22,0
    xori x23,x23,-1
    bne x0,x23,fail
    li x23,0
    xori x24,x24,-1
    bne x0,x24,fail
    li x24,0
    xori x25,x25,-1
    bne x0,x25,fail
    li x25,0
    xori x26,x26,-1
    bne x0,x26,fail
    li x26,0
    xori x27,x27,-1
    bne x0,x27,fail
    li x27,0
    xori x28,x28,-1
    bne x0,x28,fail
    li x28,0
    xori x29,x29,-1
    bne x0,x29,fail
    li x29,0
    xori x30,x30,-1
    bne x0,x30,fail
    li x30,0
    xori x31,x31,-1
    bne x0,x31,fail
    li x31,0

    # Read 0
    bne x0,x1,fail
    bne x0,x2,fail
    bne x0,x3,fail
    bne x0,x4,fail
    bne x0,x5,fail
    bne x0,x6,fail
    bne x0,x7,fail
    bne x0,x8,fail
    bne x0,x9,fail
    bne x0,x10,fail
    bne x0,x11,fail
    bne x0,x12,fail
    bne x0,x13,fail
    bne x0,x14,fail
    bne x0,x15,fail
    bne x0,x16,fail
    bne x0,x17,fail
    bne x0,x18,fail
    bne x0,x19,fail
    bne x0,x20,fail
    bne x0,x21,fail
    bne x0,x22,fail
    bne x0,x23,fail
    bne x0,x24,fail
    bne x0,x25,fail
    bne x0,x26,fail
    bne x0,x27,fail
    bne x0,x28,fail
    bne x0,x29,fail
    bne x0,x30,fail
    bne x0,x31,fail

finish:
    # Restore registers
    lui x5,%hi(saved_regs)
    addi x5,x5,%lo(saved_regs)
    lw x1, 0(x5)
    addi x5,x5,4
    lw x2, 0(x5)
    addi x5,x5,4
    lw x3, 0(x5)
    addi x5,x5,4
    lw x4, 0(x5)
    addi x5,x5,4
    lw x6, 0(x5)
    addi x5,x5,4
    lw x7, 0(x5)
    addi x5,x5,4
    lw x8, 0(x5)
    addi x5,x5,4
    lw x9, 0(x5)
    addi x5,x5,4
    lw x10, 0(x5)
    addi x5,x5,4
    lw x11, 0(x5)
    addi x5,x5,4
    lw x12, 0(x5)
    addi x5,x5,4
    lw x13, 0(x5)
    addi x5,x5,4
    lw x14, 0(x5)
    addi x5,x5,4
    lw x15, 0(x5)
    addi x5,x5,4
    lw x16, 0(x5)
    addi x5,x5,4
    lw x17, 0(x5)
    addi x5,x5,4
    lw x18, 0(x5)
    addi x5,x5,4
    lw x19, 0(x5)
    addi x5,x5,4
    lw x20, 0(x5)
    addi x5,x5,4
    lw x21, 0(x5)
    addi x5,x5,4
    lw x22, 0(x5)
    addi x5,x5,4
    lw x23, 0(x5)
    addi x5,x5,4
    lw x24, 0(x5)
    addi x5,x5,4
    lw x25, 0(x5)
    addi x5,x5,4
    lw x26, 0(x5)
    addi x5,x5,4
    lw x27, 0(x5)
    addi x5,x5,4
    lw x28, 0(x5)
    addi x5,x5,4
    lw x29, 0(x5)
    addi x5,x5,4
    lw x30, 0(x5)
    addi x5,x5,4
    lw x31, 0(x5)

    jr ra
    nop
