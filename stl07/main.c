#include "tests.h"

int main()
{
    rf_march_c();
    csr_march_c();  
    mem_test();
    insn_test();    

    return 0;
}
