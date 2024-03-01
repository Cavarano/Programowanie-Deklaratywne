/*
Zmienne z małej litery!
jarosz(X) nie je miesa
niepali(X) nie pali
czyta(X). czyta książki
sport(X). uprawia sport
*/
jarosz(ola).
jarosz(ewa).
jarosz(jan).
jarosz(pawel).
niepali(ola).
niepali(ewa).
niepali(jan).
czyta(ola).
czyta(iza).
czyta(piotr).
sport(ola).
sport(jan).
sport(piotr).
sport(pawel).

lubi(ola,X):- jarosz(X), sport(X).
lubi(ewa,X):- niepali(X), jarosz(X).
lubi(iza,X):- czyta(X).
lubi(iza,X):- niepali(X), sport(X).
lubi(jan,X):- sport(X).
lubi(piotr,X):- sport(X), jarosz(X).
lubi(piotr,X):- czyta(X).
lubi(pawel,X):- jarosz(X), sport(X), czyta(X).


przyjaciel(X,Y):- lubi(X,Y), lubi(Y,X), X\==Y.