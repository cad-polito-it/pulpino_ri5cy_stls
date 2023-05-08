set(SOURCES main.c asm/test_alu.S asm/test_csr.S asm/test_hwl.S asm/test_multiplier.S asm/test_register_file.S)

add_application(pulpino_ri5cy_stl03 "${SOURCES}")

