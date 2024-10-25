% pkg load control % uncomment if running octave with control toolbox

numd = [0 0.5];
dend = [1 -0.5]; % Transfer function H(z) = 0.5/(z - 0.5)
Ts = 1;
sys = tf(numd,dend,Ts);
t = 0:Ts:15;
y1 = step(sys,t);
y2 = impulse(sys,t);
stairs(t,[y1 y2])
legend('step response','impulse response')
xlabel('time'); ylabel('response')