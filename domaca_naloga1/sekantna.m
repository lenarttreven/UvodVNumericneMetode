function [x,X,k] = sekantna(f,x0,x1,tol,N)


if ~isa(tol,'function_handle')
    tol = @(X) length(X) > 1 && abs(X(end)-X(end-1)) < tol;
end

X = [x0; x1];
k = 1;
fxk = f(X(k));
while ~tol(X) && k < N
    fxkn = f(X(k+1));
    X(k+2) = X(k+1) - (X(k+1)-X(k))/(fxkn-fxk) * fxkn;
    fxk = fxkn;
    k = k+1;
end
x = X(k+1);
X = X(1:k+1);
end

