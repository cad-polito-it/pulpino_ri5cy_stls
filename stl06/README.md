![](https://img.shields.io/badge/FC-81.73%25-SUCCESS)
![](https://img.shields.io/badge/TAT-17%2C308cc-white)
![](https://img.shields.io/badge/Model-stuck--at-red)
## Engineers' comment :scroll:

After carefully inspecting the RTL of the processor we identified the units with the highest number of faults and came up with the following procedures/routines described below.

1. `test_rf.S` 
2. `test_csr.S`

Routine(s) that implements a MATS+ algorithm that tests for faults in the register file and the csr file. 

2. `test_lsu.S`

Routine that tests for faults in the load and store unit by using a pseudo-random approach. We write/read using the available supported instructions from random addresses with random data.

3. `test_alu.S`

All alu-related instructions were used (in all of their variations) with pseudo-random operands. Note, that the multiplier tests are also included in this routine.

4. `test_compressed.S`

Routine that tests for the compressed decoder by issuing 'C' instructions with random, valid operands.

5. `test_timer.S`

Routine that tests for faults in the timer by using the `pulp` specific instructions `rdcycle`, `rdtime` and `rdinstret`.

6. `test_jumps.S`
7. `test_hwloops.S`

Routines that test for control transfer instructions and `pulp` hardware loop specific units. Designed to keep the computational footprint low by employing a minimal number of loops.


## Statistics :chart_with_upwards_trend:

| Unit                              | \#Faults |Fault Coverage* |
|:----------------------------------|:---------|:--------------:|
| `top`                             | 161,036  | 81.37 %        |
|                                   |          |                |
|**Test Application Time (cc)\*\*** | 17,308   |                | 


\* Fault coverage achieved on the gate-level of the core (ri5cy), synthesized using the Nangate 45nm technology library, under the stuck-at fault model.

\*\* Clock period set to 10 ns.
