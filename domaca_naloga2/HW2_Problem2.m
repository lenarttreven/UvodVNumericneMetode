close all
f = @(x) x .* sin(x);
df = @(x) sin(x) + x.* cos(x);


A = zeros(11, 4);
for i=1:11
   A(i,:) = [((i-1)/5)^3, ((i-1)/5)^2, ((i-1)/5)^1, 1];
end

b = zeros(11,1);
for i=1:11
    b(i) = f((i - 1)/5);
end

% Sedaj re?ujemo predolo?en sistem Ax = b
p = A\b;
p1 = A(1:5,:)\b(1:5);
p2 = A(7:11,:)\b(7:11);

x = linspace(0, 2);

plot(x, polyval(p, x))
hold on 
plot(x, f(x))
hold on
plot(x, polyval(p1, x))
hold on 
plot(x, polyval(p2, x))
hold on 


A1 = A(1:5,:);
b1 = b(1:5);

A2 = A(7:11,:);
b2 = b(7:11);

% Imamo predolocen sistem: [A1, 0; 0, A2][x1; x2] = [b1;b2] pri omejitvah

C1 = [A(6,:); 3 2 1 0];
d1 = [f(1); df(1)];

% se dodaten pogoj: C = [C1, 0; 0, C1][x1; x2] = [d1;d1]

AA = [A1, zeros(size(A1, 1), size(A2, 2)); zeros(size(A2, 1), size(A1, 2)), A2];
CC = [C1, zeros(size(C1)); zeros(size(C1)), C1];
bb = [b1; b2];
dd = [d1; d1];

S = [AA' * AA, CC'; CC , zeros(size(CC, 1),size(CC, 1))];
u  = [AA' * bb ; dd];
x1 = S\u;

p3 = x1(1:4);
p4 = x1(5:8);

plot(x, polyval(p3, x))
hold on 
plot(x, polyval(p4, x))
hold on 









