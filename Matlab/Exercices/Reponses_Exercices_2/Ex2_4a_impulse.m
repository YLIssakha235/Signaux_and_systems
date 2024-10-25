clear all
close all
t = [];
y = [];
for tt=0:0.01:10
    t = [t;tt];
    if tt < 1
        y = [y; 0];
    else    
        y = [y; 3*exp(-2*(tt-1))];
    end        
end    
figure(1)
plot(t,[y y])
        