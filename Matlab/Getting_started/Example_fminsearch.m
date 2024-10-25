fun = inline('100*(x(2)-x(1)^2)^2+(1-x(1))^2');
x0 = [5 5];
[x,fval,exitflag,output] = fminsearch(fun,x0)