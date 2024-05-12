clc
clear

f = @(x) x.^2 - 2*x + 1;
x = 2;
h = 0.1;

%runing
df = turunan_pertama(f, x, h);
disp(['hasil turunan pertama adalah ',num2str(df)]);
