# vim:ft=riscv32asm:foldmethod=marker:foldlevel=0

#define RV32I_TEST
#define RV32M_TEST
#define RVCY_ALU1_TEST
#define RVCY_ALU2_TEST
#define RVCY_MAC_TEST
#define RVCY_VEC1_TEST
#define RVCY_VEC2_TEST


REG_LIST_SIZE = 31

.comm saved_regs,REG_LIST_SIZE*4,4
.comm outputs,260,4
.globl inputs
.data
.align	2
.type	inputs, @object
.size	inputs, 260
inputs:
    .word 1250398930
    .word 2413464835
    .word 4148901900
    .word 1181585901
    .word 3606527669
    .word 3800621979
    .word 867933644
    .word 2804726972
    .word 2397204482
    .word 1755544137
    .word 3980998963
    .word 372679262
    .word 3654040529
    .word 405944296
    .word 3827213687
    .word 1606256366
    .word 2616888626
    .word 454928096
    .word 2626698549
    .word 1075796557
    .word 504001498
    .word 3510240668
    .word 69738636
    .word 1176209613
    .word 818942176
    .word 1158778580
    .word 3734011775
    .word 207629200
    .word 3812923101
    .word 100017829
    .word 3762266466
    .word 3978309867
    .word 2387383967
    .word 4079553439
    .word 3664884434
    .word 505699536
    .word 3923080493
    .word 1828648027
    .word 569517827
    .word 3088629695
    .word 2339997773
    .word 1698928166
    .word 2943828109
    .word 2110797175
    .word 3596660424
    .word 3710599401
    .word 2051899082
    .word 2826029201
    .word 1128455820
    .word 930345251
    .word 1818263053
    .word 2098819229
    .word 1066732145
    .word 3091192893
    .word 2813469952
    .word 534331175
    .word 3452333086
    .word 2773417513
    .word 2819874567
    .word 402177521
    .word 1979392221
    .word 2071823585
    .word 1175390070
    .word 1329259631
    .word 3448753743

.text
.align	2
.globl  insn_test
.type   insn_test , @function

insn_test:
    ################################################## 
    ##  SAVE REGISTERS
    ################################################## 
    # {{{
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
    # }}}

    ##################################################
    ##    Base Instruction Set
    ##################################################
    # {{{
#ifdef RV32I_TEST

    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop0
    auipc x3,3741
    p.sw x3,0(x2)
insn_loop0:
    addi x2,x2,4

    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop1
    lui x4,522
    p.sw x4,0(x2)
insn_loop1:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop2
    lw x6,0(x1)
    addi x1,x1,4
    addi x5,x6,-1993
    p.sw x5,0(x2)
insn_loop2:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop3
    lw x7,0(x1)
    addi x1,x1,4
    slti x6,x7,31
    p.sw x6,0(x2)
insn_loop3:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop4
    lw x8,0(x1)
    addi x1,x1,4
    sltiu x7,x8,18
    p.sw x7,0(x2)
insn_loop4:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop5
    lw x9,0(x1)
    addi x1,x1,4
    xori x8,x9,-1729
    p.sw x8,0(x2)
insn_loop5:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop6
    lw x10,0(x1)
    addi x1,x1,4
    ori x9,x10,-362
    p.sw x9,0(x2)
insn_loop6:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop7
    lw x11,0(x1)
    addi x1,x1,4
    andi x10,x11,-517
    p.sw x10,0(x2)
insn_loop7:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop8
    lw x12,0(x1)
    addi x1,x1,4
    slli x11,x12,13
    p.sw x11,0(x2)
insn_loop8:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop9
    lw x13,0(x1)
    addi x1,x1,4
    srli x12,x13,20
    p.sw x12,0(x2)
insn_loop9:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop10
    lw x14,0(x1)
    addi x1,x1,4
    srai x13,x14,4
    p.sw x13,0(x2)
insn_loop10:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop11
    lw x15,0(x1)
    lw x16,4(x1)
    addi x1,x1,4
    add x14,x15,x16
    p.sw x14,0(x2)
insn_loop11:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop12
    lw x16,0(x1)
    lw x17,4(x1)
    addi x1,x1,4
    sub x15,x16,x17
    p.sw x15,0(x2)
insn_loop12:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop13
    lw x17,0(x1)
    lw x18,4(x1)
    addi x1,x1,4
    sll x16,x17,x18
    p.sw x16,0(x2)
insn_loop13:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop14
    lw x18,0(x1)
    lw x19,4(x1)
    addi x1,x1,4
    slt x17,x18,x19
    p.sw x17,0(x2)
insn_loop14:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop15
    lw x19,0(x1)
    lw x20,4(x1)
    addi x1,x1,4
    sltu x18,x19,x20
    p.sw x18,0(x2)
insn_loop15:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop16
    lw x20,0(x1)
    lw x21,4(x1)
    addi x1,x1,4
    xor x19,x20,x21
    p.sw x19,0(x2)
insn_loop16:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop17
    lw x21,0(x1)
    lw x22,4(x1)
    addi x1,x1,4
    srl x20,x21,x22
    p.sw x20,0(x2)
insn_loop17:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop18
    lw x22,0(x1)
    lw x23,4(x1)
    addi x1,x1,4
    sra x21,x22,x23
    p.sw x21,0(x2)
insn_loop18:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop19
    lw x23,0(x1)
    lw x24,4(x1)
    addi x1,x1,4
    or x22,x23,x24
    p.sw x22,0(x2)
insn_loop19:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop20
    lw x24,0(x1)
    lw x25,4(x1)
    addi x1,x1,4
    and x23,x24,x25
    p.sw x23,0(x2)
insn_loop20:
    addi x2,x2,4

    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop21
    rdcycle x24
    p.sw x24,0(x2)
insn_loop21:
    addi x2,x2,4

    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop22
    rdcycleh x25
    p.sw x25,0(x2)
insn_loop22:
    addi x2,x2,4

    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop23
    rdtime x26
    p.sw x26,0(x2)
insn_loop23:
    addi x2,x2,4

    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop24
    rdtimeh x27
    p.sw x27,0(x2)
insn_loop24:
    addi x2,x2,4

    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop25
    rdinstret x28
    p.sw x28,0(x2)
insn_loop25:
    addi x2,x2,4

    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop26
    rdinstreth x29
    p.sw x29,0(x2)
insn_loop26:
    addi x2,x2,4

#endif
    # }}}

    ##################################################
    ##    Standard Extension
    ##################################################
    # {{{
#ifdef RV32M_TEST

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop27
    lw x31,0(x1)
    lw x3,4(x1)
    addi x1,x1,4
    mul x30,x31,x3
    p.sw x30,0(x2)
insn_loop27:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop28
    lw x3,0(x1)
    lw x4,4(x1)
    addi x1,x1,4
    mulh x31,x3,x4
    p.sw x31,0(x2)
insn_loop28:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop29
    lw x4,0(x1)
    lw x5,4(x1)
    addi x1,x1,4
    mulhsu x3,x4,x5
    p.sw x3,0(x2)
insn_loop29:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop30
    lw x5,0(x1)
    lw x6,4(x1)
    addi x1,x1,4
    mulhu x4,x5,x6
    p.sw x4,0(x2)
