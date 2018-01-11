f = @(x) exp(x);

T1 = integrate(f, 0, 1, 1)
T2 = integrate(f, 0, 1, 0.5)
T3 = integrate(f, 0, 1, 0.25)
T4 = integrate(f, 0, 1, 0.125)
tocna_vrednost = exp(1) - 1

tocke = [1^2, 0.5^2, 0.25^2, 0.125^2];
priblizki = [T1, T2, T3, T4];
polinom = @(x) newpoly(x, tocke, priblizki);

%razlika od integrala:
razlika = polinom(0)  - (exp(1) - 1)


