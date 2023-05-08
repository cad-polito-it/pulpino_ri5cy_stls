#ifndef ASM_UTILS_H
#define ASM_UTILS_H

// Used in test_alu.S
#define GEN_BLOCK_GENERIC_ALU() \
	li x31, 0x00100000;\
	add x1,x2,x3;\
	sw x1,0(x31);\
	sub x1,x2,x3;\
	sw x1,0(x31);\
	and x1,x2,x3;\
	sw x1,0(x31);\
	xor x1,x2,x3;\
	sw  x1, 0(x31);\
	or x1,x2,x3;\
	sw  x1, 0(x31);\
	sw  x1, 0(x31);\
	srl x1, x2, x3;\
	sw  x1, 0(x31);\
	sll x1, x2, x3;\
	sw  x1, 0(x31);\
	sra x1, x2, x3;\
	sw  x1, 0(x31);\
	slt x1,x2,x3;\
	sw  x1, 0(x31);\
	sltu x1,x2,x3;\
	sw  x1, 0(x31);\
	p.addN x1, x2, x3, 0;\
	sw  x1, 0(x31);\
	p.adduN x1, x2, x3, 0;\
	sw  x1, 0(x31);\
	p.addRN x1, x2, x3, 0;\
	sw  x1, 0(x31);\
	p.adduRN x1, x2, x3, 0;\
	sw  x1, 0(x31);\
	p.subN x1, x2, x3, 0;\
	sw  x1, 0(x31);\
	p.subuN x1, x2, x3, 0;\
	sw  x1, 0(x31);\
	p.subRN x1, x2, x3, 0;\
	sw  x1, 0(x31);\
	p.subuRN x1, x2, x3, 0;\
	sw  x1, 0(x31);\
	p.addNr x1, x2, x3;\
	sw  x1, 0(x31);\
	p.adduNr x1, x2, x3;\
	sw  x1, 0(x31);\
	p.addRNr x1, x2, x3;\
	sw  x1, 0(x31);\
	p.adduRNr x1, x2, x3;\
	sw  x1, 0(x31);\
	p.subNr x1, x2, x3;\
	sw  x1, 0(x31);\
	p.subuNr x1, x2, x3;\
	sw  x1, 0(x31);\
	p.subRNr x1, x2, x3;\
	sw  x1, 0(x31);\
	p.subuRNr x1, x2, x3;\
	sw  x1, 0(x31);\
	p.abs x1, x2;\
	sw  x1, 0(x31);\
	p.slet x1, x2, x3;\
	sw  x1, 0(x31);\
	p.sletu x1, x2, x3;\
	sw  x1, 0(x31);\
	p.ff1 x1, x2;\
	sw  x1, 0(x31);\
	p.fl1 x1, x2;\
	sw  x1, 0(x31);\
	p.min x1, x2, x3;\
	sw  x1, 0(x31);\
	p.minu x1, x2, x3;\
	sw  x1, 0(x31);\
	p.max x1, x2, x3;\
	sw  x1, 0(x31);\
	p.maxu x1, x2, x3;\
	sw  x1, 0(x31);\
	p.extractu x1, x2, 31, 0;\
	sw  x1, 0(x31);\
	p.extractr x1, x2, x3;\
	sw  x1, 0(x31);\
	p.extractur x1, x2, x3;\
	sw  x1, 0(x31);\
	p.insertr x1, x2, x3;\
	sw  x1, 0(x31);\
	p.bclrr x1, x2, x3;\
	sw  x1, 0(x31);\
	p.bsetr x1, x2, x3;\
	sw  x1, 0(x31);\
	p.exths x1, x2;\
	sw  x1, 0(x31);\
	p.exthz x1, x2;\
	sw  x1, 0(x31);\
	p.extbs x1, x2;\
	sw  x1, 0(x31);\
	p.extbz x1, x2;\
	sw  x1, 0(x31);\
	p.clip x1, x2, 1;\
	sw  x1, 0(x31);\
	p.clipu x1, x2, 2;\
	sw  x1, 0(x31);\
	p.clipr x1, x2, x3;\
	sw  x1, 0(x31);\
	p.clipur x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.add.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.add.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.add.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.add.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.sub.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.sub.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.sub.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.sub.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.avg.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.avg.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.avg.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.avg.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.avgu.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.avgu.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.avgu.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.avgu.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.min.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.min.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.min.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.min.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.minu.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.minu.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.minu.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.minu.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.max.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.max.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.max.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.max.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.maxu.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.maxu.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.maxu.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.maxu.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.srl.sci.h x1, x2, 31;\
	sw  x1, 0(x31);\
	pv.srl.sci.b x1, x2, 31;\
	sw  x1, 0(x31);\
	pv.sra.sci.h x1, x2, 31;\
	sw  x1, 0(x31);\
	pv.sra.sci.b x1, x2, 31;\
	sw  x1, 0(x31);\
	pv.sll.sci.h x1, x2, 31;\
	sw  x1, 0(x31);\
	pv.sll.sci.b x1, x2, 31;\
	sw  x1, 0(x31);\
	pv.or.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.or.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.or.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.or.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.xor.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.xor.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.xor.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.xor.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.and.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.and.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.and.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.and.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.abs.h x1, x2;\
	sw  x1, 0(x31);\
	pv.abs.b x1, x2;\
	sw  x1, 0(x31);\
	pv.shuffle.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.shuffle.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.extract.h x1, x2, 0;\
	sw  x1, 0(x31);\
	pv.extract.b x1, x2, 1;\
	sw  x1, 0(x31);\
	pv.extractu.h x1, x2, 1;\
	sw  x1, 0(x31);\
	pv.extractu.b x1, x2, 2;\
	sw  x1, 0(x31);\
	pv.shuffle.sci.h x1, x2, 31;\
	sw  x1, 0(x31);\
	pv.shuffleI0.sci.b x1, x2, 31;\
	sw  x1, 0(x31);\
	pv.shuffleI1.sci.b x1, x2, 31;\
	sw  x1, 0(x31);\
	pv.shuffleI2.sci.b x1, x2, 31;\
	sw  x1, 0(x31);\
	pv.shuffleI3.sci.b x1, x2, 31;\
	sw  x1, 0(x31);\
	pv.shuffle2.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.shuffle2.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpeq.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpeq.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpeq.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpeq.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpne.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpne.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpne.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpne.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpgt.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpgt.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpgt.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpgt.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpge.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpge.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpge.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpge.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmplt.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmplt.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmplt.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmplt.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmple.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmple.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmple.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmple.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpgtu.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpgtu.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpgtu.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpgtu.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpgeu.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpgeu.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpgeu.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpgeu.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpltu.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpltu.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpltu.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpltu.sc.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpleu.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpleu.sc.h x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpleu.b x1, x2, x3;\
	sw  x1, 0(x31);\
	pv.cmpleu.sc.b x1, x2, x3;\
	sw  x1, 0(x31)