insn_loop30:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop31
    lw x6,0(x1)
    lw x7,4(x1)
    addi x1,x1,4
    div x5,x6,x7
    p.sw x5,0(x2)
insn_loop31:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop32
    lw x7,0(x1)
    lw x8,4(x1)
    addi x1,x1,4
    divu x6,x7,x8
    p.sw x6,0(x2)
insn_loop32:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop33
    lw x8,0(x1)
    lw x9,4(x1)
    addi x1,x1,4
    rem x7,x8,x9
    p.sw x7,0(x2)
insn_loop33:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop34
    lw x9,0(x1)
    lw x10,4(x1)
    addi x1,x1,4
    remu x8,x9,x10
    p.sw x8,0(x2)
insn_loop34:
    addi x2,x2,4

#endif
    # }}}

    ##################################################
    ##    ALU Bitwise Extension
    ##################################################
    # {{{
#ifdef RVCY_ALU1_TEST

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop35
    lw x10,0(x1)
    addi x1,x1,4
    p.extract x9,x10,18,7
    p.sw x9,0(x2)
insn_loop35:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop36
    lw x11,0(x1)
    addi x1,x1,4
    p.extractu x10,x11,31,12
    p.sw x10,0(x2)
insn_loop36:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop37
    lw x12,0(x1)
    addi x1,x1,4
    p.insert x11,x12,24,18
    p.sw x11,0(x2)
insn_loop37:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop38
    lw x13,0(x1)
    addi x1,x1,4
    p.bclr x12,x13,14,25
    p.sw x12,0(x2)
insn_loop38:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop39
    lw x14,0(x1)
    addi x1,x1,4
    p.bset x13,x14,28,1
    p.sw x13,0(x2)
insn_loop39:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop40
    lw x15,0(x1)
    lw x16,4(x1)
    addi x1,x1,4
    p.extractr x14,x15,x16
    p.sw x14,0(x2)
insn_loop40:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop41
    lw x16,0(x1)
    lw x17,4(x1)
    addi x1,x1,4
    p.extractur x15,x16,x17
    p.sw x15,0(x2)
insn_loop41:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop42
    lw x17,0(x1)
    lw x18,4(x1)
    addi x1,x1,4
    p.insertr x16,x17,x18
    p.sw x16,0(x2)
insn_loop42:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop43
    lw x18,0(x1)
    lw x19,4(x1)
    addi x1,x1,4
    p.bclrr x17,x18,x19
    p.sw x17,0(x2)
insn_loop43:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop44
    lw x19,0(x1)
    lw x20,4(x1)
    addi x1,x1,4
    p.bsetr x18,x19,x20
    p.sw x18,0(x2)
insn_loop44:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop45
    lw x20,0(x1)
    lw x21,4(x1)
    addi x1,x1,4
    p.ror x19,x20,x21
    p.sw x19,0(x2)
insn_loop45:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop46
    lw x21,0(x1)
    addi x1,x1,4
    p.ff1 x20,x21
    p.sw x20,0(x2)
insn_loop46:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop47
    lw x22,0(x1)
    addi x1,x1,4
    p.fl1 x21,x22
    p.sw x21,0(x2)
insn_loop47:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop48
    lw x23,0(x1)
    addi x1,x1,4
    p.clb x22,x23
    p.sw x22,0(x2)
insn_loop48:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop49
    lw x24,0(x1)
    addi x1,x1,4
    p.cnt x23,x24
    p.sw x23,0(x2)
insn_loop49:
    addi x2,x2,4

#endif
    # }}}

    ##################################################
    ##    ALU General Extension
    ##################################################
    # {{{
#ifdef RVCY_ALU2_TEST

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop50
    lw x25,0(x1)
    addi x1,x1,4
    p.abs x24,x25
    p.sw x24,0(x2)
insn_loop50:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop51
    lw x26,0(x1)
    lw x27,4(x1)
    addi x1,x1,4
    p.slet x25,x26,x27
    p.sw x25,0(x2)
insn_loop51:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop52
    lw x27,0(x1)
    lw x28,4(x1)
    addi x1,x1,4
    p.sletu x26,x27,x28
    p.sw x26,0(x2)
insn_loop52:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop53
    lw x28,0(x1)
    lw x29,4(x1)
    addi x1,x1,4
    p.min x27,x28,x29
    p.sw x27,0(x2)
insn_loop53:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop54
    lw x29,0(x1)
    lw x30,4(x1)
    addi x1,x1,4
    p.minu x28,x29,x30
    p.sw x28,0(x2)
insn_loop54:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop55
    lw x30,0(x1)
    lw x31,4(x1)
    addi x1,x1,4
    p.max x29,x30,x31
    p.sw x29,0(x2)
insn_loop55:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop56
    lw x31,0(x1)
    lw x3,4(x1)
    addi x1,x1,4
    p.maxu x30,x31,x3
    p.sw x30,0(x2)
insn_loop56:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop57
    lw x3,0(x1)
    addi x1,x1,4
    p.exths x31,x3
    p.sw x31,0(x2)
insn_loop57:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop58
    lw x4,0(x1)
    addi x1,x1,4
    p.exthz x3,x4
    p.sw x3,0(x2)
insn_loop58:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop59
    lw x5,0(x1)
    addi x1,x1,4
    p.extbs x4,x5
    p.sw x4,0(x2)
insn_loop59:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop60
    lw x6,0(x1)
    addi x1,x1,4
    p.extbz x5,x6
    p.sw x5,0(x2)
insn_loop60:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop61
    lw x7,0(x1)
    addi x1,x1,4
    p.clip x6,x7,8
    p.sw x6,0(x2)
insn_loop61:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop62
    lw x8,0(x1)
    lw x9,4(x1)
    addi x1,x1,4
    p.clipr x7,x8,x9
    p.sw x7,0(x2)
insn_loop62:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop63
    lw x9,0(x1)
    addi x1,x1,4
    p.clipu x8,x9,16
    p.sw x8,0(x2)
insn_loop63:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop64
    lw x10,0(x1)
    lw x11,4(x1)
    addi x1,x1,4
    p.clipur x9,x10,x11
    p.sw x9,0(x2)
insn_loop64:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop65
    lw x11,0(x1)
    lw x12,4(x1)
    addi x1,x1,4
    p.addN x10,x11,x12,5
    p.sw x10,0(x2)
insn_loop65:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop66
    lw x12,0(x1)
    lw x13,4(x1)
    addi x1,x1,4
    p.adduN x11,x12,x13,3
    p.sw x11,0(x2)
insn_loop66:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop67
    lw x13,0(x1)
    lw x14,4(x1)
    addi x1,x1,4
    p.addRN x12,x13,x14,28
    p.sw x12,0(x2)
insn_loop67:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop68
    lw x14,0(x1)
    lw x15,4(x1)
    addi x1,x1,4
    p.adduRN x13,x14,x15,20
    p.sw x13,0(x2)
insn_loop68:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop69
    lw x15,0(x1)
    lw x16,4(x1)
    addi x1,x1,4
    p.subN x14,x15,x16,17
    p.sw x14,0(x2)
insn_loop69:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop70
    lw x16,0(x1)
    lw x17,4(x1)
    addi x1,x1,4
    p.subuN x15,x16,x17,26
    p.sw x15,0(x2)
