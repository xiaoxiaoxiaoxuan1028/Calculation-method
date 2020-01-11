function q=gauss(fun,x0,a,b,n)
syms t;
fun=subs(fun,x0,(b-a)/2*t+(a+b)/2);
[x,A]=gausspoints(n);
q=(b-a)/2*sum(A.*subs(fun,t,x));


