% pkg load symbolic % uncomment for use with octave with symbolic toolbox
syms t
f = exp(-t/2) + sin(t);
laplace(f)

syms s
F = 1/(s^2 - 1);
ilaplace(F)