% pkg load control % uncomment if running octave with control toolbox

numd = [0 0.1]; dend = [1 -0.9];  % Transfer function H(z) = 0.1/(z-0.9)
Ts = 0.1;
sysd = tf(numd,dend,Ts);
[amplitude,phase,w] = bode(sysd);
amplitude = reshape(amplitude,[length(amplitude) 1]);
phase = reshape(phase,[length(phase) 1]);

% Bode diagram
figure(1)
subplot(211)
semilogx(w,20*log10(amplitude),'r','Linewidth',2);
grid on; axis([0.01 pi/Ts -30 10]);
ylabel('Gain in dB'); xlabel('Frequency in rad / sec');
subplot(212)
semilogx(w,phase ,'r','Linewidth',2);
grid on; axis([0.01 pi/Ts -200 0]);
ylabel('Phase in deg'); xlabel('Frequency in rad / sec');

% Nyquist diagram
figure(2)
h1 = polar(phase*(pi/180), amplitude );
set(h1 ,'color','r','linewidth',2);
grid