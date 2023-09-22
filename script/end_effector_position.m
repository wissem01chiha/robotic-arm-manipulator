function res =end_effector_position(x,y,z)
 
 v=inverse_kinematic(x,y,z);
 
angle_servo_1=(v(1) )/pi;
angle_servo_2=(180*0.0174-v(2))/pi;
angle_servo_3=(v(3))/180;

a = arduino('COM3', 'Mega2560');
s1 = servo(a, 'D4');
s2 = servo(a, 'D5');
s3 = servo(a, 'D6');
s4 = servo(a, 'D7');
 %%%%%%%
 % pen on frame
  writePosition(s4, 1);
  pause(2);
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 writePosition(s1, angle_servo_1);
  servo1_pos= readPosition(s1);
  pause(2);
  writePosition(s2,angle_servo_2);
  servo2_pos= readPosition(s2);
  pause(2);
  writePosition(s3, angle_servo_3);
  servo3_pos= readPosition(s3);
  pause(2);
  writePosition(s4, 0);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   res=[ ( servo1_pos-angle_servo_1)*180;  (servo2_pos-angle_servo_2)*180; (servo3_pos-angle_servo_3)*180];
end

