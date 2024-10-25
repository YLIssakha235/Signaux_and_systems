close all; clear all

% Period of sine
T = 1; 

% Sampling period
m = 3; % Test m = 1, m = 3, m = 3.1, m = 15
Np = 25;
Ts = m*T/Np; fs = 1/Ts; fprintf('fs = %4.2f Hz\n', fs)

% Number of data
K = 2; N = K*Np; % K discrete periods will be considered

tsampled = (0:N-1)*Ts; ysampled = sin((2*pi/T)*(tsampled));

fact = 100;
tsim = (0:N*fact)*Ts/fact; ysim = sin((2*pi/T)*(tsim));

figure
plot(tsim,ysim)
hold on
stem(tsampled,ysampled)
hold off
title('Signals y(t) and y[k]')
xlabel('Time (s)'), xlim([0 tsim(end)])
ylabel('Amplitude')