function t = comsimpson(fun,a,b,n)
h=(b-a)/n;
fa=feval(fun,a);
fb=feval(fun,b);
f1=feval(fun,a+h:h:b-h+0.001*h);
f2=feval(fun,a+h/2:h:b-h+0.001*h); 
t=h/6*(fa+fb+2*sum(f1)+4*sum(f2));