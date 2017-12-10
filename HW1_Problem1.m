[all, normalized, denormalized] = P(5, 4, -5, 5);


ratio_denormalized = length(denormalized) / length(all)

smaller_than_pi = sum(pi > normalized)


A = [];
for i=1:length(all)
   if abs(all(i) - pi) < 1;
        A = [A, all(i)];
   end
end

diff_sum = 0;
for j=1:length(A)-1
    diff_sum = diff_sum + A(j + 1) - A(j);
end

average_diff = diff_sum / (length(A) - 1)

pos = 0;
for j=1:length(all)
    if (pos == 0) & (all(j) > pi);
        pos = j - 1;
    end
end

first_smaller = all(pos)
first_greater = all(pos + 1)

diff_smaller = pi - first_smaller;
diff_greater = first_greater - pi;

float_pi = 0;
if diff_smaller > diff_greater
    float_pi = first_greater
else
    floar_pi = first_greater
end    




    