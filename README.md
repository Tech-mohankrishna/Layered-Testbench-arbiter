# 🚩 LAYERED TESTBENCH - ARBITER 🚩

<p align="center">
  <img src="https://github.com/Tech-mohankrishna/Layered-Testbench-arbiter/assets/57735263/1e3153b2-cfe0-41a1-8089-cfd328dc8bf8" >
</p>




Layered Testbench refers to a structured approach for organizing the components and functions of a testbench. The primary goal of a layered testbench is to systematically and efficiently verify the functionality of a digital design, such as an integrated circuit or a hardware module, while ensuring ease of maintenance and scalability.

A layered testbench typically consists of several distinct layers, each serving a specific purpose and providing a level of abstraction for verification tasks. The layers often include:

## Test Scenario Layer:

This is the top layer where test scenarios or test cases are defined.
Test scenarios represent specific use cases or operational modes that the design should be tested against.
Test generators in this layer create stimuli for the design, including inputs, clock signals, and control sequences.

## Transaction Layer:

The transaction layer focuses on abstract representations of data transactions or communication between different modules or interfaces within the design.
Transactions typically include data transfers, commands, and responses.
This layer abstracts the actual signal-level details and concentrates on high-level data transactions.

## Functional Layer:

The functional layer is responsible for driving the transactions into the design and monitoring its behavior.
It includes the testbench components that interact with the design under test (DUT).
Monitor components observe the DUT's responses and capture any discrepancies from expected behavior.

## Scoreboard Layer:

The scoreboard layer performs result checking and validation.
It compares the actual DUT outputs or behavior against expected results or reference models.
If discrepancies are detected, the scoreboard raises alerts or generates error reports.

##Interface Layer:

This layer abstracts the communication interfaces used by the design, such as communication protocols or memory interfaces.
Interface components handle protocol-specific tasks, enabling the testbench to communicate effectively with the DUT.

## Transaction Generation Layer:

Transaction generators in this layer create specific transactions and sequences to stimulate the DUT.
These generators often include protocol-specific sequences for complex interface testing.

## Clock and Reset Control Layer:

This layer manages the clock and reset signals for the DUT.
It ensures proper initialization and synchronization during testing.



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
