n = 1000;
koraki = 10;

A = rand(n);
A = A' * A;
x0 = rand(n, 1);

sigma_1 = potencna(A , x0, koraki);
sigma_n = inverzna_potencna(A, x0, koraki);
pogojenostno_stevilo = sigma_1 * sigma_n 
vgrajeno_pogojenostno_stevilo = cond(A)

