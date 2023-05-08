.global test_alu
.text

test_alu:

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
#                                     _     _    _                           #
#                               /\   | |   | |  | |                          #
#                              /  \  | |   | |  | |                          #
#                             / /\ \ | |   | |  | |                          #
#                            / ____ \| |___| |__| |                          #
#                           /_/    \_\______\____/                           #
#                                                                            #
#                                                                            #
##############################################################################

	li                  x18,    0xba100958
	slli                x22,    x18,    28
	li                  x31,    0x1077ed
	sw                  x22,    0(x31)
	li                  x3,     0x774865c2
	slli                x31,    x3,     16
	li                  x31,    0x105d2e
	sw                  x31,    0(x31)
	li                  x22,    0x762ef787
	slli                x24,    x22,    2
	li                  x31,    0x104c6a
	sw                  x24,    0(x31)
	li                  x25,    0xa95946ea
	srli                x26,    x25,    12
	li                  x31,    0x102f19
	sw                  x26,    0(x31)
	li                  x28,    0x585b34ce
	srli                x1,     x28,    2
	li                  x31,    0x100744
	sw                  x1,     0(x31)
	li                  x11,    0x87103be7
	srli                x13,    x11,    30
	li                  x31,    0x10654f
	sw                  x13,    0(x31)
	li                  x10,    0x10f88cc2
	srai                x25,    x10,    27
	li                  x31,    0x1066e4
	sw                  x25,    0(x31)
	li                  x27,    0xfb10edd1
	srai                x3,     x27,    23
	li                  x31,    0x107f3a
	sw                  x3,     0(x31)
	li                  x25,    0xb7dd6fb7
	srai                x20,    x25,    26
	li                  x31,    0x107311
	sw                  x20,    0(x31)
	li                  x8,     0xf2e40524
	addi                x13,    x8,     344
	li                  x31,    0x1032a2
	sw                  x13,    0(x31)
	li                  x5,     0x1df7d9f3
	addi                x27,    x5,     1136
	li                  x31,    0x10203f
	sw                  x27,    0(x31)
	li                  x21,    0x132b6241
	addi                x4,     x21,    1900
	li                  x31,    0x1016f8
	sw                  x4,     0(x31)
	li                  x1,     0x6f00fb86
	slti                x5,     x1,     1062
	li                  x31,    0x1055e5
	sw                  x5,     0(x31)
	li                  x19,    0x1a5c3e89
	slti                x3,     x19,    -1926
	li                  x31,    0x104a12
	sw                  x3,     0(x31)
	li                  x30,    0xaf3b8a1d
	slti                x10,    x30,    -487
	li                  x31,    0x10629f
	sw                  x10,    0(x31)
	li                  x0,     0x59e1a4b7
	andi                x1,     x0,     -1002
	li                  x31,    0x107571
	sw                  x1,     0(x31)
	li                  x1,     0xef01f666
	andi                x3,     x1,     509
	li                  x31,    0x101661
	sw                  x3,     0(x31)
	li                  x20,    0xf03ab596
	andi                x10,    x20,    -1610
	li                  x31,    0x102d20
	sw                  x10,    0(x31)
	li                  x20,    0x3e5963f4
	ori                 x18,    x20,    908
	li                  x31,    0x103cd6
	sw                  x18,    0(x31)
	li                  x14,    0xbe45a628
	ori                 x4,     x14,    1925
	li                  x31,    0x103e2c
	sw                  x4,     0(x31)
	li                  x7,     0xfb3897e0
	ori                 x22,    x7,     -999
	li                  x31,    0x1031a7
	sw                  x22,    0(x31)
	li                  x11,    0x5b47f491
	xori                x22,    x11,    1332
	li                  x31,    0x107a3c
	sw                  x22,    0(x31)
	li                  x15,    0x5f247519
	xori                x11,    x15,    -676
	li                  x31,    0x103f68
	sw                  x11,    0(x31)
	li                  x19,    0xddabfc8e
	xori                x28,    x19,    1276
	li                  x31,    0x100d15
	sw                  x28,    0(x31)
	li                  x6,     0xbb6175b5
	li                  x3,     0x7167cbc8
	add                 x18,    x6,     x3
	li                  x31,    0x1072eb
	sw                  x18,    0(x31)
	li                  x2,     0xb6d4b011
	li                  x8,     0x8b7e948a
	add                 x19,    x2,     x8
	li                  x31,    0x10239e
	sw                  x19,    0(x31)
	li                  x17,    0x4e2f6c44
	li                  x23,    0xf8fa786e
	add                 x8,     x17,    x23
	li                  x31,    0x1046d9
	sw                  x8,     0(x31)
	li                  x7,     0xcae0c4a9
	li                  x13,    0x840ecc67
	sub                 x27,    x7,     x13
	li                  x31,    0x10698a
	sw                  x27,    0(x31)
	li                  x6,     0xed293ced
	li                  x6,     0xbd185155
	sub                 x30,    x6,     x6
	li                  x31,    0x10709d
	sw                  x30,    0(x31)
	li                  x30,    0xca0203ee
	li                  x17,    0xbee3c45b
	sub                 x3,     x30,    x17
	li                  x31,    0x105cbf
	sw                  x3,     0(x31)
	li                  x9,     0xce10e12f
	li                  x13,    0xa3559ed0
	mul                 x6,     x9,     x13
	li                  x31,    0x104af1
	sw                  x6,     0(x31)
	li                  x20,    0xb681c079
	li                  x19,    0x14fcc8d1
	mul                 x22,    x20,    x19
	li                  x31,    0x1051c0
	sw                  x22,    0(x31)
	li                  x9,     0x64d11710
	li                  x27,    0x16a4131f
	mul                 x13,    x9,     x27
	li                  x31,    0x10044d
	sw                  x13,    0(x31)
	li                  x12,    0x5e5e00c
	li                  x30,    0xa451913a
	mulh                x19,    x12,    x30
	li                  x31,    0x102a76
	sw                  x19,    0(x31)
	li                  x28,    0x9741dd2e
	li                  x30,    0x7a85ca91
	mulh                x24,    x28,    x30
	li                  x31,    0x105117
	sw                  x24,    0(x31)
	li                  x14,    0x3313b61
	li                  x29,    0x79953765
	mulh                x14,    x14,    x29
	li                  x31,    0x105be7
	sw                  x14,    0(x31)
	li                  x24,    0x70623de8
	li                  x27,    0xdbb1f3af
	mulhu               x27,    x24,    x27
	li                  x31,    0x100508
	sw                  x27,    0(x31)
	li                  x28,    0x8319a785
	li                  x25,    0x2eecb5e9
	mulhu               x18,    x28,    x25
	li                  x31,    0x103d62
	sw                  x18,    0(x31)
	li                  x16,    0xaaac4e21
	li                  x0,     0xc850b574
	mulhu               x11,    x16,    x0
	li                  x31,    0x1005f4
	sw                  x11,    0(x31)
	li                  x8,     0x1d604cc9
	li                  x23,    0x9e6c485e
	mulhsu              x17,    x8,     x23
	li                  x31,    0x106ee7
	sw                  x17,    0(x31)
	li                  x19,    0x839ad00f
	li                  x27,    0xc3b7824c
	mulhsu              x6,     x19,    x27
	li                  x31,    0x106242
	sw                  x6,     0(x31)
	li                  x8,     0x1b98f4cd
	li                  x22,    0xee716f5a
	mulhsu              x12,    x8,     x22
	li                  x31,    0x104db6
	sw                  x12,    0(x31)
	li                  x24,    0xf946d61f
	li                  x19,    0x7dbbe83a
	div                 x27,    x24,    x19
	li                  x31,    0x107442
	sw                  x27,    0(x31)
	li                  x25,    0xb659a1f5
	li                  x30,    0xf2dcbb45
	div                 x29,    x25,    x30
	li                  x31,    0x10393a
	sw                  x29,    0(x31)
	li                  x22,    0x637c6fba
	li                  x1,     0x615cfb7c
	div                 x8,     x22,    x1
	li                  x31,    0x101e46
	sw                  x8,     0(x31)
	li                  x28,    0xd0491c21
	li                  x18,    0x8af16f68
	rem                 x22,    x28,    x18
	li                  x31,    0x107e31
	sw                  x22,    0(x31)
	li                  x16,    0xcd9ddb8b
	li                  x7,     0xd59883c0
	rem                 x8,     x16,    x7
	li                  x31,    0x102036
	sw                  x8,     0(x31)
	li                  x23,    0xadc7eee3
	li                  x1,     0xfdf66728
	rem                 x22,    x23,    x1
	li                  x31,    0x106cef
	sw                  x22,    0(x31)
	li                  x25,    0xe242e6ec
	li                  x6,     0xf3552084
	divu                x23,    x25,    x6
	li                  x31,    0x101edd
	sw                  x23,    0(x31)
	li                  x3,     0xf30c14d5
	li                  x1,     0x29343b08
	divu                x14,    x3,     x1
	li                  x31,    0x100cef
	sw                  x14,    0(x31)
	li                  x2,     0x2fe8643f
	li                  x10,    0x208880f7
	divu                x23,    x2,     x10
	li                  x31,    0x103b1b
	sw                  x23,    0(x31)
	li                  x7,     0xfc8c4281
	li                  x7,     0x13d64ace
	remu                x14,    x7,     x7
	li                  x31,    0x106a9e
	sw                  x14,    0(x31)
	li                  x18,    0xcc8109c3
	li                  x19,    0x3579b1b0
	remu                x22,    x18,    x19
	li                  x31,    0x10066c
	sw                  x22,    0(x31)
	li                  x24,    0xc96d0076
	li                  x8,     0x681458a2
	remu                x1,     x24,    x8
	li                  x31,    0x103b0b
	sw                  x1,     0(x31)
	li                  x27,    0xec79406f
	li                  x12,    0x9f12143a
	slt                 x22,    x27,    x12
	li                  x31,    0x1073fa
	sw                  x22,    0(x31)
	li                  x29,    0x3324449f
	li                  x14,    0xc7b56673
	slt                 x11,    x29,    x14
	li                  x31,    0x107bce
	sw                  x11,    0(x31)
	li                  x23,    0xfd5edcf7
	li                  x15,    0x9bd35c96
	slt                 x26,    x23,    x15
	li                  x31,    0x102ccf
	sw                  x26,    0(x31)
	li                  x29,    0x9261c24d
	li                  x21,    0xb0a34dd4
	sltu                x12,    x29,    x21
	li                  x31,    0x104dfe
	sw                  x12,    0(x31)
	li                  x11,    0xc2666065
	li                  x16,    0xaed8fa47
	sltu                x5,     x11,    x16
	li                  x31,    0x104522
	sw                  x5,     0(x31)
	li                  x2,     0xb9d91d8f
	li                  x23,    0x475fdf88
	sltu                x28,    x2,     x23
	li                  x31,    0x1029b2
	sw                  x28,    0(x31)

	# Improve divider coverage
	li                  x1,     97838441
	li                  x2,     3382532953
	li                  x3,     65052185
	li                  x4,     2771878992
	addi                x31,    x0,     30
	lp.setup            x0,     x31,    div_loop
	div                 x5,     x1,     x2
	rem                 x6,     x1,     x2
	divu                x7,     x3,     x4
	remu                x8,     x3,     x4
	add                 x1,     x1,     x5
	or                  x2,     x2,     x6
	sub                 x2,     x2,     x1
	and                 x3,     x3,     x7
	mul                 x3,     x3,     x2
	xori                x4,     x4,     -1
	slli                x4,     x4,     3
	sub                 x4,     x4,     x15
	sw                  x1,     0(x0)
	sw                  x2,     0(x0)
	sw                  x3,     0(x0)
	sw                  x4,     0(x0)
	sw                  x5,     0(x0)
	sw                  x6,     0(x0)
	sw                  x7,     0(x0)
	sw                  x8,     0(x0)
