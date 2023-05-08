# vim:ft=riscv32asm:foldmethod=marker:foldlevel=0

MEM_ITER=32

.comm	mem_dump MEM_ITER*4,4
.comm	mem_play MEM_ITER*4,4
.text
.align	2
.globl fail
.globl  mem_test
.type   mem_test , @function

mem_test:

    ################################################## 
    # DEEP ADDRESS TEST
    ################################################## 
    # {{{
    li a0,1
    lp.setupi x1,MEM_ITER,deep_loop
    slli a0,a0,1
    add a1,x0,a0
    lui a3,%hi(mem_dump)
    addi a3,a3,%lo(mem_dump)
    lp.setupi x0,MEM_ITER,deep_loop
    lw a2,0(a1)
    sw a2,0(a3)
    add a3,a3,4
deep_loop:
    addi a1,a1,4
    # }}}

    ################################################## 
    # TEST INSTRUCTIONS
    ################################################## 
    # {{{

    # lw/sw
    # {{{

    # lw/sw Write 0
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop0a
    sw x0,0(a0)
mem_loop0a:
    add a0,a0,4

    # lw/sw Read 0 Write 1
    li a2,-1
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop0b
    lw a1,0(a0)
    bne a1,x0,fail
    sw a2,0(a0)
mem_loop0b:
    add a0,a0,4

    # lw/sw Read 1 Write 0
    li a2,-1
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop0c
    lw a1,0(a0)
    bne a1,a2,fail
    sw x0,0(a0)
mem_loop0c:
    add a0,a0,4

    # lw/sw Read 0
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop0d
    lw a1,0(a0)
    bne a1,x0,fail
mem_loop0d:
    add a0,a0,4

    # }}}

    # lh/sh
    # {{{

    # lh/sh Write 0
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop1a
    sh x0,0(a0)
mem_loop1a:
    add a0,a0,4

    # lh/sh Read 0 Write 1
    li a2,-1
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop1b
    lh a1,0(a0)
    bne a1,x0,fail
    lhu a1,0(a0)
    bne a1,x0,fail
    sh a2,0(a0)
mem_loop1b:
    add a0,a0,4

    # lh/sh Read 1 Write 0
    li a2,-1
    li a3,0xffff
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop1c
    lh a1,0(a0)
    bne a1,a2,fail
    lhu a1,0(a0)
    bne a1,a3,fail
    sh x0,0(a0)
mem_loop1c:
    add a0,a0,4

    # lh/sh Read 0
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop1d
    lh a1,0(a0)
    bne a1,x0,fail
    lhu a1,0(a0)
    bne a1,x0,fail
mem_loop1d:
    add a0,a0,4

    # }}}

    # lb/sb
    # {{{

    # lb/sb Write 0
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop2a
    sb x0,0(a0)
mem_loop2a:
    add a0,a0,4

    # lb/sb Read 0 Write 1
    li a2,-1
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop2b
    lb a1,0(a0)
    bne a1,x0,fail
    lbu a1,0(a0)
    bne a1,x0,fail
    sb a2,0(a0)
mem_loop2b:
    add a0,a0,4

    # lb/sb Read 1 Write 0
    li a2,-1
    li a3,0xff
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop2c
    lb a1,0(a0)
    bne a1,a2,fail
    lbu a1,0(a0)
    bne a1,a3,fail
    sb x0,0(a0)
mem_loop2c:
    add a0,a0,4

    # lb/sb Read 0
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop2d
    lb a1,0(a0)
    bne a1,x0,fail
    lbu a1,0(a0)
    bne a1,x0,fail
mem_loop2d:
    add a0,a0,4

    # }}}

    # NOTE: Post-increment load-store are currently non-functional

    # p.lw/p.sw
    # {{{

    # p.lw/p.sw Write 0
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop3a
    p.sw x0,0(a0)
mem_loop3a:
    add a0,a0,4

    # p.lw/p.sw Read 0 Write 1
    li a2,-1
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop3b
    p.lw a1,0(a0)
    bne a1,x0,fail
    p.sw a2,0(a0)
mem_loop3b:
    add a0,a0,4

    # p.lw/p.sw Read 1 Write 0
    li a2,-1
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop3c
    p.lw a1,0(a0)
    bne a1,a2,fail
    p.sw x0,0(a0)
mem_loop3c:
    add a0,a0,4

    # p.lw/p.sw Read 0
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop3d
    p.lw a1,0(a0)
    bne a1,x0,fail
mem_loop3d:
    add a0,a0,4

    # }}}

    # p.lh/p.sh
    # {{{

    # p.lh/p.sh Write 0
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop4a
    p.sh x0,0(a0)
mem_loop4a:
    add a0,a0,4

    # p.lh/p.sh Read 0 Write 1
    li a2,-1
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop4b
    p.lh a1,0(a0)
    bne a1,x0,fail
    p.lhu a1,0(a0)
    bne a1,x0,fail
    p.sh a2,0(a0)
mem_loop4b:
    add a0,a0,4

    # p.lh/p.sh Read 1 Write 0
    li a2,-1
    li a3,0xffff
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop4c
    p.lh a1,0(a0)
    bne a1,a2,fail
    p.lhu a1,0(a0)
    bne a1,a3,fail
    p.sh x0,0(a0)
mem_loop4c:
    add a0,a0,4

    # p.lh/p.sh Read 0
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop4d
    p.lh a1,0(a0)
    bne a1,x0,fail
    p.lhu a1,0(a0)
    bne a1,x0,fail
mem_loop4d:
    add a0,a0,4

    # }}}

    # p.lb/p.sb
    # {{{

    # p.lb/p.sb Write 0
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop5a
    p.sb x0,0(a0)
mem_loop5a:
    add a0,a0,4

    # p.lb/p.sb Read 0 Write 1
    li a2,-1
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop5b
    p.lb a1,0(a0)
    bne a1,x0,fail
    p.lbu a1,0(a0)
    bne a1,x0,fail
    p.sb a2,0(a0)
mem_loop5b:
    add a0,a0,4

    # p.lb/p.sb Read 1 Write 0
    li a2,-1
    li a3,0xff
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop5c
    p.lb a1,0(a0)
    bne a1,a2,fail
    p.lbu a1,0(a0)
    bne a1,a3,fail
    p.sb x0,0(a0)
mem_loop5c:
    add a0,a0,4

    # p.lb/p.sb Read 0
    lui a0,%hi(mem_play)
    addi a0,a0,%lo(mem_play)
    lp.setupi x0,MEM_ITER,mem_loop5d
    p.lb a1,0(a0)
    bne a1,x0,fail
    p.lbu a1,0(a0)
    bne a1,x0,fail
mem_loop5d:
    add a0,a0,4

    # }}}
    # }}}

    # Finish
    jr ra
