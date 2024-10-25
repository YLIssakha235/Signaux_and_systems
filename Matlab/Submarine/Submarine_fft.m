close all
clear all

Fs = 160;                     % Sampling frequency
N = 2^8;

load data_submarine

figure(1)
plot(data_submarine);
grid on
xlabel('k')

figure(2)
X = fft(data_submarine,N);
f = (Fs/2)*linspace(0,1,N/2)';
ffa = (2/N)*abs(X(1:N/2))';
ffa(1) = ffa(1)/2;

n = 0:1:N-1;
stem(f,ffa)
axis([0 Fs/2 0 0.8])
grid on
xlabel('f (Hz)')