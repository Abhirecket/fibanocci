# fibanocci
  The Fibonacci series is a sequence of numbers in which each number is the sum of the two preceding ones, usually starting with 0 and 1. So, the Fibonacci series begins as follows: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, ...

### RTL Description: Fibonacci Sequence Generator

- **Module Name**: fibonacci
- **Inputs**:
  - `clk`: Clock input.
  - `active`: Signal to enable the generation of the Fibonacci sequence.
  - `rst`: Reset signal.
- **Outputs**:
  - `out`: Output of the Fibonacci sequence generator.
- **Description**:
  - The `fibonacci` module generates the Fibonacci sequence.
  - It uses two flip-flops `ff1` and `ff2` to store the two most recent numbers in the sequence.
  - At each clock cycle, the next number in the sequence is calculated by adding the values of `ff1` and `ff2`.
  - The generated number is stored in `ff_out_1`.
  - The output `out` provides the generated Fibonacci sequence.
  - The module can be activated or deactivated based on the `active` signal. When `active` is low, the output remains constant, allowing freezing of the sequence.
- **Dependencies**:
  - This module depends on the clock signal `clk`, the `active` signal to enable the generation of the Fibonacci sequence, and the reset signal `rst`.
- **Additional Comments**:
  - Ensure that the `active` signal is properly controlled to start and stop the generation of the Fibonacci sequence.
  - The initial values of `ff1` and `ff2` are set to 1 and 0, respectively, to start the sequence.
  - The generated sequence starts with 0, 1, 1, 2, 3, 5, 8, 13, and so on.
