clear;
x0 =[-1:0.01:1];
y0 = 1./(1+25*x0.^2);
x1 = linspace(-1, 1, 20);
y1 = interp1(x0,y0,x1,'pchip'); 
plot(x0,y0,'b');
hold on
plot(x1,y1,'m');
title('Èý´Î¶àÏîÊ½','FontName','Times New Roman','FontSize',11);
legend('Áú¸ñº¯ÊýÇúÏß', 'Èý´ÎÑùÌõ²åÖµÇúÏß'); 
axis([-1,1,0,1]); 
xlabel('x','FontName',' Times New Roman ','FontSize',11);
ylabel('y','FontName',' Times New Roman ','FontSize',11);
