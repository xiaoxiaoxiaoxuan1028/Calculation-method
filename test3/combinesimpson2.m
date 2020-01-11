function q=combinesimpson(fun,x0,a,b,n)
x=linspace(a,b,n+1);
q=0;
for k=1:n
    q=q+subs(fun,x0,x(k))+4*subs(fun,x0,(x(k)+x(k+1))/2)+subs(fun,x0,x(k+1));
end
q=q*(b-a)/n/6;
