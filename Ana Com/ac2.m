clc
t=0:0.1:10;
a=5;
f=0.5;
y=a*sin(2*pi*f*t);
plot(t,y,'m','linewidth',2);
title('Sine Wave');
xlabel('Time');
ylabel('Amplitude');