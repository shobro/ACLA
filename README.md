# ACLA: An Approximate Carry-Lookahead Adder with Intelligent Carry Judgement and Correction

ACLA is an Approximate Carry-Lookahead Adder that can be used in error-tolerant applications. 

## Abstract

>Approximate computing in recent times has emerged as a popular alternative to conventional computing techniques. Fault-tolerant applications in the domains of machine learning, signal processing, and computer vision have shown promising results using approximate computing. Approximations on adders and multipliers have been widely proposed in literature and innovations on that front are still a necessity so as to target specific applications. In this paper, an approximate carry-lookahead adder (ACLA) is proposed which makes use of an intelligent approach for judging the carry of subsequent stages. Also, a correction mechanism is proposed so as to hinder substantial accuracy loss. Experimental results show that ACLA is faster than the traditional ripple-carry adder by 70.5% for 32-bit configurations on an average. In terms of accuracy, for 32-bit configurations, ACLA outperforms other state-of-the-art adders such as SARA and BCSA by 51%.

For more details, kindly visit our [publication](https://ieeexplore.ieee.org/document/9424329): 

[1] S. Belwal, R. Bhattacharjya, K. Goswami and D. S. Banerjee, "ACLA: An Approximate Carry-Lookahead Adder with Intelligent Carry Judgement and Correction," 2021 22nd International Symposium on Quality Electronic Design (ISQED), 2021, pp. 1-7, doi: 10.1109/ISQED51717.2021.9424329. 

# Files in The Repository
The repository contains both software and hardware models of ACLA. The folder descriptions are given below:

c_code: Contains ACLA coded in C.

octave: Contains GNU Octave models of ACLA. acla.m contains the main function to be called while remaining files contains assisting functions for acla.m. 

Example- Call acla(x,y,M,N) where x, y are decimal numbers while M is the total bit length and N is the block size to run software implementation of ACLA.  
         
verilog : Contains ACLA implementation in verilog.
Naming convention followed is "adderM_N.v" where M is the total bit length and N is block size. The files "blocks.v" and "fulladder.v" contain the common helper functions for "adderM_N.v" files. 

Example - To run ACLA model of 32 bits total bit length and 8 bits block size use "adder32_8.v" file.
# Reference
This repository is licensed under [MIT LICENSE](https://github.com/shobro/ACLA/blob/main/LICENSE). If you use this repository in your research, please cite:

S. Belwal, R. Bhattacharjya, K. Goswami and D. S. Banerjee, "ACLA: An Approximate Carry-Lookahead Adder with Intelligent Carry Judgement and Correction," 2021 22nd International Symposium on Quality Electronic Design (ISQED), 2021, pp. 1-7, doi: 10.1109/ISQED51717.2021.9424329.
```bibtex
@INPROCEEDINGS{acla,
  author={Belwal, Shobhit and Bhattacharjya, Rajat and Goswami, Kaustav and Banerjee, Dip Sankar},
  booktitle={2021 22nd International Symposium on Quality Electronic Design (ISQED)}, 
  title={ACLA: An Approximate Carry-Lookahead Adder with Intelligent Carry Judgement and Correction}, 
  year={2021},
  volume={},
  number={},
  pages={1-7},
  doi={10.1109/ISQED51717.2021.9424329}}
```
# Contact
You may reach out to:

Shobhit Belwal (shobhitbelwal02@gmail.com)

Rajat Bhattacharjya (rajatquiz@gmail.com)
