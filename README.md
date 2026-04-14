# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Caden Anderson, Brolen Gumb
## Summary
  * We explored how to design and implement state machines using two different methods. These methods were one hot and binary encoding. By using combinatorial logic and D FlipFlops, we created and implemted a digital system that can perform complex operations in a specific sequence.
    
## Lab Questions

### Compare and contrast One Hot and Binary encodings
  * One Hot encoding uses one flip flop per state, which makes the next state logic very simple but requires more flip flops than binary encoding. Binary encoding represents states as binary numbers, which uses fewer flip-flops (log2(n)) but results in more complex combinatorial logic and potential "invalid" unused states.

### Which method did your team find easier, and why?
  * We found one hot easier as the difference of three flip flop increasing to five was less detremental then the much easier combinatorial logic used in one hot encoding.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
  * It all comes down to the amount of flip flops that are capable or desried to be used. While one hot encoding can be simpler than binary, if we were tasked with represented a FSM with 50 different states a binary encoding process would only require 6 flip flops compared to 50 flip flops using one hot encoding.