insn_loop70:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop71
    lw x17,0(x1)
    lw x18,4(x1)
    addi x1,x1,4
    p.subRN x16,x17,x18,4
    p.sw x16,0(x2)
insn_loop71:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop72
    lw x18,0(x1)
    lw x19,4(x1)
    addi x1,x1,4
    p.subuRN x17,x18,x19,0
    p.sw x17,0(x2)
insn_loop72:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop73
    lw x19,0(x1)
    lw x20,4(x1)
    addi x1,x1,4
    p.addNr x18,x19,x20
    p.sw x18,0(x2)
insn_loop73:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop74
    lw x20,0(x1)
    lw x21,4(x1)
    addi x1,x1,4
    p.adduNr x19,x20,x21
    p.sw x19,0(x2)
insn_loop74:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop75
    lw x21,0(x1)
    lw x22,4(x1)
    addi x1,x1,4
    p.addRNr x20,x21,x22
    p.sw x20,0(x2)
insn_loop75:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop76
    lw x22,0(x1)
    lw x23,4(x1)
    addi x1,x1,4
    p.adduRNr x21,x22,x23
    p.sw x21,0(x2)
insn_loop76:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop77
    lw x23,0(x1)
    lw x24,4(x1)
    addi x1,x1,4
    p.subNr x22,x23,x24
    p.sw x22,0(x2)
insn_loop77:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop78
    lw x24,0(x1)
    lw x25,4(x1)
    addi x1,x1,4
    p.subuNr x23,x24,x25
    p.sw x23,0(x2)
insn_loop78:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop79
    lw x25,0(x1)
    lw x26,4(x1)
    addi x1,x1,4
    p.subRNr x24,x25,x26
    p.sw x24,0(x2)
insn_loop79:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,64,insn_loop80
    lw x26,0(x1)
    lw x27,4(x1)
    addi x1,x1,4
    p.subuRNr x25,x26,x27
    p.sw x25,0(x2)
insn_loop80:
    addi x2,x2,4

#endif
    # }}}

    ##################################################
    ##    MAC Extension
    ##################################################
    # {{{
#ifdef RVCY_MAC_TEST

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop81
    lw x27,0(x1)
    lw x28,4(x1)
    addi x1,x1,4
    p.mac x26,x27,x28
    p.sw x26,0(x2)
insn_loop81:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop82
    lw x28,0(x1)
    lw x29,4(x1)
    addi x1,x1,4
    p.msu x27,x28,x29
    p.sw x27,0(x2)
insn_loop82:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop83
    lw x29,0(x1)
    lw x30,4(x1)
    addi x1,x1,4
    p.muls x28,x29,x30
    p.sw x28,0(x2)
insn_loop83:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop84
    lw x30,0(x1)
    lw x31,4(x1)
    addi x1,x1,4
    p.mulhhs x29,x30,x31
    p.sw x29,0(x2)
insn_loop84:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop85
    lw x31,0(x1)
    lw x3,4(x1)
    addi x1,x1,4
    p.mulsN x30,x31,x3,30
    p.sw x30,0(x2)
insn_loop85:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop86
    lw x3,0(x1)
    lw x4,4(x1)
    addi x1,x1,4
    p.mulhhsN x31,x3,x4,17
    p.sw x31,0(x2)
insn_loop86:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop87
    lw x4,0(x1)
    lw x5,4(x1)
    addi x1,x1,4
    p.mulsRN x3,x4,x5,20
    p.sw x3,0(x2)
insn_loop87:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop88
    lw x5,0(x1)
    lw x6,4(x1)
    addi x1,x1,4
    p.mulhhsRN x4,x5,x6,30
    p.sw x4,0(x2)
insn_loop88:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop89
    lw x6,0(x1)
    lw x7,4(x1)
    addi x1,x1,4
    p.mulu x5,x6,x7
    p.sw x5,0(x2)
insn_loop89:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop90
    lw x7,0(x1)
    lw x8,4(x1)
    addi x1,x1,4
    p.mulhhu x6,x7,x8
    p.sw x6,0(x2)
insn_loop90:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop91
    lw x8,0(x1)
    lw x9,4(x1)
    addi x1,x1,4
    p.muluN x7,x8,x9,10
    p.sw x7,0(x2)
insn_loop91:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop92
    lw x9,0(x1)
    lw x10,4(x1)
    addi x1,x1,4
    p.mulhhuN x8,x9,x10,18
    p.sw x8,0(x2)
insn_loop92:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop93
    lw x10,0(x1)
    lw x11,4(x1)
    addi x1,x1,4
    p.muluRN x9,x10,x11,1
    p.sw x9,0(x2)
insn_loop93:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop94
    lw x11,0(x1)
    lw x12,4(x1)
    addi x1,x1,4
    p.mulhhuRN x10,x11,x12,26
    p.sw x10,0(x2)
insn_loop94:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop95
    lw x12,0(x1)
    lw x13,4(x1)
    addi x1,x1,4
    p.macsN x11,x12,x13,14
    p.sw x11,0(x2)
insn_loop95:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop96
    lw x13,0(x1)
    lw x14,4(x1)
    addi x1,x1,4
    p.machhsN x12,x13,x14,23
    p.sw x12,0(x2)
insn_loop96:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop97
    lw x14,0(x1)
    lw x15,4(x1)
    addi x1,x1,4
    p.macsRN x13,x14,x15,21
    p.sw x13,0(x2)
insn_loop97:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop98
    lw x15,0(x1)
    lw x16,4(x1)
    addi x1,x1,4
    p.machhsRN x14,x15,x16,22
    p.sw x14,0(x2)
insn_loop98:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop99
    lw x16,0(x1)
    lw x17,4(x1)
    addi x1,x1,4
    p.macuN x15,x16,x17,27
    p.sw x15,0(x2)
insn_loop99:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop100
    lw x17,0(x1)
    lw x18,4(x1)
    addi x1,x1,4
    p.machhuN x16,x17,x18,9
    p.sw x16,0(x2)
insn_loop100:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop101
    lw x18,0(x1)
    lw x19,4(x1)
    addi x1,x1,4
    p.macuRN x17,x18,x19,25
    p.sw x17,0(x2)
insn_loop101:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop102
    lw x19,0(x1)
    lw x20,4(x1)
    addi x1,x1,4
    p.machhuRN x18,x19,x20,7
    p.sw x18,0(x2)
insn_loop102:
    addi x2,x2,4

#endif
    # }}}

    ##################################################
    ##    Vectorial Extension
    ##################################################
    # {{{
#ifdef RVCY_VEC1_TEST

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop103
    lw x20,0(x1)
    lw x21,4(x1)
    addi x1,x1,4
    pv.add.h x19,x20,x21
    p.sw x19,0(x2)
insn_loop103:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop104
    lw x21,0(x1)
    lw x22,4(x1)
    addi x1,x1,4
    pv.add.sc.h x20,x21,x22
    p.sw x20,0(x2)
insn_loop104:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop105
    lw x22,0(x1)
    addi x1,x1,4
    pv.add.sci.h x21,x22,26
    p.sw x21,0(x2)
insn_loop105:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop106
    lw x23,0(x1)
    lw x24,4(x1)
    addi x1,x1,4
    pv.add.b x22,x23,x24
    p.sw x22,0(x2)
