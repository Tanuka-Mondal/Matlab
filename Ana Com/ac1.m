a = input ('Enter Amplitude:')
f = input ('Enter Frequency:')
t = input ('Enter time range:')
y1 = a*sin(2*pi*f*t)
y2 = a*cos(2*pi*f*t)
subplot(2,1,1),plot(t,y1,'c','linewidth',2),subplot(2,1,2),plot(t,y2,'m','linewidth',2)

subplot(2,1,1)
title('Sine Wave')
xlabel('Time')
ylabel('Amplitude')
subplot(2,1,2)
title('Cosine Wave')
xlabel('Time')
ylabel('Amplitude')
