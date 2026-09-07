Flip-Flops – SR, D, JK and T

What is a Flip-Flop?

A flip-flop is a basic sequential logic circuit that stores one bit (0 or 1) of information. Unlike combinational circuits, flip-flops have memory and their output depends on both the present input and the previous state.

Why Do We Use Flip-Flops?

Flip-flops are used to store binary data and synchronize digital operations with a clock signal. They are the basic building blocks of:

- Registers
- Counters
- Shift registers
- Memory circuits
- Frequency dividers
- Sequential logic and digital systems

---

1. SR Flip-Flop

The SR (Set-Reset) flip-flop has two inputs: S (Set) and R (Reset).

S| R| Q(next)| Operation
0| 0| Q      | No Change
0| 1| 0      | Reset
1| 0| 1      | Set
1| 1| Invalid| Forbidden

Explanation:
When S = 1, the output is set to 1. When R = 1, the output is reset to 0. When both inputs are 0, the previous state is retained. The condition S = R = 1 is avoided because it produces an invalid state.

---

2. D Flip-Flop

The D (Data/Delay) flip-flop has a single input D.

D| Q(next)| Operation
0| 0| Reset
1| 1| Set

Explanation:
The D flip-flop transfers the input D to the output Q on the active clock edge. It is mainly used for data storage and registers.

Characteristic equation:
"Q(next) = D"

---

3. JK Flip-Flop

The JK flip-flop is an improved version of the SR flip-flop. It has two inputs: J and K.

J| K| Q(next)| Operation
0| 0| Q      | No Change
0| 1| 0      | Reset
1| 0| 1      | Set
1| 1| Q̅      | Toggle

Explanation:
The JK flip-flop eliminates the invalid condition of the SR flip-flop. When J = K = 1, the output toggles to its opposite state.

Characteristic equation:
"Q(next) = JQ̅ + K̅Q"

---

4. T Flip-Flop

The T (Toggle) flip-flop has a single input T.

T| Q(next)| Operation
0| Q      | No Change
1| Qbar   |Toggle

Explanation:
When T = 0, the output remains unchanged. When T = 1, the output toggles on every active clock edge.

Characteristic equation:
"Q(next) = T ⊕ Q"

T flip-flops are commonly used in counters and frequency-division circuits.

---

Flip-Flop Comparison

Flip-Flop| Inputs| Main Function| Common Applications
SR| S, R| Set / Reset| Basic memory
D| D| Data storage| Registers
JK| J, K| Set / Reset / Toggle| Counters, control circuits
T| T | Toggle| Counters, frequency dividers

---

Key Point

Flip-flops are fundamental sequential logic elements used to store one bit of information and form the foundation of registers, counters, memory and other digital systems.