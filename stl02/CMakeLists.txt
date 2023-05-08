set(SOURCES main.c asm/test_compressed.S asm/test_call_invalid.S asm/test_load_store.S asm/test_exceptions.S asm/test_forwarding_stall_jumps.S asm/test_alu.S asm/test_branch.S asm/test_csr.S asm/test_hwloop.S asm/test_mul.S asm/test_reg_file.S)

add_application(pulpino_ri5cy_stl02 "${SOURCES}")
