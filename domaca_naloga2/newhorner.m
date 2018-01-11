function px = newhorner(a,X,x)
% Opis:
%  newhorner vrne vrednosti polinoma, ki je predstavljen v Newtonovi bazi
%
% Definicija:
%  px = newhorner(a,X,x)
%
% Vhodni podatki:
%  d    seznam koeficientov,
%  X    seznam tock, ki dolocajo Newtonovo bazo,
%  x    seznam tock, v katerih racunamo vrednost polinoma v Newtonovi bazi:
%       a(1) + a(2)*(x-X(1)) + a(3)*(x-X(1))*(x-X(2)) + ... +
%       a(end)*(x-X(1))*(x-X(2))*...*(x-X(end-1))
%
% Izhodni podatek:
%  px   seznam vrednosti polinoma v tockah iz seznama x

b = a(end)*ones(size(x));
for i = length(a)-1:-1:1
    b = a(i) + (x - X(i)).*b;
end
px = b;

end