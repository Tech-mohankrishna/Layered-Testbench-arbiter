# Layered-Testbench-arbiter


+ The performance of a system can be affected as the number of bus masters increases, making the arbitration scheme crucial.
+ The throughput of the system relies on the arbiter circuit, which controls grants for different requestors.
+ The choice of an arbitration scheme is application-dependent.
+ In memory arbitration, the arbiter determines which CPU gets access in each cycle.
+ In packet switching, an arbiter is used to select input packets for output.
+ A Round-robin arbitration scheme with adjustable resource access time weights is introduced.
+ Round-robin arbitration is effective when preventing grant starvation is essential.
+ The arbiter allocates timeshares to requestors, ensuring fairness through a Round-robin approach.
+ Requestors can prioritize their timeshares by assigning weights, allowing for fine-grained control.Verification using SystemVerilog validates the design.
+ Randomized inputs and predicted outputs are used to verify the arbiter's functionality.
+ Verification coverage data is collected to assess design correctness and effectiveness.
+ The work entails the design and verification of a weighted Round-robin arbiter.
