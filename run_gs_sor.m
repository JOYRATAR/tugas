clc
clear

%runing
A = [6 1 -6; -4 1 2; 2 -1 2];
b = [14; -2; 3];
x0 = [0; 0; 0];
tol = 1e-6;
max_iter = 100;
w = 1.5;

gs = g_s(A, b, x0, tol, max_iter);
sor = fSOR(A, b, x0, w, tol, max_iter);

disp('Solusi Metode Gauss Seidel: ');
disp(gs');

disp('Solusi Metode SOR: ');
disp(sor');
