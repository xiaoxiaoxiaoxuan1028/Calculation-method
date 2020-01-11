x = 0:0.1:2;
P4 = - 0.52083.*x.^4 + 0.83333.*x.^3 - 1.1042.*x.^2 + 0.19167.*x + 0.98;
plot(x, P4, 'b');
x2 = [0.2 0.28 1 1.08] ;
y1 = - 0.52083.*x2.^4 + 0.83333.*x2.^3 - 1.1042.*x2.^2 + 0.19167.*x2 + 0.98;
hold on
plot(x2, y1, 'r*');
hold on
grid on