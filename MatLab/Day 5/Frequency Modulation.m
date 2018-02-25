clc;
close all;
clear all;
t = 0:0.001:1;
am = input('Enter the amplitude of the message signal: ');
ac = input('Enter the amplitude of the carrier signal: ');
fm = input('Enter the frequency of the message signal: ');
fc = input('Enter the frequency of the carrier signal: ');
B=   input ('Enter the vale of modulation index of frequency modulation: ');
xt = am*cos(2*pi*fm*t);
ct = ac*cos(2*pi*fc*t);
sfmt= ac.*cos(2*pi*fc*t + B*sin(2*pi*fm*t))
subplot(3,1,1)
plot(t,xt,'b')
title('Message Signal')
xlabel('Time')
ylabel('Amplitude')
subplot(3,1,2)
plot(t,ct,'r')
title('Carrier Signal')
xlabel('Time')
ylabel('Amplitude')
subplot(3,1,3)
plot(t,sfmt,'g')
title('Modulated Frequency Signal')
xlabel('Time')
ylabel('Amplitude')