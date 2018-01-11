function [y, korak]=Jacobi(f, h, x0, delta, maxsteps)

x0 = x0;
x1 = f(x0, h);
korak=1;

while norm(x1-x0,'inf')>delta && korak < maxsteps
   korak=korak+1;           						 
   x0=x1;
   x1=f(x0, h);   
end   
y=x1;