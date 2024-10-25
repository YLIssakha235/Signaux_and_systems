clear all
num = [0 1]; % H(s) = 1/(5s + 1)
den = [5 1];
sys = tf(num,den);
Ts = 1;
sysd = c2d(sys,Ts); % Discretisation of continuous system
step(sys,sysd,25)
