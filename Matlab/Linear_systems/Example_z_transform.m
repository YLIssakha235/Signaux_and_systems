% pkg load symbolic % uncomment for use with octave with symbolic toolbox
syms a n z
f1 = a^n;
f2 = n*a^n;
ztrans(f1, z)
ztrans(f2, z)

syms n z
F = z/(z-3)^2 + z/(z-2);
f = iztrans(F, n)
simplify(f)