insn_loop106:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop107
    lw x24,0(x1)
    lw x25,4(x1)
    addi x1,x1,4
    pv.add.sc.b x23,x24,x25
    p.sw x23,0(x2)
insn_loop107:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop108
    lw x25,0(x1)
    addi x1,x1,4
    pv.add.sci.b x24,x25,-10
    p.sw x24,0(x2)
insn_loop108:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop109
    lw x26,0(x1)
    lw x27,4(x1)
    addi x1,x1,4
    pv.sub.h x25,x26,x27
    p.sw x25,0(x2)
insn_loop109:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop110
    lw x27,0(x1)
    lw x28,4(x1)
    addi x1,x1,4
    pv.sub.sc.h x26,x27,x28
    p.sw x26,0(x2)
insn_loop110:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop111
    lw x28,0(x1)
    addi x1,x1,4
    pv.sub.sci.h x27,x28,17
    p.sw x27,0(x2)
insn_loop111:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop112
    lw x29,0(x1)
    lw x30,4(x1)
    addi x1,x1,4
    pv.sub.b x28,x29,x30
    p.sw x28,0(x2)
insn_loop112:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop113
    lw x30,0(x1)
    lw x31,4(x1)
    addi x1,x1,4
    pv.sub.sc.b x29,x30,x31
    p.sw x29,0(x2)
insn_loop113:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop114
    lw x31,0(x1)
    addi x1,x1,4
    pv.sub.sci.b x30,x31,-31
    p.sw x30,0(x2)
insn_loop114:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop115
    lw x3,0(x1)
    lw x4,4(x1)
    addi x1,x1,4
    pv.avg.h x31,x3,x4
    p.sw x31,0(x2)
insn_loop115:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop116
    lw x4,0(x1)
    lw x5,4(x1)
    addi x1,x1,4
    pv.avg.sc.h x3,x4,x5
    p.sw x3,0(x2)
insn_loop116:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop117
    lw x5,0(x1)
    addi x1,x1,4
    pv.avg.sci.h x4,x5,9
    p.sw x4,0(x2)
insn_loop117:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop118
    lw x6,0(x1)
    lw x7,4(x1)
    addi x1,x1,4
    pv.avg.b x5,x6,x7
    p.sw x5,0(x2)
insn_loop118:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop119
    lw x7,0(x1)
    lw x8,4(x1)
    addi x1,x1,4
    pv.avg.sc.b x6,x7,x8
    p.sw x6,0(x2)
insn_loop119:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop120
    lw x8,0(x1)
    addi x1,x1,4
    pv.avg.sci.b x7,x8,-21
    p.sw x7,0(x2)
insn_loop120:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop121
    lw x9,0(x1)
    lw x10,4(x1)
    addi x1,x1,4
    pv.avgu.h x8,x9,x10
    p.sw x8,0(x2)
insn_loop121:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop122
    lw x10,0(x1)
    lw x11,4(x1)
    addi x1,x1,4
    pv.avgu.sc.h x9,x10,x11
    p.sw x9,0(x2)
insn_loop122:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop123
    lw x11,0(x1)
    addi x1,x1,4
    pv.avgu.sci.h x10,x11,53
    p.sw x10,0(x2)
insn_loop123:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop124
    lw x12,0(x1)
    lw x13,4(x1)
    addi x1,x1,4
    pv.avgu.b x11,x12,x13
    p.sw x11,0(x2)
insn_loop124:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop125
    lw x13,0(x1)
    lw x14,4(x1)
    addi x1,x1,4
    pv.avgu.sc.b x12,x13,x14
    p.sw x12,0(x2)
insn_loop125:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop126
    lw x14,0(x1)
    addi x1,x1,4
    pv.avgu.sci.b x13,x14,43
    p.sw x13,0(x2)
insn_loop126:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop127
    lw x15,0(x1)
    lw x16,4(x1)
    addi x1,x1,4
    pv.min.h x14,x15,x16
    p.sw x14,0(x2)
insn_loop127:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop128
    lw x16,0(x1)
    lw x17,4(x1)
    addi x1,x1,4
    pv.min.sc.h x15,x16,x17
    p.sw x15,0(x2)
insn_loop128:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop129
    lw x17,0(x1)
    addi x1,x1,4
    pv.min.sci.h x16,x17,3
    p.sw x16,0(x2)
insn_loop129:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop130
    lw x18,0(x1)
    lw x19,4(x1)
    addi x1,x1,4
    pv.min.b x17,x18,x19
    p.sw x17,0(x2)
insn_loop130:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop131
    lw x19,0(x1)
    lw x20,4(x1)
    addi x1,x1,4
    pv.min.sc.b x18,x19,x20
    p.sw x18,0(x2)
insn_loop131:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop132
    lw x20,0(x1)
    addi x1,x1,4
    pv.min.sci.b x19,x20,5
    p.sw x19,0(x2)
insn_loop132:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop133
    lw x21,0(x1)
    lw x22,4(x1)
    addi x1,x1,4
    pv.minu.h x20,x21,x22
    p.sw x20,0(x2)
insn_loop133:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop134
    lw x22,0(x1)
    lw x23,4(x1)
    addi x1,x1,4
    pv.minu.sc.h x21,x22,x23
    p.sw x21,0(x2)
insn_loop134:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop135
    lw x23,0(x1)
    addi x1,x1,4
    pv.minu.sci.h x22,x23,20
    p.sw x22,0(x2)
insn_loop135:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop136
    lw x24,0(x1)
    lw x25,4(x1)
    addi x1,x1,4
    pv.minu.b x23,x24,x25
    p.sw x23,0(x2)
insn_loop136:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop137
    lw x25,0(x1)
    lw x26,4(x1)
    addi x1,x1,4
    pv.minu.sc.b x24,x25,x26
    p.sw x24,0(x2)
insn_loop137:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop138
    lw x26,0(x1)
    addi x1,x1,4
    pv.minu.sci.b x25,x26,31
    p.sw x25,0(x2)
insn_loop138:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop139
    lw x27,0(x1)
    lw x28,4(x1)
    addi x1,x1,4
    pv.max.h x26,x27,x28
    p.sw x26,0(x2)
insn_loop139:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop140
    lw x28,0(x1)
    lw x29,4(x1)
    addi x1,x1,4
    pv.max.sc.h x27,x28,x29
    p.sw x27,0(x2)
insn_loop140:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop141
    lw x29,0(x1)
    addi x1,x1,4
    pv.max.sci.h x28,x29,0
    p.sw x28,0(x2)
insn_loop141:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop142
    lw x30,0(x1)
    lw x31,4(x1)
    addi x1,x1,4
    pv.max.b x29,x30,x31
    p.sw x29,0(x2)
insn_loop142:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop143
    lw x31,0(x1)
    lw x3,4(x1)
    addi x1,x1,4
    pv.max.sc.b x30,x31,x3
    p.sw x30,0(x2)
insn_loop143:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop144
    lw x3,0(x1)
    addi x1,x1,4
    pv.max.sci.b x31,x3,-10
    p.sw x31,0(x2)
insn_loop144:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop145
    lw x4,0(x1)
    lw x5,4(x1)
    addi x1,x1,4
    pv.maxu.h x3,x4,x5
    p.sw x3,0(x2)
insn_loop145:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop146
    lw x5,0(x1)
    lw x6,4(x1)
    addi x1,x1,4
    pv.maxu.sc.h x4,x5,x6
    p.sw x4,0(x2)
