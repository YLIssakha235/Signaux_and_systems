% Signals and Systems using Matlab by Chaparro: example 5.7

clear all; close all;
syms t w 
m = heaviside(t+5) - heaviside(t);
m1 = heaviside(t) - heaviside(t-5);
x2 = (t+5)*m + m1*(-t+5); x2 = x2/5;
x = x2*exp(-1i*10*t)/2;
y = x2*exp(+1i*10*t)/2;
Y = Afourier(y,5);
X = Afourier(x,5);
X2 = Afourier(x2,5);

figure(1)
subplot(221), ezplot(x2,[-6,6]), grid, axis([-6 6 -0.2 1.2]);
title(''), xlabel('t'), ylabel('x2(t)'),
subplot(222), ezplot(x+y,[-6,6]), grid, axis([-6 6 -1.2 1.2]);
title(''), xlabel('t'), ylabel('y2(t) = x2(t).cos(10t)'),
subplot(223), ezplot(abs(X2),[-8,8]), grid, axis([-8 8 -0.1 5.5])
xlabel('\omega'), ylabel('|X_2(\omega)|'),
subplot(224), ezplot(abs(X) + abs(Y),[-20,20]), grid; axis([-20 20 -0.1 5.5])
xlabel('\omega'), ylabel('|Y_2(\omega)|')