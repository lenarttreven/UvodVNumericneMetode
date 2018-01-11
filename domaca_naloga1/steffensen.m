function [x,X,k] = steffensen(g,x0,tol,N)

% Vhodni podatki:
%  g    iteracijska funkcija,
%  x0   zacetni priblizek,
%  tol  toleranca absolutnega ujemanja dveh zaporednih priblizkov ali 
%       funkcija, ki sprejme seznam predhodnih priblizkov in vrne logicno
%       vrednost, ki doloca, ali naj se iteracija ustavi ali ne,
%  N    maksimalno stevilo korakov iteracije.
%
% Izhodni podatki:
%  x    zadnji priblizek izracunan z navadno iteracijo,
%  X    seznam vseh priblizkov izracunanih z navadno iteracijo,
%  k    stevilo opravljenih korakov iteracije.

if ~isa(tol,'function_handle')
    tol = @(X) length(X) > 1 && abs(X(end)-X(end-1)) < tol;
end

X = x0;
k = 0;
while ~tol(X) && k < N
    F = (g(X(k + 1) + g(X(k+1))) - g(X(k+1)))/g(X(k+1));
    X(k+2) = X(k+1) - g(X(k+1))/F;
    k = k+1;
end
x = X(k+1);

end