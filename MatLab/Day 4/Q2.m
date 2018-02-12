clc;
close all;
clear all;
t=0:0.001:1;
Am=input('Enter Amplitude of Message');
Ac=input('Enter Amplitude of carrier');
fm=input('Enter the Frequency of the Message Signal');
fc=input('Enter the Frequency of Carrier Signal');
m=Am*cos(2*pi*fm*t)
c=Ac*cos(2*pi*fc*t)
x=Am*cos(2*pi*fm*t-pi/2)
l=m.*cos(2*pi*fc*t)+x.*sin(2*pi*fc*t)
u=m.*cos(2*pi*fc*t)-x.*sin(2*pi*fc*t)

fs=1000
A=length(m)
y=fftshift(fft(m,A)/A)
f=linspace(-fs/2,+fs/2,A)
subplot(5,1,1)
plot(f,abs(y),'r')
title("Message Signal")
xlabel('Frequency')
ylabel('Amplitude ')

fs=1000
A=length(c)
y=fftshift(fft(c,A)/A)
f=linspace(-fs/2,+fs/2,A)
subplot(5,1,2)
plot(f,abs(y),'g')
title("Carrier Signal")
xlabel('Frequency')
ylabel('Amplitude ')

fs=1000
A=length(x)
y=fftshift(fft(x,A)/A)
f=linspace(-fs/2,+fs/2,A)
subplot(5,1,3)
plot(f,abs(y),'k')
title("Hilbert Signal")
xlabel('Frequency')
ylabel('Amplitude ')


fs=1000
A=length(l)
y=fftshift(fft(l,A)/A)
f=linspace(-fs/2,+fs/2,A)
subplot(5,1,4)
plot(f,abs(y),'m')
title("SSB-LSB Signal")
xlabel('Frequency')
ylabel('Amplitude ')



fs=1000
A=length(u)
y=fftshift(fft(u,A)/A)
f=linspace(-fs/2,+fs/2,A)
subplot(5,1,5)
plot(f,abs(y),'c')
title("SSB-USB Signal")
xlabel('Frequency')
ylabel('Amplitude ')

%Power
pc=(Ac^2)/2;
pDSB=(pc*(Am/Ac))/2
pSSB=(pc*(Am/Ac))/4
fprintf('Power of DSB %f\n',pDSB) 
fprintf('Power of SSB %f',pSSB) 
