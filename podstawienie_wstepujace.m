function [ x ] = podstawienie_wstepujace( U, y )

N = length(U);
x = zeros(N, 1);

for i = N:-1:1
    x(i) = (y(i) - sum(x(i:N).*U(i, i:N)')) / U(i, i);
end

end

