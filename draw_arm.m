 
 
    
 % desired position of end-effector (r,ro,z)
pos=[140-55-20 60 25];
v=inverse_kinematic(pos(1),pos(2),pos(3));
angle_servo_1=(v(1)-30)/180;
angle_servo_2=(243-v(2))/180;
angle_servo_3=pos(3)/180;

 a = arduino('COM3', 'Mega2560');
s1 = servo(a, 'D4', 'MinPulseDuration', 9*10^-4, 'MaxPulseDuration', 2.1*10^-3);
s2 = servo(a, 'D5', 'MinPulseDuration', 9*10^-4, 'MaxPulseDuration', 2.1*10^-3);
s3 = servo(a, 'D6', 'MinPulseDuration', 9*10^-4, 'MaxPulseDuration', 2.1*10^-3);
    writePosition(s1,angle_servo_1);
    pause(0.5);
    writePosition(s2,angle_servo_2);
    pause(0.5);
    writePosition(s3,angle_servo_3 );
    pause(0.5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 clear a 
 clear all
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % desired position of end-effector (r,ro,z)
pos=[120-55-30 60 25];%20-->real schema=120mm end-effector length=55mm
v=inverse_kinematic(pos(1),pos(2),pos(3));
angle_servo_1=(v(1)-30)/180;
angle_servo_2=(243-v(2))/180;
angle_servo_3=pos(3)/180;

 a = arduino('COM3', 'Mega2560');
s1 = servo(a, 'D4', 'MinPulseDuration', 9*10^-4, 'MaxPulseDuration', 2.1*10^-3);
s2 = servo(a, 'D5', 'MinPulseDuration', 9*10^-4, 'MaxPulseDuration', 2.1*10^-3);
s3 = servo(a, 'D6', 'MinPulseDuration', 9*10^-4, 'MaxPulseDuration', 2.1*10^-3);
    writePosition(s1,angle_servo_1);
    pause(0.5);
    writePosition(s2,angle_servo_2);
      pause(0.5);
    writePosition(s3,angle_servo_3 );
      pause(0.5);
 