clear; clc;
x=[0 1 4 9 16 25 36 49 64];
y=[0 1 2 3 4 5 6 7 8];
xx =[0 1 4 9 16 25 36 49 64];
yy= Interpolation_Spline0(x, y, xx);
yyy = spline(x, y, xx);
plot(x, y, '-r', xx, yy, 'ob', xx, yyy, '*k');
grid on

