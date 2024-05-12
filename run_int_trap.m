clc
clear

f = @(x) x.^2 - 2*x + 1;

a = 0; %batas bawah
b = 1; %batas atas
n = 100; %partisi 

int = int_trap(f, a, b, n);

disp('hasil integral Metode Trapesium adalah');
disp(int');