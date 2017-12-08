function [all, normalized, denormalized] = P(b, t, L, U )
%return all, normalized and denormalized numbers represented in P(b, t, L, U)

A = 0;
for j=1:t
    for k = 1:length(A(j,:))
        for i = 1:b
            A(j+1,(k-1)*b + i) = A(j,k) + (i - 1) * b^(-j);
        end
    end
end

norm = A(t+1,b^(t-1)+1:end);
denorm = A(t+1,1:b^(t-1));

denormalized = [- b^L * fliplr(denorm(2:end)),b^L * denorm];

rez_norm = [];
for p=L:1:U
    rez_norm = [rez_norm, b^p * norm];
end

normalized = [-1 * fliplr(rez_norm), rez_norm];
all = [-1 * fliplr(rez_norm),- b^L * fliplr(denorm(2:end)),b^L * denorm ,rez_norm];

end

