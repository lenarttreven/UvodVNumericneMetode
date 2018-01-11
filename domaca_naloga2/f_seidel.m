function Y = f_seidel(X, h)
n = length(X);
Y = zeros(1, n);
Y(1) = h^2 + exp(-X(1));
for i = 2:100
    Y(i) = Y(i - 1) + (i * h)^2 + exp(-X(i));
end

end
