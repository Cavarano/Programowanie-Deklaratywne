% L1 L2 L3 gdy L3 jest konkatenacja L1 i L2 (Połączenia)
konkat([],L,L).
konkat([H|T],L2,[H|T3]):-
	konkat(T,L2,T3).

%predykat odwrotna lista L1 L2, gdy L2 jest odwróceniem L1
odwrotna_lista([],[]).
odwrotna_lista([H|T1],L):-
	odwrotna_lista(T1,T2),
	konkat(T2,[H],L).

%predykat maplist P, L (,L1,L2..), zachodzi gdy predykat P zachodzi dla kazdego elementu L
%lista_dodatnia(L) spelniony gdy wszystkie elementy są dodatnie
%zdefiniujmy predykat pomocniczy

dodatni(X):-X>0.

lista_dodatnia(L):-
	maplist(dodatni,L).

% wszystkie elementy wieksze od X.
wiekszy_od(X,Y):-Y>X.
wiekszy_od_lista(X,L):- maplist(wiekszy_od(X),L).

% wieksza_lista(L1,L2) gdy elementy L2 sa wieksze od odpowiednich el. listy L1.
wieksze(X,Y):-Y>X.
wieksza_lista(L1,L2):- maplist(wieksze,L1,L2).

%Razy dwa L2 = L1*2
razy2(X,Y):- Y is X*2.
razy2_lista(L1,L2):- maplist(razy2,L1,L2).

%kwadrat lista
kwadrat(X,Y):- Y is X*X.
kwadrat_lista(L1,L2):- maplist(kwadrat,L1,L2).

%lista mniejsza o 2
mniejsze_o2(X,Y):- Y is X-2.
lista_mniejsza_o2(L1,L2):- maplist(mniejsze_o2,L1,L2).
