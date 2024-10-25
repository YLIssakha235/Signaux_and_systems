T = 1;
t = 0:0.0001:T;
kstop = 100;

% Terme en k = 0;
y = (T/8)*ones(size(t));

% Termes en sinus
for k = 1:kstop
    y = y+(((-1)^(k+1)*T)/(2*k*pi))*sin(k*(2*pi/T)*t);
end    

% Termes imapirs en cosinus
for k = 1:2:kstop
    y = y-(T/((k^2)*(pi^2)))*cos(k*(2*pi/T)*t);
end    
    
plot(t,y)