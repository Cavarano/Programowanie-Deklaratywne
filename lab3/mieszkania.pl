mieszka(ola, dworcowa).
mieszka(piotr, dworcowa).
mieszka(karol, dworcowa).
mieszka(ania, ogrodowa).
mieszka(pawel, ogrodowa).
mieszka(kamil, irysowa).
mieszka(gosia, irysowa).
mieszka(marcin,X):-mieszka(ola,X).
sasiad(X,Y):- mieszka(X,Z), mieszka(Y,Z), X\==Y.
% 9 klauzul, 2 definicje relacji - sasiad(), mieszka(), 7 faktów, 2 reguły(marcin z olą).