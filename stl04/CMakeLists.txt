set(SOURCES main.c asm/test_alu.S asm/test_branches.S asm/test_csr.S asm/test_if.S asm/test_ls.S asm/test_mul_dot.S asm/test_rf.S asm/test_rf2.S)

add_application(pulpino_ri5cy_stl04 "${SOURCES}")

