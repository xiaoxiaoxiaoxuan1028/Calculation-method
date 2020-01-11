function t = juxing(fun,a,b,n) 
h=(b-a)/n;  
fa=feval(fun,a);
fb=feval(fun,b);
f=feval(fun,a+h:h:b-h+0.001*h); 
t=h*(0.5*(fa+fb)+sum(f)); 
end
