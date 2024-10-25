clear all
str = 'Example''s result';
a = input('Enter a real value to be multiplied by 2: ');
a = 2*a;
str = [str ': ' num2str(a)];
disp(str)
whos
