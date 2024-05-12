function x = g_s(A, b, x0, tol, max_iter)
    x = x0;
    for i = 1:max_iter
        x_baru = zeros(size(x));
        x_baru(1) = (b(1) - A(1, 2)*x(2) - A(1, 3)*x(3)) / A(1, 1);
        x_baru(2) = (b(2) - A(2, 1)*x_baru(1) - A(2, 3)*x(3)) / A(2, 2);
        x_baru(3) = (b(3) - A(3, 1)*x_baru(1) - A(3, 2)*x_baru(2)) / A(3, 3);
        if norm(x - x_baru) < tol
            break
        end
        x = x_baru;
    end
end
