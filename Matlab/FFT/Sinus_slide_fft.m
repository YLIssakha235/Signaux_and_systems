Fs = 1000;              % Sampling frequency
T = 1/Fs;               % Sample time
t = (0:999)*T;t = t';   % Time vector
t = t';
N = 2^10;

yr = randn(size(t));    % Random noise    
k50 = 0.7; k120 = 1;    % Sum of a 50 Hz sinusoid and a 120 Hz sinusoid
ys = k50*sin(2*pi*50*t) + k120*sin(2*pi*120*t);
yrs = yr + ys;

figure(1)
plot([yrs ys]);
axis([0 50 -3 3]), grid on, xlabel('k')

%X = fft_comp(yrs',10);  % own function: see previous slides
X = fft(yrs,N);         % built in function
f = (0:Nfft/2)*(Fs/Nfft);
ffa = (2/Nfft)*abs(X(1:Nfft/2+1));
ffa(1) = ffa(1)/2;

figure(2)
bar(f,(ffa))
axis([0 Fs/2 0 1]), grid on, xlabel('f (Hz)')
ylim([0 1.1])