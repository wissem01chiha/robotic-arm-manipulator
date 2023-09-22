%*****************************************************************************
%% ROBOTIC_ARM_KINEMATICS 
%
% Discussion:
%
%       ROBOTIC_ARM_KINEMATICS : MATLAB code determine the position, velocity, 
%       and acceleration of the end effector of the robotic arm.
%       the code uses numeric methodes to computes ther inverse kinematic
%       problem over a 2d grid planner workspace.
%
%
%   Licensing:
%
%       This code is distributed under the GNU LGPL license.
%
%   Author:
%
%       Wissem Chiha 
%
%*****************************************************************************
%%  DEFINE SYSTEM PARAMTERS ( mm , rad )       
OA=55;
OC=155;
AB=155;
BC=55;
FC=40;
CG=40;
CD=160;
DE=35;
EF=160;
FG=70;
GH=155;
HO=25;
ID=60;
D_angle=pi/3;
%% REVOLUTE JOINT VARIABLES LIMITS 
theta1_min  =   pi/10;
theta1_max  =   pi/2-pi/10;

theta2_min  =   pi/2-pi/10;
theta2_max  =   3*pi/4;

theta3_min  =   pi/10;
theta3_max  =   pi;
%% SET ACTUATORS STATIC PARAMETERS

offset_angle1=1;
offset_angle2=1;
offset_angle3=1;
servo_min_angle=0.0087;
%% JOINT VARIABLES DEFINITION

syms  theta1    theta2    theta3  

%% ANGLES CALCULATIONS 

HC=sqrt(OC^2+HO^2-2*OC*HO*sin(theta1));
H_angle=acos((GH^2+HC^2-CG^2)/(2*GH*HC));
G_angle=acos((GH^2+CG^2-HC^2)/(2*GH*CG));
END_EFFECTOR_angle=atan((OC*sin(theta1)-HO)/(OC*cos(theta1)))-H_angle-G_angle-D_angle+4*pi/3;
 
%% END EFFECTOR POSITION CALCULATIONS 

% calculate position of point D :
xD=OC*cos(theta1+theta3)+CD*cos(theta2+theta3);
yD=OC*sin(theta1+theta3)+CD*sin(theta2+theta3);

%end effector I position 
xI=xD+ID*cos(END_EFFECTOR_angle);
yI=yD+ID*sin(END_EFFECTOR_angle);

%% CALCULATING INVERSE KINEMATICS 

%define a target position 
x_target=200;
y_target=90;
x=subs(xI,theta3,0);
y=subs(yI,theta3,0);
sol=vpasolve([x==x_target,y==y_target],[theta1,theta2]);

%converting angles in degree 

disp('servo 1 angle');
disp(double(rad2deg(sol.theta1)));
disp('servo 2 angle ');
disp(double(rad2deg(sol.theta2)));
%disp('servo 3 angle ');
%disp(double(rad2deg(sol.theta3)));


 



 

 





%% VELOCITY CALCULATIONS 































