function int = int_trap(f, a, b, n)

    h = (b - a) / n;
    sum = 0;
    for i = 1:n
        x = a + (i - 1) * h;
        sum = sum + (h/2) * (f(x) + f(x + h));
    end
    
    % Return the integral estimate
    int = sum;
end
