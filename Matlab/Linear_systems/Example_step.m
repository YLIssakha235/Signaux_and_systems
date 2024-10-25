% pkg load control % uncomment if running octave with control toolbox
num = [0 1];
den = [5 1]; % Transfer function H(s) = 1/(5s + 1)
sys = tf(num,den);
t = 0:0.1:25;
y1 = step(sys,t);
y2 = impulse(sys,t);
figure(1), plot(t,[y1 y2])
legend('step response','impulse response')
xlabel('time'); ylabel('response')
figure(2), bode(sys)