# VLSI-LAB-EXPERIMENTS
AIM: To simulate and synthesis Logic Gates,Adders,Subtractor,Ripple Carry Adder   using  Xilinx ISE.

APPARATUS REQUIRED: Xilinx 14.7 Spartan6 FPGA

PROCEDURE:  
STEP:1 Start the Xilinx navigator, Select and Name the New project.
STEP:2 Select the device family, device, package and speed. 
STEP:3 Select new source in the New Project and select Verilog Module as the Source type. 
STEP:4 Type the File Name and Click Next and then finish button. Type the code and save it. 
STEP:5 Select the Behavioral Simulation in the Source Window and click the check syntax. 
STEP:6 Click the simulation to simulate the program and give the inputs and verify the outputs as per the truth table. 
STEP:7 Select the Implementation in the Sources Window and select the required file in the Processes Window. 
STEP:8 Select Check Syntax from the Synthesize XST Process. Double Click in the Floorplan Area/IO/Logic-Post Synthesis process in the User Constraints process group. UCF(User constraint File) is obtained. 
STEP:9 In the Design Object List Window, enter the pin location for each pin in the Loc column Select save from the File menu. 
STEP:10 Double click on the Implement Design and double click on the Generate Programming File to create a bitstream of the design.(.v) file is converted into .bit file here. 
STEP:11 On the board, by giving required input, the LEDs starts to glow light, indicating the output.
STEP:12 Load the Bit file into the SPARTAN 6 FPGA 

Logic Diagram :

Logic Gates                                
![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/ee17970c-3ac9-4603-881b-88e2825f41a4)

VERILOG CODE:
```````````````````````````
module allgates(a,b,c,y1,y2,y3,y4,y5,y6,y7);
input a,b,c;
output y1,y2,y3,y4,y5,y6,y7;
and x1(y1,a,b,c);
or x2(y2,a,b,c);
xor x3(y3,a,b,c);
not x4(y4,a);
nand x5(y5,a,b,c);
nor x6(y6,a,b,c);  
xnor x7(y7,a,b,c);
endmodule
````````````````````````````````````````````````````````````````````````
OUTPUT:

![image](https://github.com/YEMANTHKUMAR/VLSI-LAB-EXP-1/assets/160569469/40087e5d-58a3-4772-a2dc-bcd26d0a8abb)

                                ADDERS
                                
Half Adder:

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/0e1ecb96-0c25-4556-832b-aeeedfdfe7b9)


Full adder:

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/9bb3964c-438f-469d-a3de-c1cca6f323fb)


VERILOG CODE:

                            \\HALFADDER\\
````````````````````````````````````````````````                 
module halfadder(a,b,sum,carry);
input a,b;
output sum,carry;
xor x1(sum,a,b);
and x2(carry,a,b);
endmodule
````````````````````````````````````````````````````````

                             \\FULLADDER\\
``````````````````````````````````````````````````````          
module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
xor x1(w1,a,b);
xor x2(sum,w1,c);
and x3(w2,a,b);
and x4(w3,w1,w2);
or x5(carry,w3,w2);
endmodule
``````````````````````````````````````````````````````````````````````
OUTPUT:

![image](https://github.com/YEMANTHKUMAR/VLSI-LAB-EXP-1/assets/160569469/01d61845-0f3d-42e2-bfde-e5dd5ba31508)



![image](https://github.com/YEMANTHKUMAR/VLSI-LAB-EXP-1/assets/160569469/80b28061-8efc-4abf-bab5-eb4a343b5f68)

                                                       SUBTRACTOR  

                    
Half Subtractor:

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/731470b7-eb4e-49f8-8bb7-2994052a7184)



Full Subtractor:

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/d66f874b-c1f2-44b3-a035-7149b56430c1)

VERILOG CODE

                                                     \\HALFSUBRACTOR\\
````````````````````````````````````````````````````````
module halfsubractor(a,b,borrow,diff);
input a,b;
output borrow,diff;
xor g1(diff,a,b);
and g2(borrow,~a,b);
endmodule
````````````````````````````````````````````````````````````````````````````````
                                                      \\FULLSUBRACTOR\\
`````````````````````````````````````````````````````````````````````````````````
module fullsubractor(a,b,bin,d,bout);
input a,b,bin;
output d,bout;
wire w1,w2,w3;
xor (d,a,w1);
xor(w1,b,bin);
and(w2,~b,bin);
and (w3,~w1,a);
or (bout,w1,w2);
endmodule
````````````````````````````````````````````````````````````````````````````````````
OUTPUT

![image](https://github.com/YEMANTHKUMAR/VLSI-LAB-EXP-1/assets/160569469/3cef0172-475a-4996-9979-d5848592d007)


![image](https://github.com/YEMANTHKUMAR/VLSI-LAB-EXP-1/assets/160569469/ac49b8b4-cff2-4ccc-8371-c1479605a4ed)

                                                     Ripple Carry Adder

4 Bit Ripple Carry Adder:

![image](https://github.com/YEMANTHKUMAR/VLSI-LAB-EXP-1/assets/160569469/1278caab-0bfa-4b76-865f-4f1d81602d0c)


![image](https://github.com/YEMANTHKUMAR/VLSI-LAB-EXP-1/assets/160569469/cbe090d8-8583-439e-9826-840d23ad7e94)

8 Bit Ripple Carry Adder:

![image](https://github.com/YEMANTHKUMAR/VLSI-LAB-EXP-1/assets/160569469/3a290bdb-677f-44f7-b04c-439b6a586d1b)




VERILOG CODE

                                                \\4 Bit Ripple Carry Adder\\
```````````````````````````````````````````````````````````````````````
module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
xor x1(w1,a,b);
xor x2(sum,w1,c);
and x3(w2,a,b);
and x4(w3,w1,w2);
or x5(carry,w3,w2);
endmodule
module ripplecarry(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire c1,c2,c3;
fulladder(a[0],b[0],cin,sum[0],c1);
fulladder(a[1],b[1],c1,sum[1],c2);
fulladder(a[2],b[2],c2,sum[2],c3);
fulladder(a[3],b[3],c3,sum[3],c4);
endmodule
`````````````````````````````````````````````````````````````````````````````````
                                          \\ 8 Bit Ripple Carry Adder\\
````````````````````````````````````````````````````````````````````````````````
module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
xor x1(w1,a,b);
xor x2(sum,w1,c);
and x3(w2,a,b);
and x4(w3,w1,w2);
or x5(carry,w3,w2);
endmodule
module ripplecarry(a,b,cin,sum,cout);
input [7:0]a,b;
input cin;
output [7:0]sum;
output cout;
wire c1,c2,c3;
fulladder(a[0],b[0],cin,sum[0],c1);
fulladder(a[1],b[1],c1,sum[1],c2);
fulladder(a[2],b[2],c2,sum[2],c3);
fulladder(a[3],b[3],c3,sum[3],c4);
fulladder(a[4],b[4],c4,sum[4],c5);
fulladder(a[5],b[5],c5,sum[5],c6);
fulladder(a[6],b[6],c6,sum[6],c7);
fulladder(a[7],b[7],c7,sum[7],c8);
fulladder(a[8],b[8],c8,sum[8],cout);
endmodule
``````````````````````````````````````````````````````````````````````````````````                 
