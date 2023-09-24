 clc
clear  
% Define The Robot Static Link Parmeters
a1=300; a2=1280; a3=1350; a4=358;
d1=800; d2=0;   d3=0;     d4=0;
% Define The Robot Joint Parmeters  
syms q1 q2 q3 theta; 
% Define symbolic variables
syms theta_i alpha_i a_i d_i ;
% Define the general formula of the Homogneus transformation matrix %
A=[cos(theta_i), -sin(theta_i)*cos(alpha_i), sin(theta_i)*sin(alpha_i), a_i*cos(theta_i);
   sin(theta_i), cos(theta_i)*sin(theta_i), - cos(theta_i)*sin(alpha_i), a_i* sin(theta_i);
   0, sin(alpha_i), cos(alpha_i), d_i;
   0,0,0,1
];
% Substitute the numerical values into the symbolic matrix
A1=subs(A,[theta_i,alpha_i,a_i,d_i],    [q1,0 , a1, d1]);
A2=subs(A,[theta_i,alpha_i,a_i,d_i],    [q2, pi/2, a2, d2]);
A3=subs(A,[theta_i,alpha_i,a_i,d_i],    [q3, 0, a3, d3]);
A4=subs(A,[theta_i,alpha_i,a_i,d_i],    [theta, 0, a4, d4]);
% Calculate the T matrix 
T=simplify(A1*A2*A3*A4);

disp(T(:,4))
