set(SOURCES main.c asm/test_alu.S asm/test_jumping.S asm/test_mul.S asm/test_regs.S asm/test_self.S)

add_application(pulpino_ri5cy_stl01 "${SOURCES}")

