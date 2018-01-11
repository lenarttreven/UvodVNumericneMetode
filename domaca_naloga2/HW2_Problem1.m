h = 0.01;
x0 = zeros(1, 100);
for i=1:100
    x0(i) = i * h;
end

[y_jac, koraki_jac] = Jacobi(@f, h, x0, 10^(-10), 1000);
y_jac;
koraki_jac;

figure
hold on 
plot(x0, y_jac)

[y_seid, koraki_seid] = Jacobi(@f_seidel, h, x0, 10^(-10), 1000);
y_seid;
koraki_seid;

plot(x0, y_seid)

