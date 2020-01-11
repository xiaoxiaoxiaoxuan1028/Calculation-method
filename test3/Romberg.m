function [RT,R,wugu,h] = Romberg(fun,a,b,wucha,m) 
n=1;
h=b-a;
wugu=1;
x=a;
k=0;
RT=zeros(4,4);
RT(1,1)=h*(feval(fun,a)+feval(fun,b))/2;
while((wugu>wucha)&&(k<m)||(k<4))
    k=k+1;h=h/2;s=0;
    for j=1:n
        x=a+h*(2*j-1);s=s+feval(fun,x);
    end
    RT(k+1,1)=RT(k,1)/2+h*s;n=2*n;
    for i=1:k
        RT(k+1,i+1)=((4^i)*RT(k+1,i)-RT(k,i))/(4^i-1);
    end
    wugu=abs(RT(k+1,k)-RT(k+1,k+1));
end
R=RT(k+1,k+1);
