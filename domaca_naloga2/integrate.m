function integral = integrate(f, a, b, h)
% izracuna integral funkcije f na [a, b],pri cemer interval razdeli na n
% tock

n = (b - a) / h;
x = linspace(a, b, n + 1);
integral = 0;
for i=1:n+1
    if i == 1 || i == n + 1
        integral = integral + f(x(i));
    else
        integral = integral + 2 * f(x(i));
    end
end
integral = integral * h / 2;
end

