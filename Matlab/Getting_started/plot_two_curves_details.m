figure, hold on
x = 0.01:0.01:3;
y1 = sin(x); y2 = cos(x);
plot(x,y1,'-r','LineWidth',1);
plot(x,y2,'--b','LineWidth',1);
legend('sine','cosine');
xlabel('Angle $\theta$','interpreter','latex');
ylabel('$f(\theta)$','interpreter','latex');
title('Sine/Cosine');
hold off