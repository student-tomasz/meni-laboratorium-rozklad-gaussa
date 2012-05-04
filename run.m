A = [
    2, 1, 1, 3, 2;
	1, 2, 2, 1, 1;
	1, 2, 9, 1, 5;
	3, 1, 1, 7, 1;
	2, 1, 5, 1, 8;
];
b = [ 1, 2, 4, 5, 3 ]';

[P, L, U] = gauss_z_wyborem_czesciowym(A);
y = podstawienie_zstepujace(L, b, P);
x = podstawienie_wstepujace(U, y);

%disp('Wynik: ')
x

%disp('Blad rozkladu: ')
blad_rozkladu = P*A - L*U

%disp('Blad wyniku: ')
blad_wyniku = x - linsolve(A,b)