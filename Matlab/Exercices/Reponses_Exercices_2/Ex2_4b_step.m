clear all
close all
t = [];
y = [];
u = [];
for tt=0:0.01:10
    t = [t;tt];
    if tt < 1
        y = [y; 0];
        u = [u; 0];
    else    
        y = [y; 1.5*(1-exp(-2*(tt-1)))];
        u = [u; 1];
    end        
end    
figure(1)
plot(t,[y y])
        