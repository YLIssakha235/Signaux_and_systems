clear all
close all
t = [];
y = [];
r = [];
for tt=0:0.01:10
    t = [t;tt];
    if tt < 1
        y = [y; 0];
        r = [r; 0];
    else    
        y = [y; (3/4)*(exp(-2*(tt-1)) - 1 + 2*(tt-1))];
        r = [r; (tt-1)];
    end        
end    
figure(1)
plot(t,[r y])
        