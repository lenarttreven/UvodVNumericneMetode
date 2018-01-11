function [px,F] = newpoly(x,X,fX,dfX)
% Opis:
%  newpoly izracuna vrednosti polinoma, ki interpolira vrednosti (in
%  vrednosti odvodov) funkcije v danih interpolacijskih tockah.
%
% Definicija:
%  [px,F] = newpoly(x,X,fX,dfX)
%
% Vhodni podatki:
%  x    seznam abscis, pri katerih racunamo vrednost interpolacijskega
%       polinoma,
%  X    seznam paroma razlicnih interpolacijskih tock,
%  fX   seznam vrednosti funkcije v interpolacijskih tockah,
%  dfX  seznam vrednosti odvodov funkcije v interpolacijskih tockah
%       (opcijski podatek: ce ni podan, polinom interpolira le vrednosti)
%
% Izhodna podatka:
%  p    vrednosti interpolacijskega polinoma v tockah iz seznama x
%  F    tabela, ki vsebuje shemo deljenih diferenc (v prvem stolpcu so
%       funkcijske vrednosti, v prvi vrstici pa koeficienti
%       interpolacijskega polinoma v Newtonovi obliki)

k = length(X)-1;

if nargin < 4
    % interpolacija funkcijskih vrednosti
    n = k;
    T = X;
    F = [fX' [diff(fX)./diff(X) 0]' NaN(n+1,n-1)];
else
    % interpolacija funkcijskih vrednosti in vrednosti odvodov
    n = 2*k+1;
    T = zeros(1,n+1);
    F = NaN(n+1);
    T([1:2:n 2:2:n+1]) = [X X]';
    F([1:2:n 2:2:n+1],1) = [fX fX]';
    F([1:2:n 2:2:n-1],2) = [dfX diff(fX)./diff(X)]';
end

% izracun sheme deljenih diferenc (od tretjega stolpca dalje)
for j = 3:n+1
    for i = 1:n-j+2
        F(i,j) = (F(i+1,j-1) - F(i,j-1))/(T(i+j-1) - T(i));
    end
end

% izracun vrednosti polinoma s prilagojenim Hornerjevim postopkom
px = newhorner(F(1,:),T,x);

end