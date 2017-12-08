% 1. doma?a naloga 
% Problem 2

f =  @(x) 5*cos(x-exp(x))-x;
df = @(x) -5 * sin(x-exp(x)) *(1-exp(x)) - 1;

tol = @(X)abs(f(X(end))) < 10^(-10);


priblizki = -1:8;
rezultati = zeros(10, 7);

for i=-1:8
    [x_s, X_s, k_s] = steffensen(f, i, tol, 1000);
    [x_t, X_t, k_t] = tangentna(f,df, i, tol, 1000);
    [x_se, X_se, k_se] = sekantna(f, i,i + 0.1 , tol, 1000);
    rezultati(i + 2,:) = [i x_s k_s x_s k_s x_se k_se];
end

rezultati

