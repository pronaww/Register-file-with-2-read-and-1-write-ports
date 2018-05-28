Lab Exercise 3: Register file with 2 read and 1 write ports

A register file is an array of registers or a small memory. Data is read from or written into a register file through read and write ports, respectively. The number of ports determines how many read/write operations can take place concurrently. The most common form of register file used in processors is one with 2 read ports and 1 write port. Such a register file allows two operands for an operation to be read and one result to be written concurrently.

This exercise aims at designing and implementing a small register file of size 8x4, with 2 read and 1 write ports. Here 8 is the number of registers and 4 is the size of each register (number of bits). The figure on right shows inputs and outputs of such a register file.

All inputs (except clock) could be connected to slide switches and outputs could be connected to LED displays. Clock input could be connected to a push button through debouncing logic. This arrangement could be used for entering data into individual registers and displaying their contents.

To demonstrate concurrent access to all the ports, connect the register file to a 4-bit XOR circuit and a multiplexer as shown on right.

![image](https://user-images.githubusercontent.com/25972864/40573613-8787c23e-60e1-11e8-924f-37fd2f7e042d.png)
  

The multiplexer selects whether the data to be written into the register file comes from the switches or from XOR output, as specified by the Mode input.

Connect Mode to a slide switch. Address inputs are not shown in this figure for clarity.

![image](https://user-images.githubusercontent.com/25972864/40573617-a06d34be-60e1-11e8-9a98-b82ec833c23b.png)

For demonstration, enter some data into the registers through switches. Then do in-place interchange of contents of two register using a sequence of 3 XOR operations as follows.

A <= A XOR B

B <= A XOR B

A <= A XOR B

Also, make note the following:

    1. Reading operation will be purely combinational.

    2. Reading will happen continuously (there is no read enable signal).

    3. Writing will be a single clock operation (no latches in address path).

    4. If write address is same as one of the read addresses, the new data written will appear in the output immediately.

    5. If mode is ‘0’ then data is taken from switches, else taken from XORed data (of read output ports).

![image](https://user-images.githubusercontent.com/25972864/40598577-1edf6fee-6266-11e8-9952-7f5ac5a8b419.png)

![image](https://user-images.githubusercontent.com/25972864/40598596-42f52cfc-6266-11e8-8ea1-0b8e9bbbe922.png)

The clock signal is mapped to push button - BTNC (centre button).

D - Flip Flop (FF):

Further, please use the following, D FF from the library.

![image](https://user-images.githubusercontent.com/25972864/40598617-6e1a1b90-6266-11e8-8d1b-9a7d0c6c3abe.png)
