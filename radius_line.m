
function res =  radius_line(angle, radius_1, radius_2 )
 if radius_1< radius_2
  step_line=(radius_2-radius_1)/10;
  
 z=50;%%fixed

a = arduino('COM3', 'Mega2560');
s1 = servo(a, 'D4', 'MinPulseDuration', 9*10^-4, 'MaxPulseDuration', 2*10^-3);
s2 = servo(a, 'D5', 'MinPulseDuration', 9*10^-4, 'MaxPulseDuration', 2*10^-3);
s3 = servo(a, 'D6', 'MinPulseDuration', 9*10^-4, 'MaxPulseDuration', 2*10^-3);
s4 = servo(a, 'D7', 'MinPulseDuration', 9*10^-4, 'MaxPulseDuration', 2*10^-3);
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
       writePosition(s4, 1);
  
 %%%%%%%%%%%%intial position%%%%%%%%%%%%%%%%
   position=[radius_1 angle z];
         v=inverse_kinematic(position(1),position(2),position(3));
       
          writePosition(s3,angle/180);
          angle_servo_1=(v(1)-30)/180;
          angle_servo_2=(180-v(2))/180;
          writePosition(s1,angle_servo_1);
           pause(0.5);
           writePosition(s2,angle_servo_2);
           pause(5);
 
 writePosition(s4, 0);
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     for i=radius_1:step_line:radius_2
         position=[radius_1+step_line*i angle z];
         v=inverse_kinematic(position(1),position(2),position(3));
         angle_servo_1=(v(1)-30)/180;
         angle_servo_2=(180-v(2))/180;
         writePosition(s1,angle_servo_1);
         pause(0.5);
         writePosition(s2,angle_servo_2); 
     end
 
 

 
   pause(1);
 
     
 writePosition(s4, 0);
   
     servo1_pos= readPosition(s1);
     servo2_pos= readPosition(s2);
      servo3_pos= readPosition(s3);
      res=[servo1_pos- angle_servo_1 servo2_pos-angle_servo_2 servo3_pos-angle/180];
 else
     error("Error ocuured");
 end
end

