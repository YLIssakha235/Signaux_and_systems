T1 = 2;
T2 = 1;
figure(1)
step([0 0 1],conv([T2 1],[T1 1]))
y = [];
t = [];
for tt=0:0.01:14
    t = [t;tt];
    y = [y; 1 + (1/(T2-T1))*(T1*exp(-tt/T1) - T2*exp(-tt/T2))];
end    
figure(2)
plot(t,y)
        