// Used in test_alu.S
#define GEN_BLOCK_ALU_IMM(imm1, imm2) \
	li x4, imm1;\
	addi x1,x4,imm2;\
	sw  x1, 0(x31);\
	andi x1,x4,imm2;\
	sw  x1, 0(x31);\
	ori x1,x4,imm2;\
	sw  x1, 0(x31);\
	xori x1,x4,imm2;\
	sw  x1, 0(x31);\
	slti x1,x4,imm2;\
	sw  x1, 0(x31);\
	sltiu x1,x4,imm2;\
	sw  x1, 0(x31)


// Used in test_csr.S
#define GEN_BLOCK_CSR_REG(inst,CSR)\
	inst x1, CSR, x3;\
	sw x1,0(x0);\
	csrr x2,CSR;\
	sw x2,0(x0)


// Used in test_csr.S
#define GEN_BLOCK_CSR_IMM(inst,CSR,imm)\
	inst x1, CSR, imm;\
	sw x1,0(x0);\
	csrr x2,CSR;\
	sw x2,0(x0)


// Used in test_register_file.S
#define GEN_BLOCK_RF_LS(reg1,imm1) \
	p.lw reg1,imm1(reg1!);\
	nop;\
	nop;\
	nop;\
	p.sw reg1, reg1(reg1)


// Used in test_register_file.S
#define GEN_BLOCK_MARCH1_MACPLUS( reg1) \
	sw reg1,0(reg1); \
	nop; \
	nop; \
	nop; \
	li reg1,0xFFFFFFFF


// Used in test_register_file.S
#define GEN_BLOCK_MARCH2_MACPLUS( reg1) \
	sw reg1,0(reg1); \
	nop; \
	nop; \
	nop; \
	li reg1,0


#endif /* ASM_UTILS_H */
