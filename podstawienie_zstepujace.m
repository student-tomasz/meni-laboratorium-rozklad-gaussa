function [ y ] = podstawienie_zstepujace( L, b, P )

N = length(L);
b = P * b;
y = zeros(N, 1);

for i = 1:N
    y(i) = (b(i) - sum(y(1:i).*L(i, 1:i)')) / L(i, i);
end

end
