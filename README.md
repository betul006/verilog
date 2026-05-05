# Verilog
# **Universial Shift Register**
## *1. INTRODUCTION*

 Shift registers are basic components used for data storage and transfer in digital electronics. In this project, we designed a 4 bit shift register using Verilog HDL. Our main goal was to understand how sequential circuits work and to build a functional hardware component. The system can perform hold, right shift, left shift, and parallel load operations based on a clock signal.
 
 The objective of this project is to understand sequential circuit design and to implement a functional hardware component that can manipulate binary data efficiently.


## *2. DIGITAL DESIGN*

   Our design is a 4 bit shift register that uses four flip-flops to store data. A 2 bit input called "process" controls what the system does.
 The system is generally synchronous, meaning regular operations (shift, load, hold) happen at the positive edge of the clock signal. However, the reset signal is asynchronous. When reset becomes active (1), the output is cleared immediately without waiting for the clock.

Operation modes:

* Hold (00): Keeps the current value unchanged
* Right Shift (01): Shifts all bits to the right and inserts a new bit from serial input
* Left Shift (10): Shifts all bits to the left and inserts a new bit from serial input
* Parallel Load (11): Loads a 4 bit value into the register simultaneously

The block diagram of the system is shown below.

<img width="616" height="357" alt="image" src="https://github.com/user-attachments/assets/92adb433-2373-4a77-80fa-0059fe604ab4" />



## *3. VERILOG IMPLEMENTATION*

  Our design is a 4 bit shift register that uses four flip-flops to store data. A 2 bit input called "process" controls what the system does.
 The system is generally synchronous, meaning regular operations (shift, load, hold) happen at the positive edge of the clock signal. However, the reset signal is asynchronous. When reset becomes active (1), the output is cleared immediately without waiting for the clock.


 
## *4. TESTBENCH AND SIMULATION*

 A testbench was developed to verify the correctness of the shift register design. The testbench generates clock signals, applies different input combinations, and observes the output behavior.

 The simulation begins with the reset signal activated to initialize the register. Then, different operations are tested sequentially:

**1. Parallel Load:** A 4 bit value is loaded into the register
**2. Right Shift:** Bits are shifted to the right with serial input
**3. Left Shift:** Bits are shifted to the left with serial input
**4. Hold:** The register value is maintained

 The simulation results were observed using GTKWave. The waveform clearly shows that the output changes correctly according to the applied inputs and control signals.

This confirms that the design is functioning as expected.

<img width="632" height="345" alt="image" src="https://github.com/user-attachments/assets/c4d88e52-5ab6-4cc9-89eb-b454d21133ef" />



## *5. DISCUSSION*

 The designed shift register demonstrates the basic principles of sequential logic circuits. The ability to perform multiple operations within a single module increases its flexibility and usefulness.

 One of the important aspects of this design is the combination of serial and parallel data operations. This makes the system suitable for various applications such as data communication and temporary data storage.

 The design is scalable, meaning it can be extended to larger bit sizes with minimal modification. This makes it a reusable component in more complex digital systems.

 To test the logical correctness of the circuit during the simulation phase, a representative clock period (20ns) was defined on the testbench, and the synchronization of all sequential operations was ensured through this reference.



## *6. CONCLUSION*

 In this project, a 4 bit shift register was successfully designed, implemented, and tested using Verilog HDL. The system supports multiple operations and demonstrates reliable performance under different test conditions.

 The use of simulation tools such as GTKWave helped verify the correctness of the design. This project provided valuable experience in digital design, hardware description languages, and simulation techniques.

 Overall, the project meets all the required specifications and demonstrates a functional and efficient hardware component.





