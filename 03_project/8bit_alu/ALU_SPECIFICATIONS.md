8-Bit ALU Specifications



\## 1. Project Objective



The objective of this project is to design and verify an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU will perform multiple arithmetic and logical operations on two 8-bit input operands based on a defined operation-select signal.



\## 2. Functional Requirements

\### 2.1 Inputs and Outputs

Inputs

A\[7:0] — 8-bit input operand A

B\[7:0] — 8-bit input operand B

OP\[3:0] — 4-bit operation-select signal

Outputs

Y\[7:0] — 8-bit ALU result

Carry — carry output for arithmetic operations



\## 2.2 Operation selection

&#x20;   OP\[3:0] 	      Operation     Description

&#x20;     0000	      A + B 	     Addition

&#x20;     0001	      A - B	     Subtraction

&#x20;     0010 	      A + 1	     Increment A

&#x20;     0011	      A - 1 	     Decrement A

&#x20;     0100	      A \& B 	     AND

&#x20;     0101	      A | B 	     OR

&#x20;     0110	      A ^ B 	     XOR

&#x20;     0111	     \~A 	     NOT A

&#x20;     1000	     A << 1	     Left shift

&#x20;     1001	     A >> 1 	     Right shift

&#x20;     1010	     A == B 	      Equality

&#x20;     1011	     A > B 	      Greater than |

&#x20;     1100	     A < B 	      Less than |

&#x20;     1101	     A \& \~B 	      AND with inverted B

&#x20;     1110	     A | \~B 	      OR with inverted B

&#x20;     1111	     A ^ \~B 	      XOR with inverted B





\### 2.3 ALU Operation Details

The 8-bit ALU performs arithmetic, logical, shift, and comparison operations based on the 4-bit operation-select signal. The selected operation is performed on the input operands A and B, and the result is available at the 8-bit output Y. A carry output is generated for arithmetic operations.





\### 2.4 Functional Behavior

The ALU selects an operation according to the 4-bit operation-select signal OP\[3:0]. For each operation code, the corresponding arithmetic, logical, shift, or comparison operation is performed on inputs A and B. The resulting value is provided at the 8-bit output Y, while the Carry output indicates the carry generated during arithmetic operations.



\## 3. Design Approach



The 8-bit ALU will be designed using combinational RTL logic in Verilog HDL. The design will consist of arithmetic, logical, shift, and comparison operations. The 4-bit operation-select signal will determine which operation is performed. The selected operation will be routed to the output through operation-selection logic.





\### 3.1 Arithmetic Unit



The arithmetic unit performs addition, subtraction, increment, and decrement operations on the 8-bit input operands A and B.



\### 3.2 Logic Unit



The logic unit performs bitwise AND, OR, XOR, and NOT operations on the input operands.



\### 3.3 Shift Unit



The shift unit performs left-shift and right-shift operations on the 8-bit input operand A.



\### 3.4 Comparison Unit



The comparison unit compares the input operands A and B and performs equality, greater-than, and less-than operations.



\### 3.5 Operation Selection



The 4-bit OP\[3:0] signal selects one of the 16 supported ALU operations. The corresponding operation result is selected and provided at the output Y.

\## 4. Interface Specification



| Signal  | Direction | Width | Description                                  |

|---      |---        |---    |---                                           |

| `A`     | Input     | 8-bit | First operand                                |

| `B`     | Input     | 8-bit | Second operand                               |

| `OP`    | Input     | 4-bit | Operation selection signal                   |

| `Y`     | Output    | 8-bit | ALU result                                   |

| `Carry` | Output    | 1-bit | Carry generated during arithmetic operations |

\## 5. Functional Requirements



* The ALU shall accept two 8-bit input operands, A and B.
* The ALU shall accept a 4-bit operation-select signal, OP.
* The ALU shall perform all 16 operations defined in the operation-selection table.
* The selected operation shall produce an 8-bit result at output Y.
* The Carry output shall indicate the carry generated during applicable arithmetic operations.
* The ALU shall operate as a combinational circuit without requiring a clock signal.
* The output shall respond to changes in the input operands or operation-select signal.

\## 6. Verification Requirements



* Verify all 16 ALU operations defined in the operation-selection table.
* Verify the ALU with different combinations of input operands A and B.
* Verify arithmetic operations with normal and boundary input values.
* Verify the Carry output during applicable arithmetic operations.
* Verify comparison operations for equal, greater-than, and less-than conditions.
* Verify that the ALU produces the expected 8-bit result for each operation.
* Verify the combinational behavior of the ALU without a clock signal.

\## 7. Tools Used



* \*\*Verilog HDL\*\* — Hardware description language used for RTL design.
* \*\*ModelSim\*\* — Used for compilation, simulation, and waveform analysis.
* \*\*Git\*\* — Used for version control and project management.
* \*\*GitHub\*\* — Used to store and showcase the completed project.

\## 8. Expected Result



The 8-bit ALU is expected to correctly perform all 16 specified arithmetic, logical, shift, and comparison operations based on the OP\[3:0] selection signal. The design should produce the correct 8-bit result at output Y and generate the appropriate Carry output for applicable arithmetic operations. The ALU should operate as a combinational circuit and respond correctly to changes in its inputs and operation-select signal.

9\. Project Structure

8-bit-ALU

│

├── 8\_bit\_alu.v       # Main 8-bit ALU Verilog design

├── 8\_bit\_alu\_tb.v    # Testbench for ALU verification

├── README.md         # Project documentation

└── screenshots/      # Simulation results and waveform screenshots

10\. Verilog Implementation



* The 8-bit ALU is implemented using Verilog HDL as a combinational RTL design. The ALU accepts two 8-bit input operands, A and B, and a 4-bit operation-select signal, OP. Based on the selected operation, the ALU performs arithmetic, logical, shift, or comparison operations.
* The result is provided through the 8-bit output Y, while the Carry output indicates the carry generated during applicable arithmetic operations.
* The design uses combinational logic and does not require a clock signal.

11\. Testbench and Verification



* A Verilog testbench will be developed to verify the functionality of the 8-bit ALU. The testbench will apply different combinations of input operands and operation-select signals to the ALU and compare the generated outputs with the expected results.
* The verification process will cover all 16 supported operations, different operand combinations, arithmetic boundary conditions, carry generation, and comparison operations.
* The ALU will be simulated using ModelSim, and the simulation waveforms will be analyzed to confirm correct functionality.

12\. Simulation Results



* The completed 8-bit ALU will be simulated using ModelSim. The simulation waveform will be analyzed to verify the correctness of all supported ALU operations, input combinations, result generation, and applicable carry conditions.
* The final simulation waveform and verification results will be added after completing the RTL design and testbench.







