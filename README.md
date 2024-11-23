In this lab we focused on creating modules to implement a binary to bcd converter and apply it to a simple calculator that adds and multiplies two four bit inputs.
The first section of this lab we focused on creating an add_3 module that emulates the add-3 part of the double dabble algorithmn for binary to bcd conversion. This module and the test bench we created for the module can be found under the files below 
>[add_3](https://github.com/Spring-2024-Classes/lab-2-binary-to-bcd-erik-and-diego/blob/main/add_3.v)
>
>[add_3_tb](https://github.com/Spring-2024-Classes/lab-2-binary-to-bcd-erik-and-diego/blob/main/add_3_tb.tcl)

The next part of the lab was to actually implement the rest of the double dabble algorithm using the add_3 module and outputting the proper corresponding bcd number. This module and its testbench can be found under the files below.
>[bin2bcd](https://github.com/Spring-2024-Classes/lab-2-binary-to-bcd-erik-and-diego/blob/main/bin2bcd.v)
>
>[bin2bcd_tb](https://github.com/Spring-2024-Classes/lab-2-binary-to-bcd-erik-and-diego/blob/main/bin2bcd_tb.tcl)

Latly was to implement this bin2bcd module into the simple calculator and have the fpga board output the correct answer to our input while also accounting for signed inputs and outputs. This implementation can be found in the files below along with the testbench and its given output.
>[simple_calc](https://github.com/Spring-2024-Classes/lab-2-binary-to-bcd-erik-and-diego/blob/main/simple_calc.v)

The output of the simulation was given as
![unnamed](https://github.com/Spring-2024-Classes/lab-2-binary-to-bcd-erik-and-diego/assets/158244629/a4c0a38a-aa7b-4e1a-a0eb-e82905b57532)
