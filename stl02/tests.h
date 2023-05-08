#ifndef TESTS_H
#define TESTS_H

extern int test_compressed(void);
extern int test_call_invalid(void);
extern int test_load_store(void);
extern int test_exceptions(void);
extern int test_forwarding_stall_jumps(void);
extern int test_alu(void);
extern int test_branch(void);
extern int test_csr(void);
extern int test_hwloop(void);
extern int test_mul(void);
extern int test_reg_file(void);

#endif /*TESTS_H */

