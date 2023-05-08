.global test_mul
.text

test_mul:

	# ABI prologue
	addi sp, sp, -112     # allocate 112 bytes on the stack
	sw ra, 104(sp)        # save return address
	sw s0, 96(sp)         # save callee-saved registers
	sw s1, 88(sp)
	sw s2, 80(sp)
	sw s3, 72(sp)
	sw s4, 64(sp)
	sw s5, 56(sp)
	sw s6, 48(sp)
	sw s7, 40(sp)
	sw s8, 32(sp)
	sw s9, 24(sp)
	sw s10, 16(sp)
	sw s11, 8(sp)
	addi s0, sp, 112     # set up s0 to point to start of stack frame
	li t0, 0x00104000    # save stack pointer
	sw sp, 0(t0)

	li x1,0x00000000
	li x2,0x000000FF
	li x3,0xF0F0F0F0
	li x4,0x0000FFFF
	li x5,0xFFFF0F0F
	li x6,0xFFFFFF00
	li x7,0x55555555
	li x8,0xAAAAAAAA
	li x9,0xCCCCCCCC


	mul x10,x1,x1
	sw x10,0(x0)

	mul x11,x2,x2
	sw x11,4(x0)

	mul x12,x3,x3
	sw x12,8(x0)

	mul x13,x4,x4
	sw x13,12(x0)

	mul x15,x5,x5
	sw x15,16(x0)

	mul x16,x6,x6
	sw x16,20(x0)

	mul x17,x7,x7
	sw x17,24(x0)

	mul x18,x8,x8
	sw x18,28(x0)

	mul x19,x9,x9
	sw x19,32(x0)

	mul x20,x1,x2
	sw x20,36(x0)

	mul x21,x2,x1
	sw x21,40(x0)

	mul x22,x3,x1
	sw x22,44(x0)

	mul x23,x1,x3
	sw x23,48(x0)

	mul x24,x4,x1
	sw x24,52(x0)

	mul x25,x1,x4
	sw x25,56(x0)

	mul x26,x5,x1
	sw x26,60(x0)

	mul x27,x1,x5
	sw x27,64(x0)

	mul x28,x6,x1
	sw x28,68(x0)

	mul x29,x1,x6
	sw x29,72(x0)

	mul x30,x7,x1
	sw x30,76(x0)

	mul x31,x1,x7
	sw x31,80(x0)

	mul x10,x8,x1
	sw x10,84(x0)

	mul x11,x1,x8
	sw x11,88(x0)

	mul x12,x9,x1
	sw x12,92(x0)

	mul x13,x1,x9
	sw x13,96(x0)

	mul x14,x2,x2
	sw x14,100(x0)

	mul x15,x2,x3
	sw x15,104(x0)

	mul x16,x3,x2
	sw x16,108(x0)

	mul x17,x2,x4
	sw x17,112(x0)

	mul x18,x4,x2
	sw x18,116(x0)

	mul x19,x2,x5
	sw x19,120(x0)

	mul x20,x5,x2
	sw x20,124(x0)

	mul x21,x2,x6
	sw x21,128(x0)

	mul x21,x6,x2
	sw x21,132(x0)

	mul x22,x2,x7
	sw x22,136(x0)

	mul x23,x7,x2
	sw x23,140(x0)

	mul x24,x2,x8
	sw x24,144(x0)

	mul x25,x8,x2
	sw x25,148(x0)

	mul x26,x2,x9
	sw x26,152(x0)

	mul x27,x9,x2
	sw x27,156(x0)

	mul x28,x3,x4
	sw x28,160(x0)

	mul x28,x4,x3
	sw x28,164(x0)

	mul x29,x3,x5
	sw x29,168(x0)

	mul x30,x5,x3
	sw x30,172(x0)

	mul x31,x3,x6
	sw x31,176(x0)

	mul x10,x6,x3
	sw x10,180(x0)

	mul x11,x3,x7
	sw x11,184(x0)

	mul x12,x7,x3
	sw x12,188(x0)

	mul x13,x3,x8
	sw x13,192(x0)

	mul x14,x8,x3
	sw x14,196(x0)

	mul x15,x3,x9
	sw x15,200(x0)

	mul x16,x9,x3
	sw x16,204(x0)

	mul x17,x4,x5
	sw x17,208(x0)

	mul x18,x5,x4
	sw x18,212(x0)

	mul x19,x4,x6
	sw x19,216(x0)

	mul x20,x6,x4
	sw x20,220(x0)

	mul x21,x4,x7
	sw x21,224(x0)

	mul x22,x7,x4
	sw x22,228(x0)

	mul x23,x4,x8
	sw x23,232(x0)

	mul x24,x8,x4
	sw x24,236(x0)

	mul x25,x4,x9
	sw x25,240(x0)

	mul x26,x9,x4
	sw x26,244(x0)

	mul x27,x5,x6
	sw x27,248(x0)

	mul x28,x6,x5
	sw x28,252(x0)

	mul x29,x5,x7
	sw x29,256(x0)

	mul x30,x7,x5
	sw x30,260(x0)

	mul x31,x5,x8
	sw x31,264(x0)

	mul x10,x8,x5
	sw x10,268(x0)

	mul x11,x5,x9
	sw x11,272(x0)

	mul x1,x9,x5
	sw x1,276(x0)

	mul x2,x6,x7
	sw x2,280(x0)

	mul x3,x7,x6
	sw x3,284(x0)

	mul x4,x6,x8
	sw x4,288(x0)

	mul x5,x8,x6
	sw x5,292(x0)

	mul x1,x6,x9
	sw x1,296(x0)

	mul x2,x9,x6
	sw x2,300(x0)

	mul x3,x7,x8
	sw x3,304(x0)

	mul x4,x8,x7
	sw x4,308(x0)

	mul x5,x7,x9
	sw x5,312(x0)

	mul x6,x9,x7
	sw x6,316(x0)

	mul x7,x8,x9
	sw x7,320(x0)

	mul x8,x9,x8
	sw x8,324(x0)

	mul x1,x1,x1
	sw x1,328(x0)

	mul x2,x2,x2
	sw x2,332(x0)

	mul x3,x3,x3
	sw x3,336(x0)

	mul x4,x4,x4
	sw x4,340(x0)

	mul x5,x5,x5
	sw x5,344(x0)

	mul x6,x6,x6
	sw x6,348(x0)

	mul x7,x7,x7
	sw x7,352(x0)

	mul x8,x8,x8
	sw x8,356(x0)

	mul x9,x9,x9
	sw x9,360(x0)

	mul x10,x10,x10
	sw x10,364(x0)

	mul x11,x11,x11
	sw x11,368(x0)

	mul x12,x12,x12
	sw x12,372(x0)

	mul x13,x13,x13
	sw x13,376(x0)

	mul x14,x14,x14
	sw x14,380(x0)

	mul x15,x15,x15
	sw x15,384(x0)

	mul x16,x16,x16
	sw x16,388(x0)

	mul x17,x17,x17
	sw x17,392(x0)

	mul x18,x18,x18
	sw x18,396(x0)

	mul x19,x19,x19
	sw x19,400(x0)

	mul x20,x20,x20
	sw x20,404(x0)

	mul x21,x21,x21
	sw x21,408(x0)

	mul x22,x22,x22
	sw x22,412(x0)

	mul x23,x23,x23
	sw x23,416(x0)

	mul x24,x24,x24
	sw x24,420(x0)

	mul x25,x25,x25
	sw x25,424(x0)

	mul x26,x26,x26
	sw x26,428(x0)

	mul x27,x27,x27
	sw x27,432(x0)

	mul x28,x28,x28
	sw x28,436(x0)

	mul x29,x29,x29
	sw x29,440(x0)

	mul x30,x30,x30
	sw x30,444(x0)

	mul x31,x31,x31
	sw x31,448(x0)


	li x1,0x00000000
	li x2,0xFFFF00FF
	li x3,0x0F0FFF00
	li x4,0xF0F0FFFF
	li x5,0xFF000000
	li x6,0x00FFFFFF
	li x7,0x55555555
	li x8,0xAAAAAAAA
	li x9,0xCCCCCCCC


	mulh x10,x1,x1
	sw x10,0(x0)

	mulh x11,x2,x2
	sw x11,4(x0)

	mulh x12,x3,x3
	sw x12,8(x0)

	mulh x13,x4,x4
	sw x13,12(x0)

	mulh x15,x5,x5
	sw x15,16(x0)

	mulh x16,x6,x6
	sw x16,20(x0)

	mulh x17,x7,x7
	sw x17,24(x0)

	mulh x18,x8,x8
	sw x18,28(x0)

	mulh x19,x9,x9
	sw x19,32(x0)

	mulh x20,x1,x2
	sw x20,36(x0)

	mulh x21,x2,x1
	sw x21,40(x0)

	mulh x22,x3,x1
	sw x22,44(x0)

	mulh x23,x1,x3
	sw x23,48(x0)

	mulh x24,x4,x1
	sw x24,52(x0)

	mulh x25,x1,x4
	sw x25,56(x0)

	mulh x26,x5,x1
	sw x26,60(x0)

	mulh x27,x1,x5
	sw x27,64(x0)

	mulh x28,x6,x1
	sw x28,68(x0)

	mulh x29,x1,x6
	sw x29,72(x0)

	mulh x30,x7,x1
	sw x30,76(x0)

	mulh x31,x1,x7
	sw x31,80(x0)

	mulh x10,x8,x1
	sw x10,84(x0)

	mulh x11,x1,x8
	sw x11,88(x0)

	mulh x12,x9,x1
	sw x12,92(x0)

	mulh x13,x1,x9
	sw x13,96(x0)

	mulh x14,x2,x2
	sw x14,100(x0)

	mulh x15,x2,x3
	sw x15,104(x0)

	mulh x16,x3,x2
	sw x16,108(x0)

	mulh x17,x2,x4
	sw x17,112(x0)

	mulh x18,x4,x2
	sw x18,116(x0)

	mulh x19,x2,x5
	sw x19,120(x0)

	mulh x20,x5,x2
	sw x20,124(x0)

	mulh x21,x2,x6
	sw x21,128(x0)

	mulh x21,x6,x2
	sw x21,132(x0)

	mulh x22,x2,x7
	sw x22,136(x0)

	mulh x23,x7,x2
	sw x23,140(x0)

	mulh x24,x2,x8
	sw x24,144(x0)

	mulh x25,x8,x2
	sw x25,148(x0)

	mulh x26,x2,x9
	sw x26,152(x0)

	mulh x27,x9,x2
	sw x27,156(x0)

	mulh x28,x3,x4
	sw x28,160(x0)

	mulh x28,x4,x3
	sw x28,164(x0)

	mulh x29,x3,x5
	sw x29,168(x0)

	mulh x30,x5,x3
	sw x30,172(x0)

	mulh x31,x3,x6
	sw x31,176(x0)

	mulh x10,x6,x3
	sw x10,180(x0)

	mulh x11,x3,x7
	sw x11,184(x0)

	mulh x12,x7,x3
	sw x12,188(x0)

	mulh x13,x3,x8
	sw x13,192(x0)

	mulh x14,x8,x3
	sw x14,196(x0)

	mulh x15,x3,x9
	sw x15,200(x0)

	mulh x16,x9,x3
	sw x16,204(x0)

	mulh x17,x4,x5
	sw x17,208(x0)

	mulh x18,x5,x4
	sw x18,212(x0)

	mulh x19,x4,x6
	sw x19,216(x0)

	mulh x20,x6,x4
	sw x20,220(x0)

	mulh x21,x4,x7
	sw x21,224(x0)

	mulh x22,x7,x4
	sw x22,228(x0)

	mulh x23,x4,x8
	sw x23,232(x0)

	mulh x24,x8,x4
	sw x24,236(x0)

	mulh x25,x4,x9
	sw x25,240(x0)

	mulh x26,x9,x4
	sw x26,244(x0)

	mulh x27,x5,x6
	sw x27,248(x0)

	mulh x28,x6,x5
	sw x28,252(x0)

	mulh x29,x5,x7
	sw x29,256(x0)

	mulh x30,x7,x5
	sw x30,260(x0)

	mulh x31,x5,x8
	sw x31,264(x0)

	mulh x10,x8,x5
	sw x10,268(x0)

	mulh x11,x5,x9
	sw x11,272(x0)

	mulh x1,x9,x5
	sw x1,276(x0)

	mulh x2,x6,x7
	sw x2,280(x0)

	mulh x3,x7,x6
	sw x3,284(x0)

	mulh x4,x6,x8
	sw x4,288(x0)

	mulh x5,x8,x6
	sw x5,292(x0)

	mulh x1,x6,x9
	sw x1,296(x0)

	mulh x2,x9,x6
	sw x2,300(x0)

	mulh x3,x7,x8
	sw x3,304(x0)

	mulh x4,x8,x7
	sw x4,308(x0)

	mulh x5,x7,x9
	sw x5,312(x0)

	mulh x6,x9,x7
	sw x6,316(x0)

	mulh x7,x8,x9
	sw x7,320(x0)

	mulh x8,x9,x8
	sw x8,324(x0)

	mulh x1,x1,x1
	sw x1,328(x0)

	mulh x2,x2,x2
	sw x2,332(x0)

	mulh x3,x3,x3
	sw x3,336(x0)

	mulh x4,x4,x4
	sw x4,340(x0)

	mulh x5,x5,x5
	sw x5,344(x0)

	mulh x6,x6,x6
	sw x6,348(x0)

	mulh x7,x7,x7
	sw x7,352(x0)

	mulh x8,x8,x8
	sw x8,356(x0)

	mulh x9,x9,x9
	sw x9,360(x0)

	mulh x10,x10,x10
	sw x10,364(x0)

	mulh x11,x11,x11
	sw x11,368(x0)

	mulh x12,x12,x12
	sw x12,372(x0)

	mulh x13,x13,x13
	sw x13,376(x0)

	mulh x14,x14,x14
	sw x14,380(x0)

	mulh x15,x15,x15
	sw x15,384(x0)

	mulh x16,x16,x16
	sw x16,388(x0)

	mulh x17,x17,x17
	sw x17,392(x0)

	mulh x18,x18,x18
	sw x18,396(x0)

	mulh x19,x19,x19
	sw x19,400(x0)

	mulh x20,x20,x20
	sw x20,404(x0)

	mulh x21,x21,x21
	sw x21,408(x0)

	mulh x22,x22,x22
	sw x22,412(x0)

	mulh x23,x23,x23
	sw x23,416(x0)

	mulh x24,x24,x24
	sw x24,420(x0)

	mulh x25,x25,x25
	sw x25,424(x0)

	mulh x26,x26,x26
	sw x26,428(x0)

	mulh x27,x27,x27
	sw x27,432(x0)

	mulh x28,x28,x28
	sw x28,436(x0)

	mulh x29,x29,x29
	sw x29,440(x0)

	mulh x30,x30,x30
	sw x30,444(x0)

	mulh x31,x31,x31
	sw x31,448(x0)



	li x1,0x00000000
	li x2,0xFFFF0001
	li x3,0xF0F0F0F0
	li x4,0x0F0FFFFF
	li x5,0xFF000000
	li x6,0x00FFFFFF
	li x7,0x55555555
	li x8,0xAAAAAAAA
	li x9,0xCCCCCCCC


	mulhsu x10,x1,x1
	sw x10,0(x0)

	mulhsu x11,x2,x2
	sw x11,4(x0)

	mulhsu x12,x3,x3
	sw x12,8(x0)

	mulhsu x13,x4,x4
	sw x13,12(x0)

	mulhsu x15,x5,x5
	sw x15,16(x0)

	mulhsu x16,x6,x6
	sw x16,20(x0)

	mulhsu x17,x7,x7
	sw x17,24(x0)

	mulhsu x18,x8,x8
	sw x18,28(x0)

	mulhsu x19,x9,x9
	sw x19,32(x0)

	mulhsu x20,x1,x2
	sw x20,36(x0)

	mulhsu x21,x2,x1
	sw x21,40(x0)

	mulhsu x22,x3,x1
	sw x22,44(x0)

	mulhsu x23,x1,x3
	sw x23,48(x0)

	mulhsu x24,x4,x1
	sw x24,52(x0)

	mulhsu x25,x1,x4
	sw x25,56(x0)

	mulhsu x26,x5,x1
	sw x26,60(x0)

	mulhsu x27,x1,x5
	sw x27,64(x0)

	mulhsu x28,x6,x1
	sw x28,68(x0)

	mulhsu x29,x1,x6
	sw x29,72(x0)

	mulhsu x30,x7,x1
	sw x30,76(x0)

	mulhsu x31,x1,x7
	sw x31,80(x0)

	mulhsu x10,x8,x1
	sw x10,84(x0)

	mulhsu x11,x1,x8
	sw x11,88(x0)

	mulhsu x12,x9,x1
	sw x12,92(x0)

	mulhsu x13,x1,x9
	sw x13,96(x0)

	mulhsu x14,x2,x2
	sw x14,100(x0)

	mulhsu x15,x2,x3
	sw x15,104(x0)

	mulhsu x16,x3,x2
	sw x16,108(x0)

	mulhsu x17,x2,x4
	sw x17,112(x0)

	mulhsu x18,x4,x2
	sw x18,116(x0)

	mulhsu x19,x2,x5
	sw x19,120(x0)

	mulhsu x20,x5,x2
	sw x20,124(x0)

	mulhsu x21,x2,x6
	sw x21,128(x0)

	mulhsu x21,x6,x2
	sw x21,132(x0)

	mulhsu x22,x2,x7
	sw x22,136(x0)

	mulhsu x23,x7,x2
	sw x23,140(x0)

	mulhsu x24,x2,x8
	sw x24,144(x0)

	mulhsu x25,x8,x2
	sw x25,148(x0)

	mulhsu x26,x2,x9
	sw x26,152(x0)

	mulhsu x27,x9,x2
	sw x27,156(x0)

	mulhsu x28,x3,x4
	sw x28,160(x0)

	mulhsu x28,x4,x3
	sw x28,164(x0)

	mulhsu x29,x3,x5
	sw x29,168(x0)

	mulhsu x30,x5,x3
	sw x30,172(x0)

	mulhsu x31,x3,x6
	sw x31,176(x0)

	mulhsu x10,x6,x3
	sw x10,180(x0)

	mulhsu x11,x3,x7
	sw x11,184(x0)

	mulhsu x12,x7,x3
	sw x12,188(x0)

	mulhsu x13,x3,x8
	sw x13,192(x0)

	mulhsu x14,x8,x3
	sw x14,196(x0)

	mulhsu x15,x3,x9
	sw x15,200(x0)

	mulhsu x16,x9,x3
	sw x16,204(x0)

	mulhsu x17,x4,x5
	sw x17,208(x0)

	mulhsu x18,x5,x4
	sw x18,212(x0)

	mulhsu x19,x4,x6
	sw x19,216(x0)

	mulhsu x20,x6,x4
	sw x20,220(x0)

	mulhsu x21,x4,x7
	sw x21,224(x0)

	mulhsu x22,x7,x4
	sw x22,228(x0)

	mulhsu x23,x4,x8
	sw x23,232(x0)

	mulhsu x24,x8,x4
	sw x24,236(x0)

	mulhsu x25,x4,x9
	sw x25,240(x0)

	mulhsu x26,x9,x4
	sw x26,244(x0)

	mulhsu x27,x5,x6
	sw x27,248(x0)

	mulhsu x28,x6,x5
	sw x28,252(x0)

	mulhsu x29,x5,x7
	sw x29,256(x0)

	mulhsu x30,x7,x5
	sw x30,260(x0)

	mulhsu x31,x5,x8
	sw x31,264(x0)

	mulhsu x10,x8,x5
	sw x10,268(x0)

	mulhsu x11,x5,x9
	sw x11,272(x0)

	mulhsu x1,x9,x5
	sw x1,276(x0)

	mulhsu x2,x6,x7
	sw x2,280(x0)

	mulhsu x3,x7,x6
	sw x3,284(x0)

	mulhsu x4,x6,x8
	sw x4,288(x0)

	mulhsu x5,x8,x6
	sw x5,292(x0)

	mulhsu x1,x6,x9
	sw x1,296(x0)

	mulhsu x2,x9,x6
	sw x2,300(x0)

	mulhsu x3,x7,x8
	sw x3,304(x0)

	mulhsu x4,x8,x7
	sw x4,308(x0)

	mulhsu x5,x7,x9
	sw x5,312(x0)

	mulhsu x6,x9,x7
	sw x6,316(x0)

	mulhsu x7,x8,x9
	sw x7,320(x0)

	mulhsu x8,x9,x8
	sw x8,324(x0)

	mulhsu x1,x1,x1
	sw x1,328(x0)

	mulhsu x2,x2,x2
	sw x2,332(x0)

	mulhsu x3,x3,x3
	sw x3,336(x0)

	mulhsu x4,x4,x4
	sw x4,340(x0)

	mulhsu x5,x5,x5
	sw x5,344(x0)

	mulhsu x6,x6,x6
	sw x6,348(x0)

	mulhsu x7,x7,x7
	sw x7,352(x0)

	mulhsu x8,x8,x8
	sw x8,356(x0)

	mulhsu x9,x9,x9
	sw x9,360(x0)

	mulhsu x10,x10,x10
	sw x10,364(x0)

	mulhsu x11,x11,x11
	sw x11,368(x0)

	mulhsu x12,x12,x12
	sw x12,372(x0)

	mulhsu x13,x13,x13
	sw x13,376(x0)

	mulhsu x14,x14,x14
	sw x14,380(x0)

	mulhsu x15,x15,x15
	sw x15,384(x0)

	mulhsu x16,x16,x16
	sw x16,388(x0)

	mulhsu x17,x17,x17
	sw x17,392(x0)

	mulhsu x18,x18,x18
	sw x18,396(x0)

	mulhsu x19,x19,x19
	sw x19,400(x0)

	mulhsu x20,x20,x20
	sw x20,404(x0)

	mulhsu x21,x21,x21
	sw x21,408(x0)

	mulhsu x22,x22,x22
	sw x22,412(x0)

	mulhsu x23,x23,x23
	sw x23,416(x0)

	mulhsu x24,x24,x24
	sw x24,420(x0)

	mulhsu x25,x25,x25
	sw x25,424(x0)

	mulhsu x26,x26,x26
	sw x26,428(x0)

	mulhsu x27,x27,x27
	sw x27,432(x0)

	mulhsu x28,x28,x28
	sw x28,436(x0)

	mulhsu x29,x29,x29
	sw x29,440(x0)

	mulhsu x30,x30,x30
	sw x30,444(x0)

	mulhsu x31,x31,x31
	sw x31,448(x0)




	li x1,0x00000000
	li x2,0xFFFF0001
	li x3,0xF0F00002
	li x4,0x0F0FFFFF
	li x5,0xFF000000
	li x6,0x00FFFFFF
	li x7,0x55555555
	li x8,0xAAAAAAAA
	li x9,0xCCCCCCCC


	mulhu x10,x1,x1
	sw x10,0(x0)

	mulhu x11,x2,x2
	sw x11,4(x0)

	mulhu x12,x3,x3
	sw x12,8(x0)

	mulhu x13,x4,x4
	sw x13,12(x0)

	mulhu x15,x5,x5
	sw x15,16(x0)

	mulhu x16,x6,x6
	sw x16,20(x0)

	mulhu x17,x7,x7
	sw x17,24(x0)

	mulhu x18,x8,x8
	sw x18,28(x0)

	mulhu x19,x9,x9
	sw x19,32(x0)

	mulhu x20,x1,x2
	sw x20,36(x0)

	mulhu x21,x2,x1
	sw x21,40(x0)

	mulhu x22,x3,x1
	sw x22,44(x0)

	mulhu x23,x1,x3
	sw x23,48(x0)

	mulhu x24,x4,x1
	sw x24,52(x0)

	mulhu x25,x1,x4
	sw x25,56(x0)

	mulhu x26,x5,x1
	sw x26,60(x0)

	mulhu x27,x1,x5
	sw x27,64(x0)

	mulhu x28,x6,x1
	sw x28,68(x0)

	mulhu x29,x1,x6
	sw x29,72(x0)

	mulhu x30,x7,x1
	sw x30,76(x0)

	mulhu x31,x1,x7
	sw x31,80(x0)

	mulhu x10,x8,x1
	sw x10,84(x0)

	mulhu x11,x1,x8
	sw x11,88(x0)

	mulhu x12,x9,x1
	sw x12,92(x0)

	mulhu x13,x1,x9
	sw x13,96(x0)

	mulhu x14,x2,x2
	sw x14,100(x0)

	mulhu x15,x2,x3
	sw x15,104(x0)

	mulhu x16,x3,x2
	sw x16,108(x0)

	mulhu x17,x2,x4
	sw x17,112(x0)

	mulhu x18,x4,x2
	sw x18,116(x0)

	mulhu x19,x2,x5
	sw x19,120(x0)

	mulhu x20,x5,x2
	sw x20,124(x0)

	mulhu x21,x2,x6
	sw x21,128(x0)

	mulhu x21,x6,x2
	sw x21,132(x0)

	mulhu x22,x2,x7
	sw x22,136(x0)

	mulhu x23,x7,x2
	sw x23,140(x0)

	mulhu x24,x2,x8
	sw x24,144(x0)

	mulhu x25,x8,x2
	sw x25,148(x0)

	mulhu x26,x2,x9
	sw x26,152(x0)

	mulhu x27,x9,x2
	sw x27,156(x0)

	mulhu x28,x3,x4
	sw x28,160(x0)

	mulhu x28,x4,x3
	sw x28,164(x0)

	mulhu x29,x3,x5
	sw x29,168(x0)

	mulhu x30,x5,x3
	sw x30,172(x0)

	mulhu x31,x3,x6
	sw x31,176(x0)

	mulhu x10,x6,x3
	sw x10,180(x0)

	mulhu x11,x3,x7
	sw x11,184(x0)

	mulhu x12,x7,x3
	sw x12,188(x0)

	mulhu x13,x3,x8
	sw x13,192(x0)

	mulhu x14,x8,x3
	sw x14,196(x0)

	mulhu x15,x3,x9
	sw x15,200(x0)

	mulhu x16,x9,x3
	sw x16,204(x0)

	mulhu x17,x4,x5
	sw x17,208(x0)

	mulhu x18,x5,x4
	sw x18,212(x0)

	mulhu x19,x4,x6
	sw x19,216(x0)

	mulhu x20,x6,x4
	sw x20,220(x0)

	mulhu x21,x4,x7
	sw x21,224(x0)

	mulhu x22,x7,x4
	sw x22,228(x0)

	mulhu x23,x4,x8
	sw x23,232(x0)

	mulhu x24,x8,x4
	sw x24,236(x0)

	mulhu x25,x4,x9
	sw x25,240(x0)

	mulhu x26,x9,x4
	sw x26,244(x0)

	mulhu x27,x5,x6
	sw x27,248(x0)

	mulhu x28,x6,x5
	sw x28,252(x0)

	mulhu x29,x5,x7
	sw x29,256(x0)

	mulhu x30,x7,x5
	sw x30,260(x0)

	mulhu x31,x5,x8
	sw x31,264(x0)

	mulhu x10,x8,x5
	sw x10,268(x0)

	mulhu x11,x5,x9
	sw x11,272(x0)

	mulhu x1,x9,x5
	sw x1,276(x0)

	mulhu x2,x6,x7
	sw x2,280(x0)

	mulhu x3,x7,x6
	sw x3,284(x0)

	mulhu x4,x6,x8
	sw x4,288(x0)

	mulhu x5,x8,x6
	sw x5,292(x0)

	mulhu x1,x6,x9
	sw x1,296(x0)

	mulhu x2,x9,x6
	sw x2,300(x0)

	mulhu x3,x7,x8
	sw x3,304(x0)

	mulhu x4,x8,x7
	sw x4,308(x0)

	mulhu x5,x7,x9
	sw x5,312(x0)

	mulhu x6,x9,x7
	sw x6,316(x0)

	mulhu x7,x8,x9
	sw x7,320(x0)

	mulhu x8,x9,x8
	sw x8,324(x0)

	mulhu x1,x1,x1
	sw x1,328(x0)

	mulhu x2,x2,x2
	sw x2,332(x0)

	mulhu x3,x3,x3
	sw x3,336(x0)

	mulhu x4,x4,x4
	sw x4,340(x0)

	mulhu x5,x5,x5
	sw x5,344(x0)

	mulhu x6,x6,x6
	sw x6,348(x0)

	mulhu x7,x7,x7
	sw x7,352(x0)

	mulhu x8,x8,x8
	sw x8,356(x0)

	mulhu x9,x9,x9
	sw x9,360(x0)

	mulhu x10,x10,x10
	sw x10,364(x0)

	mulhu x11,x11,x11
	sw x11,368(x0)

	mulhu x12,x12,x12
	sw x12,372(x0)

	mulhu x13,x13,x13
	sw x13,376(x0)

	mulhu x14,x14,x14
	sw x14,380(x0)

	mulhu x15,x15,x15
	sw x15,384(x0)

	mulhu x16,x16,x16
	sw x16,388(x0)

	mulhu x17,x17,x17
	sw x17,392(x0)

	mulhu x18,x18,x18
	sw x18,396(x0)

	mulhu x19,x19,x19
	sw x19,400(x0)

	mulhu x20,x20,x20
	sw x20,404(x0)

	mulhu x21,x21,x21
	sw x21,408(x0)

	mulhu x22,x22,x22
	sw x22,412(x0)

	mulhu x23,x23,x23
	sw x23,416(x0)

	mulhu x24,x24,x24
	sw x24,420(x0)

	mulhu x25,x25,x25
	sw x25,424(x0)

	mulhu x26,x26,x26
	sw x26,428(x0)

	mulhu x27,x27,x27
	sw x27,432(x0)

	mulhu x28,x28,x28
	sw x28,436(x0)

	mulhu x29,x29,x29
	sw x29,440(x0)

	mulhu x30,x30,x30
	sw x30,444(x0)

	mulhu x31,x31,x31
	sw x31,448(x0)

	# ABI epilogue
	li t0, 0x00104000    # restore stack pointer
	lw sp, 0(t0)
	lw s11, 8(sp)        # restore callee-saved registers
	lw s10, 16(sp)
	lw s9, 24(sp)
	lw s8, 32(sp)
	lw s7, 40(sp)
	lw s6, 48(sp)
	lw s5, 56(sp)
	lw s4, 64(sp)
	lw s3, 72(sp)
	lw s2, 80(sp)
	lw s1, 88(sp)
	lw s0, 96(sp)
	lw ra, 104(sp)       # restore return address
	addi sp, sp, 112     # deallocate stack space
	jr ra                # return to caller
