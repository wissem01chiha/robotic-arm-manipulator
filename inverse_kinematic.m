function v = inverse_kinematic(r,ro,z)
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % theta_1 respect to r and z 
 CA=57;
 OB=52.5;
 BC=152.5;
 OA=155;%en mm
 AD=165;
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
  OD=(r.^2+z.^2).^0.5;

options = optimset('Display','off');
 angle_A=pi-acos((OA^2+AD^2-OD.^2)/(2*OA.*OD));
theta1=(atan(z./r)+acos((OD.^2+OA^2-165^2)./(2*OA.*OD)));
fun=@(x) x+acos((OB^2+BC^2-OA^2-CA^2+2*OA*CA.*cos(angle_A))./(2*BC*OB))+acos((OA*OB*cos(x))/(BC*CA))+angle_A-2*pi;
theta2=fsolve(fun,10,options)+theta1;
 
 
v=[angle(theta1),angle(theta2),ro];
    
     


end

