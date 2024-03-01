% lubi(X,Y) - X lubi Y.

lubi(marta, wino).
lubi(marta, mandarynki).
lubi(marta, tenis).
lubi(marta, kwiaty).

lubi(piotr, wino).
lubi(piotr, banany).
lubi(piotr, tenis).

lubi(jan, X):- lubi(piotr, X).

lubi(ania, X):- lubi(marta, X), lubi(jan, X).

% 9 klauzul - 9 linijek kodu, 7 reguł - 7 definicji zmiennej, 2 relacje - 2 definicje z relacją, 1 wyrażenie lubi.

rzecz(wino).
rzecz(mandarynki).
rzecz(banany).
rzecz(kwiaty).
rzecz(jablko).