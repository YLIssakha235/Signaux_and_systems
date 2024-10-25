% pkg load control % uncomment if running octave with control toolbox

num = [0 1];
den = [5 1];
sys = tf(num,den); % Transfer function H(s) = 1/(5s + 1)
t = 0:0.1:25;
u = sin(t);
y = lsim(sys,u,t);
plot(t,[u; y'])
legend('input','output')
xlabel('time'); ylabel('response')