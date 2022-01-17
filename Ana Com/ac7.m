clc
t=0:0.1:10;
a=5;
f=0.5;
y1=a*sin(2*pi*f*t);
subplot(2,1,1)
plot(t,y1,'m','linewidth',2);
title('Sine Wave');
xlabel('Time');
ylabel('Amplitude');
y2=a*cos(2*pi*f*t);
subplot(2,1,2)
plot(t,y2,'c','linewidth',2);
title('Cosine Wave');
xlabel('Time');
ylabel('Amplitude');