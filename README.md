# Treść zadania

> Za pomocą zaimplementowanej przez siebie w języku MATLAB metody rozkładu LU z
> wyborem elementu głównego oraz metody wstecznego podstawienia wstępującego i
> zstępującego, proszę rozwiązać następujący układ równań:
>
>     A * x = b
>
> gdzie:
>
>     A = [
>       2, 1, 1, 3, 2;
>       1, 2, 2, 1, 1;
>       1, 2, 9, 1, 5;
>       3, 1, 1, 7, 1;
>       2, 1, 5, 1, 8;
>     ]
>     b = [ 1, 2, 4, 5, 3 ]';

# Teoria

Zaimplementowany został rozkład Gaussa z częściowym wyborem elementu głównego.
Wykonywany jest rozkład macierzy `A`:

    P * A = L * U

Gdzie: `L` i `U` są macierzami trójkątnymi; `P` jest macierzą permutacji
wierszy wykonanych w ramach wyboru elementu głównego.

Po rozkładzie wykonywane są kolejno podstawienia wsteczne zstępujące i
wstępujące dla równań:

    L * y = P * b
    U * x = y

W efekcie wyliczony zostaje szukany wektor `x`.

# Uruchomienie

W katalogu ze skryptami należy wywołać

    > run

# Wykonanie

Algorytm wykonuje rozkład w miejscu. Macierze `L` i `U` zostają wydzielone, dla
przejrzystości kolejnych skryptów.

Wzorowano się na notatkach z
[wazniak.mimuw.edu.pl](http://wazniak.mimuw.edu.pl/index.php?title=MN05).
Znaleziono błąd w pseudo-kodzie metody Gaussa. Przy wyliczaniu podmacierzy
elementy pierwszej kolumny powinny być otrzymywane w ilorazie z elementem z
diagonali macierzy wejściowej.
