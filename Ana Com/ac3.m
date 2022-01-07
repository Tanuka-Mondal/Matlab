clc
t=0:0.1:10;
a=5;
f=0.5;
y=a*cos(2*pi*f*t);
plot(t,y,'c','linewidth',2);
title('Cosine Wave');
xlabel('Time');
ylabel('Amplitude');