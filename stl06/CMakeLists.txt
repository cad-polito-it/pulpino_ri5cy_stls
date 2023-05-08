set(SOURCES main.c asm/test_alu.S asm/test_compressed.S asm/test_csr.S asm/test_hwloop.S asm/test_jumps.S asm/test_lsu.S asm/test_rf.S)

add_application(pulpino_ri5cy_stl06 "${SOURCES}")

