T = 1;
t = -T/2:0.0001:T/2;
kstop = 20;

% Terme en k = 0;
y = (T/4)*ones(size(t));

% Termes imapairs en cosinus
for k = 1:2:kstop
    y = y-((2*T)/((k^2)*(pi^2)))*cos(k*(2*pi/T)*t);
end    
    
plot(t,y)