insn_loop146:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop147
    lw x6,0(x1)
    addi x1,x1,4
    pv.maxu.sci.h x5,x6,38
    p.sw x5,0(x2)
insn_loop147:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop148
    lw x7,0(x1)
    lw x8,4(x1)
    addi x1,x1,4
    pv.maxu.b x6,x7,x8
    p.sw x6,0(x2)
insn_loop148:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop149
    lw x8,0(x1)
    lw x9,4(x1)
    addi x1,x1,4
    pv.maxu.sc.b x7,x8,x9
    p.sw x7,0(x2)
insn_loop149:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop150
    lw x9,0(x1)
    addi x1,x1,4
    pv.maxu.sci.b x8,x9,15
    p.sw x8,0(x2)
insn_loop150:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop151
    lw x10,0(x1)
    lw x11,4(x1)
    addi x1,x1,4
    pv.srl.h x9,x10,x11
    p.sw x9,0(x2)
insn_loop151:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop152
    lw x11,0(x1)
    lw x12,4(x1)
    addi x1,x1,4
    pv.srl.sc.h x10,x11,x12
    p.sw x10,0(x2)
insn_loop152:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop153
    lw x12,0(x1)
    addi x1,x1,4
    pv.srl.sci.h x11,x12,20
    p.sw x11,0(x2)
insn_loop153:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop154
    lw x13,0(x1)
    lw x14,4(x1)
    addi x1,x1,4
    pv.srl.b x12,x13,x14
    p.sw x12,0(x2)
insn_loop154:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop155
    lw x14,0(x1)
    lw x15,4(x1)
    addi x1,x1,4
    pv.srl.sc.b x13,x14,x15
    p.sw x13,0(x2)
insn_loop155:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop156
    lw x15,0(x1)
    addi x1,x1,4
    pv.srl.sci.b x14,x15,5
    p.sw x14,0(x2)
insn_loop156:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop157
    lw x16,0(x1)
    lw x17,4(x1)
    addi x1,x1,4
    pv.sra.h x15,x16,x17
    p.sw x15,0(x2)
insn_loop157:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop158
    lw x17,0(x1)
    lw x18,4(x1)
    addi x1,x1,4
    pv.sra.sc.h x16,x17,x18
    p.sw x16,0(x2)
insn_loop158:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop159
    lw x18,0(x1)
    addi x1,x1,4
    pv.sra.sci.h x17,x18,4
    p.sw x17,0(x2)
insn_loop159:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop160
    lw x19,0(x1)
    lw x20,4(x1)
    addi x1,x1,4
    pv.sra.b x18,x19,x20
    p.sw x18,0(x2)
insn_loop160:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop161
    lw x20,0(x1)
    lw x21,4(x1)
    addi x1,x1,4
    pv.sra.sc.b x19,x20,x21
    p.sw x19,0(x2)
insn_loop161:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop162
    lw x21,0(x1)
    addi x1,x1,4
    pv.sra.sci.b x20,x21,5
    p.sw x20,0(x2)
insn_loop162:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop163
    lw x22,0(x1)
    lw x23,4(x1)
    addi x1,x1,4
    pv.sll.h x21,x22,x23
    p.sw x21,0(x2)
insn_loop163:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop164
    lw x23,0(x1)
    lw x24,4(x1)
    addi x1,x1,4
    pv.sll.sc.h x22,x23,x24
    p.sw x22,0(x2)
insn_loop164:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop165
    lw x24,0(x1)
    addi x1,x1,4
    pv.sll.sci.h x23,x24,1
    p.sw x23,0(x2)
insn_loop165:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop166
    lw x25,0(x1)
    lw x26,4(x1)
    addi x1,x1,4
    pv.sll.b x24,x25,x26
    p.sw x24,0(x2)
insn_loop166:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop167
    lw x26,0(x1)
    lw x27,4(x1)
    addi x1,x1,4
    pv.sll.sc.b x25,x26,x27
    p.sw x25,0(x2)
insn_loop167:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop168
    lw x27,0(x1)
    addi x1,x1,4
    pv.sll.sci.b x26,x27,26
    p.sw x26,0(x2)
insn_loop168:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop169
    lw x28,0(x1)
    lw x29,4(x1)
    addi x1,x1,4
    pv.or.h x27,x28,x29
    p.sw x27,0(x2)
insn_loop169:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop170
    lw x29,0(x1)
    lw x30,4(x1)
    addi x1,x1,4
    pv.or.sc.h x28,x29,x30
    p.sw x28,0(x2)
insn_loop170:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop171
    lw x30,0(x1)
    addi x1,x1,4
    pv.or.sci.h x29,x30,18
    p.sw x29,0(x2)
insn_loop171:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop172
    lw x31,0(x1)
    lw x3,4(x1)
    addi x1,x1,4
    pv.or.b x30,x31,x3
    p.sw x30,0(x2)
insn_loop172:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop173
    lw x3,0(x1)
    lw x4,4(x1)
    addi x1,x1,4
    pv.or.sc.b x31,x3,x4
    p.sw x31,0(x2)
insn_loop173:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop174
    lw x4,0(x1)
    addi x1,x1,4
    pv.or.sci.b x3,x4,28
    p.sw x3,0(x2)
insn_loop174:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop175
    lw x5,0(x1)
    lw x6,4(x1)
    addi x1,x1,4
    pv.xor.h x4,x5,x6
    p.sw x4,0(x2)
insn_loop175:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop176
    lw x6,0(x1)
    lw x7,4(x1)
    addi x1,x1,4
    pv.xor.sc.h x5,x6,x7
    p.sw x5,0(x2)
insn_loop176:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop177
    lw x7,0(x1)
    addi x1,x1,4
    pv.xor.sci.h x6,x7,-10
    p.sw x6,0(x2)
insn_loop177:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop178
    lw x8,0(x1)
    lw x9,4(x1)
    addi x1,x1,4
    pv.xor.b x7,x8,x9
    p.sw x7,0(x2)
insn_loop178:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop179
    lw x9,0(x1)
    lw x10,4(x1)
    addi x1,x1,4
    pv.xor.sc.b x8,x9,x10
    p.sw x8,0(x2)
insn_loop179:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop180
    lw x10,0(x1)
    addi x1,x1,4
    pv.xor.sci.b x9,x10,31
    p.sw x9,0(x2)
insn_loop180:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop181
    lw x11,0(x1)
    lw x12,4(x1)
    addi x1,x1,4
    pv.and.h x10,x11,x12
    p.sw x10,0(x2)
insn_loop181:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop182
    lw x12,0(x1)
    lw x13,4(x1)
    addi x1,x1,4
    pv.and.sc.h x11,x12,x13
    p.sw x11,0(x2)
insn_loop182:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop183
    lw x13,0(x1)
    addi x1,x1,4
    pv.and.sci.h x12,x13,28
    p.sw x12,0(x2)
insn_loop183:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop184
    lw x14,0(x1)
    lw x15,4(x1)
    addi x1,x1,4
    pv.and.b x13,x14,x15
    p.sw x13,0(x2)
insn_loop184:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop185
    lw x15,0(x1)
    lw x16,4(x1)
    addi x1,x1,4
    pv.and.sc.b x14,x15,x16
    p.sw x14,0(x2)
