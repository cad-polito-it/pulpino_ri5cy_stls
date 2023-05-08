#include "tests.h"

int main()
{
	test_compressed();	
	test_call_invalid();
	test_load_store();
	test_exceptions();
	test_forwarding_stall_jumps();
	test_alu();
	test_branch();
	test_csr();
	test_hwloop();
	test_mul();
	test_reg_file();
 	return 0;
}