div_loop:

	# Divide by zero
	div                 x1,     x0,     x0
	sw                  x1,     0(x0)

	# ALU extensions
	li                  x2,     0x73c743f8
	p.extract           x22,    x2,     2,      19
	li                  x31,    0x103338
	sw                  x22,    0(x31)
	li                  x27,    0x5d4ff2a
	p.extract           x18,    x27,    23,     24
	li                  x31,    0x1006b4
	sw                  x18,    0(x31)
	li                  x11,    0xd020f499
	p.extract           x15,    x11,    22,     24
	li                  x31,    0x105aa1
	sw                  x15,    0(x31)
	li                  x31,    0x34cac0b1
	p.extractu          x15,    x31,    4,      19
	li                  x31,    0x106694
	sw                  x15,    0(x31)
	li                  x13,    0xddd93e55
	p.extractu          x14,    x13,    25,     9
	li                  x31,    0x1002b4
	sw                  x14,    0(x31)
	li                  x21,    0x69b3ff69
	p.extractu          x6,     x21,    15,     21
	li                  x31,    0x104481
	sw                  x6,     0(x31)
	li                  x23,    0xfa1a4639
	p.insert            x16,    x23,    15,     24
	li                  x31,    0x101d20
	sw                  x16,    0(x31)
	li                  x8,     0x627fc817
	p.insert            x27,    x8,     27,     15
	li                  x31,    0x101411
	sw                  x27,    0(x31)
	li                  x29,    0x9e7119be
	p.insert            x1,     x29,    31,     17
	li                  x31,    0x105171
	sw                  x1,     0(x31)
	li                  x20,    0x86b3bb77
	p.bclr              x30,    x20,    4,      29
	li                  x31,    0x102568
	sw                  x30,    0(x31)
	li                  x23,    0x974dc86c
	p.bclr              x20,    x23,    29,     20
	li                  x31,    0x104762
	sw                  x20,    0(x31)
	li                  x2,     0x26a4eee1
	p.bclr              x26,    x2,     11,     4
	li                  x31,    0x10798b
	sw                  x26,    0(x31)
	li                  x7,     0x747e255c
	p.bset              x1,     x7,     20,     20
	li                  x31,    0x1078fd
	sw                  x1,     0(x31)
	li                  x0,     0x4b94d62
	p.bset              x7,     x0,     28,     11
	li                  x31,    0x1018b4
	sw                  x7,     0(x31)
	li                  x15,    0x161edd8d
	p.bset              x24,    x15,    3,      14
	li                  x31,    0x10494b
	sw                  x24,    0(x31)
	li                  x16,    0xe59bed68
	li                  x30,    0xdef2f384
	p.extractr          x31,    x16,    x30
	li                  x31,    0x10480b
	sw                  x31,    0(x31)
	li                  x12,    0x561c7e2f
	li                  x28,    0x4153227d
	p.extractr          x11,    x12,    x28
	li                  x31,    0x106a55
	sw                  x11,    0(x31)
	li                  x15,    0xbcd37397
	li                  x15,    0x1d113ed0
	p.extractr          x21,    x15,    x15
	li                  x31,    0x102f1f
	sw                  x21,    0(x31)
	li                  x16,    0xb7cec589
	li                  x5,     0xcbe45195
	p.extractur         x2,     x16,    x5
	li                  x31,    0x107b95
	sw                  x2,     0(x31)
	li                  x22,    0x5de97b7e
	li                  x21,    0xf9591578
	p.extractur         x24,    x22,    x21
	li                  x31,    0x1024ea
	sw                  x24,    0(x31)
	li                  x29,    0x69eee2a0
	li                  x8,     0x530bc1d3
	p.extractur         x15,    x29,    x8
	li                  x31,    0x104082
	sw                  x15,    0(x31)
	li                  x4,     0x23355901
	li                  x2,     0x6570e037
	p.insertr           x6,     x4,     x2
	li                  x31,    0x100845
	sw                  x6,     0(x31)
	li                  x4,     0x2da9b41d
	li                  x28,    0x4edb798d
	p.insertr           x27,    x4,     x28
	li                  x31,    0x10177d
	sw                  x27,    0(x31)
	li                  x18,    0x3feb473f
	li                  x6,     0x47f9c7b
	p.insertr           x1,     x18,    x6
	li                  x31,    0x101cda
	sw                  x1,     0(x31)
	li                  x18,    0xe44c43f7
	li                  x28,    0x647877b9
	p.bclrr             x3,     x18,    x28
	li                  x31,    0x105273
	sw                  x3,     0(x31)
	li                  x15,    0xcfcfb808
	li                  x10,    0x9c19a6bb
	p.bclrr             x10,    x15,    x10
	li                  x31,    0x106fbc
	sw                  x10,    0(x31)
	li                  x16,    0x244a6411
	li                  x20,    0xc4d9d86
	p.bclrr             x21,    x16,    x20
	li                  x31,    0x106816
	sw                  x21,    0(x31)
	li                  x17,    0x65da2412
	li                  x15,    0xa371b4a5
	p.bsetr             x1,     x17,    x15
	li                  x31,    0x1007ee
	sw                  x1,     0(x31)
	li                  x30,    0x91c7eb9b
	li                  x12,    0xf40c3c53
	p.bsetr             x28,    x30,    x12
	li                  x31,    0x103a78
	sw                  x28,    0(x31)
	li                  x30,    0xf43c736
	li                  x17,    0x1255713b
	p.bsetr             x20,    x30,    x17
	li                  x31,    0x10584f
	sw                  x20,    0(x31)
	li                  x8,     0x37dce2b9
	li                  x19,    0x59204480
	p.ror               x31,    x8,     x19
	li                  x31,    0x100a53
	sw                  x31,    0(x31)
	li                  x6,     0x90997d6f
	li                  x17,    0xc7fb8880
	p.ror               x13,    x6,     x17
	li                  x31,    0x1061c1
	sw                  x13,    0(x31)
	li                  x22,    0xcdd68940
	li                  x1,     0xa0bfab0a
	p.ror               x14,    x22,    x1
	li                  x31,    0x103cfe
	sw                  x14,    0(x31)
	li                  x18,    0xc17cbc20
	li                  x28,    0xba199d9
	p.slet              x20,    x18,    x28
	li                  x31,    0x104e0a
	sw                  x20,    0(x31)
	li                  x3,     0xa5711264
	li                  x25,    0x2750b356
	p.slet              x27,    x3,     x25
	li                  x31,    0x10203a
	sw                  x27,    0(x31)
	li                  x13,    0xaf283302
	li                  x29,    0x636a7247
	p.slet              x8,     x13,    x29
	li                  x31,    0x105356
	sw                  x8,     0(x31)
	li                  x24,    0xd4da8d47
	li                  x23,    0xed964d6e
	p.sletu             x26,    x24,    x23
	li                  x31,    0x101b78
	sw                  x26,    0(x31)
	li                  x9,     0x316457cd
	li                  x14,    0x624305e0
	p.sletu             x1,     x9,     x14
	li                  x31,    0x100125
	sw                  x1,     0(x31)
	li                  x9,     0x78518e1a
	li                  x0,     0xc4a7afe0
	p.sletu             x10,    x9,     x0
	li                  x31,    0x104d28
	sw                  x10,    0(x31)
	li                  x13,    0xabff463
	li                  x1,     0xf6488ddb
	p.min               x2,     x13,    x1
	li                  x31,    0x107532
	sw                  x2,     0(x31)
	li                  x6,     0xd2154453
	li                  x8,     0xbed44c56
	p.min               x30,    x6,     x8
	li                  x31,    0x107238
	sw                  x30,    0(x31)
	li                  x24,    0x54db3498
	li                  x6,     0xea281515
	p.min               x1,     x24,    x6
	li                  x31,    0x100c34
	sw                  x1,     0(x31)
	li                  x30,    0xa32126d
	li                  x30,    0x7e4bfe74
	p.minu              x2,     x30,    x30
	li                  x31,    0x105838
	sw                  x2,     0(x31)
	li                  x17,    0xf331b089
	li                  x26,    0x62bd87b4
	p.minu              x15,    x17,    x26
	li                  x31,    0x1020b2
	sw                  x15,    0(x31)
	li                  x11,    0x39540150
	li                  x9,     0xe3dca581
	p.minu              x10,    x11,    x9
	li                  x31,    0x102d25
	sw                  x10,    0(x31)
	li                  x22,    0x109d1dec
	li                  x28,    0xc5faace
	p.max               x3,     x22,    x28
	li                  x31,    0x104b51
	sw                  x3,     0(x31)
	li                  x26,    0xd013ffc5
	li                  x0,     0xeaa498b6
	p.max               x1,     x26,    x0
	li                  x31,    0x1002b3
	sw                  x1,     0(x31)
	li                  x30,    0x47a7f048
	li                  x12,    0xc260b60f
	p.max               x24,    x30,    x12
	li                  x31,    0x1029bb
	sw                  x24,    0(x31)
	li                  x1,     0x627d517a
	li                  x2,     0xde5ce0b7
	p.maxu              x30,    x1,     x2
	li                  x31,    0x1004c8
	sw                  x30,    0(x31)
	li                  x3,     0x2b1fd326
	li                  x29,    0x1fc4caf8
	p.maxu              x14,    x3,     x29
	li                  x31,    0x104b77
	sw                  x14,    0(x31)
	li                  x5,     0x685ade30
	li                  x13,    0x15283a5e
	p.maxu              x15,    x5,     x13
	li                  x31,    0x1042c5
	sw                  x15,    0(x31)
	li                  x23,    0x9f7c9267
	li                  x18,    0x11ac8367
	p.clipr             x16,    x23,    x18
	li                  x31,    0x100b8c
	sw                  x16,    0(x31)
	li                  x20,    0x3d8de10b
	li                  x11,    0x18635fe7
	p.clipr             x1,     x20,    x11
	li                  x31,    0x10145f
	sw                  x1,     0(x31)
	li                  x13,    0x4a99181b
	li                  x3,     0x60df7be9
	p.clipr             x3,     x13,    x3
	li                  x31,    0x104c42
	sw                  x3,     0(x31)
	li                  x5,     0x7af6a5cb
	li                  x16,    0x8088deab
	p.clipur            x22,    x5,     x16
	li                  x31,    0x1045c6
	sw                  x22,    0(x31)
	li                  x22,    0x751eedef
	li                  x31,    0xc29823b7
	p.clipur            x28,    x22,    x31
	li                  x31,    0x104092
	sw                  x28,    0(x31)
	li                  x13,    0x7779e2b0
	li                  x8,     0x5854583d
	p.clipur            x29,    x13,    x8
	li                  x31,    0x102577
	sw                  x29,    0(x31)
	li                  x0,     0x25fd2d85
	li                  x15,    0x111d7607
	p.addNr             x19,    x0,     x15
	li                  x31,    0x104742
	sw                  x19,    0(x31)
	li                  x2,     0x88e74a7d
	li                  x21,    0x282c130e
	p.addNr             x3,     x2,     x21
	li                  x31,    0x106c58
	sw                  x3,     0(x31)
	li                  x27,    0x64cdb658
	li                  x15,    0x3a746280
	p.addNr             x14,    x27,    x15
	li                  x31,    0x10153f
	sw                  x14,    0(x31)
	li                  x8,     0xa4259f20
	li                  x15,    0x674a3a56
	p.adduNr            x4,     x8,     x15
	li                  x31,    0x100a34
	sw                  x4,     0(x31)
	li                  x4,     0x73e5e7c6
	li                  x23,    0x8f4805eb
	p.adduNr            x11,    x4,     x23
	li                  x31,    0x106ae5
	sw                  x11,    0(x31)
	li                  x6,     0xe4c1eb8b
	li                  x21,    0xd43d0958
	p.adduNr            x20,    x6,     x21
	li                  x31,    0x107366
	sw                  x20,    0(x31)
	li                  x7,     0x42fe42a0
	li                  x31,    0xb028330a
	p.addRNr            x20,    x7,     x31
	li                  x31,    0x100e95
	sw                  x20,    0(x31)
	li                  x31,    0xf885cc04
	li                  x12,    0xe00f7e51
	p.addRNr            x16,    x31,    x12
	li                  x31,    0x1041a7
	sw                  x16,    0(x31)
	li                  x22,    0x51429a95
	li                  x4,     0x99cf7569
	p.addRNr            x12,    x22,    x4
	li                  x31,    0x1039e3
	sw                  x12,    0(x31)
	li                  x6,     0x642c8346
	li                  x31,    0x8f18b578
	p.adduRNr           x4,     x6,     x31
	li                  x31,    0x10778d
	sw                  x4,     0(x31)
	li                  x21,    0x20813687
	li                  x0,     0x1ad0c0e3
	p.adduRNr           x21,    x21,    x0
	li                  x31,    0x105901
	sw                  x21,    0(x31)
	li                  x17,    0xefcdd2f6
	li                  x10,    0x50e27161
	p.adduRNr           x27,    x17,    x10
	li                  x31,    0x10705c
	sw                  x27,    0(x31)
	li                  x2,     0xd4e17b4a
	li                  x2,     0xcbe73d64
	p.subNr             x15,    x2,     x2
	li                  x31,    0x10101e
	sw                  x15,    0(x31)
	li                  x5,     0x8bc6e443
	li                  x26,    0xe6681e11
	p.subNr             x15,    x5,     x26
	li                  x31,    0x10776d
	sw                  x15,    0(x31)
	li                  x16,    0xb38a427f
	li                  x2,     0xe0480a7b
	p.subNr             x29,    x16,    x2
	li                  x31,    0x107826
	sw                  x29,    0(x31)
	li                  x11,    0x4ad50389
	li                  x21,    0xdad741a5
	p.subuNr            x25,    x11,    x21
	li                  x31,    0x102c78
	sw                  x25,    0(x31)
	li                  x21,    0x7f46efb
	li                  x9,     0x7f030023
	p.subuNr            x12,    x21,    x9
	li                  x31,    0x107eaf
	sw                  x12,    0(x31)
	li                  x12,    0x56cc933e
	li                  x22,    0xab42a802
	p.subuNr            x8,     x12,    x22
	li                  x31,    0x103af6
	sw                  x8,     0(x31)
	li                  x19,    0xe550752
	li                  x7,     0x6db64017
	p.subRNr            x14,    x19,    x7
	li                  x31,    0x102dcb
	sw                  x14,    0(x31)
	li                  x1,     0xd88a33d5
	li                  x17,    0xeb176721
	p.subRNr            x7,     x1,     x17
	li                  x31,    0x10307c
	sw                  x7,     0(x31)
	li                  x2,     0x9532a93c
	li                  x3,     0xd39d8c23
	p.subRNr            x24,    x2,     x3
	li                  x31,    0x106161
	sw                  x24,    0(x31)
	li                  x19,    0x3567b5f1
	li                  x1,     0x6fc3cb4d
	p.subuRNr           x25,    x19,    x1
	li                  x31,    0x105140
	sw                  x25,    0(x31)
	li                  x18,    0xa3ab55fe
	li                  x9,     0x35b53d8c
	p.subuRNr           x14,    x18,    x9
	li                  x31,    0x1010b4
	sw                  x14,    0(x31)
	li                  x31,    0xcda76035
	li                  x26,    0xb836d35f
	p.subuRNr           x1,     x31,    x26
	li                  x31,    0x104b10
	sw                  x1,     0(x31)
	li                  x2,     0x399237f5
	li                  x24,    0xfa5d437f
	p.mac               x9,     x2,     x24
	li                  x31,    0x107203
	sw                  x9,     0(x31)
	li                  x27,    0x38f6f473
	li                  x2,     0xb60ea21
	p.mac               x7,     x27,    x2
	li                  x31,    0x101dc0
	sw                  x7,     0(x31)
	li                  x3,     0x329f8c78
	li                  x10,    0x4fd0efa8
	p.mac               x15,    x3,     x10
	li                  x31,    0x101b4a
	sw                  x15,    0(x31)
	li                  x1,     0xdb7997b0
	li                  x16,    0x9c235054
	p.msu               x26,    x1,     x16
	li                  x31,    0x1024cf
	sw                  x26,    0(x31)
	li                  x23,    0x7aba8893
	li                  x8,     0x5226cb59
	p.msu               x7,     x23,    x8
	li                  x31,    0x1057d0
	sw                  x7,     0(x31)
	li                  x19,    0xe7b2f985
	li                  x20,    0xa49112d4
	p.msu               x19,    x19,    x20
	li                  x31,    0x1003ee
	sw                  x19,    0(x31)
	li                  x20,    0xb172755
	li                  x16,    0x85b55787
	p.muls              x16,    x20,    x16
	li                  x31,    0x103299
	sw                  x16,    0(x31)
	li                  x30,    0xf3661180
	li                  x23,    0x6a1cef73
	p.muls              x30,    x30,    x23
	li                  x31,    0x100d0f
	sw                  x30,    0(x31)
	li                  x0,     0x2c8b96bd
	li                  x25,    0xd6514464
	p.muls              x13,    x0,     x25
	li                  x31,    0x101211
	sw                  x13,    0(x31)
	li                  x4,     0x2e240162
	li                  x7,     0x9d6ad627
	p.mulhhs            x11,    x4,     x7
	li                  x31,    0x10559d
	sw                  x11,    0(x31)
	li                  x12,    0xe4e88664
	li                  x24,    0xd04a1c00
	p.mulhhs            x29,    x12,    x24
	li                  x31,    0x105362
	sw                  x29,    0(x31)
	li                  x31,    0x4e5e5e38
	li                  x27,    0x705ce624
	p.mulhhs            x1,     x31,    x27
	li                  x31,    0x100201
	sw                  x1,     0(x31)
	li                  x30,    0x8cc0495c
	li                  x4,     0xf9c219b7
	p.mulu              x26,    x30,    x4
	li                  x31,    0x10798e
	sw                  x26,    0(x31)
	li                  x29,    0x800948f8
	li                  x0,     0xc14c6dd1
	p.mulu              x31,    x29,    x0
	li                  x31,    0x1007de
	sw                  x31,    0(x31)
	li                  x7,     0xfd465a83
	li                  x4,     0x571cd24e
	p.mulu              x1,     x7,     x4
	li                  x31,    0x10126f
	sw                  x1,     0(x31)
	li                  x8,     0x8c422964
	li                  x23,    0x405c4837
	p.mulhhu            x27,    x8,     x23
	li                  x31,    0x1048cf
	sw                  x27,    0(x31)
	li                  x11,    0x9c341886
	li                  x21,    0xa3ba7099
	p.mulhhu            x27,    x11,    x21
	li                  x31,    0x101b17
	sw                  x27,    0(x31)
	li                  x22,    0x466c78ce
	li                  x8,     0x5506ec2
	p.mulhhu            x23,    x22,    x8
	li                  x31,    0x10266c
	sw                  x23,    0(x31)
	li                  x19,    0x1a8fbb20
	p.ff1               x31,    x19
	li                  x31,    0x103257
	sw                  x31,    0(x31)
	li                  x29,    0x58cd7142
	p.ff1               x21,    x29
	li                  x31,    0x107af1
	sw                  x21,    0(x31)
	li                  x9,     0x567ddd59
	p.ff1               x19,    x9
	li                  x31,    0x104f47
	sw                  x19,    0(x31)
	li                  x11,    0xd98f5228
	p.fl1               x1,     x11
	li                  x31,    0x101d73
	sw                  x1,     0(x31)
	li                  x4,     0xb8ff805a
	p.fl1               x29,    x4
	li                  x31,    0x1061b5
	sw                  x29,    0(x31)
	li                  x1,     0x8d06d7a8
	p.fl1               x10,    x1
	li                  x31,    0x102217
	sw                  x10,    0(x31)
	li                  x2,     0x46180829
	p.clb               x30,    x2
	li                  x31,    0x101558
	sw                  x30,    0(x31)
	li                  x20,    0x665f6bbd
	p.clb               x27,    x20
	li                  x31,    0x10249b
	sw                  x27,    0(x31)
	li                  x15,    0x5003c0a1
	p.clb               x5,     x15
	li                  x31,    0x104ebe
	sw                  x5,     0(x31)
	li                  x21,    0x458d89c6
	p.cnt               x7,     x21
	li                  x31,    0x107f7c
	sw                  x7,     0(x31)
	li                  x25,    0x2503eb47
	p.cnt               x8,     x25
	li                  x31,    0x107809
	sw                  x8,     0(x31)
	li                  x28,    0x7c4e400
	p.cnt               x23,    x28
	li                  x31,    0x10675b
	sw                  x23,    0(x31)
	li                  x26,    0x95b60e3
	p.abs               x4,     x26
	li                  x31,    0x10039a
	sw                  x4,     0(x31)
	li                  x28,    0x11a3c641
	p.abs               x22,    x28
	li                  x31,    0x10616b
	sw                  x22,    0(x31)
	li                  x19,    0x98a68cd4
	p.abs               x15,    x19
	li                  x31,    0x101e9d
	sw                  x15,    0(x31)
	li                  x16,    0xa127bf61
	p.exths             x11,    x16
	li                  x31,    0x10743d
	sw                  x11,    0(x31)
	li                  x19,    0x796a33fc
	p.exths             x8,     x19
	li                  x31,    0x1006af
	sw                  x8,     0(x31)
	li                  x8,     0xa2e0694b
	p.exths             x31,    x8
	li                  x31,    0x102477
	sw                  x31,    0(x31)
	li                  x12,    0x3a91f1d0
	p.exthz             x20,    x12
	li                  x31,    0x101c24
	sw                  x20,    0(x31)
	li                  x8,     0xd1b59e7b
	p.exthz             x13,    x8
	li                  x31,    0x106a02
	sw                  x13,    0(x31)
	li                  x27,    0x14a90a8d
	p.exthz             x8,     x27
	li                  x31,    0x10756d
	sw                  x8,     0(x31)
	li                  x26,    0xe3f4829a
	p.extbs             x10,    x26
	li                  x31,    0x10305c
	sw                  x10,    0(x31)
	li                  x0,     0xcb3a512c
	p.extbs             x23,    x0
	li                  x31,    0x105407
	sw                  x23,    0(x31)
	li                  x25,    0xa9f3f7be
	p.extbs             x21,    x25
	li                  x31,    0x100e76
	sw                  x21,    0(x31)
	li                  x3,     0xecc86775
	p.extbz             x15,    x3
	li                  x31,    0x102334
	sw                  x15,    0(x31)
	li                  x9,     0x7f171a7
	p.extbz             x22,    x9
	li                  x31,    0x100329
	sw                  x22,    0(x31)
	li                  x11,    0x55327e3
	p.extbz             x14,    x11
	li                  x31,    0x100e11
	sw                  x14,    0(x31)
	li                  x9,     0x1406b3f9
	p.clip              x16,    x9,     22
	li                  x31,    0x105415
	sw                  x16,    0(x31)
	li                  x17,    0x36c3b6fc
	p.clip              x13,    x17,    10
	li                  x31,    0x10704b
	sw                  x13,    0(x31)
	li                  x7,     0xf05c9629
	p.clip              x2,     x7,     23
	li                  x31,    0x100b69
	sw                  x2,     0(x31)
	li                  x22,    0x65b84fe9
	p.clipu             x1,     x22,    12
	li                  x31,    0x1054b0
	sw                  x1,     0(x31)
	li                  x10,    0x8c431bf5
	p.clipu             x7,     x10,    2
	li                  x31,    0x1020fc
	sw                  x7,     0(x31)
	li                  x30,    0xe403732c
	p.clipu             x6,     x30,    2
	li                  x31,    0x1020d7
	sw                  x6,     0(x31)
	p.addN              x25,    x31,    x1,     2
	li                  x31,    0x100f3b
	sw                  x25,    0(x31)
	p.addN              x9,     x27,    x28,    13
	li                  x31,    0x1049d0
	sw                  x9,     0(x31)
	p.addN              x4,     x8,     x11,    23
	li                  x31,    0x106c5d
	sw                  x4,     0(x31)
	p.adduN             x17,    x18,    x15,    28
	li                  x31,    0x10249f
	sw                  x17,    0(x31)
	p.adduN             x16,    x10,    x1,     21
	li                  x31,    0x100285
	sw                  x16,    0(x31)
	p.adduN             x12,    x27,    x25,    22
	li                  x31,    0x1015dd
	sw                  x12,    0(x31)
	p.addRN             x18,    x24,    x31,    13
	li                  x31,    0x1000fb
	sw                  x18,    0(x31)
	p.addRN             x24,    x19,    x0,     13
	li                  x31,    0x1017bf
	sw                  x24,    0(x31)
	p.addRN             x22,    x4,     x20,    17
	li                  x31,    0x100107
	sw                  x22,    0(x31)
	p.adduRN            x27,    x9,     x13,    24
	li                  x31,    0x107e94
	sw                  x27,    0(x31)
	p.adduRN            x2,     x22,    x26,    1
	li                  x31,    0x10121a
	sw                  x2,     0(x31)
	p.adduRN            x29,    x14,    x12,    18
	li                  x31,    0x104784
	sw                  x29,    0(x31)
	p.subN              x9,     x25,    x15,    12
	li                  x31,    0x10256c
	sw                  x9,     0(x31)
	p.subN              x3,     x22,    x15,    6
	li                  x31,    0x100aa8
	sw                  x3,     0(x31)
	p.subN              x18,    x10,    x4,     25
	li                  x31,    0x107d8a
	sw                  x18,    0(x31)
	p.subuN             x19,    x16,    x28,    20
	li                  x31,    0x1014ce
	sw                  x19,    0(x31)
	p.subuN             x24,    x17,    x16,    15
	li                  x31,    0x1070ff
	sw                  x24,    0(x31)
	p.subuN             x1,     x13,    x17,    11
	li                  x31,    0x106984
	sw                  x1,     0(x31)
	p.subRN             x31,    x20,    x1,     1
	li                  x31,    0x1073cd
	sw                  x31,    0(x31)
	p.subRN             x19,    x13,    x4,     26
	li                  x31,    0x105dee
	sw                  x19,    0(x31)
	p.subRN             x19,    x16,    x22,    30
	li                  x31,    0x102fa1
	sw                  x19,    0(x31)
	p.subuRN            x25,    x0,     x29,    30
	li                  x31,    0x106a0f
	sw                  x25,    0(x31)
	p.subuRN            x13,    x28,    x25,    30
	li                  x31,    0x101b5f
	sw                  x13,    0(x31)
	p.subuRN            x18,    x22,    x15,    13
	li                  x31,    0x101c61
	sw                  x18,    0(x31)
	p.mulsN             x10,    x25,    x31,    7
	li                  x31,    0x107d21
	sw                  x10,    0(x31)
	p.mulsN             x10,    x10,    x29,    27
	li                  x31,    0x106c77
	sw                  x10,    0(x31)
	p.mulsN             x1,     x9,     x18,    31
	li                  x31,    0x105ef3
	sw                  x1,     0(x31)
	p.mulhhsN           x13,    x6,     x17,    6
	li                  x31,    0x104482
	sw                  x13,    0(x31)
	p.mulhhsN           x6,     x20,    x2,     15
	li                  x31,    0x1046d6
	sw                  x6,     0(x31)
	p.mulhhsN           x8,     x12,    x31,    26
	li                  x31,    0x1009ca
	sw                  x8,     0(x31)
	p.mulsRN            x4,     x5,     x28,    2
	li                  x31,    0x100853
	sw                  x4,     0(x31)
	p.mulsRN            x6,     x0,     x27,    16
	li                  x31,    0x1060f5
	sw                  x6,     0(x31)
	p.mulsRN            x29,    x19,    x0,     14
	li                  x31,    0x104489
	sw                  x29,    0(x31)
	p.mulhhsRN          x29,    x9,     x8,     14
	li                  x31,    0x101c96
	sw                  x29,    0(x31)
	p.mulhhsRN          x7,     x30,    x8,     0
	li                  x31,    0x101619
	sw                  x7,     0(x31)
	p.mulhhsRN          x14,    x0,     x25,    29
	li                  x31,    0x101685
	sw                  x14,    0(x31)
	p.muluN             x22,    x29,    x21,    0
	li                  x31,    0x106da8
	sw                  x22,    0(x31)
	p.muluN             x20,    x22,    x10,    2
	li                  x31,    0x1020d0
	sw                  x20,    0(x31)
	p.muluN             x12,    x19,    x27,    16
	li                  x31,    0x1075b4
	sw                  x12,    0(x31)
	p.mulhhuN           x26,    x8,     x12,    5
	li                  x31,    0x102004
	sw                  x26,    0(x31)
	p.mulhhuN           x10,    x2,     x23,    10
	li                  x31,    0x1038cf
	sw                  x10,    0(x31)
	p.mulhhuN           x25,    x1,     x5,     25
	li                  x31,    0x1077e3
	sw                  x25,    0(x31)
	p.muluRN            x13,    x6,     x17,    9
	li                  x31,    0x104423
	sw                  x13,    0(x31)
	p.muluRN            x19,    x1,     x29,    8
	li                  x31,    0x101307
	sw                  x19,    0(x31)
	p.muluRN            x3,     x28,    x7,     0
	li                  x31,    0x107d42
	sw                  x3,     0(x31)
	p.mulhhuRN          x18,    x13,    x6,     4
	li                  x31,    0x104a0d
	sw                  x18,    0(x31)
	p.mulhhuRN          x27,    x6,     x2,     1
	li                  x31,    0x102a1d
	sw                  x27,    0(x31)
	p.mulhhuRN          x30,    x7,     x13,    4
	li                  x31,    0x10059c
	sw                  x30,    0(x31)
	p.macsN             x24,    x21,    x20,    6
	li                  x31,    0x102ac6
	sw                  x24,    0(x31)
	p.macsN             x17,    x4,     x15,    16
	li                  x31,    0x102b84
	sw                  x17,    0(x31)
	p.macsN             x21,    x4,     x25,    10
	li                  x31,    0x103155
	sw                  x21,    0(x31)
	p.machhsN           x11,    x13,    x14,    19
	li                  x31,    0x101205
	sw                  x11,    0(x31)
	p.machhsN           x17,    x3,     x18,    23
	li                  x31,    0x1063c8
	sw                  x17,    0(x31)
	p.machhsN           x7,     x23,    x3,     29
	li                  x31,    0x104907
	sw                  x7,     0(x31)
	p.macsRN            x27,    x10,    x0,     30
	li                  x31,    0x1036c3
	sw                  x27,    0(x31)
	p.macsRN            x19,    x25,    x16,    22
	li                  x31,    0x102b44
	sw                  x19,    0(x31)
	p.macsRN            x24,    x11,    x30,    8
	li                  x31,    0x1046ea
	sw                  x24,    0(x31)
	p.machhsRN          x15,    x22,    x1,     15
	li                  x31,    0x1014ad
	sw                  x15,    0(x31)
	p.machhsRN          x20,    x0,     x29,    24
	li                  x31,    0x107bb8
	sw                  x20,    0(x31)
	p.machhsRN          x31,    x19,    x21,    24
	li                  x31,    0x101970
	sw                  x31,    0(x31)
	p.macuN             x25,    x25,    x27,    11
	li                  x31,    0x10042f
	sw                  x25,    0(x31)
	p.macuN             x2,     x6,     x28,    27
	li                  x31,    0x103520
	sw                  x2,     0(x31)
	p.macuN             x1,     x25,    x4,     8
	li                  x31,    0x10182f
	sw                  x1,     0(x31)
	p.machhuN           x1,     x28,    x17,    19
	li                  x31,    0x106c8a
	sw                  x1,     0(x31)
	p.machhuN           x4,     x28,    x4,     9
	li                  x31,    0x106c68
	sw                  x4,     0(x31)
	p.machhuN           x1,     x31,    x7,     24
	li                  x31,    0x1047cd
	sw                  x1,     0(x31)
	p.macuRN            x10,    x16,    x9,     23
	li                  x31,    0x107640
	sw                  x10,    0(x31)
	p.macuRN            x24,    x8,     x14,    8
	li                  x31,    0x107daa
	sw                  x24,    0(x31)
	p.macuRN            x21,    x10,    x21,    10
	li                  x31,    0x1063b8
	sw                  x21,    0(x31)
	p.machhuRN          x5,     x23,    x24,    2
	li                  x31,    0x103f1e
	sw                  x5,     0(x31)
	p.machhuRN          x22,    x21,    x6,     19
	li                  x31,    0x1002bc
	sw                  x22,    0(x31)
	p.machhuRN          x25,    x30,    x25,    8
	li                  x31,    0x10331f
	sw                  x25,    0(x31)

	# Vector operations
	li                  x4,     0x3072c469
	li                  x1,     0x3643dc8c
	pv.add.h            x2,     x4,     x1
	li                  x31,    0x105062
	sw                  x2,     0(x31)
	li                  x14,    0x98cdb202
	li                  x23,    0x29df3349
	pv.add.h            x25,    x14,    x23
	li                  x31,    0x105b89
	sw                  x25,    0(x31)
	li                  x0,     0x6eafe413
	li                  x16,    0xdaa2745d
	pv.add.h            x1,     x0,     x16
	li                  x31,    0x105f6b
	sw                  x1,     0(x31)
	li                  x0,     0xebcb4f53
	li                  x8,     0xe8bcb78
	pv.add.b            x14,    x0,     x8
	li                  x31,    0x103c63
	sw                  x14,    0(x31)
	li                  x29,    0xe6aa4006
	li                  x2,     0xba67924b
	pv.add.b            x9,     x29,    x2
	li                  x31,    0x104af8
	sw                  x9,     0(x31)
	li                  x28,    0x7b06b16f
	li                  x22,    0x6505480a
	pv.add.b            x8,     x28,    x22
	li                  x31,    0x105e65
	sw                  x8,     0(x31)
	li                  x8,     0x5050916f
	li                  x27,    0x679fa540
	pv.add.sc.h         x30,    x8,     x27
	li                  x31,    0x1032c3
	sw                  x30,    0(x31)
	li                  x31,    0x2bcd30c4
	li                  x4,     0xa22014db
	pv.add.sc.h         x7,     x31,    x4
	li                  x31,    0x107334
	sw                  x7,     0(x31)
	li                  x28,    0xdf938a6b
	li                  x11,    0x2bc4c8fc
	pv.add.sc.h         x8,     x28,    x11
	li                  x31,    0x105c06
	sw                  x8,     0(x31)
	li                  x21,    0x580e08e2
	li                  x4,     0x7b3e0780
	pv.add.sc.b         x28,    x21,    x4
	li                  x31,    0x1050f8
	sw                  x28,    0(x31)
	li                  x19,    0x6046695
	li                  x1,     0x9a28ea34
	pv.add.sc.b         x19,    x19,    x1
	li                  x31,    0x1047f8
	sw                  x19,    0(x31)
	li                  x2,     0x6ca89f05
	li                  x10,    0x972dd99c
	pv.add.sc.b         x10,    x2,     x10
	li                  x31,    0x103dcd
	sw                  x10,    0(x31)
	li                  x15,    0x47914c8d
	pv.add.sci.h        x11,    x15,    5
	li                  x31,    0x100256
	sw                  x11,    0(x31)
	li                  x23,    0xf1a4d52f
	pv.add.sci.h        x30,    x23,    11
	li                  x31,    0x1032a2
	sw                  x30,    0(x31)
	li                  x1,     0x4a0975a0
	pv.add.sci.h        x27,    x1,     6
	li                  x31,    0x100288
	sw                  x27,    0(x31)
	li                  x19,    0xf075d048
	pv.add.sci.b        x1,     x19,    24
	li                  x31,    0x1011f1
	sw                  x1,     0(x31)
	li                  x21,    0x3eb6d3da
	pv.add.sci.b        x24,    x21,    26
	li                  x31,    0x101840
	sw                  x24,    0(x31)
	li                  x2,     0x975200dc
	pv.add.sci.b        x2,     x2,     8
	li                  x31,    0x1070f1
	sw                  x2,     0(x31)
	li                  x24,    0xc981273b
	li                  x31,    0xd191adc4
	pv.sub.h            x18,    x24,    x31
	li                  x31,    0x107916
	sw                  x18,    0(x31)
	li                  x21,    0x55e8929e
	li                  x10,    0xa281dffe
	pv.sub.h            x14,    x21,    x10
	li                  x31,    0x105204
	sw                  x14,    0(x31)
	li                  x7,     0xba35cef
	li                  x5,     0x99c36470
	pv.sub.h            x2,     x7,     x5
	li                  x31,    0x107dc2
	sw                  x2,     0(x31)
	li                  x28,    0x9dfdc11
	li                  x9,     0x22e97e5b
	pv.sub.b            x29,    x28,    x9
	li                  x31,    0x1049e7
	sw                  x29,    0(x31)
	li                  x17,    0x26c8a9dc
	li                  x27,    0xf930bbf0
	pv.sub.b            x30,    x17,    x27
	li                  x31,    0x1062de
	sw                  x30,    0(x31)
	li                  x31,    0xfb6088ac
	li                  x3,     0x61aeafb0
	pv.sub.b            x30,    x31,    x3
	li                  x31,    0x1013c8
	sw                  x30,    0(x31)
	li                  x24,    0x51ef010e
	li                  x24,    0x7b21fe7b
	pv.sub.sc.h         x11,    x24,    x24
	li                  x31,    0x10434e
	sw                  x11,    0(x31)
	li                  x0,     0x3e5b5a55
	li                  x23,    0xab8df0e
	pv.sub.sc.h         x12,    x0,     x23
	li                  x31,    0x101eb1
	sw                  x12,    0(x31)
	li                  x1,     0x8c99ed88
	li                  x30,    0x94363e85
	pv.sub.sc.h         x4,     x1,     x30
	li                  x31,    0x103fe4
	sw                  x4,     0(x31)
	li                  x22,    0x31cdf90b
	li                  x12,    0x4ef90be8
	pv.sub.sc.b         x23,    x22,    x12
	li                  x31,    0x102265
	sw                  x23,    0(x31)
	li                  x5,     0x80f13b94
	li                  x27,    0x8398f591
	pv.sub.sc.b         x29,    x5,     x27
	li                  x31,    0x106dd1
	sw                  x29,    0(x31)
	li                  x15,    0x2627919c
	li                  x22,    0x718069f7
	pv.sub.sc.b         x5,     x15,    x22
	li                  x31,    0x103c4a
	sw                  x5,     0(x31)
	li                  x23,    0x409008d0
	pv.sub.sci.h        x19,    x23,    22
	li                  x31,    0x1057c1
	sw                  x19,    0(x31)
	li                  x30,    0x7f681732
	pv.sub.sci.h        x26,    x30,    11
	li                  x31,    0x10040f
	sw                  x26,    0(x31)
	li                  x6,     0xfb2c6615
	pv.sub.sci.h        x13,    x6,     9
	li                  x31,    0x1038c0
	sw                  x13,    0(x31)
	li                  x30,    0xe50d6df5
	pv.sub.sci.b        x10,    x30,    0
	li                  x31,    0x1015ba
	sw                  x10,    0(x31)
	li                  x11,    0x37d03fe8
	pv.sub.sci.b        x12,    x11,    2
	li                  x31,    0x106d7f
	sw                  x12,    0(x31)
	li                  x19,    0xd9e5e062
	pv.sub.sci.b        x4,     x19,    6
	li                  x31,    0x106acf
	sw                  x4,     0(x31)
	li                  x25,    0xb5f41e75
	li                  x13,    0xc758f168
	pv.avg.h            x22,    x25,    x13
	li                  x31,    0x107e56
	sw                  x22,    0(x31)
	li                  x14,    0x218c7d40
	li                  x25,    0x4d804e17
	pv.avg.h            x14,    x14,    x25
	li                  x31,    0x104ebd
	sw                  x14,    0(x31)
	li                  x16,    0xdb689972
	li                  x12,    0xabc51b09
	pv.avg.h            x18,    x16,    x12
	li                  x31,    0x100d5e
	sw                  x18,    0(x31)
	li                  x14,    0xc1aa9ded
	li                  x7,     0xb27e026d
	pv.avg.b            x8,     x14,    x7
	li                  x31,    0x100a99
	sw                  x8,     0(x31)
	li                  x9,     0x9fbf4e16
	li                  x2,     0x6df9be87
	pv.avg.b            x14,    x9,     x2
	li                  x31,    0x1058b4
	sw                  x14,    0(x31)
	li                  x16,    0xc0b35bf9
	li                  x22,    0x4beb3ef8
	pv.avg.b            x7,     x16,    x22
	li                  x31,    0x1049e7
	sw                  x7,     0(x31)
	li                  x27,    0x3d91fbc5
	li                  x3,     0x8090e3a
	pv.avg.sc.h         x16,    x27,    x3
	li                  x31,    0x1000db
	sw                  x16,    0(x31)
	li                  x15,    0x9031243c
	li                  x11,    0x9b3feaf9
	pv.avg.sc.h         x22,    x15,    x11
	li                  x31,    0x102cc9
	sw                  x22,    0(x31)
	li                  x10,    0xb81bc9fb
	li                  x24,    0x75f173de
	pv.avg.sc.h         x10,    x10,    x24
	li                  x31,    0x106eb7
	sw                  x10,    0(x31)
	li                  x18,    0xc60d21ee
	li                  x28,    0x53d695f4
	pv.avg.sc.b         x24,    x18,    x28
	li                  x31,    0x105b00
	sw                  x24,    0(x31)
	li                  x31,    0x4aad34f5
	li                  x12,    0x83e9e925
	pv.avg.sc.b         x6,     x31,    x12
	li                  x31,    0x104cf3
	sw                  x6,     0(x31)
	li                  x10,    0xc5278ddf
	li                  x4,     0x7fb7789b
	pv.avg.sc.b         x4,     x10,    x4
	li                  x31,    0x1052a1
	sw                  x4,     0(x31)
	li                  x16,    0x791a86df
	pv.avg.sci.h        x22,    x16,    0
	li                  x31,    0x1042eb
	sw                  x22,    0(x31)
	li                  x26,    0xd3279e0d
	pv.avg.sci.h        x29,    x26,    1
	li                  x31,    0x100e30
	sw                  x29,    0(x31)
	li                  x2,     0x4ae9df9c
	pv.avg.sci.h        x8,     x2,     20
	li                  x31,    0x1017bb
	sw                  x8,     0(x31)
	li                  x24,    0xbc491788
	pv.avg.sci.b        x7,     x24,    6
	li                  x31,    0x105592
	sw                  x7,     0(x31)
	li                  x28,    0x8a0dad53
	pv.avg.sci.b        x29,    x28,    30
	li                  x31,    0x107428
	sw                  x29,    0(x31)
	li                  x1,     0xa379493f
	pv.avg.sci.b        x2,     x1,     10
	li                  x31,    0x100963
	sw                  x2,     0(x31)
	li                  x7,     0x6160d0bb
	li                  x18,    0x7898c91b
	pv.avgu.h           x13,    x7,     x18
	li                  x31,    0x101919
	sw                  x13,    0(x31)
	li                  x14,    0x893f1307
	li                  x28,    0x3ae4f0d4
	pv.avgu.h           x26,    x14,    x28
	li                  x31,    0x107945
	sw                  x26,    0(x31)
	li                  x29,    0xc137f832
	li                  x28,    0xe63e68ee
	pv.avgu.h           x11,    x29,    x28
	li                  x31,    0x1073d4
	sw                  x11,    0(x31)
	li                  x10,    0xf4aeb5f5
	li                  x30,    0xf6e3649a
	pv.avgu.b           x9,     x10,    x30
	li                  x31,    0x1039e9
	sw                  x9,     0(x31)
	li                  x14,    0xe526c65f
	li                  x8,     0x26aa6c18
	pv.avgu.b           x1,     x14,    x8
	li                  x31,    0x1070ca
	sw                  x1,     0(x31)
	li                  x29,    0x7aa6fed2
	li                  x27,    0x5f4e3717
	pv.avgu.b           x30,    x29,    x27
	li                  x31,    0x100725
	sw                  x30,    0(x31)
	li                  x3,     0xda0f685c
	li                  x3,     0xa3414d4a
	pv.avgu.sc.h        x20,    x3,     x3
	li                  x31,    0x106e25
	sw                  x20,    0(x31)
	li                  x20,    0xdb6cfd06
	li                  x18,    0xd61ecd67
	pv.avgu.sc.h        x25,    x20,    x18
	li                  x31,    0x10311c
	sw                  x25,    0(x31)
	li                  x23,    0x33c54696
	li                  x1,     0x45444f8d
	pv.avgu.sc.h        x20,    x23,    x1
	li                  x31,    0x1073ee
	sw                  x20,    0(x31)
	li                  x25,    0x7654ac5e
	li                  x24,    0xb99fe735
	pv.avgu.sc.b        x5,     x25,    x24
	li                  x31,    0x102c29
	sw                  x5,     0(x31)
	li                  x10,    0x8d11f091
	li                  x6,     0x1c9f919
	pv.avgu.sc.b        x3,     x10,    x6
	li                  x31,    0x107014
	sw                  x3,     0(x31)
	li                  x31,    0x280e36b
	li                  x11,    0x2d1958d1
	pv.avgu.sc.b        x11,    x31,    x11
	li                  x31,    0x104db2
	sw                  x11,    0(x31)
	li                  x5,     0x6e278269
	pv.avgu.sci.h       x20,    x5,     31
	li                  x31,    0x102c2e
	sw                  x20,    0(x31)
	li                  x4,     0x94dd8706
	pv.avgu.sci.h       x3,     x4,     14
	li                  x31,    0x1025f5
	sw                  x3,     0(x31)
	li                  x21,    0xf0804bbf
	pv.avgu.sci.h       x15,    x21,    27
	li                  x31,    0x100ec6
	sw                  x15,    0(x31)
	li                  x16,    0x56efcce8
	pv.avgu.sci.b       x1,     x16,    22
	li                  x31,    0x100ddc
	sw                  x1,     0(x31)
	li                  x5,     0x8949ff2d
	pv.avgu.sci.b       x9,     x5,     30
	li                  x31,    0x10715c
	sw                  x9,     0(x31)
	li                  x18,    0xc30ac738
	pv.avgu.sci.b       x4,     x18,    17
	li                  x31,    0x105813
	sw                  x4,     0(x31)
	li                  x21,    0xb448275c
	li                  x3,     0x9201776f
	pv.min.h            x13,    x21,    x3
	li                  x31,    0x100c0b
	sw                  x13,    0(x31)
	li                  x0,     0x5d41ba78
	li                  x4,     0xcbeeab65
	pv.min.h            x3,     x0,     x4
	li                  x31,    0x100294
	sw                  x3,     0(x31)
	li                  x0,     0xa1619b7f
	li                  x0,     0x915b36f4
	pv.min.h            x20,    x0,     x0
	li                  x31,    0x102813
	sw                  x20,    0(x31)
	li                  x28,    0xf74313cf
	li                  x4,     0xf1050adb
	pv.min.b            x24,    x28,    x4
	li                  x31,    0x102a35
	sw                  x24,    0(x31)
	li                  x16,    0x2172968d
	li                  x18,    0x5c89a37f
	pv.min.b            x20,    x16,    x18
	li                  x31,    0x102e27
	sw                  x20,    0(x31)
	li                  x4,     0x3822446c
	li                  x17,    0xf71d12ca
	pv.min.b            x5,     x4,     x17
	li                  x31,    0x102138
	sw                  x5,     0(x31)
	li                  x4,     0x607a4396
	li                  x26,    0x38c819ed
	pv.min.sc.h         x24,    x4,     x26
	li                  x31,    0x106f54
	sw                  x24,    0(x31)
	li                  x31,    0x5b7377d4
	li                  x2,     0x7fe6e89b
	pv.min.sc.h         x22,    x31,    x2
	li                  x31,    0x1007eb
	sw                  x22,    0(x31)
	li                  x17,    0x3ffcc588
	li                  x9,     0x10645bd1
	pv.min.sc.h         x29,    x17,    x9
	li                  x31,    0x105b17
	sw                  x29,    0(x31)
	li                  x30,    0xcd914bcd
	li                  x24,    0xaa1e8544
	pv.min.sc.b         x2,     x30,    x24
	li                  x31,    0x105ea4
	sw                  x2,     0(x31)
	li                  x6,     0xc31796d3
	li                  x18,    0x883d930
	pv.min.sc.b         x21,    x6,     x18
	li                  x31,    0x104ae3
	sw                  x21,    0(x31)
	li                  x23,    0x76958407
	li                  x17,    0x264a3e36
	pv.min.sc.b         x22,    x23,    x17
	li                  x31,    0x104ab2
	sw                  x22,    0(x31)
	li                  x25,    0x2591411
	pv.min.sci.h        x6,     x25,    3
	li                  x31,    0x101cc4
	sw                  x6,     0(x31)
	li                  x25,    0xbafb6faa
	pv.min.sci.h        x11,    x25,    24
	li                  x31,    0x107206
	sw                  x11,    0(x31)
	li                  x5,     0xe108f234
	pv.min.sci.h        x17,    x5,     19
	li                  x31,    0x103fca
	sw                  x17,    0(x31)
	li                  x9,     0x2dd7d0a
	pv.min.sci.b        x15,    x9,     25
	li                  x31,    0x100611
	sw                  x15,    0(x31)
	li                  x11,    0xedd457
	pv.min.sci.b        x16,    x11,    14
	li                  x31,    0x102b39
	sw                  x16,    0(x31)
	li                  x10,    0xe2dc140d
	pv.min.sci.b        x9,     x10,    8
	li                  x31,    0x102a3c
	sw                  x9,     0(x31)
	li                  x10,    0xce1f6a2c
	li                  x2,     0x7bcaca77
	pv.minu.h           x16,    x10,    x2
	li                  x31,    0x107152
	sw                  x16,    0(x31)
	li                  x11,    0x9b10d351
	li                  x5,     0xadd97e44
	pv.minu.h           x6,     x11,    x5
	li                  x31,    0x1000c3
	sw                  x6,     0(x31)
	li                  x20,    0x492c0410
	li                  x21,    0x6230f5f6
	pv.minu.h           x29,    x20,    x21
	li                  x31,    0x103fe8
	sw                  x29,    0(x31)
	li                  x14,    0x22f1650c
	li                  x24,    0xccb4280c
	pv.minu.b           x24,    x14,    x24
	li                  x31,    0x101148
	sw                  x24,    0(x31)
	li                  x16,    0xb8297e77
	li                  x27,    0x5e617d4b
	pv.minu.b           x16,    x16,    x27
	li                  x31,    0x101f6d
	sw                  x16,    0(x31)
	li                  x17,    0xcc09122b
	li                  x11,    0xe247cd98
	pv.minu.b           x27,    x17,    x11
	li                  x31,    0x102637
	sw                  x27,    0(x31)
	li                  x24,    0xcca209a2
	li                  x10,    0x8462de85
	pv.minu.sc.h        x19,    x24,    x10
	li                  x31,    0x1021ce
	sw                  x19,    0(x31)
	li                  x7,     0xca6d35c7
	li                  x30,    0x4031636b
	pv.minu.sc.h        x15,    x7,     x30
	li                  x31,    0x106edf
	sw                  x15,    0(x31)
	li                  x26,    0xe9ecfd80
	li                  x28,    0xb2e89224
	pv.minu.sc.h        x29,    x26,    x28
	li                  x31,    0x1011e0
	sw                  x29,    0(x31)
	li                  x27,    0x56f0e9ce
	li                  x15,    0xc2fd5599
	pv.minu.sc.b        x8,     x27,    x15
	li                  x31,    0x107d0c
	sw                  x8,     0(x31)
	li                  x22,    0x89bb60ab
	li                  x8,     0xbce370ec
	pv.minu.sc.b        x28,    x22,    x8
	li                  x31,    0x1062fd
	sw                  x28,    0(x31)
	li                  x25,    0x38899498
	li                  x14,    0xfae56b9
	pv.minu.sc.b        x13,    x25,    x14
	li                  x31,    0x106c43
	sw                  x13,    0(x31)
	li                  x21,    0xf28b4c2c
	pv.minu.sci.h       x21,    x21,    11
	li                  x31,    0x105a92
	sw                  x21,    0(x31)
	li                  x27,    0x4bc4af38
	pv.minu.sci.h       x31,    x27,    28
	li                  x31,    0x102d16
	sw                  x31,    0(x31)
	li                  x25,    0x75f8f3ec
	pv.minu.sci.h       x16,    x25,    30
	li                  x31,    0x107bfd
	sw                  x16,    0(x31)
	li                  x3,     0xc5a07178
	pv.minu.sci.b       x6,     x3,     29
	li                  x31,    0x104312
	sw                  x6,     0(x31)
	li                  x5,     0x46569e7d
	pv.minu.sci.b       x8,     x5,     13
	li                  x31,    0x1036b6
	sw                  x8,     0(x31)
	li                  x1,     0xe1bd16fc
	pv.minu.sci.b       x31,    x1,     4
	li                  x31,    0x10295d
	sw                  x31,    0(x31)
	li                  x13,    0xc793e903
	li                  x14,    0x76c50994
	pv.max.h            x11,    x13,    x14
	li                  x31,    0x103ae5
	sw                  x11,    0(x31)
	li                  x15,    0x2246fc5
	li                  x18,    0x6d012ab
	pv.max.h            x7,     x15,    x18
	li                  x31,    0x1006a9
	sw                  x7,     0(x31)
	li                  x13,    0xf804dec8
	li                  x9,     0x2138bf31
	pv.max.h            x20,    x13,    x9
	li                  x31,    0x104a0c
	sw                  x20,    0(x31)
	li                  x24,    0x94c427e5
	li                  x6,     0xbae700bc
	pv.max.b            x1,     x24,    x6
	li                  x31,    0x100204
	sw                  x1,     0(x31)
	li                  x9,     0xcccd8cf7
	li                  x29,    0x7c3c58dc
	pv.max.b            x1,     x9,     x29
	li                  x31,    0x102787
	sw                  x1,     0(x31)
	li                  x17,    0xc7de1698
	li                  x21,    0x13fb39c5
	pv.max.b            x12,    x17,    x21
	li                  x31,    0x104d3a
	sw                  x12,    0(x31)
	li                  x24,    0xa42cd57d
	li                  x28,    0x32bef2aa
	pv.max.sc.h         x19,    x24,    x28
	li                  x31,    0x10433c
	sw                  x19,    0(x31)
	li                  x28,    0x22b04b77
	li                  x0,     0xf3aa1c72
	pv.max.sc.h         x29,    x28,    x0
	li                  x31,    0x1020c3
	sw                  x29,    0(x31)
	li                  x7,     0x5c92db78
	li                  x23,    0x716c40cd
	pv.max.sc.h         x16,    x7,     x23
	li                  x31,    0x101ddf
	sw                  x16,    0(x31)
	li                  x27,    0x28e1d269
	li                  x2,     0x607978d5
	pv.max.sc.b         x22,    x27,    x2
	li                  x31,    0x100001
	sw                  x22,    0(x31)
	li                  x1,     0xdf72aeeb
	li                  x30,    0x91182d99
	pv.max.sc.b         x16,    x1,     x30
	li                  x31,    0x105982
	sw                  x16,    0(x31)
	li                  x26,    0xce729572
	li                  x25,    0x73d377c3
	pv.max.sc.b         x9,     x26,    x25
	li                  x31,    0x102c66
	sw                  x9,     0(x31)
	li                  x29,    0xe136ebf1
	pv.max.sci.h        x8,     x29,    26
	li                  x31,    0x100b20
	sw                  x8,     0(x31)
	li                  x0,     0xd8396623
	pv.max.sci.h        x24,    x0,     11
	li                  x31,    0x100010
	sw                  x24,    0(x31)
	li                  x28,    0x799a2048
	pv.max.sci.h        x16,    x28,    25
	li                  x31,    0x103b4c
	sw                  x16,    0(x31)
	li                  x17,    0x192ebb8
	pv.max.sci.b        x23,    x17,    0
	li                  x31,    0x101023
	sw                  x23,    0(x31)
	li                  x24,    0x8a29deac
	pv.max.sci.b        x22,    x24,    22
	li                  x31,    0x107f52
	sw                  x22,    0(x31)
	li                  x26,    0x96972f9a
	pv.max.sci.b        x13,    x26,    19
	li                  x31,    0x102a8f
	sw                  x13,    0(x31)
	li                  x26,    0x35c500b9
	li                  x22,    0xefab90d8
	pv.maxu.h           x25,    x26,    x22
	li                  x31,    0x1062e5
	sw                  x25,    0(x31)
	li                  x13,    0xf066f2a7
	li                  x10,    0x96e930cf
	pv.maxu.h           x6,     x13,    x10
	li                  x31,    0x1024f9
	sw                  x6,     0(x31)
	li                  x5,     0xadc868a1
	li                  x27,    0xe6d54e08
	pv.maxu.h           x12,    x5,     x27
	li                  x31,    0x1003fd
	sw                  x12,    0(x31)
	li                  x15,    0xd1a2699d
	li                  x5,     0x529de4ce
	pv.maxu.b           x13,    x15,    x5
	li                  x31,    0x10450c
	sw                  x13,    0(x31)
	li                  x16,    0x343d22e
	li                  x26,    0x4c198f48
	pv.maxu.b           x17,    x16,    x26
	li                  x31,    0x10758d
	sw                  x17,    0(x31)
	li                  x15,    0xf3bb3a86
	li                  x15,    0x6d69836
	pv.maxu.b           x29,    x15,    x15
	li                  x31,    0x1028d2
	sw                  x29,    0(x31)
	li                  x3,     0xd73cfae8
	li                  x27,    0xf10ed422
	pv.maxu.sc.h        x11,    x3,     x27
	li                  x31,    0x10267e
	sw                  x11,    0(x31)
	li                  x25,    0x50c043d8
	li                  x17,    0x1ac4a0a9
	pv.maxu.sc.h        x28,    x25,    x17
	li                  x31,    0x1051dc
	sw                  x28,    0(x31)
	li                  x2,     0xe2035648
	li                  x27,    0x2687e473
	pv.maxu.sc.h        x8,     x2,     x27
	li                  x31,    0x10627d
	sw                  x8,     0(x31)
	li                  x28,    0xff9f95
	li                  x0,     0x23e1a938
	pv.maxu.sc.b        x22,    x28,    x0
	li                  x31,    0x103f81
	sw                  x22,    0(x31)
	li                  x11,    0x34648fee
	li                  x16,    0x89e33777
	pv.maxu.sc.b        x10,    x11,    x16
	li                  x31,    0x106a5e
	sw                  x10,    0(x31)
	li                  x25,    0xde1b7ad8
	li                  x19,    0xb70e3a4d
	pv.maxu.sc.b        x16,    x25,    x19
	li                  x31,    0x107cd8
	sw                  x16,    0(x31)
	li                  x10,    0xb5627fa1
	pv.maxu.sci.h       x7,     x10,    5
	li                  x31,    0x10723a
	sw                  x7,     0(x31)
	li                  x20,    0x6eab020
	pv.maxu.sci.h       x15,    x20,    18
	li                  x31,    0x100de2
	sw                  x15,    0(x31)
	li                  x17,    0xf569c1d0
	pv.maxu.sci.h       x5,     x17,    6
	li                  x31,    0x1057e6
	sw                  x5,     0(x31)
	li                  x11,    0x26959a49
	pv.maxu.sci.b       x17,    x11,    19
	li                  x31,    0x10715b
	sw                  x17,    0(x31)
	li                  x27,    0xe531937a
	pv.maxu.sci.b       x20,    x27,    2
	li                  x31,    0x1022c6
	sw                  x20,    0(x31)
	li                  x20,    0xe43cc5ae
	pv.maxu.sci.b       x2,     x20,    22
	li                  x31,    0x102d05
	sw                  x2,     0(x31)
	li                  x10,    0x20edfa5b
	li                  x14,    0xdb3d5186
	pv.srl.h            x10,    x10,    x14
	li                  x31,    0x100dce
	sw                  x10,    0(x31)
	li                  x0,     0x4de3d3e8
	li                  x22,    0xbde981b7
	pv.srl.h            x26,    x0,     x22
	li                  x31,    0x107dd5
	sw                  x26,    0(x31)
	li                  x7,     0x34fb317b
	li                  x22,    0xc2220ed
	pv.srl.h            x31,    x7,     x22
	li                  x31,    0x1055d9
	sw                  x31,    0(x31)
	li                  x29,    0x5e260848
	li                  x2,     0x90e075a4
	pv.srl.b            x31,    x29,    x2
	li                  x31,    0x100878
	sw                  x31,    0(x31)
	li                  x18,    0x3f89a43a
	li                  x19,    0x64835485
	pv.srl.b            x15,    x18,    x19
	li                  x31,    0x106e36
	sw                  x15,    0(x31)
	li                  x30,    0xbeb3db16
	li                  x27,    0x7a85dec5
	pv.srl.b            x21,    x30,    x27
	li                  x31,    0x100b4e
	sw                  x21,    0(x31)
	li                  x7,     0x3bc8849c
	li                  x13,    0xb369a700
	pv.srl.sc.h         x14,    x7,     x13
	li                  x31,    0x1072fc
	sw                  x14,    0(x31)
	li                  x16,    0xcb99287
	li                  x27,    0x8476b7fc
	pv.srl.sc.h         x20,    x16,    x27
	li                  x31,    0x107596
	sw                  x20,    0(x31)
	li                  x7,     0x66be7959
	li                  x26,    0xc42a0edb
	pv.srl.sc.h         x24,    x7,     x26
	li                  x31,    0x1026fb
	sw                  x24,    0(x31)
	li                  x27,    0xcf33d3e8
	li                  x7,     0x3bb45405
	pv.srl.sc.b         x22,    x27,    x7
	li                  x31,    0x101e5c
	sw                  x22,    0(x31)
	li                  x5,     0x8316f9f2
	li                  x18,    0x21d80d63
	pv.srl.sc.b         x13,    x5,     x18
	li                  x31,    0x1004c2
	sw                  x13,    0(x31)
	li                  x17,    0x2cb5b33c
	li                  x11,    0x3ea3c03d
	pv.srl.sc.b         x29,    x17,    x11
	li                  x31,    0x103f6f
	sw                  x29,    0(x31)
	li                  x13,    0x9738ed08
	pv.srl.sci.h        x16,    x13,    17
	li                  x31,    0x1050a3
	sw                  x16,    0(x31)
	li                  x6,     0x3ccedb13
	pv.srl.sci.h        x10,    x6,     25
	li                  x31,    0x105dfe
	sw                  x10,    0(x31)
	li                  x21,    0x507c5610
	pv.srl.sci.h        x26,    x21,    8
	li                  x31,    0x1071e2
	sw                  x26,    0(x31)
	li                  x31,    0x39dbbf65
	pv.srl.sci.b        x22,    x31,    19
	li                  x31,    0x105266
	sw                  x22,    0(x31)
	li                  x13,    0x5d7509d
	pv.srl.sci.b        x26,    x13,    22
	li                  x31,    0x107418
	sw                  x26,    0(x31)
	li                  x13,    0x3c4d44a1
	pv.srl.sci.b        x3,     x13,    17
	li                  x31,    0x103e64
	sw                  x3,     0(x31)
	li                  x29,    0x185c37dd
	li                  x29,    0xdc55b34a
	pv.sra.h            x16,    x29,    x29
	li                  x31,    0x1002d0
	sw                  x16,    0(x31)
	li                  x26,    0x5eb811a4
	li                  x7,     0xb0c7f2da
	pv.sra.h            x10,    x26,    x7
	li                  x31,    0x103620
	sw                  x10,    0(x31)
	li                  x26,    0x581274d
	li                  x30,    0x5c19cb75
	pv.sra.h            x9,     x26,    x30
	li                  x31,    0x101dfc
	sw                  x9,     0(x31)
	li                  x7,     0xbd8fcfcc
	li                  x13,    0x856277f8
	pv.sra.b            x5,     x7,     x13
	li                  x31,    0x10460b
	sw                  x5,     0(x31)
	li                  x24,    0x41bfe8c6
	li                  x10,    0x2fe851fd
	pv.sra.b            x23,    x24,    x10
	li                  x31,    0x10421a
	sw                  x23,    0(x31)
	li                  x19,    0xce1956b6
	li                  x13,    0x57aad494
	pv.sra.b            x28,    x19,    x13
	li                  x31,    0x101221
	sw                  x28,    0(x31)
	li                  x17,    0x8d7c3548
	li                  x20,    0xb7f8caca
	pv.sra.sc.h         x29,    x17,    x20
	li                  x31,    0x102311
	sw                  x29,    0(x31)
	li                  x6,     0xdba5ed3d
	li                  x24,    0xc21bb60f
	pv.sra.sc.h         x23,    x6,     x24
	li                  x31,    0x10178f
	sw                  x23,    0(x31)
	li                  x29,    0xb2f3f8dd
	li                  x19,    0x6cc20d41
	pv.sra.sc.h         x20,    x29,    x19
	li                  x31,    0x1037d8
	sw                  x20,    0(x31)
	li                  x31,    0xb6f1f81b
	li                  x23,    0x18fea43b
	pv.sra.sc.b         x6,     x31,    x23
	li                  x31,    0x1020eb
	sw                  x6,     0(x31)
	li                  x12,    0x298b3831
	li                  x20,    0xf47bb112
	pv.sra.sc.b         x22,    x12,    x20
	li                  x31,    0x101046
	sw                  x22,    0(x31)
	li                  x4,     0x5d8b6f0a
	li                  x26,    0x55879b
	pv.sra.sc.b         x15,    x4,     x26
	li                  x31,    0x103390
	sw                  x15,    0(x31)
	li                  x14,    0x3777af3b
	pv.sra.sci.h        x6,     x14,    16
	li                  x31,    0x103cf6
	sw                  x6,     0(x31)
	li                  x16,    0x16f4bd72
	pv.sra.sci.h        x22,    x16,    23
	li                  x31,    0x1063b0
	sw                  x22,    0(x31)
	li                  x20,    0x8743799d
	pv.sra.sci.h        x17,    x20,    28
	li                  x31,    0x105dae
	sw                  x17,    0(x31)
	li                  x24,    0x195e988e
	pv.sra.sci.b        x22,    x24,    2
	li                  x31,    0x1021e7
	sw                  x22,    0(x31)
	li                  x19,    0x52f94564
	pv.sra.sci.b        x7,     x19,    18
	li                  x31,    0x104a13
	sw                  x7,     0(x31)
	li                  x2,     0xe962db58
	pv.sra.sci.b        x9,     x2,     0
	li                  x31,    0x102753
	sw                  x9,     0(x31)
	li                  x17,    0x8499a6b4
	li                  x15,    0x8dfff640
	pv.sll.h            x25,    x17,    x15
	li                  x31,    0x102efb
	sw                  x25,    0(x31)
	li                  x19,    0x49e8fdfe
	li                  x7,     0xf61d0cc7
	pv.sll.h            x29,    x19,    x7
	li                  x31,    0x100164
	sw                  x29,    0(x31)
	li                  x29,    0xad0621e9
	li                  x5,     0xbd5d5a34
	pv.sll.h            x20,    x29,    x5
	li                  x31,    0x10326f
	sw                  x20,    0(x31)
	li                  x14,    0xa1126ff2
	li                  x13,    0x3b689c03
	pv.sll.b            x27,    x14,    x13
	li                  x31,    0x10508c
	sw                  x27,    0(x31)
	li                  x14,    0x531f3ef9
	li                  x5,     0x81e077da
	pv.sll.b            x21,    x14,    x5
	li                  x31,    0x103d5f
	sw                  x21,    0(x31)
	li                  x17,    0xcbee5361
	li                  x28,    0x4e22029
	pv.sll.b            x17,    x17,    x28
	li                  x31,    0x106796
	sw                  x17,    0(x31)
	li                  x9,     0xc6e842a9
	li                  x31,    0x2ad2371d
	pv.sll.sc.h         x24,    x9,     x31
	li                  x31,    0x107073
	sw                  x24,    0(x31)
	li                  x19,    0x4872cb6f
	li                  x28,    0xea55680
	pv.sll.sc.h         x17,    x19,    x28
	li                  x31,    0x100c1c
	sw                  x17,    0(x31)
	li                  x31,    0x32e468c8
	li                  x20,    0x7f7142c9
	pv.sll.sc.h         x22,    x31,    x20
	li                  x31,    0x107e0c
	sw                  x22,    0(x31)
	li                  x6,     0xf81cb728
	li                  x17,    0x3b296f93
	pv.sll.sc.b         x12,    x6,     x17
	li                  x31,    0x104f37
	sw                  x12,    0(x31)
	li                  x8,     0xc5f7967f
	li                  x6,     0xb55f011c
	pv.sll.sc.b         x6,     x8,     x6
	li                  x31,    0x10225e
	sw                  x6,     0(x31)
	li                  x0,     0xbcde383e
	li                  x21,    0x2a56fb91
	pv.sll.sc.b         x8,     x0,     x21
	li                  x31,    0x10549e
	sw                  x8,     0(x31)
	li                  x4,     0xacec2f6b
	pv.sll.sci.h        x3,     x4,     12
	li                  x31,    0x102fcf
	sw                  x3,     0(x31)
	li                  x22,    0x450cc8d9
	pv.sll.sci.h        x4,     x22,    16
	li                  x31,    0x10641c
	sw                  x4,     0(x31)
	li                  x13,    0xbc0fe54
	pv.sll.sci.h        x21,    x13,    31
	li                  x31,    0x10398b
	sw                  x21,    0(x31)
	li                  x0,     0xfe8415b8
	pv.sll.sci.b        x24,    x0,     0
	li                  x31,    0x1060f5
	sw                  x24,    0(x31)
	li                  x24,    0x1abe1058
	pv.sll.sci.b        x10,    x24,    4
	li                  x31,    0x1029de
	sw                  x10,    0(x31)
	li                  x2,     0xddea0c90
	pv.sll.sci.b        x19,    x2,     6
	li                  x31,    0x104207
	sw                  x19,    0(x31)
	li                  x13,    0x8e1f0cd0
	li                  x3,     0x59d89291
	pv.or.h             x14,    x13,    x3
	li                  x31,    0x105339
	sw                  x14,    0(x31)
	li                  x6,     0xd6db06c6
	li                  x21,    0x227463dd
	pv.or.h             x2,     x6,     x21
	li                  x31,    0x107e7c
	sw                  x2,     0(x31)
	li                  x10,    0x160960d0
	li                  x31,    0xcf69e6d2
	pv.or.h             x6,     x10,    x31
	li                  x31,    0x101f15
	sw                  x6,     0(x31)
	li                  x7,     0xd7d181f
	li                  x4,     0x6c145f5d
	pv.or.b             x27,    x7,     x4
	li                  x31,    0x1076fe
	sw                  x27,    0(x31)
	li                  x19,    0x72c38717
	li                  x3,     0xc2951290
	pv.or.b             x1,     x19,    x3
	li                  x31,    0x104b52
	sw                  x1,     0(x31)
	li                  x25,    0x9b358f9e
	li                  x25,    0x1404e55c
	pv.or.b             x6,     x25,    x25
	li                  x31,    0x10131f
	sw                  x6,     0(x31)
	li                  x14,    0x88d85cf7
	li                  x0,     0x6a6e185f
	pv.or.sc.h          x13,    x14,    x0
	li                  x31,    0x1067b6
	sw                  x13,    0(x31)
	li                  x0,     0xf765abcb
	li                  x21,    0x33cac2b7
	pv.or.sc.h          x24,    x0,     x21
	li                  x31,    0x1048a3
	sw                  x24,    0(x31)
	li                  x25,    0xf5bc3dc4
	li                  x14,    0x78cc275c
	pv.or.sc.h          x19,    x25,    x14
	li                  x31,    0x107ea4
	sw                  x19,    0(x31)
	li                  x7,     0xaac5fb17
	li                  x13,    0x6c8f93a1
	pv.or.sc.b          x26,    x7,     x13
	li                  x31,    0x104b32
	sw                  x26,    0(x31)
	li                  x6,     0x1596c695
	li                  x18,    0xca274dac
	pv.or.sc.b          x20,    x6,     x18
	li                  x31,    0x1005b1
	sw                  x20,    0(x31)
	li                  x15,    0x79f7efa4
	li                  x18,    0x7b99c0fc
	pv.or.sc.b          x16,    x15,    x18
	li                  x31,    0x100839
	sw                  x16,    0(x31)
	li                  x20,    0x1272fd6c
	pv.or.sci.h         x10,    x20,    17
	li                  x31,    0x10653e
	sw                  x10,    0(x31)
	li                  x27,    0x7af3137c
	pv.or.sci.h         x22,    x27,    16
	li                  x31,    0x1058f8
	sw                  x22,    0(x31)
	li                  x0,     0x35800813
	pv.or.sci.h         x2,     x0,     12
	li                  x31,    0x100366
	sw                  x2,     0(x31)
	li                  x23,    0x36092a65
	pv.or.sci.b         x23,    x23,    3
	li                  x31,    0x103ed2
	sw                  x23,    0(x31)
	li                  x22,    0xf784b83
	pv.or.sci.b         x3,     x22,    18
	li                  x31,    0x10630f
	sw                  x3,     0(x31)
	li                  x29,    0xb9b14b41
	pv.or.sci.b         x11,    x29,    15
	li                  x31,    0x107561
	sw                  x11,    0(x31)
	li                  x7,     0x4b529f54
	li                  x27,    0x4d45be23
	pv.xor.h            x24,    x7,     x27
	li                  x31,    0x102b6f
	sw                  x24,    0(x31)
	li                  x9,     0xaef593fb
	li                  x17,    0x4ab6c122
	pv.xor.h            x31,    x9,     x17
	li                  x31,    0x107c2b
	sw                  x31,    0(x31)
	li                  x8,     0xfd170320
	li                  x3,     0x4d0033f3
	pv.xor.h            x27,    x8,     x3
	li                  x31,    0x1037cd
	sw                  x27,    0(x31)
	li                  x18,    0x2f943d6
	li                  x21,    0xd0a63754
	pv.xor.b            x30,    x18,    x21
	li                  x31,    0x10260e
	sw                  x30,    0(x31)
	li                  x21,    0x5839ee82
	li                  x19,    0x790f4845
	pv.xor.b            x30,    x21,    x19
	li                  x31,    0x10518d
	sw                  x30,    0(x31)
	li                  x16,    0x21609dda
	li                  x26,    0x98a7c229
	pv.xor.b            x21,    x16,    x26
	li                  x31,    0x103634
	sw                  x21,    0(x31)
	li                  x30,    0xc0eba426
	li                  x22,    0xd881f6b2
	pv.xor.sc.h         x28,    x30,    x22
	li                  x31,    0x1041c9
	sw                  x28,    0(x31)
	li                  x11,    0x70b60281
	li                  x20,    0xcd16d53c
	pv.xor.sc.h         x1,     x11,    x20
	li                  x31,    0x102151
	sw                  x1,     0(x31)
	li                  x26,    0x6ae8e464
	li                  x3,     0xa6571ff6
	pv.xor.sc.h         x29,    x26,    x3
	li                  x31,    0x10130f
	sw                  x29,    0(x31)
	li                  x31,    0x7e2f1fa3
	li                  x3,     0x35db8920
	pv.xor.sc.b         x3,     x31,    x3
	li                  x31,    0x101b31
	sw                  x3,     0(x31)
	li                  x11,    0xd681b01d
	li                  x10,    0xa5751393
	pv.xor.sc.b         x19,    x11,    x10
	li                  x31,    0x1071ae
	sw                  x19,    0(x31)
	li                  x11,    0x51011947
	li                  x28,    0x37d90213
	pv.xor.sc.b         x17,    x11,    x28
	li                  x31,    0x10588e
	sw                  x17,    0(x31)
	li                  x12,    0xc8e566d1
	pv.xor.sci.h        x25,    x12,    19
	li                  x31,    0x1075fc
	sw                  x25,    0(x31)
	li                  x27,    0x77d97dcf
	pv.xor.sci.h        x20,    x27,    27
	li                  x31,    0x100d7a
	sw                  x20,    0(x31)
	li                  x20,    0x1b565397
	pv.xor.sci.h        x10,    x20,    6
	li                  x31,    0x10456d
	sw                  x10,    0(x31)
	li                  x3,     0xb8b2a17d
	pv.xor.sci.b        x21,    x3,     11
	li                  x31,    0x1073db
	sw                  x21,    0(x31)
	li                  x29,    0x73bc3240
	pv.xor.sci.b        x5,     x29,    5
	li                  x31,    0x104362
	sw                  x5,     0(x31)
	li                  x3,     0x1dadf3c4
	pv.xor.sci.b        x31,    x3,     28
	li                  x31,    0x100e4e
	sw                  x31,    0(x31)
	li                  x29,    0x551b7417
	li                  x26,    0xf826a7fc
	pv.and.h            x26,    x29,    x26
	li                  x31,    0x1014ee
	sw                  x26,    0(x31)
	li                  x3,     0xbbb63399
	li                  x30,    0xc6ef3e7c
	pv.and.h            x16,    x3,     x30
	li                  x31,    0x102bf6
	sw                  x16,    0(x31)
	li                  x0,     0x7088c9db
	li                  x25,    0xb4744850
	pv.and.h            x3,     x0,     x25
	li                  x31,    0x106cc6
	sw                  x3,     0(x31)
	li                  x14,    0xc7b78a01
	li                  x5,     0x73597b79
	pv.and.b            x3,     x14,    x5
	li                  x31,    0x100361
	sw                  x3,     0(x31)
	li                  x28,    0x55af91ef
	li                  x26,    0xe9b8436b
	pv.and.b            x22,    x28,    x26
	li                  x31,    0x1017ce
	sw                  x22,    0(x31)
	li                  x3,     0x8c11d8d
	li                  x22,    0xa3ceb1da
	pv.and.b            x9,     x3,     x22
	li                  x31,    0x107be3
	sw                  x9,     0(x31)
	li                  x21,    0x623e79fc
	li                  x29,    0xeefd7f20
	pv.and.sc.h         x12,    x21,    x29
	li                  x31,    0x107cc6
	sw                  x12,    0(x31)
	li                  x3,     0xeebce873
	li                  x8,     0xe85dc01c
	pv.and.sc.h         x18,    x3,     x8
	li                  x31,    0x100162
	sw                  x18,    0(x31)
	li                  x27,    0x684600d5
	li                  x5,     0xe3602ba9
	pv.and.sc.h         x9,     x27,    x5
	li                  x31,    0x107a5d
	sw                  x9,     0(x31)
	li                  x15,    0x66e3f69f
	li                  x18,    0xaa963be8
	pv.and.sc.b         x30,    x15,    x18
	li                  x31,    0x107075
	sw                  x30,    0(x31)
	li                  x17,    0xbbe7cb59
	li                  x3,     0x279c50fb
	pv.and.sc.b         x28,    x17,    x3
	li                  x31,    0x100fed
	sw                  x28,    0(x31)
	li                  x17,    0x99e58a5c
	li                  x5,     0x70189e71
	pv.and.sc.b         x31,    x17,    x5
	li                  x31,    0x103f85
	sw                  x31,    0(x31)
	li                  x14,    0x4f10e26
	pv.and.sci.h        x6,     x14,    30
	li                  x31,    0x107a44
	sw                  x6,     0(x31)
	li                  x5,     0x2f251c51
	pv.and.sci.h        x10,    x5,     17
	li                  x31,    0x102a86
	sw                  x10,    0(x31)
	li                  x22,    0x831538ed
	pv.and.sci.h        x18,    x22,    1
	li                  x31,    0x100d38
	sw                  x18,    0(x31)
	li                  x17,    0x425e2c43
	pv.and.sci.b        x10,    x17,    23
	li                  x31,    0x104ec3
	sw                  x10,    0(x31)
	li                  x0,     0x9e31cf16
	pv.and.sci.b        x15,    x0,     25
	li                  x31,    0x107040
	sw                  x15,    0(x31)
	li                  x23,    0x40c93055
	pv.and.sci.b        x6,     x23,    31
	li                  x31,    0x107cc2
	sw                  x6,     0(x31)
	li                  x19,    0x5fb5aa21
	li                  x23,    0xd62e85f9
	pv.dotusp.h         x12,    x19,    x23
	li                  x31,    0x1037c2
	sw                  x12,    0(x31)
	li                  x16,    0xbe4a298a
	li                  x10,    0x2ccebb34
	pv.dotusp.h         x8,     x16,    x10
	li                  x31,    0x10103b
	sw                  x8,     0(x31)
	li                  x6,     0x6b5b932c
	li                  x19,    0x5ee1951
	pv.dotusp.h         x5,     x6,     x19
	li                  x31,    0x102abc
	sw                  x5,     0(x31)
	li                  x13,    0xaee03d84
	li                  x23,    0xdf084248
	pv.dotusp.b         x18,    x13,    x23
	li                  x31,    0x106f1a
	sw                  x18,    0(x31)
	li                  x31,    0xe5d124b0
	li                  x6,     0x4ef8a33
	pv.dotusp.b         x30,    x31,    x6
	li                  x31,    0x1013d6
	sw                  x30,    0(x31)
	li                  x27,    0x79b04830
	li                  x21,    0x5d792972
	pv.dotusp.b         x16,    x27,    x21
	li                  x31,    0x104f6e
	sw                  x16,    0(x31)
	li                  x24,    0xef288fcf
	li                  x25,    0xde4913ac
	pv.dotusp.sc.h      x13,    x24,    x25
	li                  x31,    0x10616c
	sw                  x13,    0(x31)
	li                  x18,    0x2bd83452
	li                  x17,    0xeb6e0789
	pv.dotusp.sc.h      x24,    x18,    x17
	li                  x31,    0x10538d
	sw                  x24,    0(x31)
	li                  x0,     0x49692c73
	li                  x23,    0xa08bf4a4
	pv.dotusp.sc.h      x14,    x0,     x23
	li                  x31,    0x102507
	sw                  x14,    0(x31)
	li                  x27,    0x235df397
	li                  x15,    0x58e92462
	pv.dotusp.sc.b      x23,    x27,    x15
	li                  x31,    0x107782
	sw                  x23,    0(x31)
	li                  x4,     0x674168d9
	li                  x6,     0x4974d058
	pv.dotusp.sc.b      x29,    x4,     x6
	li                  x31,    0x10511c
	sw                  x29,    0(x31)
	li                  x14,    0x1f1053c3
	li                  x17,    0x1510b70e
	pv.dotusp.sc.b      x29,    x14,    x17
	li                  x31,    0x107227
	sw                  x29,    0(x31)
	li                  x30,    0xb197e5dd
	pv.dotusp.sci.h     x29,    x30,    29
	li                  x31,    0x10481f
	sw                  x29,    0(x31)
	li                  x16,    0x28dfa07a
	pv.dotusp.sci.h     x13,    x16,    1
	li                  x31,    0x105f78
	sw                  x13,    0(x31)
	li                  x12,    0xcdda54d8
	pv.dotusp.sci.h     x19,    x12,    19
	li                  x31,    0x101ee5
	sw                  x19,    0(x31)
	li                  x18,    0x87c09213
	pv.dotusp.sci.b     x2,     x18,    4
	li                  x31,    0x1031cc
	sw                  x2,     0(x31)
	li                  x27,    0x8df7f77c
	pv.dotusp.sci.b     x12,    x27,    11
	li                  x31,    0x101b92
	sw                  x12,    0(x31)
	li                  x15,    0xac88da03
	pv.dotusp.sci.b     x21,    x15,    1
	li                  x31,    0x107d74
	sw                  x21,    0(x31)
	li                  x6,     0x4d9a168e
	li                  x1,     0xfbc8b7fe
	pv.dotsp.h          x11,    x6,     x1
	li                  x31,    0x1011a1
	sw                  x11,    0(x31)
	li                  x18,    0x188f364
	li                  x13,    0x6af1d1b2
	pv.dotsp.h          x29,    x18,    x13
	li                  x31,    0x104792
	sw                  x29,    0(x31)
	li                  x30,    0xc92ad851
	li                  x16,    0xbf374d33
	pv.dotsp.h          x27,    x30,    x16
	li                  x31,    0x10359c
	sw                  x27,    0(x31)
	li                  x12,    0x266b4e62
	li                  x6,     0xf9e2fb8c
	pv.dotsp.b          x13,    x12,    x6
	li                  x31,    0x106860
	sw                  x13,    0(x31)
	li                  x3,     0x123889fd
	li                  x0,     0x105bb7a7
	pv.dotsp.b          x12,    x3,     x0
	li                  x31,    0x1048c9
	sw                  x12,    0(x31)
	li                  x12,    0x9c5771ad
	li                  x10,    0x506a9d90
	pv.dotsp.b          x13,    x12,    x10
	li                  x31,    0x103b23
	sw                  x13,    0(x31)
	li                  x13,    0xaf73c7f4
	li                  x1,     0xd1aa2cdf
	pv.dotsp.sc.h       x21,    x13,    x1
	li                  x31,    0x107d57
	sw                  x21,    0(x31)
	li                  x17,    0xf541bb08
	li                  x10,    0xb7321bb0
	pv.dotsp.sc.h       x14,    x17,    x10
	li                  x31,    0x103c31
	sw                  x14,    0(x31)
	li                  x9,     0x3b46bf01
	li                  x16,    0x539ea59
	pv.dotsp.sc.h       x11,    x9,     x16
	li                  x31,    0x100d0c
	sw                  x11,    0(x31)
	li                  x16,    0x135d22d4
	li                  x16,    0xf969106a
	pv.dotsp.sc.b       x6,     x16,    x16
	li                  x31,    0x102d8e
	sw                  x6,     0(x31)
	li                  x2,     0xc78af64b
	li                  x5,     0x5aa68d63
	pv.dotsp.sc.b       x8,     x2,     x5
	li                  x31,    0x1004f9
	sw                  x8,     0(x31)
	li                  x26,    0xb0d60860
	li                  x31,    0x21e736bb
	pv.dotsp.sc.b       x25,    x26,    x31
	li                  x31,    0x1033cf
	sw                  x25,    0(x31)
	li                  x1,     0xdf5889dc
	pv.dotsp.sci.h      x12,    x1,     0
	li                  x31,    0x103c66
	sw                  x12,    0(x31)
	li                  x28,    0xe0194c05
	pv.dotsp.sci.h      x8,     x28,    7
	li                  x31,    0x103667
	sw                  x8,     0(x31)
	li                  x15,    0x640e4fb5
	pv.dotsp.sci.h      x20,    x15,    11
	li                  x31,    0x102b1e
	sw                  x20,    0(x31)
	li                  x30,    0x7cae5fff
	pv.dotsp.sci.b      x6,     x30,    26
	li                  x31,    0x100450
	sw                  x6,     0(x31)
	li                  x5,     0xd6d4eae5
	pv.dotsp.sci.b      x5,     x5,     22
	li                  x31,    0x104cf2
	sw                  x5,     0(x31)
	li                  x10,    0x54113531
	pv.dotsp.sci.b      x19,    x10,    11
	li                  x31,    0x1044d6
	sw                  x19,    0(x31)
	li                  x13,    0x7c1c468e
	li                  x16,    0xddba2907
	pv.sdotup.h         x4,     x13,    x16
	li                  x31,    0x104b9c
	sw                  x4,     0(x31)
	li                  x30,    0x48e9ffec
	li                  x13,    0x78214510
	pv.sdotup.h         x4,     x30,    x13
	li                  x31,    0x1032bb
	sw                  x4,     0(x31)
	li                  x12,    0xa7ad860c
	li                  x16,    0xa66b98ad
	pv.sdotup.h         x8,     x12,    x16
	li                  x31,    0x106cbd
	sw                  x8,     0(x31)
	li                  x25,    0x608e05e0
	li                  x26,    0x476a490e
	pv.sdotup.b         x31,    x25,    x26
	li                  x31,    0x107ac6
	sw                  x31,    0(x31)
	li                  x21,    0xed0cb6aa
	li                  x14,    0x40a083e8
	pv.sdotup.b         x26,    x21,    x14
	li                  x31,    0x1071ad
	sw                  x26,    0(x31)
	li                  x6,     0x3a8dae64
	li                  x19,    0x303638b3
	pv.sdotup.b         x12,    x6,     x19
	li                  x31,    0x107ec0
	sw                  x12,    0(x31)
	li                  x24,    0x1992550e
	li                  x9,     0x1471b30d
	pv.sdotup.sc.h      x3,     x24,    x9
	li                  x31,    0x100ea6
	sw                  x3,     0(x31)
	li                  x8,     0x7634f1f9
	li                  x25,    0xc462679d
	pv.sdotup.sc.h      x21,    x8,     x25
	li                  x31,    0x101d59
	sw                  x21,    0(x31)
	li                  x17,    0xff4968fd
	li                  x8,     0xbbcccb95
	pv.sdotup.sc.h      x7,     x17,    x8
	li                  x31,    0x1015c1
	sw                  x7,     0(x31)
	li                  x20,    0xdac6b2e9
	li                  x2,     0x2ae851a8
	pv.sdotup.sc.b      x24,    x20,    x2
	li                  x31,    0x100792
	sw                  x24,    0(x31)
	li                  x0,     0xe467e937
	li                  x14,    0x56d219c3
	pv.sdotup.sc.b      x30,    x0,     x14
	li                  x31,    0x104441
	sw                  x30,    0(x31)
	li                  x31,    0x1ca2dc5e
	li                  x8,     0xd45e39b9
	pv.sdotup.sc.b      x18,    x31,    x8
	li                  x31,    0x10400b
	sw                  x18,    0(x31)
	li                  x1,     0x2c5bdfec
	pv.sdotup.sci.h     x2,     x1,     1
	li                  x31,    0x100c49
	sw                  x2,     0(x31)
	li                  x9,     0xb1df5dbe
	pv.sdotup.sci.h     x3,     x9,     26
	li                  x31,    0x105472
	sw                  x3,     0(x31)
	li                  x7,     0x8ebaf117
	pv.sdotup.sci.h     x20,    x7,     28
	li                  x31,    0x100be2
	sw                  x20,    0(x31)
	li                  x12,    0x4753d3a2
	pv.sdotup.sci.b     x12,    x12,    5
	li                  x31,    0x101f29
	sw                  x12,    0(x31)
	li                  x19,    0xd453b3e2
	pv.sdotup.sci.b     x14,    x19,    23
	li                  x31,    0x100a7a
	sw                  x14,    0(x31)
	li                  x18,    0x12cd7fc2
	pv.sdotup.sci.b     x3,     x18,    7
	li                  x31,    0x101884
	sw                  x3,     0(x31)
	li                  x17,    0x65caf322
	li                  x17,    0x4c782d4b
	pv.sdotusp.h        x20,    x17,    x17
	li                  x31,    0x100395
	sw                  x20,    0(x31)
	li                  x21,    0x59cd6606
	li                  x12,    0xb88d5daa
	pv.sdotusp.h        x25,    x21,    x12
	li                  x31,    0x102ed3
	sw                  x25,    0(x31)
	li                  x8,     0xb739417f
	li                  x27,    0xf7e3388
	pv.sdotusp.h        x13,    x8,     x27
	li                  x31,    0x1041ad
	sw                  x13,    0(x31)
	li                  x16,    0xe8158b72
	li                  x24,    0xe2548ee3
	pv.sdotusp.b        x4,     x16,    x24
	li                  x31,    0x1071ca
	sw                  x4,     0(x31)
	li                  x29,    0xd52eac44
	li                  x4,     0xae5ba487
	pv.sdotusp.b        x11,    x29,    x4
	li                  x31,    0x1079bf
	sw                  x11,    0(x31)
	li                  x13,    0x71d3346b
	li                  x8,     0x5bba7fd
	pv.sdotusp.b        x10,    x13,    x8
	li                  x31,    0x103d37
	sw                  x10,    0(x31)
	li                  x18,    0x6fdca42a
	li                  x4,     0x30e106e1
	pv.sdotusp.sc.h     x13,    x18,    x4
	li                  x31,    0x106b80
	sw                  x13,    0(x31)
	li                  x13,    0xd054d1e7
	li                  x29,    0x7b388d9d
	pv.sdotusp.sc.h     x1,     x13,    x29
	li                  x31,    0x105e22
	sw                  x1,     0(x31)
	li                  x12,    0xf6d758c2
	li                  x23,    0xeabf258e
	pv.sdotusp.sc.h     x5,     x12,    x23
	li                  x31,    0x107e28
	sw                  x5,     0(x31)
	li                  x19,    0xec2a6cef
	li                  x11,    0xffbe9cbe
	pv.sdotusp.sc.b     x31,    x19,    x11
	li                  x31,    0x103bef
	sw                  x31,    0(x31)
	li                  x0,     0xccdbef0d
	li                  x8,     0xb2ed8282
	pv.sdotusp.sc.b     x28,    x0,     x8
	li                  x31,    0x106624
	sw                  x28,    0(x31)
	li                  x8,     0x8a963cb3
	li                  x23,    0xcc956f10
	pv.sdotusp.sc.b     x31,    x8,     x23
	li                  x31,    0x10053b
	sw                  x31,    0(x31)
	li                  x2,     0xb45aceb
	pv.sdotusp.sci.h    x12,    x2,     4
	li                  x31,    0x105125
	sw                  x12,    0(x31)
	li                  x1,     0xe012e0fc
	pv.sdotusp.sci.h    x11,    x1,     11
	li                  x31,    0x10518a
	sw                  x11,    0(x31)
	li                  x22,    0xbc09d41e
	pv.sdotusp.sci.h    x3,     x22,    12
	li                  x31,    0x1048a7
	sw                  x3,     0(x31)
	li                  x23,    0x6fede260
	pv.sdotusp.sci.b    x10,    x23,    13
	li                  x31,    0x106d28
	sw                  x10,    0(x31)
	li                  x4,     0xc004a4fb
	pv.sdotusp.sci.b    x15,    x4,     23
	li                  x31,    0x100b2b
	sw                  x15,    0(x31)
	li                  x2,     0x65a7e22
	pv.sdotusp.sci.b    x17,    x2,     21
	li                  x31,    0x102dad
	sw                  x17,    0(x31)
	li                  x4,     0x27f7905f
	li                  x19,    0x78f596e2
	pv.sdotsp.h         x7,     x4,     x19
	li                  x31,    0x102208
	sw                  x7,     0(x31)
	li                  x6,     0xdc43876b
	li                  x7,     0x73ce850
	pv.sdotsp.h         x21,    x6,     x7
	li                  x31,    0x100f34
	sw                  x21,    0(x31)
	li                  x25,    0x87ff8449
	li                  x9,     0x7ecfefb9
	pv.sdotsp.h         x25,    x25,    x9
	li                  x31,    0x101ad4
	sw                  x25,    0(x31)
	li                  x24,    0xff7c49b8
	li                  x8,     0xab713c18
	pv.sdotsp.b         x25,    x24,    x8
	li                  x31,    0x105463
	sw                  x25,    0(x31)
	li                  x15,    0x80ccada0
	li                  x6,     0xefb3880c
	pv.sdotsp.b         x8,     x15,    x6
	li                  x31,    0x105b1d
	sw                  x8,     0(x31)
	li                  x15,    0x50129d3c
	li                  x21,    0x9114f22f
	pv.sdotsp.b         x27,    x15,    x21
	li                  x31,    0x101f10
	sw                  x27,    0(x31)
	li                  x17,    0x8033837f
	li                  x22,    0xcc701367
	pv.sdotsp.sc.h      x20,    x17,    x22
	li                  x31,    0x10445b
	sw                  x20,    0(x31)
	li                  x12,    0x90ed3b92
	li                  x6,     0xbfbf2400
	pv.sdotsp.sc.h      x28,    x12,    x6
	li                  x31,    0x100f37
	sw                  x28,    0(x31)
	li                  x1,     0xaa1d8ad9
	li                  x7,     0xe6fef817
	pv.sdotsp.sc.h      x23,    x1,     x7
	li                  x31,    0x100e30
	sw                  x23,    0(x31)
	li                  x24,    0xc89d3044
	li                  x14,    0xa9cec901
	pv.sdotsp.sc.b      x25,    x24,    x14
	li                  x31,    0x107490
	sw                  x25,    0(x31)
	li                  x4,     0x700a9afc
	li                  x4,     0x572aaa0c
	pv.sdotsp.sc.b      x12,    x4,     x4
	li                  x31,    0x1049dd
	sw                  x12,    0(x31)
	li                  x23,    0x31fdcb86
	li                  x23,    0x5aafd027
	pv.sdotsp.sc.b      x21,    x23,    x23
	li                  x31,    0x104bdb
	sw                  x21,    0(x31)
	li                  x14,    0xa7b05658
	pv.sdotsp.sci.h     x20,    x14,    7
	li                  x31,    0x104634
	sw                  x20,    0(x31)
	li                  x16,    0x278a17bf
	pv.sdotsp.sci.h     x16,    x16,    31
	li                  x31,    0x101d7b
	sw                  x16,    0(x31)
	li                  x15,    0xb1a0e57d
	pv.sdotsp.sci.h     x27,    x15,    13
	li                  x31,    0x1041cb
	sw                  x27,    0(x31)
	li                  x6,     0x8ddb886
	pv.sdotsp.sci.b     x24,    x6,     26
	li                  x31,    0x10161b
	sw                  x24,    0(x31)
	li                  x3,     0x3bbdfa2a
	pv.sdotsp.sci.b     x20,    x3,     10
	li                  x31,    0x1035fa
	sw                  x20,    0(x31)
	li                  x20,    0x20829435
	pv.sdotsp.sci.b     x12,    x20,    10
	li                  x31,    0x1017cc
	sw                  x12,    0(x31)
	li                  x21,    0xba2a07e8
	li                  x21,    0x428f716d
	pv.cmpeq.h          x14,    x21,    x21
	li                  x31,    0x105eff
	sw                  x14,    0(x31)
	li                  x19,    0xfdf6ee07
	li                  x19,    0x9acdb8aa
	pv.cmpeq.h          x12,    x19,    x19
	li                  x31,    0x100cf3
	sw                  x12,    0(x31)
	li                  x11,    0x5698e324
	li                  x11,    0x4f3f44aa
	pv.cmpeq.h          x13,    x11,    x11
	li                  x31,    0x1048bc
	sw                  x13,    0(x31)
	li                  x6,     0xd4601d9c
	li                  x31,    0x7614eb6f
	pv.cmpeq.b          x5,     x6,     x31
	li                  x31,    0x104046
	sw                  x5,     0(x31)
	li                  x20,    0x2749c528
	li                  x5,     0x6e862e5
	pv.cmpeq.b          x8,     x20,    x5
	li                  x31,    0x103a22
	sw                  x8,     0(x31)
	li                  x28,    0x1080c124
	li                  x5,     0xaf07a0cd
	pv.cmpeq.b          x9,     x28,    x5
	li                  x31,    0x106936
	sw                  x9,     0(x31)
	li                  x14,    0x1fd6b4aa
	li                  x4,     0x5d1314c4
	pv.cmpeq.sc.h       x23,    x14,    x4
	li                  x31,    0x104562
	sw                  x23,    0(x31)
	li                  x26,    0xb2d577b3
	li                  x6,     0x81b4d6d1
	pv.cmpeq.sc.h       x7,     x26,    x6
	li                  x31,    0x104baa
	sw                  x7,     0(x31)
	li                  x18,    0x1583d968
	li                  x26,    0x77354788
	pv.cmpeq.sc.h       x30,    x18,    x26
	li                  x31,    0x1053eb
	sw                  x30,    0(x31)
	li                  x13,    0x1ab43a36
	li                  x5,     0x8b3723d
	pv.cmpeq.sc.b       x7,     x13,    x5
	li                  x31,    0x10717d
	sw                  x7,     0(x31)
	li                  x11,    0x86dfe175
	li                  x9,     0xb880470f
	pv.cmpeq.sc.b       x20,    x11,    x9
	li                  x31,    0x100bea
	sw                  x20,    0(x31)
	li                  x6,     0xfcf5f64f
	li                  x8,     0x693823c1
	pv.cmpeq.sc.b       x22,    x6,     x8
	li                  x31,    0x1031e4
	sw                  x22,    0(x31)
	li                  x13,    0x5eee5c50
	pv.cmpeq.sci.h      x18,    x13,    23
	li                  x31,    0x10276e
	sw                  x18,    0(x31)
	li                  x15,    0xa7448b5
	pv.cmpeq.sci.h      x9,     x15,    0
	li                  x31,    0x107a7f
	sw                  x9,     0(x31)
	li                  x26,    0x414f45a2
	pv.cmpeq.sci.h      x11,    x26,    27
	li                  x31,    0x100723
	sw                  x11,    0(x31)
	li                  x3,     0xab2d3cbd
	pv.cmpeq.sci.b      x26,    x3,     13
	li                  x31,    0x1050e6
	sw                  x26,    0(x31)
	li                  x24,    0x6440cbe2
	pv.cmpeq.sci.b      x21,    x24,    31
	li                  x31,    0x101c65
	sw                  x21,    0(x31)
	li                  x8,     0xce9840df
	pv.cmpeq.sci.b      x24,    x8,     11
	li                  x31,    0x10350a
	sw                  x24,    0(x31)
	li                  x1,     0x5641d0c9
	li                  x0,     0x2a90992
	pv.cmpne.h          x31,    x1,     x0
	li                  x31,    0x100621
	sw                  x31,    0(x31)
	li                  x7,     0xec248285
	li                  x16,    0x3defa3d8
	pv.cmpne.h          x7,     x7,     x16
	li                  x31,    0x100d63
	sw                  x7,     0(x31)
	li                  x23,    0x9309870c
	li                  x22,    0xda429d1
	pv.cmpne.h          x29,    x23,    x22
	li                  x31,    0x107c76
	sw                  x29,    0(x31)
	li                  x23,    0xb51839f9
	li                  x11,    0xcb05f467
	pv.cmpne.b          x19,    x23,    x11
	li                  x31,    0x100534
	sw                  x19,    0(x31)
	li                  x31,    0xcc2bc58c
	li                  x8,     0x70aea0c
	pv.cmpne.b          x26,    x31,    x8
	li                  x31,    0x10365a
	sw                  x26,    0(x31)
	li                  x26,    0xa3074c55
	li                  x5,     0xa1b05d44
	pv.cmpne.b          x3,     x26,    x5
	li                  x31,    0x107d56
	sw                  x3,     0(x31)
	li                  x22,    0x6592b49b
	li                  x16,    0x3289ab95
	pv.cmpne.sc.h       x6,     x22,    x16
	li                  x31,    0x1058b2
	sw                  x6,     0(x31)
	li                  x1,     0x149f2659
	li                  x11,    0xa08e56bf
	pv.cmpne.sc.h       x29,    x1,     x11
	li                  x31,    0x101588
	sw                  x29,    0(x31)
	li                  x25,    0x3894fd3c
	li                  x29,    0x4206f39f
	pv.cmpne.sc.h       x24,    x25,    x29
	li                  x31,    0x107dcc
	sw                  x24,    0(x31)
	li                  x20,    0x1be1b421
	li                  x3,     0x6dc2cb7a
	pv.cmpne.sc.b       x9,     x20,    x3
	li                  x31,    0x100c3e
	sw                  x9,     0(x31)
	li                  x4,     0x322bc2b0
	li                  x23,    0x60902af0
	pv.cmpne.sc.b       x16,    x4,     x23
	li                  x31,    0x101379
	sw                  x16,    0(x31)
	li                  x12,    0x16f4a936
	li                  x9,     0x944d4390
	pv.cmpne.sc.b       x14,    x12,    x9
	li                  x31,    0x105c5f
	sw                  x14,    0(x31)
	li                  x3,     0xda70e724
	pv.cmpne.sci.h      x24,    x3,     6
	li                  x31,    0x1021d3
	sw                  x24,    0(x31)
	li                  x11,    0xe615887e
	pv.cmpne.sci.h      x16,    x11,    29
	li                  x31,    0x100a62
	sw                  x16,    0(x31)
	li                  x14,    0x5bc32e40
	pv.cmpne.sci.h      x29,    x14,    9
	li                  x31,    0x104ab1
	sw                  x29,    0(x31)
	li                  x26,    0x534b5062
	pv.cmpne.sci.b      x29,    x26,    23
	li                  x31,    0x10752d
	sw                  x29,    0(x31)
	li                  x28,    0xe144ba55
	pv.cmpne.sci.b      x15,    x28,    1
	li                  x31,    0x100790
	sw                  x15,    0(x31)
	li                  x30,    0xfec3e1d4
	pv.cmpne.sci.b      x31,    x30,    20
	li                  x31,    0x10692c
	sw                  x31,    0(x31)
	li                  x5,     0x55ccee87
	li                  x27,    0x54a82161
	pv.cmpgt.h          x14,    x5,     x27
	li                  x31,    0x107e7e
	sw                  x14,    0(x31)
	li                  x16,    0xbe00925e
	li                  x23,    0x7f9faedb
	pv.cmpgt.h          x20,    x16,    x23
	li                  x31,    0x10266f
	sw                  x20,    0(x31)
	li                  x8,     0x8f102b5b
	li                  x4,     0x40f72620
	pv.cmpgt.h          x21,    x8,     x4
	li                  x31,    0x105f61
	sw                  x21,    0(x31)
	li                  x27,    0x8c3870e5
	li                  x28,    0x284adf68
	pv.cmpgt.b          x27,    x27,    x28
	li                  x31,    0x100a98
	sw                  x27,    0(x31)
	li                  x30,    0x97dfa054
	li                  x10,    0x92040835
	pv.cmpgt.b          x17,    x30,    x10
	li                  x31,    0x10539f
	sw                  x17,    0(x31)
	li                  x15,    0x6b193245
	li                  x9,     0x2828bc09
	pv.cmpgt.b          x19,    x15,    x9
	li                  x31,    0x10357b
	sw                  x19,    0(x31)
	li                  x21,    0x12d9bfa6
	li                  x19,    0x364cc164
	pv.cmpgt.sc.h       x30,    x21,    x19
	li                  x31,    0x103838
	sw                  x30,    0(x31)
	li                  x5,     0xb09d43cc
	li                  x10,    0x5211b1e6
	pv.cmpgt.sc.h       x28,    x5,     x10
	li                  x31,    0x100975
	sw                  x28,    0(x31)
	li                  x1,     0x1adcd254
	li                  x5,     0x5b9c4e42
	pv.cmpgt.sc.h       x26,    x1,     x5
	li                  x31,    0x101f44
	sw                  x26,    0(x31)
	li                  x8,     0x2e0329a8
	li                  x25,    0x66644cb3
	pv.cmpgt.sc.b       x20,    x8,     x25
	li                  x31,    0x1033a1
	sw                  x20,    0(x31)
	li                  x15,    0x6b2b9ade
	li                  x3,     0x9bc5d38f
	pv.cmpgt.sc.b       x14,    x15,    x3
	li                  x31,    0x104f8d
	sw                  x14,    0(x31)
	li                  x6,     0xad9f5cfb
	li                  x30,    0xf8936eec
	pv.cmpgt.sc.b       x27,    x6,     x30
	li                  x31,    0x1009e3
	sw                  x27,    0(x31)
	li                  x5,     0x88c83704
	pv.cmpgt.sci.h      x3,     x5,     26
	li                  x31,    0x10097a
	sw                  x3,     0(x31)
	li                  x7,     0x8d10b43
	pv.cmpgt.sci.h      x16,    x7,     29
	li                  x31,    0x1012a2
	sw                  x16,    0(x31)
	li                  x14,    0x14e88704
	pv.cmpgt.sci.h      x15,    x14,    31
	li                  x31,    0x105ad5
	sw                  x15,    0(x31)
	li                  x23,    0xce48144c
	pv.cmpgt.sci.b      x5,     x23,    0
	li                  x31,    0x1029d2
	sw                  x5,     0(x31)
	li                  x30,    0xe68efdcf
	pv.cmpgt.sci.b      x15,    x30,    20
	li                  x31,    0x1077bf
	sw                  x15,    0(x31)
	li                  x23,    0xa13680f2
	pv.cmpgt.sci.b      x9,     x23,    11
	li                  x31,    0x107b33
	sw                  x9,     0(x31)
	li                  x13,    0x74e6e078
	li                  x7,     0x6b8f0099
	pv.cmpge.h          x12,    x13,    x7
	li                  x31,    0x10752c
	sw                  x12,    0(x31)
	li                  x15,    0x881a9dc6
	li                  x1,     0x7f9f98cb
	pv.cmpge.h          x31,    x15,    x1
	li                  x31,    0x106104
	sw                  x31,    0(x31)
	li                  x3,     0x2a8bd430
	li                  x13,    0xe866dc6d
	pv.cmpge.h          x21,    x3,     x13
	li                  x31,    0x102321
	sw                  x21,    0(x31)
	li                  x21,    0x33a0214b
	li                  x4,     0x3150990c
	pv.cmpge.b          x17,    x21,    x4
	li                  x31,    0x107b5f
	sw                  x17,    0(x31)
	li                  x25,    0x585c88bc
	li                  x19,    0xf8b9e6bc
	pv.cmpge.b          x7,     x25,    x19
	li                  x31,    0x100477
	sw                  x7,     0(x31)
	li                  x23,    0xc1c5a426
	li                  x23,    0xc50e56f1
	pv.cmpge.b          x16,    x23,    x23
	li                  x31,    0x103412
	sw                  x16,    0(x31)
	li                  x22,    0x8f5123d0
	li                  x17,    0x54cf6573
	pv.cmpge.sc.h       x28,    x22,    x17
	li                  x31,    0x107e09
	sw                  x28,    0(x31)
	li                  x14,    0x54ac58b5
	li                  x21,    0x2c49bfb1
	pv.cmpge.sc.h       x15,    x14,    x21
	li                  x31,    0x1023fb
	sw                  x15,    0(x31)
	li                  x13,    0x9e3817a9
	li                  x28,    0xb46cdb74
	pv.cmpge.sc.h       x24,    x13,    x28
	li                  x31,    0x107868
	sw                  x24,    0(x31)
	li                  x5,     0x9a596857
	li                  x28,    0xbcb55ce0
	pv.cmpge.sc.b       x17,    x5,     x28
	li                  x31,    0x10435c
	sw                  x17,    0(x31)
	li                  x22,    0xe804f257
	li                  x5,     0x723190ab
	pv.cmpge.sc.b       x12,    x22,    x5
	li                  x31,    0x102154
	sw                  x12,    0(x31)
	li                  x5,     0xe56a0fe0
	li                  x11,    0x999008c8
	pv.cmpge.sc.b       x25,    x5,     x11
	li                  x31,    0x106f73
	sw                  x25,    0(x31)
	li                  x5,     0x879f0641
	pv.cmpge.sci.h      x22,    x5,     29
	li                  x31,    0x102b9a
	sw                  x22,    0(x31)
	li                  x10,    0x37dab2b2
	pv.cmpge.sci.h      x7,     x10,    0
	li                  x31,    0x10340d
	sw                  x7,     0(x31)
	li                  x11,    0xc1fa6c98
	pv.cmpge.sci.h      x24,    x11,    22
	li                  x31,    0x10368b
	sw                  x24,    0(x31)
	li                  x29,    0x27396018
	pv.cmpge.sci.b      x12,    x29,    2
	li                  x31,    0x104247
	sw                  x12,    0(x31)
	li                  x9,     0xc6563f9e
	pv.cmpge.sci.b      x27,    x9,     15
	li                  x31,    0x100ee4
	sw                  x27,    0(x31)
	li                  x17,    0x2cc36759
	pv.cmpge.sci.b      x30,    x17,    1
	li                  x31,    0x103c24
	sw                  x30,    0(x31)
	li                  x28,    0x8b7e64c7
	li                  x28,    0x6fec4850
	pv.cmplt.h          x13,    x28,    x28
	li                  x31,    0x10548a
	sw                  x13,    0(x31)
	li                  x10,    0xb607580d
	li                  x26,    0x4302f7f1
	pv.cmplt.h          x5,     x10,    x26
	li                  x31,    0x101ee5
	sw                  x5,     0(x31)
	li                  x30,    0xe891e35c
	li                  x21,    0xd62349b5
	pv.cmplt.h          x9,     x30,    x21
	li                  x31,    0x1075cc
	sw                  x9,     0(x31)
	li                  x21,    0x75165d8c
	li                  x27,    0x9ec2d818
	pv.cmplt.b          x6,     x21,    x27
	li                  x31,    0x106d1c
	sw                  x6,     0(x31)
	li                  x26,    0x7ebf1655
	li                  x14,    0x29d3eb6b
	pv.cmplt.b          x4,     x26,    x14
	li                  x31,    0x102e45
	sw                  x4,     0(x31)
	li                  x28,    0xf98d45cf
	li                  x3,     0xd53e4532
	pv.cmplt.b          x12,    x28,    x3
	li                  x31,    0x105b1c
	sw                  x12,    0(x31)
	li                  x25,    0xa795c011
	li                  x1,     0x80e4051a
	pv.cmplt.sc.h       x25,    x25,    x1
	li                  x31,    0x103602
	sw                  x25,    0(x31)
	li                  x7,     0xdd1caf0c
	li                  x17,    0xd88f5f9d
	pv.cmplt.sc.h       x18,    x7,     x17
	li                  x31,    0x1012ff
	sw                  x18,    0(x31)
	li                  x11,    0xdd86b520
	li                  x7,     0x77df54cd
	pv.cmplt.sc.h       x26,    x11,    x7
	li                  x31,    0x10107d
	sw                  x26,    0(x31)
	li                  x1,     0x7d23dce9
	li                  x0,     0x891217e1
	pv.cmplt.sc.b       x19,    x1,     x0
	li                  x31,    0x105fd1
	sw                  x19,    0(x31)
	li                  x30,    0x556d4c56
	li                  x8,     0x477e7875
	pv.cmplt.sc.b       x10,    x30,    x8
	li                  x31,    0x106c81
	sw                  x10,    0(x31)
	li                  x22,    0xf39b426c
	li                  x8,     0x55c6bd02
	pv.cmplt.sc.b       x19,    x22,    x8
	li                  x31,    0x10289c
	sw                  x19,    0(x31)
	li                  x0,     0x48443031
	pv.cmplt.sci.h      x2,     x0,     29
	li                  x31,    0x1023dd
	sw                  x2,     0(x31)
	li                  x10,    0xae75f492
	pv.cmplt.sci.h      x20,    x10,    12
	li                  x31,    0x10614e
	sw                  x20,    0(x31)
	li                  x28,    0xa7d85f2
	pv.cmplt.sci.h      x30,    x28,    26
	li                  x31,    0x1014f9
	sw                  x30,    0(x31)
	li                  x21,    0x41b5b684
	pv.cmplt.sci.b      x19,    x21,    24
	li                  x31,    0x1048a9
	sw                  x19,    0(x31)
	li                  x8,     0xbb047959
	pv.cmplt.sci.b      x7,     x8,     20
	li                  x31,    0x101a8d
	sw                  x7,     0(x31)
	li                  x13,    0xbe87905e
	pv.cmplt.sci.b      x2,     x13,    27
	li                  x31,    0x104e2b
	sw                  x2,     0(x31)
	li                  x28,    0xfe9ca0e4
	li                  x4,     0x68ba394c
	pv.cmple.h          x1,     x28,    x4
	li                  x31,    0x1020c4
	sw                  x1,     0(x31)
	li                  x14,    0xbf71ed49
	li                  x16,    0x7aa6919a
	pv.cmple.h          x9,     x14,    x16
	li                  x31,    0x1068bf
	sw                  x9,     0(x31)
	li                  x14,    0x9bd87d71
	li                  x22,    0x14044c90
	pv.cmple.h          x18,    x14,    x22
	li                  x31,    0x101ef1
	sw                  x18,    0(x31)
	li                  x20,    0x6f4fcb4e
	li                  x5,     0x37043c9e
	pv.cmple.b          x18,    x20,    x5
	li                  x31,    0x104a7a
	sw                  x18,    0(x31)
	li                  x27,    0xa764ae0c
	li                  x27,    0xddb4612b
	pv.cmple.b          x11,    x27,    x27
	li                  x31,    0x10364e
	sw                  x11,    0(x31)
	li                  x28,    0xd2a61af3
	li                  x9,     0xb66ceaae
	pv.cmple.b          x28,    x28,    x9
	li                  x31,    0x10651b
	sw                  x28,    0(x31)
	li                  x28,    0x386b84cd
	li                  x12,    0x47c114d
	pv.cmple.sc.h       x26,    x28,    x12
	li                  x31,    0x1018cb
	sw                  x26,    0(x31)
	li                  x7,     0xcb6361af
	li                  x19,    0xf6692303
	pv.cmple.sc.h       x12,    x7,     x19
	li                  x31,    0x105296
	sw                  x12,    0(x31)
	li                  x15,    0xc46f1a60
	li                  x25,    0x2b0afed8
	pv.cmple.sc.h       x18,    x15,    x25
	li                  x31,    0x101de7
	sw                  x18,    0(x31)
	li                  x31,    0x55188db5
	li                  x27,    0x14a130cd
	pv.cmple.sc.b       x30,    x31,    x27
	li                  x31,    0x100c9e
	sw                  x30,    0(x31)
	li                  x31,    0x8b15d4ac
	li                  x11,    0x857f6bf9
	pv.cmple.sc.b       x24,    x31,    x11
	li                  x31,    0x106613
	sw                  x24,    0(x31)
	li                  x18,    0x4f295705
	li                  x23,    0x5c8db82a
	pv.cmple.sc.b       x14,    x18,    x23
	li                  x31,    0x106899
	sw                  x14,    0(x31)
	li                  x3,     0x4c0b48e6
	pv.cmple.sci.h      x29,    x3,     20
	li                  x31,    0x106921
	sw                  x29,    0(x31)
	li                  x12,    0xbac7e108
	pv.cmple.sci.h      x21,    x12,    24
	li                  x31,    0x1052fc
	sw                  x21,    0(x31)
	li                  x20,    0xdb11c076
	pv.cmple.sci.h      x12,    x20,    10
	li                  x31,    0x10458f
	sw                  x12,    0(x31)
	li                  x17,    0xcfd38e8c
	pv.cmple.sci.b      x9,     x17,    3
	li                  x31,    0x10594d
	sw                  x9,     0(x31)
	li                  x19,    0x222b4643
	pv.cmple.sci.b      x28,    x19,    17
	li                  x31,    0x102dca
	sw                  x28,    0(x31)
	li                  x29,    0xc6be6a1f
	pv.cmple.sci.b      x10,    x29,    1
	li                  x31,    0x1024ab
	sw                  x10,    0(x31)
	li                  x20,    0x3a4f289b
	li                  x6,     0xccfb2947
	pv.cmpgtu.h         x1,     x20,    x6
	li                  x31,    0x1038c2
	sw                  x1,     0(x31)
	li                  x22,    0x404c35f8
	li                  x29,    0x5bd40e2
	pv.cmpgtu.h         x14,    x22,    x29
	li                  x31,    0x10016f
	sw                  x14,    0(x31)
	li                  x25,    0x584b7ae0
	li                  x5,     0x944f1855
	pv.cmpgtu.h         x17,    x25,    x5
	li                  x31,    0x10011b
	sw                  x17,    0(x31)
	li                  x2,     0xa5679d99
	li                  x26,    0x64fe179a
	pv.cmpgtu.b         x21,    x2,     x26
	li                  x31,    0x1023be
	sw                  x21,    0(x31)
	li                  x31,    0xfcf507b3
	li                  x6,     0x1ce57b80
	pv.cmpgtu.b         x5,     x31,    x6
	li                  x31,    0x101c9f
	sw                  x5,     0(x31)
	li                  x31,    0x53465fbe
	li                  x15,    0xf782c367
	pv.cmpgtu.b         x10,    x31,    x15
	li                  x31,    0x107d33
	sw                  x10,    0(x31)
	li                  x10,    0xb80bd735
	li                  x13,    0x7090051b
	pv.cmpgtu.sc.h      x3,     x10,    x13
	li                  x31,    0x106338
	sw                  x3,     0(x31)
	li                  x26,    0x3852c38a
	li                  x9,     0xbb5ba54e
	pv.cmpgtu.sc.h      x30,    x26,    x9
	li                  x31,    0x104059
	sw                  x30,    0(x31)
	li                  x19,    0x57611cc6
	li                  x0,     0x1e191180
	pv.cmpgtu.sc.h      x20,    x19,    x0
	li                  x31,    0x1015e8
	sw                  x20,    0(x31)
	li                  x22,    0xe0b76a81
	li                  x15,    0x6ddadd0a
	pv.cmpgtu.sc.b      x4,     x22,    x15
	li                  x31,    0x106e9c
	sw                  x4,     0(x31)
	li                  x29,    0x475795e2
	li                  x21,    0xf06b66d0
	pv.cmpgtu.sc.b      x8,     x29,    x21
	li                  x31,    0x10529d
	sw                  x8,     0(x31)
	li                  x31,    0xcc807571
	li                  x31,    0xeb07c70e
	pv.cmpgtu.sc.b      x27,    x31,    x31
	li                  x31,    0x1007d1
	sw                  x27,    0(x31)
	li                  x20,    0x70a0ebbe
	pv.cmpgtu.sci.h     x7,     x20,    16
	li                  x31,    0x104d8b
	sw                  x7,     0(x31)
	li                  x18,    0xbf33b4ca
	pv.cmpgtu.sci.h     x6,     x18,    13
	li                  x31,    0x101ee0
	sw                  x6,     0(x31)
	li                  x27,    0xead16af8
	pv.cmpgtu.sci.h     x12,    x27,    22
	li                  x31,    0x106f24
	sw                  x12,    0(x31)
	li                  x20,    0xaef9f415
	pv.cmpgtu.sci.b     x23,    x20,    7
	li                  x31,    0x102df1
	sw                  x23,    0(x31)
	li                  x15,    0xd5075c1d
	pv.cmpgtu.sci.b     x13,    x15,    31
	li                  x31,    0x101a68
	sw                  x13,    0(x31)
	li                  x5,     0x88baf9c9
	pv.cmpgtu.sci.b     x23,    x5,     31
	li                  x31,    0x1055a8
	sw                  x23,    0(x31)
	li                  x27,    0xa6a507e4
	li                  x30,    0xf900b32c
	pv.cmpgeu.h         x1,     x27,    x30
	li                  x31,    0x10447a
	sw                  x1,     0(x31)
	li                  x28,    0x24fb1204
	li                  x11,    0xc5a9ee78
	pv.cmpgeu.h         x30,    x28,    x11
	li                  x31,    0x106ec2
	sw                  x30,    0(x31)
	li                  x21,    0xaf58d9a7
	li                  x28,    0x86085490
	pv.cmpgeu.h         x21,    x21,    x28
	li                  x31,    0x105dc4
	sw                  x21,    0(x31)
	li                  x16,    0xd785e748
	li                  x13,    0xb8387b28
	pv.cmpgeu.b         x5,     x16,    x13
	li                  x31,    0x103d50
	sw                  x5,     0(x31)
	li                  x22,    0x60e34c67
	li                  x29,    0xc0c0c411
	pv.cmpgeu.b         x20,    x22,    x29
	li                  x31,    0x104913
	sw                  x20,    0(x31)
	li                  x18,    0xf156e86b
	li                  x17,    0xa6a54544
	pv.cmpgeu.b         x2,     x18,    x17
	li                  x31,    0x1050b4
	sw                  x2,     0(x31)
	li                  x29,    0xec3936f8
	li                  x20,    0xb6d4da46
	pv.cmpgeu.sc.h      x20,    x29,    x20
	li                  x31,    0x107f4b
	sw                  x20,    0(x31)
	li                  x30,    0x6bcd3b02
	li                  x4,     0xb7139bbf
	pv.cmpgeu.sc.h      x4,     x30,    x4
	li                  x31,    0x105b2c
	sw                  x4,     0(x31)
	li                  x18,    0x9be6a85
	li                  x9,     0x3d805d2c
	pv.cmpgeu.sc.h      x16,    x18,    x9
	li                  x31,    0x102f8c
	sw                  x16,    0(x31)
	li                  x12,    0x7270bb1b
	li                  x18,    0xd7cb9464
	pv.cmpgeu.sc.b      x16,    x12,    x18
	li                  x31,    0x10596a
	sw                  x16,    0(x31)
	li                  x24,    0x2a602c51
	li                  x8,     0x8049caee
	pv.cmpgeu.sc.b      x1,     x24,    x8
	li                  x31,    0x100a20
	sw                  x1,     0(x31)
	li                  x30,    0x52b3304d
	li                  x19,    0xfb5d8af6
	pv.cmpgeu.sc.b      x14,    x30,    x19
	li                  x31,    0x102c3d
	sw                  x14,    0(x31)
	li                  x24,    0xa42b95ca
	pv.cmpgeu.sci.h     x28,    x24,    22
	li                  x31,    0x100f4f
	sw                  x28,    0(x31)
	li                  x5,     0x98772226
	pv.cmpgeu.sci.h     x5,     x5,     30
	li                  x31,    0x100d0f
	sw                  x5,     0(x31)
	li                  x15,    0xe2fa2615
	pv.cmpgeu.sci.h     x15,    x15,    26
	li                  x31,    0x10390f
	sw                  x15,    0(x31)
	li                  x3,     0x22aced53
	pv.cmpgeu.sci.b     x25,    x3,     17
	li                  x31,    0x10172b
	sw                  x25,    0(x31)
	li                  x19,    0x1b6e339a
	pv.cmpgeu.sci.b     x21,    x19,    28
	li                  x31,    0x105e68
	sw                  x21,    0(x31)
	li                  x22,    0xcdcda567
	pv.cmpgeu.sci.b     x12,    x22,    19
	li                  x31,    0x100141
	sw                  x12,    0(x31)
	li                  x30,    0xbcdcb2
	li                  x1,     0xf8cf7e5d
	pv.cmpltu.h         x17,    x30,    x1
	li                  x31,    0x106772
	sw                  x17,    0(x31)
	li                  x22,    0x778aa1c
	li                  x8,     0xc936ff1b
	pv.cmpltu.h         x20,    x22,    x8
	li                  x31,    0x1027a8
	sw                  x20,    0(x31)
	li                  x13,    0xa5b2d450
	li                  x13,    0x5a18b643
	pv.cmpltu.h         x6,     x13,    x13
	li                  x31,    0x105f4c
	sw                  x6,     0(x31)
	li                  x1,     0xe0e8bc79
	li                  x30,    0x17edaa66
	pv.cmpltu.b         x31,    x1,     x30
	li                  x31,    0x100661
	sw                  x31,    0(x31)
	li                  x16,    0x20fcf8d1
	li                  x21,    0x9a6dd70e
	pv.cmpltu.b         x25,    x16,    x21
	li                  x31,    0x100483
	sw                  x25,    0(x31)
	li                  x4,     0x7e02ea1
	li                  x31,    0x28a3b204
	pv.cmpltu.b         x22,    x4,     x31
	li                  x31,    0x103274
	sw                  x22,    0(x31)
	li                  x18,    0x2bb603c2
	li                  x27,    0xb286d039
	pv.cmpltu.sc.h      x2,     x18,    x27
	li                  x31,    0x104233
	sw                  x2,     0(x31)
	li                  x16,    0x29a99daf
	li                  x29,    0xd3c8b3a1
	pv.cmpltu.sc.h      x24,    x16,    x29
	li                  x31,    0x1072d7
	sw                  x24,    0(x31)
	li                  x24,    0xe5be9e7c
	li                  x31,    0xe1947895
	pv.cmpltu.sc.h      x25,    x24,    x31
	li                  x31,    0x101e5f
	sw                  x25,    0(x31)
	li                  x19,    0x8718c6a0
	li                  x5,     0x43971657
	pv.cmpltu.sc.b      x22,    x19,    x5
	li                  x31,    0x1076cb
	sw                  x22,    0(x31)
	li                  x24,    0x4a64c92e
	li                  x21,    0xfe4535cd
	pv.cmpltu.sc.b      x3,     x24,    x21
	li                  x31,    0x10319c
	sw                  x3,     0(x31)
	li                  x15,    0x99b9ff4b
	li                  x29,    0xa193c174
	pv.cmpltu.sc.b      x3,     x15,    x29
	li                  x31,    0x10204d
	sw                  x3,     0(x31)
	li                  x18,    0x796b3d65
	pv.cmpltu.sci.h     x18,    x18,    14
	li                  x31,    0x1005ba
	sw                  x18,    0(x31)
	li                  x17,    0x84be1091
	pv.cmpltu.sci.h     x7,     x17,    20
	li                  x31,    0x105c72
	sw                  x7,     0(x31)
	li                  x30,    0x70dd1109
	pv.cmpltu.sci.h     x11,    x30,    13
	li                  x31,    0x1076e2
	sw                  x11,    0(x31)
	li                  x18,    0x4e48ca34
	pv.cmpltu.sci.b     x7,     x18,    24
	li                  x31,    0x104a04
	sw                  x7,     0(x31)
	li                  x4,     0xd52c5411
	pv.cmpltu.sci.b     x22,    x4,     14
	li                  x31,    0x104b38
	sw                  x22,    0(x31)
	li                  x6,     0x1f1585d3
	pv.cmpltu.sci.b     x2,     x6,     24
	li                  x31,    0x10091e
	sw                  x2,     0(x31)
	li                  x27,    0xc46b0cfd
	li                  x25,    0x28683684
	pv.cmpleu.h         x4,     x27,    x25
	li                  x31,    0x103d3a
	sw                  x4,     0(x31)
	li                  x18,    0xf3687caa
	li                  x1,     0x19c5cdc
	pv.cmpleu.h         x26,    x18,    x1
	li                  x31,    0x101761
	sw                  x26,    0(x31)
	li                  x26,    0xece0266c
	li                  x16,    0x90c59d23
	pv.cmpleu.h         x14,    x26,    x16
	li                  x31,    0x1055c6
	sw                  x14,    0(x31)
	li                  x26,    0xb9d56d4a
	li                  x28,    0x198e2825
	pv.cmpleu.b         x9,     x26,    x28
	li                  x31,    0x104d62
	sw                  x9,     0(x31)
	li                  x26,    0x26b78cdf
	li                  x17,    0x2b7992f0
	pv.cmpleu.b         x30,    x26,    x17
	li                  x31,    0x100e79
	sw                  x30,    0(x31)
	li                  x14,    0xf4688a1
	li                  x7,     0x250d2a34
	pv.cmpleu.b         x1,     x14,    x7
	li                  x31,    0x103663
	sw                  x1,     0(x31)
	li                  x15,    0x6f0901b8
	li                  x16,    0xd9a7bb0e
	pv.cmpleu.sc.h      x25,    x15,    x16
	li                  x31,    0x1038a5
	sw                  x25,    0(x31)
	li                  x14,    0x886bdd97
	li                  x27,    0x7550606b
	pv.cmpleu.sc.h      x7,     x14,    x27
	li                  x31,    0x104a25
	sw                  x7,     0(x31)
	li                  x4,     0x1bff38f
	li                  x10,    0x8c7af029
	pv.cmpleu.sc.h      x21,    x4,     x10
	li                  x31,    0x100427
	sw                  x21,    0(x31)
	li                  x10,    0xa1233de5
	li                  x19,    0xf3fe4270
	pv.cmpleu.sc.b      x13,    x10,    x19
	li                  x31,    0x104e3e
	sw                  x13,    0(x31)
	li                  x12,    0x29f59b17
	li                  x1,     0x2f8ec17b
	pv.cmpleu.sc.b      x4,     x12,    x1
	li                  x31,    0x102678
	sw                  x4,     0(x31)
	li                  x9,     0x52e418bb
	li                  x19,    0x7b2ab729
	pv.cmpleu.sc.b      x29,    x9,     x19
	li                  x31,    0x104f28
	sw                  x29,    0(x31)
	li                  x26,    0x45dd380c
	pv.cmpleu.sci.h     x26,    x26,    13
	li                  x31,    0x102710
	sw                  x26,    0(x31)
	li                  x2,     0xce2e28cf
	pv.cmpleu.sci.h     x6,     x2,     4
	li                  x31,    0x107545
	sw                  x6,     0(x31)
	li                  x22,    0x6cb8ba57
	pv.cmpleu.sci.h     x13,    x22,    2
	li                  x31,    0x107488
	sw                  x13,    0(x31)
	li                  x15,    0xc2fa6529
	pv.cmpleu.sci.b     x2,     x15,    4
	li                  x31,    0x10404f
	sw                  x2,     0(x31)
	li                  x8,     0x10c3abc8
	pv.cmpleu.sci.b     x15,    x8,     10
	li                  x31,    0x102cc1
	sw                  x15,    0(x31)
	li                  x4,     0x23733d70
	pv.cmpleu.sci.b     x14,    x4,     31
	li                  x31,    0x107f23
	sw                  x14,    0(x31)
	li                  x22,    0xecbc611a
	li                  x8,     0x68943b6b
	pv.shuffle.h        x23,    x22,    x8
	li                  x31,    0x1027d8
	sw                  x23,    0(x31)
	li                  x13,    0x2ed75f9c
	li                  x19,    0x14d4aa5e
	pv.shuffle.h        x2,     x13,    x19
	li                  x31,    0x107943
	sw                  x2,     0(x31)
	li                  x12,    0x18b44472
	li                  x31,    0x199e3a3a
	pv.shuffle.h        x6,     x12,    x31
	li                  x31,    0x1008de
	sw                  x6,     0(x31)
	li                  x11,    0xd696c40
	pv.shuffle.sci.h    x5,     x11,    51
	li                  x31,    0x107fc6
	sw                  x5,     0(x31)
	li                  x27,    0x683282ca
	pv.shuffle.sci.h    x21,    x27,    48
	li                  x31,    0x101ee1
	sw                  x21,    0(x31)
	li                  x13,    0x311b7ef3
	pv.shuffle.sci.h    x6,     x13,    0
	li                  x31,    0x106516
	sw                  x6,     0(x31)
	li                  x11,    0x5c2bdff7
	li                  x11,    0x1dbd728b
	pv.shuffle.b        x8,     x11,    x11
	li                  x31,    0x10085e
	sw                  x8,     0(x31)
	li                  x10,    0x9f13bc4c
	li                  x6,     0x589f0a98
	pv.shuffle.b        x30,    x10,    x6
	li                  x31,    0x10739a
	sw                  x30,    0(x31)
	li                  x21,    0x3f8dde1e
	li                  x20,    0x4e638bfa
	pv.shuffle.b        x19,    x21,    x20
	li                  x31,    0x1064e8
	sw                  x19,    0(x31)
	li                  x20,    0x3dda26f3
	pv.shuffleI0.sci.b  x15,    x20,    19
	li                  x31,    0x104d3d
	sw                  x15,    0(x31)
	li                  x11,    0xf07e04bd
	pv.shuffleI0.sci.b  x26,    x11,    32
	li                  x31,    0x100054
	sw                  x26,    0(x31)
	li                  x22,    0x214a3a0d
	pv.shuffleI0.sci.b  x9,     x22,    50
	li                  x31,    0x10126c
	sw                  x9,     0(x31)
	li                  x15,    0xed10312a
	pv.shuffleI1.sci.b  x29,    x15,    63
	li                  x31,    0x1078ab
	sw                  x29,    0(x31)
	li                  x6,     0xe44a03e2
	pv.shuffleI1.sci.b  x6,     x6,     48
	li                  x31,    0x10329d
	sw                  x6,     0(x31)
	li                  x28,    0x4af3ff1c
	pv.shuffleI1.sci.b  x27,    x28,    41
	li                  x31,    0x103281
	sw                  x27,    0(x31)
	li                  x19,    0x89891405
	pv.shuffleI2.sci.b  x8,     x19,    5
	li                  x31,    0x107f8f
	sw                  x8,     0(x31)
	li                  x25,    0x40873f2e
	pv.shuffleI2.sci.b  x28,    x25,    17
	li                  x31,    0x100e55
	sw                  x28,    0(x31)
	li                  x15,    0x4786a71
	pv.shuffleI2.sci.b  x8,     x15,    48
	li                  x31,    0x105ba4
	sw                  x8,     0(x31)
	li                  x7,     0xb465ec7b
	pv.shuffleI3.sci.b  x25,    x7,     1
	li                  x31,    0x1044cb
	sw                  x25,    0(x31)
	li                  x25,    0x12432b56
	pv.shuffleI3.sci.b  x9,     x25,    40
	li                  x31,    0x101750
	sw                  x9,     0(x31)
	li                  x11,    0xca127ed5
	pv.shuffleI3.sci.b  x26,    x11,    61
	li                  x31,    0x105bb3
	sw                  x26,    0(x31)
	li                  x6,     0x36d25aad
	li                  x1,     0xf3399597
	pv.shuffle2.h       x11,    x6,     x1
	li                  x31,    0x101f9a
	sw                  x11,    0(x31)
	li                  x24,    0x899f2da2
	li                  x3,     0x1d8695b0
	pv.shuffle2.h       x12,    x24,    x3
	li                  x31,    0x1023db
	sw                  x12,    0(x31)
	li                  x24,    0xd4efbb3d
	li                  x15,    0x35d98536
	pv.shuffle2.h       x13,    x24,    x15
	li                  x31,    0x106110
	sw                  x13,    0(x31)
	li                  x5,     0x4db5d843
	li                  x10,    0xfd6f0ea8
	pv.shuffle2.b       x17,    x5,     x10
	li                  x31,    0x1049dc
	sw                  x17,    0(x31)
	li                  x9,     0x14f65ce3
	li                  x16,    0x99da819
	pv.shuffle2.b       x23,    x9,     x16
	li                  x31,    0x104b73
	sw                  x23,    0(x31)
	li                  x28,    0x155ab3b1
	li                  x26,    0x746bb147
	pv.shuffle2.b       x13,    x28,    x26
	li                  x31,    0x104517
	sw                  x13,    0(x31)
	li                  x1,     0x8baa7b75
	li                  x12,    0xef8566c4
	pv.pack.h           x13,    x1,     x12
	li                  x31,    0x1017b8
	sw                  x13,    0(x31)
	li                  x2,     0xaa8d2ea7
	li                  x26,    0x8029380b
	pv.pack.h           x13,    x2,     x26
	li                  x31,    0x1074d8
	sw                  x13,    0(x31)
	li                  x2,     0x30b5dd9d
	li                  x15,    0xd52957fb
	pv.pack.h           x16,    x2,     x15
	li                  x31,    0x103c43
	sw                  x16,    0(x31)
	li                  x3,     0x779d4749
	li                  x25,    0x1b7518b8
	pv.packhi.b         x12,    x3,     x25
	li                  x31,    0x1012fd
	sw                  x12,    0(x31)
	li                  x21,    0x129a4d54
	li                  x6,     0x4e8ea25e
	pv.packhi.b         x31,    x21,    x6
	li                  x31,    0x104080
	sw                  x31,    0(x31)
	li                  x16,    0xd040c14b
	li                  x29,    0xb766e5e5
	pv.packhi.b         x11,    x16,    x29
	li                  x31,    0x105de8
	sw                  x11,    0(x31)
	li                  x18,    0x16505a02
	li                  x9,     0xbc0038c6
	pv.packlo.b         x13,    x18,    x9
	li                  x31,    0x104b3a
	sw                  x13,    0(x31)
	li                  x13,    0xdf9fcd45
	li                  x2,     0x4fccea53
	pv.packlo.b         x9,     x13,    x2
	li                  x31,    0x101637
	sw                  x9,     0(x31)
	li                  x16,    0x59688381
	li                  x10,    0x4b622e36
	pv.packlo.b         x26,    x16,    x10
	li                  x31,    0x100922
	sw                  x26,    0(x31)

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
