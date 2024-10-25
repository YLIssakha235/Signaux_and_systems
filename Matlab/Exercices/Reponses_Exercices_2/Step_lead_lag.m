T1 = 2;
T2 = 3;
figure(1)
step([T1 1],[T2 1])
y = [];
t = [];
for tt=0:0.01:18
    t = [t;tt];
    y = [y; 1 + ((T1-T2)/T2)*exp(-tt/T2)];
end    
figure(2)
plot(t,y)
        