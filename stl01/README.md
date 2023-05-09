![](https://img.shields.io/badge/FC-81.40%25-SUCCESS)
![](https://img.shields.io/badge/TAT-780%2C465cc-white)
![](https://img.shields.io/badge/Model-stuck--at-red)
## Engineers' comment :scroll:

We could define our work by saying that we started with an empirical approach in order to see the result of the execution of most of allowed instructions and then moved to a unit oriented method in order to maximize the fault coverage in the largest blocks. As said, we started writing different general test programs, but we found out that the coverage was very low: we only achieved 60% of coverage in our first simulations. We understood that the instructions we wrote, do not involve only a single unit, but more than one: as an example a multiplication can sensitize and propagate some faults in the multiplier (obviously), but is able to test also the integer register file when write back is performed. For this reason we aims at testing more than a single unit, and in the following we are going to describe the task of each of them:

1. `test_alu.S`
2. `test_mul.S`

These routines are aimed for the arithmetic and logic unit and the MAC unit respectively. They consist mainly of numerical instructions consisting of various operands (registers). 

3. `test_regs.S`

March algorithm used with a variety of Load/Store instructions (which also affects the coverage of the load and store unit)

4. `test_jumping.S`

This routine exploits jumps and branches to form loops. The hardware loops are also tested here. Furthermore, we also test the prefetch buffer by filling it up with division instructions that are dependend to each other (stall generation)

5. `test_self.S`

Auxiliary and computational intensive routine that is executed a couple of hundreds of times to augment the fault coverage of the ALU and the MAC unit.

## Statistics :chart_with_upwards_trend:

| Unit                              | \#Faults |Fault Coverage* |
|:----------------------------------|:---------|:--------------:|
| `top`                             | 161,036  | 81.40 %        |
|                                   |          |                |
|**Test Application Time (cc)\*\*** | 780,465  |                | 

\* Fault coverage achieved on the gate-level of the core (ri5cy), synthesized using the Nangate 45nm technology library, under the stuck-at fault model.

\*\* Clock period set to 10 ns.

