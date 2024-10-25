numd = [0 0.1]; dend = [1 -0.9];  % Transfer function H(z) = 0.1/(z-0.9)
dbode(numd,dend,Ts)