insn_loop185:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop186
    lw x16,0(x1)
    addi x1,x1,4
    pv.and.sci.b x15,x16,12
    p.sw x15,0(x2)
insn_loop186:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop187
    lw x17,0(x1)
    addi x1,x1,4
    pv.abs.h x16,x17
    p.sw x16,0(x2)
insn_loop187:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop188
    lw x18,0(x1)
    addi x1,x1,4
    pv.abs.b x17,x18
    p.sw x17,0(x2)
insn_loop188:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop189
    lw x19,0(x1)
    lw x20,4(x1)
    addi x1,x1,4
    pv.dotup.h x18,x19,x20
    p.sw x18,0(x2)
insn_loop189:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop190
    lw x20,0(x1)
    lw x21,4(x1)
    addi x1,x1,4
    pv.dotup.sc.h x19,x20,x21
    p.sw x19,0(x2)
insn_loop190:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop191
    lw x21,0(x1)
    addi x1,x1,4
    pv.dotup.sci.h x20,x21,6
    p.sw x20,0(x2)
insn_loop191:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop192
    lw x22,0(x1)
    lw x23,4(x1)
    addi x1,x1,4
    pv.dotup.b x21,x22,x23
    p.sw x21,0(x2)
insn_loop192:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop193
    lw x23,0(x1)
    lw x24,4(x1)
    addi x1,x1,4
    pv.dotup.sc.b x22,x23,x24
    p.sw x22,0(x2)
insn_loop193:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop194
    lw x24,0(x1)
    addi x1,x1,4
    pv.dotup.sci.b x23,x24,35
    p.sw x23,0(x2)
insn_loop194:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop195
    lw x25,0(x1)
    lw x26,4(x1)
    addi x1,x1,4
    pv.dotusp.h x24,x25,x26
    p.sw x24,0(x2)
insn_loop195:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop196
    lw x26,0(x1)
    lw x27,4(x1)
    addi x1,x1,4
    pv.dotusp.sc.h x25,x26,x27
    p.sw x25,0(x2)
insn_loop196:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop197
    lw x27,0(x1)
    addi x1,x1,4
    pv.dotusp.sci.h x26,x27,14
    p.sw x26,0(x2)
insn_loop197:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop198
    lw x28,0(x1)
    lw x29,4(x1)
    addi x1,x1,4
    pv.dotusp.b x27,x28,x29
    p.sw x27,0(x2)
insn_loop198:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop199
    lw x29,0(x1)
    lw x30,4(x1)
    addi x1,x1,4
    pv.dotusp.sc.b x28,x29,x30
    p.sw x28,0(x2)
insn_loop199:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop200
    lw x30,0(x1)
    addi x1,x1,4
    pv.dotusp.sci.b x29,x30,8
    p.sw x29,0(x2)
insn_loop200:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop201
    lw x31,0(x1)
    lw x3,4(x1)
    addi x1,x1,4
    pv.dotsp.h x30,x31,x3
    p.sw x30,0(x2)
insn_loop201:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop202
    lw x3,0(x1)
    lw x4,4(x1)
    addi x1,x1,4
    pv.dotsp.sc.h x31,x3,x4
    p.sw x31,0(x2)
insn_loop202:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop203
    lw x4,0(x1)
    addi x1,x1,4
    pv.dotsp.sci.h x3,x4,-15
    p.sw x3,0(x2)
insn_loop203:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop204
    lw x5,0(x1)
    lw x6,4(x1)
    addi x1,x1,4
    pv.dotsp.b x4,x5,x6
    p.sw x4,0(x2)
insn_loop204:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop205
    lw x6,0(x1)
    lw x7,4(x1)
    addi x1,x1,4
    pv.dotsp.sc.b x5,x6,x7
    p.sw x5,0(x2)
insn_loop205:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop206
    lw x7,0(x1)
    addi x1,x1,4
    pv.dotsp.sci.b x6,x7,7
    p.sw x6,0(x2)
insn_loop206:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop207
    lw x8,0(x1)
    lw x9,4(x1)
    addi x1,x1,4
    pv.sdotup.h x7,x8,x9
    p.sw x7,0(x2)
insn_loop207:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop208
    lw x9,0(x1)
    lw x10,4(x1)
    addi x1,x1,4
    pv.sdotup.sc.h x8,x9,x10
    p.sw x8,0(x2)
insn_loop208:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop209
    lw x10,0(x1)
    addi x1,x1,4
    pv.sdotup.sci.h x9,x10,28
    p.sw x9,0(x2)
insn_loop209:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop210
    lw x11,0(x1)
    lw x12,4(x1)
    addi x1,x1,4
    pv.sdotup.b x10,x11,x12
    p.sw x10,0(x2)
insn_loop210:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop211
    lw x12,0(x1)
    lw x13,4(x1)
    addi x1,x1,4
    pv.sdotup.sc.b x11,x12,x13
    p.sw x11,0(x2)
insn_loop211:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop212
    lw x13,0(x1)
    addi x1,x1,4
    pv.sdotup.sci.b x12,x13,41
    p.sw x12,0(x2)
insn_loop212:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop213
    lw x14,0(x1)
    lw x15,4(x1)
    addi x1,x1,4
    pv.sdotusp.h x13,x14,x15
    p.sw x13,0(x2)
insn_loop213:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop214
    lw x15,0(x1)
    lw x16,4(x1)
    addi x1,x1,4
    pv.sdotusp.sc.h x14,x15,x16
    p.sw x14,0(x2)
insn_loop214:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop215
    lw x16,0(x1)
    addi x1,x1,4
    pv.sdotusp.sci.h x15,x16,28
    p.sw x15,0(x2)
insn_loop215:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop216
    lw x17,0(x1)
    lw x18,4(x1)
    addi x1,x1,4
    pv.sdotusp.b x16,x17,x18
    p.sw x16,0(x2)
insn_loop216:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop217
    lw x18,0(x1)
    lw x19,4(x1)
    addi x1,x1,4
    pv.sdotusp.sc.b x17,x18,x19
    p.sw x17,0(x2)
insn_loop217:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop218
    lw x19,0(x1)
    addi x1,x1,4
    pv.sdotusp.sci.b x18,x19,1
    p.sw x18,0(x2)
insn_loop218:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop219
    lw x20,0(x1)
    lw x21,4(x1)
    addi x1,x1,4
    pv.sdotsp.h x19,x20,x21
    p.sw x19,0(x2)
insn_loop219:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop220
    lw x21,0(x1)
    lw x22,4(x1)
    addi x1,x1,4
    pv.sdotsp.sc.h x20,x21,x22
    p.sw x20,0(x2)
insn_loop220:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop221
    lw x22,0(x1)
    addi x1,x1,4
    pv.sdotsp.sci.h x21,x22,-5
    p.sw x21,0(x2)
insn_loop221:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop222
    lw x23,0(x1)
    lw x24,4(x1)
    addi x1,x1,4
    pv.sdotsp.b x22,x23,x24
    p.sw x22,0(x2)
insn_loop222:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop223
    lw x24,0(x1)
    lw x25,4(x1)
    addi x1,x1,4
    pv.sdotsp.sc.b x23,x24,x25
    p.sw x23,0(x2)
