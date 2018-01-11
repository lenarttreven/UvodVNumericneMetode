function najvecja_lastna_vrednost = potencna(A, x0, koraki)
    for i=1:koraki
        z = A * x0;
        x0 = z / norm(z, 2);
    end
    najvecja_lastna_vrednost = (x0' * A * x0) / (x0' * x0);
end

