#include "tests.h"

int main()
{
	test_alu();
	test_csr();
	test_csr2();
	test_hwloop();
	test_lsu();
	test_misc();
	test_mul();
	test_rf();
	test_rvc();
	return 0;
}
