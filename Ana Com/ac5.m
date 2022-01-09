   Fs = 100e3;
   dt = 1/Fs;
   
   t1 =  (0:dt:0.020-dt)';
   Fm1 = 1000;
   A = 2
   y1 = A*cos(2*pi*Fm1*t1);
   
   t2 =  (0:dt:0.004-dt)';
   Fm2 = 5000;
   B = 2
   y2 = B*cos(2*pi*Fm2*t2);
   
   plot(t2,y2)
  