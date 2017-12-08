% 1. Domaca naloga, Problem 4

% generiramo vseh 5 matrik
A =[0 1; 1 1];
[matrika, matrike] = generate_matrices(A, 5);


%razlicne norme za razlicne matrike
norma1_matrike_A1 = norm(matrike{2}, 1)
norma2_matrike_A2 = norm(matrike{3}, 2)
frob_norma_matrike_A3 = norm(matrike{4}, 'fro')
inf_norma_matrike_A4 = norm(matrike{5}, Inf)


%obcutlivjost matrike A5
obcutljivost_A5 = cond(matrika, 2)
B = matrika;
enke = ones(size(B,1), 1);
y = B * ones(64, 1);
x = B\y;

rel_napaka = norm(x - enke,2) / norm(enke,2)


b = 2;
t = 52;
u = 1/2 *b^(1-t);

u * obcutljivost_A5


