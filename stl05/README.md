![](https://img.shields.io/badge/FC-77.58%25-SUCCESS)
![](https://img.shields.io/badge/TAT-43%2C597cc-white)
![](https://img.shields.io/badge/Model-stuck--at-red)
## Engineers' comment :scroll:

We worked in a divide and conquer fashion to generate the final test program. Each subroutine is commented below.

1. `test_alu.S` 
2. `test_mul.S`

Routines that test the arithmetic logic unit and the multiplier unit of the core respectively. They implmenet the following algorithm:
```
REG_N <- 0x1111_1111
REG_X <- 0x0000_0000
REG_Y <- 0x0000_0000

loop1:
    loop2:
        alu_or_mul_op REG_M, REG_X, REG_Y
        store REG_M
        add REG_X, REG_X, REG_N
        if REG_X != 0xffff_ffff then goto loop2
    add REG_Y, REG_Y, REG_N 
    if REG_Y != 0xffff_ffff then goto loop1
```

3. `test_rf.S`

Routine that implements a march algorithm to test the register file. Note, that its used x2 times. In the second time, extra `nop` instructions are used in order to prohibit the activation of the forwarding circuit of the core whenever a dependency is detected between march elements. Moreover, every store instruction is followed by an incremental load instruction, to test the second write port. The third
read port was tested by using the incremental store word instruction.

4. `test_lsu.S`

Routine that tests the load and store unit by using all related instructions to read and write certain memory locations with 1s.

5. `test_csr.S`
6. `test_csr2.S`

Routines that tests CSRs by exhaustively setting and unsetting their respective bits. 

6. `test_rvc.S`

Routine that tests the compressed decoder by applying instructions from the 'C' extension.

7. `test_hwloop.S`

Routine that tests for the hardware loop related units.


## Statistics :chart_with_upwards_trend:

| Unit                              | \#Faults |Fault Coverage* |
|:----------------------------------|:---------|:--------------:|
| `top`                             | 161,036  | 82.97 %        |
| `register_file`                   | 40,418   | 89.13 %        |
| `prefetch_buffer`                 | 11,748   | 74.02 %        |
| `prefetch_buffer/fifo`            | 9,296    | 77.35 %        |
| `hwloop_controller`               | 1,628    | 57.19 %        |
| `hwloop_registers`                | 4,956    | 67.17 %        |
| `compressed_decoder`              | 1,476    | 78.39 %        |
| `decoder`                         | 3,422    | 84.32 %        |
| `id_controller`                   | 1,392    | 51.62 %        |
| `alu`                             | 26,776   | 91.36 %        |
| `alu/popcnt`                      | 340      | 97.94 %        |
| `alu/ff`                          | 416      | 99.76 %        |
| `alu/int_divider`                 | 5,380    | 91.78 %        |
| `multiplier`                      | 30,966   | 96.23 %        |
| `load_store_unit`                 | 4,442    | 82.78 %        |
| `control_status_registers`        | 6,958    | 65.51 %        |
| `debug_unit`                      | 3,168    | 1.42  %        |
| `interrupt_controller`            | 152      | 8.05  %        |
|                                   |          |                |
|**Test Application Time (cc)\*\*** | 43,597   |                | 


\* Fault coverage achieved on the gate-level of the core (ri5cy), synthesized using the Nangate 45nm technology library, under the stuck-at fault model.

\*\* Clock period set to 10 ns.
