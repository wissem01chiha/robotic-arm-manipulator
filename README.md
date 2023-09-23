
# Industrial Palletizing Robot Arm ABB IRB660 Project 
## Table of Contents
- [Introduction](#introduction)
- [Project Structure](#project_struture)
- [Methodology](#methodology)
- [Kinematic Problem](#kinematicproblem)
- [Inverse Kinamatic Problem](#inverse_kinematic_problem)
- [Control Schema](#control_schema)
- [Hardware Considration](#hardware_considerations)
- [Simulations and Results](#simulations_results)
- [Prototyping ](#prototyping_and_experimentation)
- [Experimentation](#experimentation)
- [Installation](#installation)
- [Usage](#usage)
- [Referances](#referances)
- [Contributing](#contributing)
- [License](#license)  

## Introduction 
This project 
## Methodology
Regarding The complexity of the Robot kinematic chain, The equations i derived are not similar to the approch described in the next sections. I wporked in cylindrical coordinate $ (r,\rho,z)$, fixing the base robotaion of the robot 

## Kinematic Problem
The robot input prameterics are 3 rotation angles denoted $ (q_{1},q_{2},q_{3}) $
### Main kinematic Chain
$ 
 \begin{array}{cccc}
\text{Column 1} & \text{Column 2} & \text{Column 3} & \text{Column 4} \\
\hline
\text{Row 1, Cell 1} & \text{Row 1, Cell 2} & \text{Row 1, Cell 3} & \text{Row 1, Cell 4} \\
\text{Row 2, Cell 1} & \text{Row 2, Cell 2} & \text{Row 2, Cell 3} & \text{Row 2, Cell 4} \\
\end{array}
 $ 

### Second Kinematic chain 
Denavit-hartenberg Representation : 

$$A=
\begin{bmatrix}
c_{\theta_{i}} & -s_{\theta_{i}}c_{\alpha_{i}} &s_{\theta_{i}}s_{\alpha_{i}} & a_{i}c_{\theta_{i}} \\
s_{\theta_{i}}& c_{\theta_{i}}c_{\alpha_{i}}& a_{23} & a_{i}s_{\theta_{i}} \\
0&s_{\alpha_{i}}& c_{\alpha_{i}}& d_{i}&\\
0 & 0 & 0 & 1\\
\end{bmatrix}
$$
 
## Control Schema



## Referaneces 

## Licence 
 