insn_loop223:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop224
    lw x25,0(x1)
    addi x1,x1,4
    pv.sdotsp.sci.b x24,x25,16
    p.sw x24,0(x2)
insn_loop224:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop225
    lw x26,0(x1)
    lw x27,4(x1)
    addi x1,x1,4
    pv.shuffle.h x25,x26,x27
    p.sw x25,0(x2)
insn_loop225:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop226
    lw x27,0(x1)
    addi x1,x1,4
    pv.shuffle.sci.h x26,x27,25
    p.sw x26,0(x2)
insn_loop226:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop227
    lw x28,0(x1)
    lw x29,4(x1)
    addi x1,x1,4
    pv.shuffle.b x27,x28,x29
    p.sw x27,0(x2)
insn_loop227:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop228
    lw x29,0(x1)
    addi x1,x1,4
    pv.shuffleI0.sci.b x28,x29,57
    p.sw x28,0(x2)
insn_loop228:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop229
    lw x30,0(x1)
    addi x1,x1,4
    pv.shuffleI1.sci.b x29,x30,60
    p.sw x29,0(x2)
insn_loop229:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop230
    lw x31,0(x1)
    addi x1,x1,4
    pv.shuffleI2.sci.b x30,x31,0
    p.sw x30,0(x2)
insn_loop230:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop231
    lw x3,0(x1)
    addi x1,x1,4
    pv.shuffleI3.sci.b x31,x3,26
    p.sw x31,0(x2)
insn_loop231:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop232
    lw x4,0(x1)
    lw x5,4(x1)
    addi x1,x1,4
    pv.shuffle2.h x3,x4,x5
    p.sw x3,0(x2)
insn_loop232:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop233
    lw x5,0(x1)
    lw x6,4(x1)
    addi x1,x1,4
    pv.shuffle2.b x4,x5,x6
    p.sw x4,0(x2)
insn_loop233:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop234
    lw x6,0(x1)
    lw x7,4(x1)
    addi x1,x1,4
    pv.pack.h x5,x6,x7
    p.sw x5,0(x2)
insn_loop234:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop235
    lw x7,0(x1)
    lw x8,4(x1)
    addi x1,x1,4
    pv.packhi.b x6,x7,x8
    p.sw x6,0(x2)
insn_loop235:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop236
    lw x8,0(x1)
    lw x9,4(x1)
    addi x1,x1,4
    pv.packlo.b x7,x8,x9
    p.sw x7,0(x2)
insn_loop236:
    addi x2,x2,4

#endif
    # }}}

    ##################################################
    ##    Vectorial Comparison Extension
    ##################################################
    # {{{
#ifdef RVCY_VEC2_TEST

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop237
    lw x9,0(x1)
    lw x10,4(x1)
    addi x1,x1,4
    pv.cmpeq.h x8,x9,x10
    p.sw x8,0(x2)
insn_loop237:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop238
    lw x10,0(x1)
    lw x11,4(x1)
    addi x1,x1,4
    pv.cmpeq.sc.h x9,x10,x11
    p.sw x9,0(x2)
insn_loop238:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop239
    lw x11,0(x1)
    addi x1,x1,4
    pv.cmpeq.sci.h x10,x11,31
    p.sw x10,0(x2)
insn_loop239:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop240
    lw x12,0(x1)
    lw x13,4(x1)
    addi x1,x1,4
    pv.cmpeq.b x11,x12,x13
    p.sw x11,0(x2)
insn_loop240:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop241
    lw x13,0(x1)
    lw x14,4(x1)
    addi x1,x1,4
    pv.cmpeq.sc.b x12,x13,x14
    p.sw x12,0(x2)
insn_loop241:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop242
    lw x14,0(x1)
    addi x1,x1,4
    pv.cmpne.sci.b x13,x14,30
    p.sw x13,0(x2)
insn_loop242:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop243
    lw x15,0(x1)
    lw x16,4(x1)
    addi x1,x1,4
    pv.cmpne.h x14,x15,x16
    p.sw x14,0(x2)
insn_loop243:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop244
    lw x16,0(x1)
    lw x17,4(x1)
    addi x1,x1,4
    pv.cmpne.sc.h x15,x16,x17
    p.sw x15,0(x2)
insn_loop244:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop245
    lw x17,0(x1)
    addi x1,x1,4
    pv.cmpne.sci.h x16,x17,7
    p.sw x16,0(x2)
insn_loop245:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop246
    lw x18,0(x1)
    lw x19,4(x1)
    addi x1,x1,4
    pv.cmpne.b x17,x18,x19
    p.sw x17,0(x2)
insn_loop246:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop247
    lw x19,0(x1)
    lw x20,4(x1)
    addi x1,x1,4
    pv.cmpne.sc.b x18,x19,x20
    p.sw x18,0(x2)
insn_loop247:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop248
    lw x20,0(x1)
    addi x1,x1,4
    pv.cmpne.sci.b x19,x20,0
    p.sw x19,0(x2)
insn_loop248:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop249
    lw x21,0(x1)
    lw x22,4(x1)
    addi x1,x1,4
    pv.cmpgt.h x20,x21,x22
    p.sw x20,0(x2)
insn_loop249:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop250
    lw x22,0(x1)
    lw x23,4(x1)
    addi x1,x1,4
    pv.cmpgt.sc.h x21,x22,x23
    p.sw x21,0(x2)
insn_loop250:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop251
    lw x23,0(x1)
    addi x1,x1,4
    pv.cmpgt.sci.h x22,x23,16
    p.sw x22,0(x2)
insn_loop251:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop252
    lw x24,0(x1)
    lw x25,4(x1)
    addi x1,x1,4
    pv.cmpgt.b x23,x24,x25
    p.sw x23,0(x2)
insn_loop252:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop253
    lw x25,0(x1)
    lw x26,4(x1)
    addi x1,x1,4
    pv.cmpgt.sc.b x24,x25,x26
    p.sw x24,0(x2)
insn_loop253:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop254
    lw x26,0(x1)
    addi x1,x1,4
    pv.cmpgt.sci.b x25,x26,9
    p.sw x25,0(x2)
insn_loop254:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop255
    lw x27,0(x1)
    lw x28,4(x1)
    addi x1,x1,4
    pv.cmpge.h x26,x27,x28
    p.sw x26,0(x2)
insn_loop255:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop256
    lw x28,0(x1)
    lw x29,4(x1)
    addi x1,x1,4
    pv.cmpge.sc.h x27,x28,x29
    p.sw x27,0(x2)
insn_loop256:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop257
    lw x29,0(x1)
    addi x1,x1,4
    pv.cmpge.sci.h x28,x29,13
    p.sw x28,0(x2)
insn_loop257:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop258
    lw x30,0(x1)
    lw x31,4(x1)
    addi x1,x1,4
    pv.cmpge.b x29,x30,x31
    p.sw x29,0(x2)
insn_loop258:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop259
    lw x31,0(x1)
    lw x3,4(x1)
    addi x1,x1,4
    pv.cmpge.sc.b x30,x31,x3
    p.sw x30,0(x2)
insn_loop259:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop260
    lw x3,0(x1)
    addi x1,x1,4
    pv.cmpge.sci.b x31,x3,31
    p.sw x31,0(x2)
insn_loop260:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop261
    lw x4,0(x1)
    lw x5,4(x1)
    addi x1,x1,4
    pv.cmplt.h x3,x4,x5
    p.sw x3,0(x2)
