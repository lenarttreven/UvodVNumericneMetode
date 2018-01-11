function [k_matrix, matrices] = generate_matrices(A, k)
% vrne zaporedje matrik A_0, ..., A, k
matrices = cell(1, k + 1);
matrices{1} = A;
for i=1:k
    [L, U, P] = lu(matrices{i});
    matrices{i +1} = [L*P*L', L*U; U*L, U'*P*U];
end
k_matrix = matrices{k + 1};
end

