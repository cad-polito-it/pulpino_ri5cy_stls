set(SOURCES main.c asm/test_alu.S asm/test_csr.S asm/test_csr2.S asm/test_hwloop.S asm/test_lsu.S asm/test_misc.S asm/test_mul.S asm/test_rf.S asm/test_rvc.S)

add_application(pulpino_ri5cy_stl05 "${SOURCES}")

