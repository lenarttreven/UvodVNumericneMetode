function [max_value,evaluated, kandidati] = maxpoly(p, a, b)
% funkcije vrne najve?jo vrednost polinoma na intervalu [a, b]

p_der = polyder(p);
stacionarne_tocke = roots(p_der);
kandidati = [a,b];
for kandidat = stacionarne_tocke.'
    if imag(kandidat) == 0 && kandidat > a && kandidat < b
        kandidati = [kandidati, real(kandidat)];
    end
end
evaluated = polyval(p, kandidati);
max_value = max(evaluated);
end

