function [an,bn,f]=fseries(fx,x,n,a,b)
if nargin==3
a=-pi;
b=pi;
end
l=(b-a)/2;
if a+b
fx=subs(fx,x,x+l+a);
end
an=int(fx,x,-l,l)/l;
bn=[];
f=an/2;
for ii=1:n
ann=int(fx*cos(ii*pi*x/l),x,-l,l)/l;
bnn=int(fx*sin(ii*pi*x/l),x,-l,l)/l;
an=[an,ann];
bn=[bn,bnn];
f=f+ann*cos(ii*pi*x/l)+bnn*sin(ii*pi*x/l);
end
if a+b
f=subs(f,x,x-l-a);
end 
