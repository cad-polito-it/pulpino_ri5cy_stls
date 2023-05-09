![](https://img.shields.io/badge/FC-81.79%25-SUCCESS)
![](https://img.shields.io/badge/TAT-36%2C500cc-white)
![](https://img.shields.io/badge/Model-stuck--at-red)
## Engineers' comment :scroll:

A divide and conquer method was used to generate the final test program. We considered each unit of the core seperately and developed test routines that were finally merged to compose a complete test program. Each routine is briefly commented below.

1. `test_register_file.S`

Routine that implements the MATS+ march algorithm.

2. `test_multiplier.S`

Routine that tests the multiplier using a some-what exhaustive and pseudo-random approach. We employ all multiplication relevant instructions and apply as the operands the values from `0xffff_ffff` to `0x0000_0000`, decreasing every time this value by `0x1111_1111`. Then we create two loops, the first one increasing the second operand and leaving the first constant, and the second one doing the opposite. Lastly we apply some combinations of 1s and 0s that were found useful to increase the coverage of the unit (e.g. `0x0000_ffff`, `0x00ff_00ff`, `0x0f0f_0f0f` etc.)

3. `test_alu.S`

Routine that tests the arithmetic and logic unit. Similar to the multiplier technique.

4. `test_csr.S`

Routine that tests the available CSRs by exhaustively setting and unsetting bits (read/write).

5. `test_hwl.S`

Routine that tests the hardware loops by exhaustively setting and unsetting bits on the hardware loop specific CSRs and by utilizing the `pulp` specific instructions (e.g., `lp.start`, `lp.end`) to create loops.

## Statistics :chart_with_upwards_trend:

| Unit                              | \#Faults |Fault Coverage* |
|:----------------------------------|:---------|:--------------:|
| `top`                             | 161,036  | 81.79 %        |
| `register_file`                   | 40,418   | 93.37 %        |
| `prefetch_buffer`                 | 11,748   | 67.23 %        |
| `prefetch_buffer/fifo`            | 9,296    | 69.24 %        |
| `hwloop_controller`               | 1,628    | 51.54 %        |
| `hwloop_registers`                | 4,956    | 76.53 %        |
| `compressed_decoder`              | 1,476    | 44.92 %        |
| `decoder`                         | 3,422    | 81.98 %        |
| `id_controller`                   | 1,392    | 50.90 %        |
| `alu`                             | 26,776   | 79.11 %        |
| `alu/popcnt`                      | 340      | 49.12 %        |
| `alu/ff`                          | 416      | 57.45 %        |
| `alu/int_divider`                 | 5,380    | 87.04 %        |
| `multiplier`                      | 30,966   | 93.87 %        |
| `load_store_unit`                 | 4,442    | 78.25 %        |
| `control_status_registers`        | 6,958    | 77.56 %        |
| `debug_unit`                      | 3,168    | 1.42  %        |
| `interrupt_controller`            | 152      | 8.05  %        |
|                                   |          |                |
|**Test Application Time (cc)\*\*** | 36,500   |                | 


\* Fault coverage achieved on the gate-level of the core (ri5cy), synthesized using the Nangate 45nm technology library, under the stuck-at fault model.

\*\* Clock period set to 10 ns.
