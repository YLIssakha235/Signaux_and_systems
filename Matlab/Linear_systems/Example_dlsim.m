% pkg load control % uncomment if running octave with control toolbox

numd = [0 0.5];
dend = [1 -0.5]; % Transfer function H(z) = 0.5/(z - 0.5)
Ts = 1;
sys = tf(numd,dend,Ts);
t = 0:Ts:25;
u = sin(t);
y = lsim(sys,u,t);
stem(t,[u' y])
legend('input','output')
xlabel('time'); ylabel('response')