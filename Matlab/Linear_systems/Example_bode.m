% pkg load control % uncomment if running octave with control toolbox

num = [0 0 1]; den = [1 0.1 1];  % Transfer function H(s) = 1/(s^2 + 0.1s + 1)
sys = tf(num,den);
w = 0:0.001:10;
[amplitude,phase] = bode(sys,w);
amplitude = reshape(amplitude,[length(amplitude) 1]);
phase = reshape(phase,[length(phase) 1]);

% Bode diagram
figure(1)
subplot(211)
semilogx(w,20*log10(amplitude),'r','Linewidth',2);
grid on; axis([0.01 10 -40 30]);
ylabel('Gain in dB'); xlabel('Frequency in rad / sec');
subplot(212)
semilogx(w,phase ,'r','Linewidth',2);
grid on; axis([0.01 10 -250 0]);
ylabel('Phase in deg'); xlabel('Frequency in rad / sec');

% Nyquist diagram
figure(2)
h1 = polar(phase*(pi/180), amplitude );
set(h1 ,'color','r','linewidth',2);
grid