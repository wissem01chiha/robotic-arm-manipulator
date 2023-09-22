  function res = kinematic(t1,t2,t4)
 l1=45;
 l2=165;
 l3=160;
 l4=45;
 a1=30;
 z1=60;
 b1=z1-l1;
 
 x=l2*cos(t1)*cos(t2)+l3*cos(t1)*cos(t2+atan(l2*sin(t2)/(a1-l2*cos(t1)*cos(t2)-a1*cos(t1)+2*l4*cos(t4))))+a1*cos(t1);
 y=l2*sin(t1)*cos(t2)+l3*sin(t1)*cos(t2+atan(l2*sin(t2)/(a1-l2*cos(t1)*cos(t2)-a1*cos(t1)+2*l4*cos(t4))))+a1*sin(t1);
 z=l1+l2*sin(t2)+l3*sin(t2+atan(l2*sin(t2)/(a1-l2*cos(t1)*cos(t2)-a1*cos(t1)+2*l4*cos(t4))))+b1;
 
 res=[x y z];
 
end