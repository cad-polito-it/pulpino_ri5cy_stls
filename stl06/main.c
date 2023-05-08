#include "tests.h"

int main()
{
	test_alu();
	test_compressed();
	test_csr();
	test_hwloop();
	test_jumps();
	test_lsu();
	test_rf();
	return 0;
}
