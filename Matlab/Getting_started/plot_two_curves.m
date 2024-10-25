figure
x = 0.01:0.01:3;
y1 = sin(x); y2 = cos(x);
plot(x,[y1; y2]);
legend('sine','cosine');
xlabel('Angle theta');
ylabel('f(theta)');
title('Sine/Cosine');