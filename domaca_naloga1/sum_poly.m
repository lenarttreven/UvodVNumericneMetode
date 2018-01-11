function p3 = sum_poly(p1, p2)
% sestje dva polinoma

p3 =[zeros(1, size(p1,2)-size(p2,2)) p2] + [zeros(1, size(p2,2)-size(p1,2)) p1];

end

