x=[0.0 0.1 0.2 0.3 0.5 0.8 1.0]; 
y=[1.0 0.41 0.50 0.61 0.91 2.02 2.46];
f1=inline(poly2sym(polyfit(x,y,3))); 
f2=inline(poly2sym(polyfit(x,y,4)));
plot(x,y,'*');
grid on;
for i=1:7 
 text(x(i),y(i)+0.1,strcat('(',num2str(x(i)),',',num2str(y(i)),')'));
 end;
xlabel('x'); 
ylabel('y');
figure; 
y1=f1(x); 
y2=f2(x);


plot(x,y1,'-r*'); 
for i=1:7
text(x(i),y1(i)+0.1,strcat('(',num2str(x(i)),',',num2str(y1(i)),')'));
end;
grid on;
title('3次多项式拟合');
xlabel('x');
ylabel('y');

figure;
plot(x,y2,'-bo');
for i=1:7
text(x(i),y2(i)+0.1,strcat('(',num2str(x(i)),',',num2str(y2(i)),')'));
end;
grid on;
title('4次多项式拟合');
xlabel('x');
ylabel('y'); 