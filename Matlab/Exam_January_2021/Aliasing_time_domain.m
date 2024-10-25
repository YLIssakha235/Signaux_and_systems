clear; close all; clc

fsignal = 13; fsample = 8; % Hz (instead of kHz)

tlim = round((1/fsignal)*10);
N = 10000;
t = linspace(-tlim,tlim,N);
x_sine = cos(2*pi*fsignal*t);
plot(t,x_sine)
xlabel('t (seconds)')

pause

Ts = 1/fsample;
nlim = floor(tlim/Ts);
n = -nlim:nlim;
x_sampled = cos(2*pi*fsignal*n*Ts);
hold on
plot(n*Ts,x_sampled,'x')

pause

fappear = 3;  % Hz (instead of kHz)
x_appear = cos(2*pi*fappear*t);
plot(t,x_appear,'r')
hold off



