function  res= orthoradial_line( angle1,angle2,radius )

 
a = arduino('COM3', 'Mega2560');
s3 = servo(a, 'D6', 'MinPulseDuration', 9*10^-4, 'MaxPulseDuration', 2*10^-3);
s4 = servo(a, 'D7', 'MinPulseDuration', 7*10^-4, 'MaxPulseDuration', 2*10^-3);
 % pen on frame
 
 
 
 
 
  for i=0.5:0.1:angle2/180
    writePosition(s3,i);
  end
servo3_pos= readPosition(s3);
 res=[servo3_pos];
end

