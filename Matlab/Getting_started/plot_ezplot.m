figure;
h = ezplot('(x^2 + y^2)^2 - x^2 + y^2',[-1.1, 1.1], [-1.1, 1.1]);
set(h,'color','red')
grid on

title({'Lemniscate Function';'(x^2 + y^2)^2 - x^2 + y^2'});