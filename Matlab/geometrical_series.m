clear
clc

% Choose with |q| < 1

q = 0.5 + 0.5*1i;
% q = -0.9;
% q = 0.9;

disp("q: " + num2str(q))
disp("|q|: " + num2str(abs(q)))

sum = 0;
for k = 0:1:100
   sum = sum + q^k;
end

sum_gs = 1/(1-q);

disp("Sum with 100 terms: " + num2str(sum))
disp("1/(1-q): " + num2str(sum_gs))