insn_loop261:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop262
    lw x5,0(x1)
    lw x6,4(x1)
    addi x1,x1,4
    pv.cmplt.sc.h x4,x5,x6
    p.sw x4,0(x2)
insn_loop262:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop263
    lw x6,0(x1)
    addi x1,x1,4
    pv.cmplt.sci.h x5,x6,23
    p.sw x5,0(x2)
insn_loop263:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop264
    lw x7,0(x1)
    lw x8,4(x1)
    addi x1,x1,4
    pv.cmplt.b x6,x7,x8
    p.sw x6,0(x2)
insn_loop264:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop265
    lw x8,0(x1)
    lw x9,4(x1)
    addi x1,x1,4
    pv.cmplt.sc.b x7,x8,x9
    p.sw x7,0(x2)
insn_loop265:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop266
    lw x9,0(x1)
    addi x1,x1,4
    pv.cmplt.sci.b x8,x9,11
    p.sw x8,0(x2)
insn_loop266:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop267
    lw x10,0(x1)
    lw x11,4(x1)
    addi x1,x1,4
    pv.cmple.h x9,x10,x11
    p.sw x9,0(x2)
insn_loop267:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop268
    lw x11,0(x1)
    lw x12,4(x1)
    addi x1,x1,4
    pv.cmple.sc.h x10,x11,x12
    p.sw x10,0(x2)
insn_loop268:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop269
    lw x12,0(x1)
    addi x1,x1,4
    pv.cmple.sci.h x11,x12,2
    p.sw x11,0(x2)
insn_loop269:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop270
    lw x13,0(x1)
    lw x14,4(x1)
    addi x1,x1,4
    pv.cmple.b x12,x13,x14
    p.sw x12,0(x2)
insn_loop270:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop271
    lw x14,0(x1)
    lw x15,4(x1)
    addi x1,x1,4
    pv.cmple.sc.b x13,x14,x15
    p.sw x13,0(x2)
insn_loop271:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop272
    lw x15,0(x1)
    addi x1,x1,4
    pv.cmple.sci.b x14,x15,26
    p.sw x14,0(x2)
insn_loop272:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop273
    lw x16,0(x1)
    lw x17,4(x1)
    addi x1,x1,4
    pv.cmpgtu.h x15,x16,x17
    p.sw x15,0(x2)
insn_loop273:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop274
    lw x17,0(x1)
    lw x18,4(x1)
    addi x1,x1,4
    pv.cmpgtu.sc.h x16,x17,x18
    p.sw x16,0(x2)
insn_loop274:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop275
    lw x18,0(x1)
    addi x1,x1,4
    pv.cmpgtu.sci.h x17,x18,29
    p.sw x17,0(x2)
insn_loop275:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop276
    lw x19,0(x1)
    lw x20,4(x1)
    addi x1,x1,4
    pv.cmpgtu.b x18,x19,x20
    p.sw x18,0(x2)
insn_loop276:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop277
    lw x20,0(x1)
    lw x21,4(x1)
    addi x1,x1,4
    pv.cmpgtu.sc.b x19,x20,x21
    p.sw x19,0(x2)
insn_loop277:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop278
    lw x21,0(x1)
    addi x1,x1,4
    pv.cmpgtu.sci.b x20,x21,1
    p.sw x20,0(x2)
insn_loop278:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop279
    lw x22,0(x1)
    lw x23,4(x1)
    addi x1,x1,4
    pv.cmpgeu.h x21,x22,x23
    p.sw x21,0(x2)
insn_loop279:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop280
    lw x23,0(x1)
    lw x24,4(x1)
    addi x1,x1,4
    pv.cmpgeu.sc.h x22,x23,x24
    p.sw x22,0(x2)
insn_loop280:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop281
    lw x24,0(x1)
    addi x1,x1,4
    pv.cmpgeu.sci.h x23,x24,29
    p.sw x23,0(x2)
insn_loop281:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop282
    lw x25,0(x1)
    lw x26,4(x1)
    addi x1,x1,4
    pv.cmpgeu.b x24,x25,x26
    p.sw x24,0(x2)
insn_loop282:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop283
    lw x26,0(x1)
    lw x27,4(x1)
    addi x1,x1,4
    pv.cmpgeu.sc.b x25,x26,x27
    p.sw x25,0(x2)
insn_loop283:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop284
    lw x27,0(x1)
    addi x1,x1,4
    pv.cmpgeu.sci.b x26,x27,30
    p.sw x26,0(x2)
insn_loop284:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop285
    lw x28,0(x1)
    lw x29,4(x1)
    addi x1,x1,4
    pv.cmpltu.h x27,x28,x29
    p.sw x27,0(x2)
insn_loop285:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop286
    lw x29,0(x1)
    lw x30,4(x1)
    addi x1,x1,4
    pv.cmpltu.sc.h x28,x29,x30
    p.sw x28,0(x2)
insn_loop286:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop287
    lw x30,0(x1)
    addi x1,x1,4
    pv.cmpltu.sci.h x29,x30,0
    p.sw x29,0(x2)
insn_loop287:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop288
    lw x31,0(x1)
    lw x3,4(x1)
    addi x1,x1,4
    pv.cmpltu.b x30,x31,x3
    p.sw x30,0(x2)
insn_loop288:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop289
    lw x3,0(x1)
    lw x4,4(x1)
    addi x1,x1,4
    pv.cmpltu.sc.b x31,x3,x4
    p.sw x31,0(x2)
insn_loop289:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop290
    lw x4,0(x1)
    addi x1,x1,4
    pv.cmpltu.sci.b x3,x4,18
    p.sw x3,0(x2)
insn_loop290:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop291
    lw x5,0(x1)
    lw x6,4(x1)
    addi x1,x1,4
    pv.cmpleu.h x4,x5,x6
    p.sw x4,0(x2)
insn_loop291:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop292
    lw x6,0(x1)
    lw x7,4(x1)
    addi x1,x1,4
    pv.cmpleu.sc.h x5,x6,x7
    p.sw x5,0(x2)
insn_loop292:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop293
    lw x7,0(x1)
    addi x1,x1,4
    pv.cmpleu.sci.h x6,x7,16
    p.sw x6,0(x2)
insn_loop293:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop294
    lw x8,0(x1)
    lw x9,4(x1)
    addi x1,x1,4
    pv.cmpleu.b x7,x8,x9
    p.sw x7,0(x2)
insn_loop294:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop295
    lw x9,0(x1)
    lw x10,4(x1)
    addi x1,x1,4
    pv.cmpleu.sc.b x8,x9,x10
    p.sw x8,0(x2)
insn_loop295:
    addi x2,x2,4

    lui x1,%hi(inputs)
    addi x1,x1,%lo(inputs)
    lui x2,%hi(outputs)
    addi x2,x2,%lo(outputs)
    lp.setupi x0,32,insn_loop296
    lw x10,0(x1)
    addi x1,x1,4
    pv.cmpleu.sci.b x9,x10,25
    p.sw x9,0(x2)
insn_loop296:
    addi x2,x2,4

#endif
    # }}}



    ################################################## 
    ##  RESTORE REGISTERS
    ################################################## 
    # {{{
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
    # }}}

    jr ra
    nop
