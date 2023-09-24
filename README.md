![Static Badge](https://img.shields.io/badge/GNU-lic?style=gitlab&label=License%20&labelColor=rgb-rgb&color=rgb)
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
This project is  

## Project Structure
the project is organized in the flowwing tree: 
<ul>
<li>figures :
</li>
<li>data : 
</li>


</ul>

## Methodology
Regarding The complexity of the Robot kinematic chain, The equations i derived are not similar to the approch described in the next sections. I wporked in cylindrical coordinate $(r,\rho,z)$, fixing the base robotaion of the robot 

## Kinematic Problem
Denavit-hartenberg Representation : 

$$A=
\begin{bmatrix}
c_{\theta_{i}} & -s_{\theta_{i}}c_{\alpha_{i}} &s_{\theta_{i}}s_{\alpha_{i}} & a_{i}c_{\theta_{i}} \\
s_{\theta_{i}}& c_{\theta_{i}}c_{\alpha_{i}}& -c_{\theta_{i}}s_{\alpha_{i}}& a_{i}s_{\theta_{i}} \\
0&s_{\alpha_{i}}& c_{\alpha_{i}}& d_{i}&\\
0 & 0 & 0 & 1\\
\end{bmatrix}
$$ 

The robot input prameterics are 3 rotation angles denoted $(q_{1},q_{2},q_{3})$

### Main kinematic Chain
Link | $a_{i}$  |$\alpha_{i}$|$d_{i}$|$\theta_{i}$  
---|---         |---         |---    |---
1  | $a_{1}$    | 0          | $d_{1}$     | $q_{1}$
2  | $a_{2}$    | $90°$     | 0     | $q_{2}$
3  |  $a_{3}$ |0           |  0  |$q_{3}$
4  | $a_{4}$    | 0          |0     | $\theta$

we use the real dimension provided in the officel robot daa sheet  alhough our prototype model is a small kit <br>

since the joint 3 is passive the value of $\theta$ will be given by the secnod chain respect to the main chain 

$T_{0}^{4}(q_{1},q_{2},q_{3},\theta)=A1*A2*A3*A4$

the calculus is done by script1.m 
we get  the position of the end effector by the 4_th colum of the matrix T 

$$p=
\begin{bmatrix}
p_{x}\\
p_{y}\\
p_{z}
\end{bmatrix}$$
### Parallel Kinematic chain 
The parmeter $\theta$ is controlled by the second chain wich depends also of the position of the main chain more precilly the variable position of the joint centres $O_{3}$ and $O_{4}$ in the base frame $(x_{0},y_{0},z_{0})$
 
## Control Schema
The simplest way to use is an inverse jacobien    <br>
<img src="figures/control.png" alt="Alternative text" />




## Referaneces
<ul>
<li> Robotics: Modelling Planning and Control Bruno-Siciliano-2010
<li> Robotics, Vision and Control - Peter Corke-2020
</ul> 

## Licence 
The project is under the  GNU licencing for more details see <a ref="LICENCE">Licence</a> file.
