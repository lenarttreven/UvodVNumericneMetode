function najmanjsa_lastna_vrednost = inverzna_potencna(A, x0, koraki)
    A = inv(A);
    for i=1:koraki
        z = A * x0;
        x0 = z / norm(z, 2);
    end
    najmanjsa_lastna_vrednost = (x0' * A * x0) / (x0' * x0);
end

