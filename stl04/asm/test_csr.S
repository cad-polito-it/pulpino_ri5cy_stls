.global test_csr
.text

test_csr:

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
	li t0, 0x00102000    # save stack pointer
	sw sp, 0(t0)

	lui x31, 0x00104

	addi x2, x0, -1




	csrw 0x79E, x1
	csrw 0x79F, x1
	csrr x3, 0x79E
	csrr x4, 0x79F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79E, x2
	csrw 0x79F, x2
	csrr x3, 0x79E
	csrr x4, 0x79F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x79E, x5
	csrw 0x79F, x5
	csrr x3, 0x79E
	csrr x4, 0x79F
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79E, x5
	csrw 0x79F, x5
	csrr x3, 0x79E
	csrr x4, 0x79F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x79E, x5
	csrw 0x79F, x5
	csrr x3, 0x79E
	csrr x4, 0x79F
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79E, x5
	csrw 0x79F, x5
	csrr x3, 0x79E
	csrr x4, 0x79F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x79E, x5
	csrw 0x79F, x5
	csrr x3, 0x79E
	csrr x4, 0x79F
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79E, x5
	csrw 0x79F, x5
	csrr x3, 0x79E
	csrr x4, 0x79F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x79E, x5
	csrw 0x79F, x5
	csrr x3, 0x79E
	csrr x4, 0x79F
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79E, x5
	csrw 0x79F, x5
	csrr x3, 0x79E
	csrr x4, 0x79F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x79E, x5
	csrw 0x79F, x5
	csrr x3, 0x79E
	csrr x4, 0x79F
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79E, x5
	csrw 0x79F, x5
	csrr x3, 0x79E
	csrr x4, 0x79F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	csrw 0x79C, x1
	csrw 0x79D, x1
	csrr x3, 0x79C
	csrr x4, 0x79D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79C, x2
	csrw 0x79D, x2
	csrr x3, 0x79C
	csrr x4, 0x79D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x79C, x5
	csrw 0x79D, x5
	csrr x3, 0x79C
	csrr x4, 0x79D
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79C, x5
	csrw 0x79D, x5
	csrr x3, 0x79C
	csrr x4, 0x79D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x79C, x5
	csrw 0x79D, x5
	csrr x3, 0x79C
	csrr x4, 0x79D
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79C, x5
	csrw 0x79D, x5
	csrr x3, 0x79C
	csrr x4, 0x79D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x79C, x5
	csrw 0x79D, x5
	csrr x3, 0x79C
	csrr x4, 0x79D
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79C, x5
	csrw 0x79D, x5
	csrr x3, 0x79C
	csrr x4, 0x79D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x79C, x5
	csrw 0x79D, x5
	csrr x3, 0x79C
	csrr x4, 0x79D
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79C, x5
	csrw 0x79D, x5
	csrr x3, 0x79C
	csrr x4, 0x79D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x79C, x5
	csrw 0x79D, x5
	csrr x3, 0x79C
	csrr x4, 0x79D
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79C, x5
	csrw 0x79D, x5
	csrr x3, 0x79C
	csrr x4, 0x79D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	csrw 0x79A, x1
	csrw 0x79B, x1
	csrr x3, 0x79A
	csrr x4, 0x79B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79A, x2
	csrw 0x79B, x2
	csrr x3, 0x79A
	csrr x4, 0x79B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x79A, x5
	csrw 0x79B, x5
	csrr x3, 0x79A
	csrr x4, 0x79B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79A, x5
	csrw 0x79B, x5
	csrr x3, 0x79A
	csrr x4, 0x79B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x79A, x5
	csrw 0x79B, x5
	csrr x3, 0x79A
	csrr x4, 0x79B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79A, x5
	csrw 0x79B, x5
	csrr x3, 0x79A
	csrr x4, 0x79B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x79A, x5
	csrw 0x79B, x5
	csrr x3, 0x79A
	csrr x4, 0x79B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79A, x5
	csrw 0x79B, x5
	csrr x3, 0x79A
	csrr x4, 0x79B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x79A, x5
	csrw 0x79B, x5
	csrr x3, 0x79A
	csrr x4, 0x79B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79A, x5
	csrw 0x79B, x5
	csrr x3, 0x79A
	csrr x4, 0x79B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x79A, x5
	csrw 0x79B, x5
	csrr x3, 0x79A
	csrr x4, 0x79B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x79A, x5
	csrw 0x79B, x5
	csrr x3, 0x79A
	csrr x4, 0x79B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	csrw 0x798, x1
	csrw 0x799, x1
	csrr x3, 0x798
	csrr x4, 0x799
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x798, x2
	csrw 0x799, x2
	csrr x3, 0x798
	csrr x4, 0x799
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x798, x5
	csrw 0x799, x5
	csrr x3, 0x798
	csrr x4, 0x799
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x798, x5
	csrw 0x799, x5
	csrr x3, 0x798
	csrr x4, 0x799
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x798, x5
	csrw 0x799, x5
	csrr x3, 0x798
	csrr x4, 0x799
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x798, x5
	csrw 0x799, x5
	csrr x3, 0x798
	csrr x4, 0x799
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x798, x5
	csrw 0x799, x5
	csrr x3, 0x798
	csrr x4, 0x799
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x798, x5
	csrw 0x799, x5
	csrr x3, 0x798
	csrr x4, 0x799
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x798, x5
	csrw 0x799, x5
	csrr x3, 0x798
	csrr x4, 0x799
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x798, x5
	csrw 0x799, x5
	csrr x3, 0x798
	csrr x4, 0x799
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x798, x5
	csrw 0x799, x5
	csrr x3, 0x798
	csrr x4, 0x799
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x798, x5
	csrw 0x799, x5
	csrr x3, 0x798
	csrr x4, 0x799
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	csrw 0x796, x1
	csrw 0x797, x1
	csrr x3, 0x796
	csrr x4, 0x797
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x796, x2
	csrw 0x797, x2
	csrr x3, 0x796
	csrr x4, 0x797
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x796, x5
	csrw 0x797, x5
	csrr x3, 0x796
	csrr x4, 0x797
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x796, x5
	csrw 0x797, x5
	csrr x3, 0x796
	csrr x4, 0x797
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x796, x5
	csrw 0x797, x5
	csrr x3, 0x796
	csrr x4, 0x797
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x796, x5
	csrw 0x797, x5
	csrr x3, 0x796
	csrr x4, 0x797
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x796, x5
	csrw 0x797, x5
	csrr x3, 0x796
	csrr x4, 0x797
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x796, x5
	csrw 0x797, x5
	csrr x3, 0x796
	csrr x4, 0x797
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x796, x5
	csrw 0x797, x5
	csrr x3, 0x796
	csrr x4, 0x797
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x796, x5
	csrw 0x797, x5
	csrr x3, 0x796
	csrr x4, 0x797
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x796, x5
	csrw 0x797, x5
	csrr x3, 0x796
	csrr x4, 0x797
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x796, x5
	csrw 0x797, x5
	csrr x3, 0x796
	csrr x4, 0x797
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	csrw 0x794, x1
	csrw 0x795, x1
	csrr x3, 0x794
	csrr x4, 0x795
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x794, x2
	csrw 0x795, x2
	csrr x3, 0x794
	csrr x4, 0x795
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x794, x5
	csrw 0x795, x5
	csrr x3, 0x794
	csrr x4, 0x795
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x794, x5
	csrw 0x795, x5
	csrr x3, 0x794
	csrr x4, 0x795
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x794, x5
	csrw 0x795, x5
	csrr x3, 0x794
	csrr x4, 0x795
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x794, x5
	csrw 0x795, x5
	csrr x3, 0x794
	csrr x4, 0x795
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x794, x5
	csrw 0x795, x5
	csrr x3, 0x794
	csrr x4, 0x795
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x794, x5
	csrw 0x795, x5
	csrr x3, 0x794
	csrr x4, 0x795
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x794, x5
	csrw 0x795, x5
	csrr x3, 0x794
	csrr x4, 0x795
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x794, x5
	csrw 0x795, x5
	csrr x3, 0x794
	csrr x4, 0x795
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x794, x5
	csrw 0x795, x5
	csrr x3, 0x794
	csrr x4, 0x795
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x794, x5
	csrw 0x795, x5
	csrr x3, 0x794
	csrr x4, 0x795
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	csrw 0x792, x1
	csrw 0x793, x1
	csrr x3, 0x792
	csrr x4, 0x793
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x792, x2
	csrw 0x793, x2
	csrr x3, 0x792
	csrr x4, 0x793
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x792, x5
	csrw 0x793, x5
	csrr x3, 0x792
	csrr x4, 0x793
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x792, x5
	csrw 0x793, x5
	csrr x3, 0x792
	csrr x4, 0x793
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x792, x5
	csrw 0x793, x5
	csrr x3, 0x792
	csrr x4, 0x793
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x792, x5
	csrw 0x793, x5
	csrr x3, 0x792
	csrr x4, 0x793
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x792, x5
	csrw 0x793, x5
	csrr x3, 0x792
	csrr x4, 0x793
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x792, x5
	csrw 0x793, x5
	csrr x3, 0x792
	csrr x4, 0x793
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x792, x5
	csrw 0x793, x5
	csrr x3, 0x792
	csrr x4, 0x793
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x792, x5
	csrw 0x793, x5
	csrr x3, 0x792
	csrr x4, 0x793
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x792, x5
	csrw 0x793, x5
	csrr x3, 0x792
	csrr x4, 0x793
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x792, x5
	csrw 0x793, x5
	csrr x3, 0x792
	csrr x4, 0x793
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	csrw 0x790, x1
	csrw 0x791, x1
	csrr x3, 0x790
	csrr x4, 0x791
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x790, x2
	csrw 0x791, x2
	csrr x3, 0x790
	csrr x4, 0x791
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x790, x5
	csrw 0x791, x5
	csrr x3, 0x790
	csrr x4, 0x791
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x790, x5
	csrw 0x791, x5
	csrr x3, 0x790
	csrr x4, 0x791
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x790, x5
	csrw 0x791, x5
	csrr x3, 0x790
	csrr x4, 0x791
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x790, x5
	csrw 0x791, x5
	csrr x3, 0x790
	csrr x4, 0x791
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x790, x5
	csrw 0x791, x5
	csrr x3, 0x790
	csrr x4, 0x791
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x790, x5
	csrw 0x791, x5
	csrr x3, 0x790
	csrr x4, 0x791
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x790, x5
	csrw 0x791, x5
	csrr x3, 0x790
	csrr x4, 0x791
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x790, x5
	csrw 0x791, x5
	csrr x3, 0x790
	csrr x4, 0x791
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x790, x5
	csrw 0x791, x5
	csrr x3, 0x790
	csrr x4, 0x791
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x790, x5
	csrw 0x791, x5
	csrr x3, 0x790
	csrr x4, 0x791
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	csrw 0x78E, x1
	csrw 0x78F, x1
	csrr x3, 0x78E
	csrr x4, 0x78F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78E, x2
	csrw 0x78F, x2
	csrr x3, 0x78E
	csrr x4, 0x78F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x78E, x5
	csrw 0x78F, x5
	csrr x3, 0x78E
	csrr x4, 0x78F
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78E, x5
	csrw 0x78F, x5
	csrr x3, 0x78E
	csrr x4, 0x78F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x78E, x5
	csrw 0x78F, x5
	csrr x3, 0x78E
	csrr x4, 0x78F
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78E, x5
	csrw 0x78F, x5
	csrr x3, 0x78E
	csrr x4, 0x78F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x78E, x5
	csrw 0x78F, x5
	csrr x3, 0x78E
	csrr x4, 0x78F
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78E, x5
	csrw 0x78F, x5
	csrr x3, 0x78E
	csrr x4, 0x78F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x78E, x5
	csrw 0x78F, x5
	csrr x3, 0x78E
	csrr x4, 0x78F
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78E, x5
	csrw 0x78F, x5
	csrr x3, 0x78E
	csrr x4, 0x78F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x78E, x5
	csrw 0x78F, x5
	csrr x3, 0x78E
	csrr x4, 0x78F
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78E, x5
	csrw 0x78F, x5
	csrr x3, 0x78E
	csrr x4, 0x78F
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	csrw 0x78C, x1
	csrw 0x78D, x1
	csrr x3, 0x78C
	csrr x4, 0x78D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78C, x2
	csrw 0x78D, x2
	csrr x3, 0x78C
	csrr x4, 0x78D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x78C, x5
	csrw 0x78D, x5
	csrr x3, 0x78C
	csrr x4, 0x78D
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78C, x5
	csrw 0x78D, x5
	csrr x3, 0x78C
	csrr x4, 0x78D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x78C, x5
	csrw 0x78D, x5
	csrr x3, 0x78C
	csrr x4, 0x78D
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78C, x5
	csrw 0x78D, x5
	csrr x3, 0x78C
	csrr x4, 0x78D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x78C, x5
	csrw 0x78D, x5
	csrr x3, 0x78C
	csrr x4, 0x78D
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78C, x5
	csrw 0x78D, x5
	csrr x3, 0x78C
	csrr x4, 0x78D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x78C, x5
	csrw 0x78D, x5
	csrr x3, 0x78C
	csrr x4, 0x78D
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78C, x5
	csrw 0x78D, x5
	csrr x3, 0x78C
	csrr x4, 0x78D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x78C, x5
	csrw 0x78D, x5
	csrr x3, 0x78C
	csrr x4, 0x78D
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78C, x5
	csrw 0x78D, x5
	csrr x3, 0x78C
	csrr x4, 0x78D
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)




	csrw 0x78C, x1
	csrw 0x78B, x1
	csrr x3, 0x78C
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78C, x2
	csrw 0x78B, x2
	csrr x3, 0x78C
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x78C, x5
	csrw 0x78B, x5
	csrr x3, 0x78C
	csrr x4, 0x78B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78C, x5
	csrw 0x78B, x5
	csrr x3, 0x78C
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x78C, x5
	csrw 0x78B, x5
	csrr x3, 0x78C
	csrr x4, 0x78B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78C, x5
	csrw 0x78B, x5
	csrr x3, 0x78C
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x78C, x5
	csrw 0x78B, x5
	csrr x3, 0x78C
	csrr x4, 0x78B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78C, x5
	csrw 0x78B, x5
	csrr x3, 0x78C
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x78C, x5
	csrw 0x78B, x5
	csrr x3, 0x78C
	csrr x4, 0x78B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78C, x5
	csrw 0x78B, x5
	csrr x3, 0x78C
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x78C, x5
	csrw 0x78B, x5
	csrr x3, 0x78C
	csrr x4, 0x78B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78C, x5
	csrw 0x78B, x5
	csrr x3, 0x78C
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)




	csrw 0x78A, x1
	csrw 0x78B, x1
	csrr x3, 0x78A
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78A, x2
	csrw 0x78B, x2
	csrr x3, 0x78A
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x78A, x5
	csrw 0x78B, x5
	csrr x3, 0x78A
	csrr x4, 0x78B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78A, x5
	csrw 0x78B, x5
	csrr x3, 0x78A
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x78A, x5
	csrw 0x78B, x5
	csrr x3, 0x78A
	csrr x4, 0x78B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78A, x5
	csrw 0x78B, x5
	csrr x3, 0x78A
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x78A, x5
	csrw 0x78B, x5
	csrr x3, 0x78A
	csrr x4, 0x78B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78A, x5
	csrw 0x78B, x5
	csrr x3, 0x78A
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x78A, x5
	csrw 0x78B, x5
	csrr x3, 0x78A
	csrr x4, 0x78B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78A, x5
	csrw 0x78B, x5
	csrr x3, 0x78A
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x78A, x5
	csrw 0x78B, x5
	csrr x3, 0x78A
	csrr x4, 0x78B
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78A, x5
	csrw 0x78B, x5
	csrr x3, 0x78A
	csrr x4, 0x78B
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	csrw 0x78A, x1
	csrw 0x789, x1
	csrr x3, 0x78A
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78A, x2
	csrw 0x789, x2
	csrr x3, 0x78A
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x78A, x5
	csrw 0x789, x5
	csrr x3, 0x78A
	csrr x4, 0x789
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78A, x5
	csrw 0x789, x5
	csrr x3, 0x78A
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x78A, x5
	csrw 0x789, x5
	csrr x3, 0x78A
	csrr x4, 0x789
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78A, x5
	csrw 0x789, x5
	csrr x3, 0x78A
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x78A, x5
	csrw 0x789, x5
	csrr x3, 0x78A
	csrr x4, 0x789
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78A, x5
	csrw 0x789, x5
	csrr x3, 0x78A
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x78A, x5
	csrw 0x789, x5
	csrr x3, 0x78A
	csrr x4, 0x789
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78A, x5
	csrw 0x789, x5
	csrr x3, 0x78A
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x78A, x5
	csrw 0x789, x5
	csrr x3, 0x78A
	csrr x4, 0x789
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x78A, x5
	csrw 0x789, x5
	csrr x3, 0x78A
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)




	csrw 0x788, x1
	csrw 0x789, x1
	csrr x3, 0x788
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x788, x2
	csrw 0x789, x2
	csrr x3, 0x788
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x788, x5
	csrw 0x789, x5
	csrr x3, 0x788
	csrr x4, 0x789
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x788, x5
	csrw 0x789, x5
	csrr x3, 0x788
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x788, x5
	csrw 0x789, x5
	csrr x3, 0x788
	csrr x4, 0x789
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x788, x5
	csrw 0x789, x5
	csrr x3, 0x788
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x788, x5
	csrw 0x789, x5
	csrr x3, 0x788
	csrr x4, 0x789
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x788, x5
	csrw 0x789, x5
	csrr x3, 0x788
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x788, x5
	csrw 0x789, x5
	csrr x3, 0x788
	csrr x4, 0x789
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x788, x5
	csrw 0x789, x5
	csrr x3, 0x788
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x788, x5
	csrw 0x789, x5
	csrr x3, 0x788
	csrr x4, 0x789
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x788, x5
	csrw 0x789, x5
	csrr x3, 0x788
	csrr x4, 0x789
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	csrw 0x786, x1
	csrw 0x787, x1
	csrr x3, 0x786
	csrr x4, 0x787
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x786, x2
	csrw 0x787, x2
	csrr x3, 0x786
	csrr x4, 0x787
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x786, x5
	csrw 0x787, x5
	csrr x3, 0x786
	csrr x4, 0x787
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x786, x5
	csrw 0x787, x5
	csrr x3, 0x786
	csrr x4, 0x787
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x786, x5
	csrw 0x787, x5
	csrr x3, 0x786
	csrr x4, 0x787
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x786, x5
	csrw 0x787, x5
	csrr x3, 0x786
	csrr x4, 0x787
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x786, x5
	csrw 0x787, x5
	csrr x3, 0x786
	csrr x4, 0x787
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x786, x5
	csrw 0x787, x5
	csrr x3, 0x786
	csrr x4, 0x787
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x786, x5
	csrw 0x787, x5
	csrr x3, 0x786
	csrr x4, 0x787
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x786, x5
	csrw 0x787, x5
	csrr x3, 0x786
	csrr x4, 0x787
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x786, x5
	csrw 0x787, x5
	csrr x3, 0x786
	csrr x4, 0x787
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x786, x5
	csrw 0x787, x5
	csrr x3, 0x786
	csrr x4, 0x787
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)




	csrw 0x784, x1
	csrw 0x785, x1
	csrr x3, 0x784
	csrr x4, 0x785
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x784, x2
	csrw 0x785, x2
	csrr x3, 0x784
	csrr x4, 0x785
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x784, x5
	csrw 0x785, x5
	csrr x3, 0x784
	csrr x4, 0x785
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x784, x5
	csrw 0x785, x5
	csrr x3, 0x784
	csrr x4, 0x785
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x784, x5
	csrw 0x785, x5
	csrr x3, 0x784
	csrr x4, 0x785
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x784, x5
	csrw 0x785, x5
	csrr x3, 0x784
	csrr x4, 0x785
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x784, x5
	csrw 0x785, x5
	csrr x3, 0x784
	csrr x4, 0x785
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x784, x5
	csrw 0x785, x5
	csrr x3, 0x784
	csrr x4, 0x785
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x784, x5
	csrw 0x785, x5
	csrr x3, 0x784
	csrr x4, 0x785
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x784, x5
	csrw 0x785, x5
	csrr x3, 0x784
	csrr x4, 0x785
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x784, x5
	csrw 0x785, x5
	csrr x3, 0x784
	csrr x4, 0x785
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x784, x5
	csrw 0x785, x5
	csrr x3, 0x784
	csrr x4, 0x785
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)




	csrw 0x782, x1
	csrw 0x783, x1
	csrr x3, 0x782
	csrr x4, 0x783
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x782, x2
	csrw 0x783, x2
	csrr x3, 0x782
	csrr x4, 0x783
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x782, x5
	csrw 0x783, x5
	csrr x3, 0x782
	csrr x4, 0x783
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x782, x5
	csrw 0x783, x5
	csrr x3, 0x782
	csrr x4, 0x783
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x782, x5
	csrw 0x783, x5
	csrr x3, 0x782
	csrr x4, 0x783
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x782, x5
	csrw 0x783, x5
	csrr x3, 0x782
	csrr x4, 0x783
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x782, x5
	csrw 0x783, x5
	csrr x3, 0x782
	csrr x4, 0x783
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x782, x5
	csrw 0x783, x5
	csrr x3, 0x782
	csrr x4, 0x783
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x782, x5
	csrw 0x783, x5
	csrr x3, 0x782
	csrr x4, 0x783
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x782, x5
	csrw 0x783, x5
	csrr x3, 0x782
	csrr x4, 0x783
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x782, x5
	csrw 0x783, x5
	csrr x3, 0x782
	csrr x4, 0x783
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x782, x5
	csrw 0x783, x5
	csrr x3, 0x782
	csrr x4, 0x783
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	csrw 0x780, x1
	csrw 0x781, x1
	csrr x3, 0x780
	csrr x4, 0x781
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x780, x2
	csrw 0x781, x2
	csrr x3, 0x780
	csrr x4, 0x781
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x780, x5
	csrw 0x781, x5
	csrr x3, 0x780
	csrr x4, 0x781
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x780, x5
	csrw 0x781, x5
	csrr x3, 0x780
	csrr x4, 0x781
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x780, x5
	csrw 0x781, x5
	csrr x3, 0x780
	csrr x4, 0x781
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x780, x5
	csrw 0x781, x5
	csrr x3, 0x780
	csrr x4, 0x781
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x780, x5
	csrw 0x781, x5
	csrr x3, 0x780
	csrr x4, 0x781
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x780, x5
	csrw 0x781, x5
	csrr x3, 0x780
	csrr x4, 0x781
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x780, x5
	csrw 0x781, x5
	csrr x3, 0x780
	csrr x4, 0x781
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x780, x5
	csrw 0x781, x5
	csrr x3, 0x780
	csrr x4, 0x781
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x780, x5
	csrw 0x781, x5
	csrr x3, 0x780
	csrr x4, 0x781
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x780, x5
	csrw 0x781, x5
	csrr x3, 0x780
	csrr x4, 0x781
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)












	#
	#	HWL CNT 1
	#
	###################

	addi x1, x0, 1

	csrw 0x7b2, x1
	csrw 0x7b6, x1
	csrr x3, 0x7b2
	csrr x4, 0x7b6
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b2, x2
	csrw 0x7b6, x2
	csrr x3, 0x7b2
	csrr x4, 0x7b6
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x7b2, x5
	csrw 0x7b6, x5
	csrr x3, 0x7b2
	csrr x4, 0x7b6
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b2, x5
	csrw 0x7b6, x5
	csrr x3, 0x7b2
	csrr x4, 0x7b6
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x7b2, x5
	csrw 0x7b6, x5
	csrr x3, 0x7b2
	csrr x4, 0x7b6
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b2, x5
	csrw 0x7b6, x5
	csrr x3, 0x7b2
	csrr x4, 0x7b6
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x7b2, x5
	csrw 0x7b6, x5
	csrr x3, 0x7b2
	csrr x4, 0x7b6
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b2, x5
	csrw 0x7b6, x5
	csrr x3, 0x7b2
	csrr x4, 0x7b6
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x7b2, x5
	csrw 0x7b6, x5
	csrr x3, 0x7b2
	csrr x4, 0x7b6
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b2, x5
	csrw 0x7b6, x5
	csrr x3, 0x7b2
	csrr x4, 0x7b6
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x7b2, x5
	csrw 0x7b6, x5
	csrr x3, 0x7b2
	csrr x4, 0x7b6
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b2, x5
	csrw 0x7b6, x5
	csrr x3, 0x7b2
	csrr x4, 0x7b6
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	######################

	lp.counti x1, 0x0
	lp.counti x0, 0x0

	###################


	csrw 0x7b0, x1
	csrw 0x7b4, x1
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b0, x2
	csrw 0x7b4, x2
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x7b0, x5
	csrw 0x7b4, x5
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b0, x5
	csrw 0x7b4, x5
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x7b0, x5
	csrw 0x7b4, x5
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b0, x5
	csrw 0x7b4, x5
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x7b0, x5
	csrw 0x7b4, x5
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b0, x5
	csrw 0x7b4, x5
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x7b0, x5
	csrw 0x7b4, x5
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b0, x5
	csrw 0x7b4, x5
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x7b0, x5
	csrw 0x7b4, x5
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b0, x5
	csrw 0x7b4, x5
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	###################


	csrw 0x7b1, x1
	csrw 0x7b5, x1
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b1, x2
	csrw 0x7b5, x2
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	csrw 0x7b1, x5
	csrw 0x7b5, x5
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b1, x5
	csrw 0x7b5, x5
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	csrw 0x7b1, x5
	csrw 0x7b5, x5
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b1, x5
	csrw 0x7b5, x5
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	csrw 0x7b1, x5
	csrw 0x7b5, x5
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b1, x5
	csrw 0x7b5, x5
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	csrw 0x7b1, x5
	csrw 0x7b5, x5
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b1, x5
	csrw 0x7b5, x5
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	csrw 0x7b1, x5
	csrw 0x7b5, x5
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	xor x5, x5, x2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	csrw 0x7b1, x5
	csrw 0x7b5, x5
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)




	##################
	#
	#	HWL old
	#
	###################


	addi x1, x0, 1
	addi x2, x0, -1


	lp.starti x0, start_1
	lp.starti x1, start_1a
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lp.endi x0, end_1
	lp.endi x1, end_1a
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)



	lp.count x1, x2
	lp.count x0, x2
	csrr x3, 0x7b6
	csrr x4, 0x7b2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	lp.count x1, x0
	lp.count x0, x0
	csrr x3, 0x7b6
	csrr x4, 0x7b2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0xFFFF0
	lp.count x1, x5
	lp.count x0, x5
	csrr x3, 0x7b6
	csrr x4, 0x7b2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	xor x5, x5, x2
	lp.count x1, x5
	lp.count x0, x5
	csrr x3, 0x7b6
	csrr x4, 0x7b2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lui x5, 0x00FF0
	ori x5, x5, 0x0FF
	lp.count x1, x5
	lp.count x0, x5
	csrr x3, 0x7b6
	csrr x4, 0x7b2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	xor x5, x5, x2
	lp.count x1, x5
	lp.count x0, x5
	csrr x3, 0x7b6
	csrr x4, 0x7b2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lp.counti x1, 0x1
	lp.counti x0, 0x1


