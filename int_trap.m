function int = int_trap(func, a, b, n)

    h = (b - a) / n;
    x = a + (0:n) * h;
    y = func(x);

    int = (h / 2) * (y(1) + 2 * sum(y(2:end-1)) + y(end));
end