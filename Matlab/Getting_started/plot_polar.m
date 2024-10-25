% Create data for the function
t = 0:0.01:2*pi;
r = abs(sin(2*t).*cos(2*t));

% Create a polar plot using polar
figure;
polar(t, r);

% Add a title
title('abs(sin(2t)*cos(2t))');