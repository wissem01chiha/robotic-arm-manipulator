
clc
clear all 
% Define symbolic variables for q1, q2, q3, and deltas
syms q1 q2 q3 delta_q1 delta_q2 delta_q3 real;
theta=4*pi/3+2*0.8-q3-q2-0.7;
% Define the expression for px in terms of q1, q2, and q3
px =300*cos(q1) + 1280*cos(q1)*cos(q2) - 1280*sin(q1)*sin(q2)- 358*sin(theta)*(sin(q3)*(cos(q1)*cos(q2) - sin(q1)*sin(q2)) + cos(q2)*cos(q3)*sin(q1)*sin(q2)*sin(q3)) + 358*cos(theta)*(cos(q3)*(cos(q1)*cos(q2) - sin(q1)*sin(q2)) - cos(q2)*sin(q1)*sin(q2)*sin(q3)) + 1350*cos(q3)*(cos(q1)*cos(q2) - sin(q1)*sin(q2)) - 1350*cos(q2)*sin(q1)*sin(q2)*sin(q3);  % Your expression here

% Compute the partial derivatives of px with respect to q1, q2, and q3
dpx_dq1 = simplify(diff(px, q1));
dpx_dq2 = simplify(diff(px, q2));
dpx_dq3 = simplify(diff(px, q3));
disp(dpx_dq1)
disp(dpx_dq2)
disp(dpx_dq3)
 
