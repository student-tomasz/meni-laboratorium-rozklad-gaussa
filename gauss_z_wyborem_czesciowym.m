function [ P, L, U ] = gauss_z_wyborem_czesciowym( A )

N = length(A);
P = eye(N);

for k = 1:N-1
    % element glowny
    [c, p] = max(abs(A(k:N, k)));
	p = p + k - 1;
    
    % zamiana wierszy
    tmp = A(k, :);
    A(k, :) = A(p, :);
    A(p, :) = tmp;
	tmp = P(k, :);
    P(k, :) = P(p, :);
    P(p, :) = tmp;
	
    % wyznaczenie pierwszej kolumny podmacierzy
    for i = k+1:N
		A(i, k) = A(i, k) / A(k, k);
    end
    
    % dopelnienie Schura
	for j = k+1:N
		for i = k+1:N 
			A(i, j) = A(i, j) - A(i, k)*A(k, j);
		end
    end
    
    % wyciagniecie L i U z A po operacjach
    L = tril(A, -1) + eye(N);
    U = triu(A);
end

end

