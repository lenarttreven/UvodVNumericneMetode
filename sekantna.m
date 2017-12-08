function [x,X,k] = sekantna(g,x0,x1,tol,N)


if ~isa(tol,'function_handle')
    tol = @(X) length(X) > 1 && abs(X(end)-X(end-1)) < tol;
end

X = [x0, x1];
k = 1;
while ~tol(X) && k < N
    X(k+2) = X(k+1) - g(X(k+1))* (X(k+1) - X(k))/(g(X(k+1))-g(X(k)));
    k = k+1;
end
x = X(k+1);

end

