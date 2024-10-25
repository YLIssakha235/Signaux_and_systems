pkg load symbolic
x = sym ('x');
diff(sin(x^2))
int(x^3)
limit(abs(x)/x, x, 0,'left')
taylor(sin(x),x,pi/2,'Order',6)