close all; clear all

% Period of sine
T = 1; 

% Sampling period
m = 3; Np = 25; Ts = m*T/Np; K = 2; N = K*Np; NFFT = N; window = 0;  % Test 1
% m = 3; Np = 25; Ts = m*T/Np; K = 2; N = K*Np; NFFT = 2*N; window = 0; % Test 2
% m = 3.15; Np = 25; Ts = m*T/Np; K = 2; N = K*Np; NFFT = N; window = 0; % Test 3
% m = 3.15; Np = 25; Ts = m*T/Np; K = 2; N = K*Np; NFFT = N; window = 1; % Test 4

fs = 1/Ts; fprintf('fs = %4.2f Hz\n', fs)

tsampled = (0:N-1)*Ts; ysampled = sin((2*pi/T)*(tsampled));

fact = 100;
tsim = (0:N*fact-1)*Ts/fact; ysim = sin((2*pi/T)*(tsim));