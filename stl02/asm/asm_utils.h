#ifndef ASM_UTILS_H
#define ASM_UTILS_H

// Used in test_compressed.S
#define GEN_BLOCK_J(rvc_instr, should_be_zero) \
.data; \
	rvc_string ##rvc_instr: \
.string #rvc_instr; \
.text; \
	lui a0,      %hi(rvc_string##rvc_instr); \
	addi a0, a0, %lo(rvc_string##rvc_instr); \
	li ra, 0; \
	li a1, should_be_zero; \
.option rvc; \
	rvc_instr rvc_instr##_jt; \
.option norvc; \
	jal helper_error; \
	rvc_instr##_jt:; \
	mv a2, ra;


// Used in test_compressed.S
#define GEN_BLOCK_JR(rvc_instr, should_be_zero) \
.data; \
	rvc_string ##rvc_instr: \
.string #rvc_instr; \
.text; \
	lui a0,      %hi(rvc_string##rvc_instr); \
	addi a0, a0, %lo(rvc_string##rvc_instr); \
	li ra, 0; \
	li a1, should_be_zero; \
	lui  a2,     %hi(rvc_instr##_jt); \
	addi a2, a2, %lo(rvc_instr##_jt); \
.option rvc; \
	rvc_instr a2; \
.option norvc; \
	jal helper_error; \
	rvc_instr##_jt:; \
	mv a2, ra; 


// Used in test_alu.S
#define GEN_BLOCK_ALU_IMM(val1, val2) \
	li x1, val1; \
	ADDI x3,x1,val2; \
	sw  x3, 0(x31); \
	SLTI x3,x1,val2; \
	sw  x3, 0(x31); \
	SLTIU x3,x1,val2; \
	sw  x3, 0(x31); \
	XORI x3,x1,val2; \
	sw  x3, 0(x31); \
	ORI x3,x1,val2; \
	sw  x3, 0(x31); \
	ANDI x3,x1,val2; \
	sw  x3, 0(x31)


// Used in test_alu.S and test_mul.S
#define GEN_BLOCK_SHF(inst, val1, val2) \
	li  x1, val1; \
	li  x2, val2; \
	inst x3, x1, x2, 1; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 2; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 3; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 4; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 5; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 6; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 7; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 8; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 9; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 10; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 11; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 12; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 13; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 14; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 15; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 16; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 17; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 18; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 19; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 20; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 21; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 22; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 23; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 24; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 25; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 26; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 27; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 28; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 29; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 30; \
	sw  x3, 1(x31); \
	inst x3, x1, x2, 31; \
	sw  x3, 1(x31)

// Used in test_alu.S
#define GEN_BLOCK_SHF2(inst, val1) \
	li  x1, val1; \
	inst x3, x1, 0; \
	sw  x3, 1(x31); \
	inst x3, x1, 1; \
	sw  x3, 1(x31); \
	inst x3, x1, 2; \
	sw  x3, 1(x31); \
	inst x3, x1, 3; \
	sw  x3, 1(x31); \
	inst x3, x1, 4; \
	sw  x3, 1(x31); \
	inst x3, x1, 5; \
	sw  x3, 1(x31); \
	inst x3, x1, 6; \
	sw  x3, 1(x31); \
	inst x3, x1, 7; \
	sw  x3, 1(x31); \
	inst x3, x1, 8; \
	sw  x3, 1(x31); \
	inst x3, x1, 9; \
	sw  x3, 1(x31); \
	inst x3, x1, 10; \
	sw  x3, 1(x31); \
	inst x3, x1, 11; \
	sw  x3, 1(x31); \
	inst x3, x1, 12; \
	sw  x3, 1(x31); \
	inst x3, x1, 13; \
	sw  x3, 1(x31); \
	inst x3, x1, 14; \
	sw  x3, 1(x31); \
	inst x3, x1, 15; \
	sw  x3, 1(x31); \
	inst x3, x1, 16; \
	sw  x3, 1(x31); \
	inst x3, x1, 17; \
	sw  x3, 1(x31); \
	inst x3, x1, 18; \
	sw  x3, 1(x31); \
	inst x3, x1, 19; \
	sw  x3, 1(x31); \
	inst x3, x1, 20; \
	sw  x3, 1(x31); \
	inst x3, x1, 21; \
	sw  x3, 1(x31); \
	inst x3, x1, 22; \
	sw  x3, 1(x31); \
	inst x3, x1, 23; \
	sw  x3, 1(x31); \
	inst x3, x1, 24; \
	sw  x3, 1(x31); \
	inst x3, x1, 25; \
	sw  x3, 1(x31); \
	inst x3, x1, 26; \
	sw  x3, 1(x31); \
	inst x3, x1, 27; \
	sw  x3, 1(x31); \
	inst x3, x1, 28; \
	sw  x3, 1(x31); \
	inst x3, x1, 29; \
	sw  x3, 1(x31); \
	inst x3, x1, 30; \
	sw  x3, 1(x31); \
	inst x3, x1, 31; \
	sw  x3, 1(x31)


// Used in test_reg_file.S
#define LI_ALL_REGISTER(value) \
	li x1, value; \
	li x2, value; \
	li x3, value; \
	li x4, value; \
	li x5, value; \
	li x6, value; \
	li x7, value; \
	li x8, value; \
	li x9, value; \
	li x10, value; \
	li x11, value; \
	li x12, value; \
	li x13, value; \
	li x14, value; \
	li x15, value; \
	li x16, value; \
	li x17, value; \
	li x18, value; \
	li x19, value; \
	li x20, value; \
	li x21, value; \
	li x22, value; \
	li x23, value; \
	li x24, value; \
	li x25, value; \
	li x26, value; \
	li x27, value; \
	li x28, value; \
	li x29, value; \
	li x30, value; \
	li x31, value


// Used in test_reg_file.S
#define MARCH_ELEMENT_MAP(reg1, value) \
	sw reg1, 0(x0); \
	li reg1, value


// Used in test_reg_file.S
#define GEN_BLOCK_RF_ALU_OP(inst, value1, reg1) \
	li reg1, value1; \
	nop; \
	nop; \
	nop; \
	nop; \
	inst reg1,reg1,reg1; \
	nop; \
	nop; \
	nop; \
	nop; \
	sw reg1, 0(x0)


// Used in test_reg_file.S
#define GEN_BLOCK_RF_LOAD(reg1) \
	lw reg1, 0(x0); \
	nop; \
	nop; \
	sw reg1, 4(x0); \
	nop; \
	nop; \
	nop; \
	lh reg1,0(x0); \
	nop; \
	sh reg1, 4(x0); \
	lb reg1, 0(x0); \
	nop; \
	nop; \
	nop; \
	nop; \
	sb reg1, 4(x0); \
	nop; \
	lhu reg1,0(x0); \
	nop; \
	nop; \
	sh reg1, 4(x0); \
	nop; \
	lbu reg1, 0(x0); \
	nop; \
	sb reg1, 4(x0); \
	li reg1, 0; \
	nop; \
	nop; \
	p.lw reg1, reg1(reg1); \
	nop; \
	nop; \
	p.sw reg1, reg1(reg1)

#endif /*ASM_UTILS_H */
