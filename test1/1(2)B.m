x = 0.2:0.01:0.4;
S = - 1.3393.*x.^3 + 0.80357.*x.^2 - 0.40714.*x + 1.04;
plot(x, S, 'b');
hold on
x = 0.4:0.01:0.6;
S = 0.44643.*x.^3 - 1.3393.*x.^2 + 0.45.*x + 0.92571;
plot(x, S, 'b');
hold on
x = 0.6:0.01:0.8;
S = - 1.6964.*x.^3 + 2.5179.*x.^2 - 1.8643.*x + 1.3886;
plot(x, S, 'b');
hold on
x = 0.8:0.01:1.1;
S = 2.5893.*x.^3 - 7.7679.*x.^2 + 6.3643.*x - 0.80571;
plot(x, S, 'b');
hold on
x2 = [0.2 0.28];
y2 = - 1.3393.*x2.^3 + 0.80357.*x2.^2 - 0.40714.*x2 + 1.04;
plot(x2, y2, 'r*');
hold on
x2 = [1 1.08];
y2 = 2.5893.*x2.^3 - 7.7679.*x2.^2 + 6.3643.*x2 - 0.80571;
plot(x2, y2, 'r*');
hold on
grid on
