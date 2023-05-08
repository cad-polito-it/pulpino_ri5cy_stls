set(SOURCES asm/fail.S asm/insn_test.S asm/mem_test.S asm/rf_march_c.S asm/csr_march_c.S main.c)

add_application(pulpino_ri5cy_stl07 "${SOURCES}")

