clc
clear

% % PLOT 2D
% % 1
% A = linspace(0, 8*pi, 1000);
% r = cos(5*A); 
% x = r .* cos(A);
% y = r .* sin(A);
%
% plot(x, y, 'g^', 'LineWidth', 1);  % Plot kurva daun warna hijau dengan garis menggunakan bintang serta ketebalan garis 1
% title('grafik daun');  % judul plot
% xlabel('x');  % label sumbu x
% ylabel('y');  % label sumbu y
% grid on;  % Menampilkan grid pada plot

% % 2
% x = linspace(0, 5, 100); % Membuat 100 titik dari 0 hingga 10
% y = sin(x);
% plot(x, y, 'r--o', 'LineWidth',2);
% title('2D');% judul plot
% xlabel('Sumbu X');% label sumbu x
% ylabel('Sumbu Y');% label sumbu y
% grid on;

% % 3
% x = linspace(-2*pi, 2*pi, 100);
% y1 = sin(x);
% y2 = cos(x);
% 
% figure;
% plot(x, y1, 'r*', 'LineWidth', 2); 
% hold on;
% plot(x, y2, 'b--o', 'LineWidth', 2); 
% 
% xlabel('x');
% ylabel('y');
% title('fungsi Sin dan Cos');
% legend('sin(x)', 'cos(x)'); 
% grid on;

% % 4
% a = linspace(0, 2*pi, 100);
% x = cos(a);
% y = sin(a);
% 
% plot(x, y, 'k', 'LineWidth', 2); 
% xlabel('x');
% ylabel('y');
% title('Lingkaran');
% axis equal;
% grid on;

% 5
% titik = input('titiknya ada : ');
% sisi = linspace(0, 2*pi, titik * 2 + 1);
% 
% %radius
% luar_radius = 1;
% dalam_radius = 0.5;
% x_star = zeros(1, length(sisi));
% y_star = zeros(1, length(sisi));
% 
% for i = 1:length(sisi)
%     if rem(i, 2) == 1
%         x_star(i) = luar_radius * cos(sisi(i));
%         y_star(i) = luar_radius * sin(sisi(i));
%     else
%         x_star(i) = dalam_radius * cos(sisi(i));
%         y_star(i) = dalam_radius * sin(sisi(i));
%     end
% end
% 
% plot(x_star, y_star, 'b', 'LineWidth', 2);
% axis equal; %
% grid on; 
% xlabel('X');
% ylabel('Y');
% title('bintang');

% % PLOT 3D
% % 1
% a = 0:pi/500:40*pi;
% xa = (3 + cos(sqrt(32)*a)).*cos(a);
% ya = sin(sqrt(32) * a);
% za = (3 + cos(sqrt(32)*a)).*sin(a);
% plot3(xa,ya,za)
% title('3D');% judul plot
% xlabel('x(z)'); % label sumbu x
% ylabel('y(z)'); % label sumbu y
% zlabel('z(z)'); % label sumbu z
% axis equal;
% grid on;

% % 2
% [x, y] = meshgrid(-5:0.1:5, -5:0.1:5);
% z = sinc(sqrt(x.^2 + y.^2));
% 
% surfc(x,y,z);
% meshc(x,y,z);
% contour(x,y,z);
% title('3D');% judul plott
% xlabel('X');
% ylabel('Y');
% zlabel('Z');

% % 3
% x = linspace(-2*pi, 2*pi, 100);
% y = linspace(-2*pi, 2*pi, 100);
% [X, Y] = meshgrid(x, y);
% Z1 = sin(X) .* cos(Y);
% Z2 = cos(X) .* sin(Y);
% 
% % Plot surf
% subplot(2, 2, 1);
% surf(X, Y, Z1);
% title('Surf Plot 1');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% 
% subplot(2, 2, 2);
% surf(X, Y, Z2);
% title('Surf Plot 2');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% 
% % Plot meshc
% subplot(2, 2, 3);
% meshc(X, Y, Z1);
% title('Meshc Plot 1');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% 
% subplot(2, 2, 4);
% meshc(X, Y, Z2);
% title('Meshc Plot 2');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');

% % 4
% x = linspace(-5, 5, 100);
% y = linspace(-5, 5, 100);
% [X, Y] = meshgrid(x, y);
% Z = exp(-sqrt(X.^2 + Y.^2)) .* sin(X) .* cos(Y);
% 
% % Plot surf
% subplot(2, 2, 1);
% surf(X, Y, Z);
% title('Surf Plot');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% 
% % Plot mesh
% subplot(2, 2, 2);
% mesh(X, Y, Z);
% title('Mesh Plot');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% 
% % Plot contour
% subplot(2, 2, 3);
% contour(X, Y, Z);
% title('Contour Plot');
% xlabel('X');
% ylabel('Y');
% 
% % Plot contourf
% subplot(2, 2, 4);
% contourf(X, Y, Z);
% title('Filled Contour Plot');
% xlabel('X');
% ylabel('Y');
% colorbar;

% % 5 
% a = linspace(0, 2*pi, 100);
% b = linspace(0, 1, 100);
% [A, B] = meshgrid(a, b);
% x = B .* sin(5*A) .* cos(A);
% y = B .* sin(5*A) .* sin(A);
% z = B .* cos(5*A);
% 
% surfc(x, y, z);
% meshc(x, y, z);
% colormap('cool'); % Set colormap
% shading interp; % Interpolated shading for smooth surface
% axis equal; 
% title('3D');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');