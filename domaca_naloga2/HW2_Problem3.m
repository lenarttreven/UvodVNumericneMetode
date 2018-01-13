n = 1000;
koraki = 100;

A = rand(n);
B = A' * A;
x0 = rand(n, 1);

sigma_1 = potencna(B , x0, koraki);
sigma_n = inverzna_potencna(B, x0, koraki);
pogojenostno_stevilo = sqrt(sigma_1 * sigma_n) 
vgrajeno_pogojenostno_stevilo = cond(A)
razlika = pogojenostno_stevilo - vgrajeno_pogojenostno_stevilo