start_1:

start_1a:
	nop
	nop
end_1a:

end_1:
	nop
	nop

	lui x5, 0xF0F0F
	ori x5, x5, 0x0F0
	lp.count x1, x5
	lp.count x0, x5
	csrr x3, 0x7b6
	csrr x4, 0x7b2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	xor x5, x5, x2
	lp.count x1, x5
	lp.count x0, x5
	csrr x3, 0x7b6
	csrr x4, 0x7b2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x5555
	ori x5, x5, 0x555
	lp.count x1, x5
	lp.count x0, x5
	csrr x3, 0x7b6
	csrr x4, 0x7b2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	xor x5, x5, x2
	lp.count x1, x5
	lp.count x0, x5
	csrr x3, 0x7b6
	csrr x4, 0x7b2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)

	lui x5, 0x3333
	ori x5, x5, 0x333
	lp.count x1, x5
	lp.count x0, x5
	csrr x3, 0x7b6
	csrr x4, 0x7b2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)
	xor x5, x5, x2
	lp.count x1, x5
	lp.count x0, x5
	csrr x3, 0x7b6
	csrr x4, 0x7b2
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)




	lp.counti x1, 0x1
	lp.counti x0, 0x1

	lp.starti x0, start_2
	lp.starti x1, start_2a
	csrr x3, 0x7b0
	csrr x4, 0x7b4
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)


	lp.endi x0, end_2
	lp.endi x1, end_2a
	csrr x3, 0x7b1
	csrr x4, 0x7b5
	p.sw x3, 1(x31!)
	p.sw x4, 1(x31!)




start_2:

start_2a:
	nop
	nop
end_2a:

end_2:
	nop
	nop

	# ABI epilogue
	li t0, 0x00102000    # restore stack pointer
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
