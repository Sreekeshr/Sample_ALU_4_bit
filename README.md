# Sample_ALU_4_bit 

The ALU is a digital circuit that provides arithmetic and logic operations . It is the fundamental building block of the central processing unit of a computer. A
modern CPU has a very powerful ALU and it is complex in design. The control unit supplies the data required by the ALU from memory, or from input devices,
and directs the ALU to perform a specific operation based on the instruction fetched from the memory. ALU is the “calculator” portion of the computer.

We implemented the design in Digilent Basys 3 FPGA . The Basys 3 is an entry-level FPGA development board designed exclusively for the Vivado Design
suite featuring the Xilinx Artix-7 FPGA architecture

##DESIGN OF ALU

Design of ALU follows “Divide and Conquer” inorder to use a modular design that consists of smaller, more manageable blocks,some of which can be reused.
Our ALU consist of two units:
  1. Arithmetic unit : The unit which carries the addition and multiplication operation.
  2. Logic unit : The unit which carries out several logical operations such as AND,OR , NOR , XOR
  
##Methodology

In the ALU design we need to select which operation needs to be carried out. This is done using a 8*1 MUX with three select lines where the select line decides which operation should be done . The way the control signal used for selecting the operation is given in the table shown below.The selection of operations is done by selecting these particular values of inputs for the control pins . After selection of operation and giving two four bit inputs we need to give a trigger inorder to give the output corresponding to the operation and also after viewing the output we need to acknowledge the same inorder to do the next operation. The corresponding signal for the operation output trigger is ‘OK’ and is acknowledged as “ACK”.

Here the main_control.v act as the top level file and rest are build on top of same

## Sample Mechanism of operation Selection

![image5](https://user-images.githubusercontent.com/58849231/217472395-ab50bb5b-9370-44be-90d8-64b1e5d1240b.png)


## Demo

