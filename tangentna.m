function [x,X,k] = tangentna(g,dg,x0,tol,N)


if ~isa(tol,'function_handle')
    tol = @(X) length(X) > 1 && abs(X(end)-X(end-1)) < tol;
end

X = x0;
k = 0;
while ~tol(X) && k < N
    X(k+2) = X(k+1) - g(X(k+1))/dg(X(k+1));
    k = k+1;
end
x = X(k+1);

end

