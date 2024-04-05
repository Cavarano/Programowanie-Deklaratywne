/*
	uzgadnianie listy:

1. [H|T] i [a,b,c]
H=a, T=[b,c]

2. [a] [X1, X2|T]
nie można uzgodnić, ponieważ pierwsza lista nie ma drugiego elementu

3. [[a]] [H|T]
H=[a] T=[]

4. [X,f(b),c] [g(Z),Y,Z]
X=g(Z) f(b)=Y c=Z 
X=g(c)

5. [H|T] [[a],[b],[c]]
H=[a] T=[[b],[c]]

6. [1,2] [X,Y|T]
X=1 Y=2 T=[]

7. [X,f(b),c] [g(Z),Z,Y]
X=g(Z) Z=f(b) Y=c
X=g(f(b))

8. [f(a),Z,f(c)] [Z,b,Y]
Z=f(a) Z!=b nie możemy uzgodnić b i f(a).
*/
%-----------------------------------------------------------
%	Predykat kwadrat listy
% warunek zakończenia rekurencji

kwadrat_listy([],[]).	
kwadrat_listy([H1|T1],[H2|T2]):-
	H2 is H1*H1,
	kwadrat_listy(T1,T2).

%-----------------------------------------------------------
%	Predykat podwojenie
% L1=L2 gdy L1=[a,b] L2=[a,a,b,b]

podwojenie([],[]).
podwojenie([H1|T1],[H1,H1|T2]):-
	podwojenie(T1,T2).


%-----------------------------------------------------------
%	Predykat lista mniejsza o 2
% spełniony gdy el L2 sa el L1 pomniejszonymi o 2

mniejsza_o_dwa([],[]).
mniejsza_o_dwa([H1|T1],[H2|T2]):-
	H2 is H1-2,
	mniejsza_o_dwa(T1,T2).
 

%-----------------------------------------------------------
%	Predykat lista razy 5
% spełniony gdy el L2 sa el L1 pomnożonymi przez 5.


lista_razy_5([],[]).
lista_razy_5([H1|T1],[H2|T2]):-
	H2 is H1*5,
	lista_razy_5(T1,T2).


%-----------------------------------------------------------
%	Predykat liczba elem
% spełniony gdy n jest liczba elementow L

liczba_elem([],0).
liczba_elem([H|T],N):-
	liczba_elem(T,M),
	N is M+1.


%-----------------------------------------------------------
%	Predykat element E od L
% spełniony gdy E jest elementem L.

element(E,[E|T]).
element(E,[H|T]):-
	element(E,T).


%-----------------------------------------------------------


