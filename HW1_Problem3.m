% iskanje ni?el nekega polinoma

%p = @(x) -x^3 + 3 * x^2 + 2 * x - 1;
%q = @(x)  - 4 * x^4 + 2 * x^2 + x:

p = [-1, 3, 2 ,-1];
q = [-4, 0, 2, 1, 0];

pq = conv(p,q);

int_pq  = polyint(pq, 0);
int_c = polyval(int_pq, -1);

d = maxpoly(q, -1, 1);

nas_polinom = sum_poly(int_pq, -int_c + d);
nas_polinom = sum_poly(nas_polinom, -1 * p);

nicle = roots(nas_polinom)