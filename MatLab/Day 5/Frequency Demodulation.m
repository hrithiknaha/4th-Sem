clc;
close all;
clear all;
t = 0:0.001:1;
am = input('Enter the amplitude of the message signal: ');
ac = input('Enter the amplitude of the carrier signal: ');
fm = input('Enter the frequency of the message signal: ');
fc = input('Enter the frequency of the carrier signal: ');
B=   input ('Enter the value of modulation index of frequency modulation: ');
xt = am*cos(2*pi*fm*t);
ct = ac*cos(2*pi*fc*t);
sfmt= ac.*cos(2*pi*fc*t + B*sin(2*pi*fm*t))
dem=diff(sfmt)
dem1=[0,dem]
v=abs(dem1)
[b,a]=butter(10,0.2);
v1=filter(b,a,v);
subplot(5,1,1)
plot(t,xt,'b')
title('Message Signal')
xlabel('Time')
ylabel('Amplitude')
subplot(5,1,2)
plot(t,ct,'r')
title('Carrier Signal')
xlabel('Time')
ylabel('Amplitude')
subplot(5,1,3)
plot(t,sfmt,'g')
title('Modulated Frequency Signal')
xlabel('Time')
ylabel('Amplitude')
subplot(5,1,4)
plot(t,v,'b')
title('Demodulated Frequency Signal')
xlabel('Time')
ylabel('Amplitude')
subplot(5,1,5)
plot(t,v1,'c')
title('Demodulated Frequency Signal with fliter')
xlabel('Time')
ylabel('Amplitude')
