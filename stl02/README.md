![](https://img.shields.io/badge/FC-86.73%25-SUCCESS)
![](https://img.shields.io/badge/TAT-64%2C527cc-white)
![](https://img.shields.io/badge/Model-stuck--at-red)

## Engineers' comment :scroll:
The approach to problem has been to divide the faults for locks and starting from the 3 bigger ones (register file, ALU and multiplier) try to test them. In the following we are going to explain the idea behind each routine

1. `test_forwarding_stall_jumps.S`
2. `test_call_invalid.S`

These routines are using control transfer instructions (branch/jumps) and also test the decode and the control unit by triggering interrupts that we gracefully handle during our test. To pass an invalid opcode we use the `.word` directive to store a line of a faulty assembly instruction after setting the boot address and the address of the interrupt handler routine. This method can be extended to multiple faulty opcodes to further increase the coverage of the unit(s). The same procedure is used for the `ecall` instruction.

3. `test_reg_file.S`

Routines that test the register file logic and a march algorithm.

4. `test_mul.S`

Routine that exhaustively tests the multiplier by applying all operand combinations (`0x0000_0000` .. `0xffff_ffff`).

5. `test_hwloop.S`

Routine that reads/writes exhaustivelly all `pulp` hardware loop CSRs (`0x7b0` - `0x7b6`) with values from `0x0` up to `0xffff` and then creates loops of different sizes by using the `lp.starti` `lp.endi` `lp.count` and `lp.setup` instructions.

6. `test_alu.S`

Routine for the arithmetic and logic unit of similar logic with the multiplier.

7. `test_csr.S`

Routine that exhaustively sets and unsets the bits of the available CSRs.

8. `test_load_store.S`

\-

9.  `test_compressed.S`

Routine to test the compressed decoder by using all supported compressed instructions. Note that we do not care about the operands used (as long as they are syntactically valid) since the DUT is the decoder rather than the execute  unit that has been allready covered.

10. `test_exceptions.S`

Routine that tests the logic of the forwarding paths ( `ex -> ex`, `mem -> ex`, `ex -> dec` etc.)

## Statistics :chart_with_upwards_trend:

| Unit                             | \#Faults |Fault Coverage* |
|:---------------------------------|:---------|:--------------:|
| `top`                            | 161,036  | 86.73 %        |
| `register_file`                  | 40,418   | 96,77 %        |
| `prefetch_buffer`                | 11,748   | 72.24 %        |
| `prefetch_buffer/fifo`           | 9,296    | 75.31 %        |
| `hwloop_controller`              | 1,628    | 56.33 %        |
| `hwloop_registers`               | 4,956    | 83.03 %        |
| `compressed_decoder`             | 1,476    | 84.49 %        |
| `decoder`                        | 3,422    | 86.63 %        |
| `id_controller`                  | 1,392    | 58.81 %        |
| `alu`                            | 26,776   | 92.76 %        |
| `alu/popcnt`                     | 340      | 96.76 %        |
| `alu/ff`                         | 416      | 100   %        |
| `alu/int_divider`                | 5,380    | 90.00 %        |
| `multiplier`                     | 30,966   | 98.60 %        |
| `load_store_unit`                | 4,442    | 80.62 %        |
| `control_status_registers`       | 6,958    | 72.22 %        |
| `debug_unit`                     | 3,168    | 2.15  %        |
| `interrupt_controller`           | 152      | 8.05  %        |
|                                  |          |                |
|**Test Application Time (cc)\**** | 64,527   |                | 


\* Fault coverage achieved on the gate-level of the core (ri5cy), synthesized using the Nangate 45nm technology library, under the stuck-at fault model.

\*\* Clock period set to 10 ns.

