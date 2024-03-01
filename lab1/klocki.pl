% Tworzymy program klocki1, gdzie na(x,y) oznacza, że x leży bezpośrednio na klocku y.
% Baza wiedzy o układzie klocków.

na(c,a).
na(c,b).
na(d,c).
pod(X,Y):- na(Y,X).
miedzy(X,Y,Z):- na(X,Y), pod(X,Z).
miedzy(X,Y,Z):- na(X,Z), pod(X,Y).
/*
Alternatywna wersja.
miedzy(X,Y,Z):- na(X,Y), nad(Z,X).
miedzy(X,Y,Z):- na(X,Z), nad(Y,X).
*/

/*
Informacje o budowie programu:
Program składa się z 3 klauzul.
Program zawiera 1 definicję relacji.
Jest to relacja na/2.
Definicja relacji na/2 składa się z 3 klauzul, które są faktami.

reguła pod(x,y) oznacza, że x leży pod y.

miedzy(x,y,z) - klocek x lezy pomiedzy y a z.
*/