![](https://img.shields.io/badge/FC-77.58%25-SUCCESS)
![](https://img.shields.io/badge/TAT-43%2C597cc-white)
![](https://img.shields.io/badge/Model-stuck--at-red)
## Engineers' comment :scroll:

A divide and conquer method was used to split the problem to easier ones. We focused primarily on the units with the highest volume of faults and moved from there to the remaining ones. The final test program is composed by all of the included asm routines.

## Statistics :chart_with_upwards_trend:

| Unit                              | \#Faults |Fault Coverage* |
|:----------------------------------|:---------|:--------------:|
| `top`                             | 161,036  | 77.58 %        |
| `register_file`                   | 40,418   | 80.25 %        |
| `prefetch_buffer`                 | 11,748   | 72.89 %        |
| `prefetch_buffer/fifo`            | 9,296    | 75.97 %        |
| `hwloop_controller`               | 1,628    | 52.83 %        |
| `hwloop_registers`                | 4,956    | 80.02 %        |
| `compressed_decoder`              | 1,476    | 56.50 %        |
| `decoder`                         | 3,422    | 71.21 %        |
| `id_controller`                   | 1,392    | 40.69 %        |
| `alu`                             | 26,776   | 80.75 %        |
| `alu/popcnt`                      | 340      | 97.94 %        |
| `alu/ff`                          | 416      | 47.12 %        |
| `alu/int_divider`                 | 5,380    | 87.36 %        |
| `multiplier`                      | 30,966   | 95.63 %        |
| `load_store_unit`                 | 4,442    | 79.22 %        |
| `control_status_registers`        | 6,958    | 45.22 %        |
| `debug_unit`                      | 3,168    | 1.42  %        |
| `interrupt_controller`            | 152      | 0.00  %        |
|                                   |          |                |
|**Test Application Time (cc)\*\*** | 43,597   |                | 


\* Fault coverage achieved on the gate-level of the core (ri5cy), synthesized using the Nangate 45nm technology library, under the stuck-at fault model.

\*\* Clock period set to 10 ns.
