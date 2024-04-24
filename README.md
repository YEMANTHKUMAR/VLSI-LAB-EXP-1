AIM: To simulate and synthesis Logic Gates,Adders and Subtractor using Xilinx ISE.

APPARATUS REQUIRED: Xilinx 14.7 Spartan6 FPGA

PROCEDURE: STEP:1 Start the Xilinx navigator, Select and Name the New project. STEP:2 Select the device family, device, package and speed. STEP:3 Select new source in the New Project and select Verilog Module as the Source type. STEP:4 Type the File Name and Click Next and then finish button. Type the code and save it. STEP:5 Select the Behavioral Simulation in the Source Window and click the check syntax. STEP:6 Click the simulation to simulate the program and give the inputs and verify the outputs as per the truth table. STEP:7 Select the Implementation in the Sources Window and select the required file in the Processes Window. STEP:8 Select Check Syntax from the Synthesize XST Process. Double Click in the Floorplan Area/IO/Logic-Post Synthesis process in the User Constraints process group. UCF(User constraint File) is obtained. STEP:9 In the Design Object List Window, enter the pin location for each pin in the Loc column Select save from the File menu. STEP:10 Double click on the Implement Design and double click on the Generate Programming File to create a bitstream of the design.(.v) file is converted into .bit file here. STEP:12 Load the Bit file into the SPARTAN 6 FPGA STEP:11 On the board, by giving required input, the LEDs starts to glow light, indicating the output.

Logic Diagram :

Logic Gates:
![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160569469/846b051b-ac12-47f6-9bc8-6d3b69c2ec04)
VERILOG CODE:
~~~
module logicgates(a,b,andgate,orgate,xorgate,nandgate,norgate,xnorgate,notgate);

input a,b;

output andgate,orgate,xorgate,nandgate,norgate,xnorgate,notgate;

and(andgate,a,b);

or(orgate,a,b);

xor(xorgate,a,b);

nand(nandgate,a,b);

nor(norgate,a,b);

xnor(xnorgate,a,b);

not(notgate,a);

endmodule
~~~

OUTPUT WAVEFORM:
![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160569469/9f38f38b-e767-4f13-b2f4-7f9049e92f3e)



Half Adder:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160569469/272a03f1-a128-4f0b-8239-4e9855aaa4c1)

VERILOG CODE:
~~~

module half_adder(a,b,sum,carry);

input a,b;

output sum,carry;

xor g1(sum,a,b);

and g2(carry,a,b);

endmodule
~~~
OUTPUT WAVEFORM:
![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160569469/88226d25-fc8d-443f-8d2e-01ff340613b1)




Full adder:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160569469/befcd280-7a3d-4326-9ca0-36d238e1e7af)


VERILOG CODE:

module fulladder(a,b,c,sum,carry);

input a,b,c;

output sum,carry;

wire w1,w2,w3;

xor(w1,a,b);

xor(sum,w1,c);

and(w2,w1,c);

and(w3,a,b);

or(carry,w2,w3);

endmodule

OUTPUT WAVEFORM:
![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160569469/2cdf4a27-c646-4d54-9f7b-99d32ad1a51b)


Half Subtractor:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160569469/0b922042-ec1e-4e77-8c7c-f4e967d287b5)

VERILOG CODE:

module halfsub(a,b,diff,borrow);

input a,b;

output diff,borrow;

xor(diff,a,b);

and(borrow,~a,b);

endmodule

OUTPUT WAVEFORM:
![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160569469/76bcb011-d28d-4c46-aff7-6815aaff4b6d)

Full Subtractor:
![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160569469/685152b3-4310-4509-b8c4-cb01bf2eea5c)

VERILOG CODE:

module fs(a,b,bin,d,bout);

input a,b,bin;

output d,bout;

wire w1,w2,w3;

xor(w1,a,b);

xor(d,w1,bin);

and(w2,~a,b);

and(w3,~w1,bin);

or(bout,w3,w2);

endmodule

OUTPUT WAVEFORM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160569469/41b5673e-f935-42d1-a211-f2cc504d6764)


8 Bit Ripple Carry Adder

![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160569469/9933273d-f574-4c8b-9a97-6942d02c7c91)
![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160569469/d48eabfa-eed8-4cc3-960e-7b7b7701f493)


VERILOG CODE:

module fulladder(a,b,c,sum,carry);

input a,b,c;

output sum,carry;

wire w1,w2,w3;

xor(w1,a,b);

xor(sum,w1,c);

and(w2,w1,c);

and(w3,a,b);

or(carry,w2,w3);

endmodule

module rca_8bit(a,b,cin,s,cout);

input [7:0]a,b;

input cin;

output [7:0]s;

output cout;

wire [7:1]w;

fulladder f1(a[0], b[0], cin, s[0], w[1]);

fulladder f2(a[1], b[1], w[1], s[1], w[2]);

fulladder f3(a[2], b[2], w[2], s[2], w[3]);

fulladder f4(a[3], b[3], w[3], s[3], w[4]);

fulladder f5(a[4], b[4], w[4], s[4], w[5]);

fulladder f6(a[5], b[5], w[5], s[5], w[6]);

fulladder f7(a[6], b[6], w[6], s[6], w[7]);

fulladder f8(a[7], b[7], w[7], s[7], cout);

endmodule

OUTPUT WAVEFORM:
![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160569469/1a6ad17d-a2e7-469f-83cb-cf8bbcd65fb3)



RESULT:
simulation of logic gates,adders and subtractors is successfully simulated
