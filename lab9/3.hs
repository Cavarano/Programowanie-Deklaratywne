--funkcje wyznaczaja pierwszy drugi i trzeci element trójki uporządkowanej
first::(a,b,c)->a
first(x,_,_)=x
second::(a,b,c)->b
second(_,y,_)=y
third::(a,b,c)->c
third(_,_,z)=z

sprawdz::Int->String
sprawdz x
 |x<0 ="Liczba mniejsza od 0"
 |x>10 ="Liczba wieksza od 10"
 |otherwise ="liczba z przedzialu od 0 do 10"

--dla 2 arg zwraca wartosc LT,GT,EQ
--Ord - klasa typow dla ktorych zdefiniowana jest 
compare::Ord a=>a->a->Ordering
compare x y
 |x<y =LT
 |x==y =EQ
 |otherwise =GT

pierwiastki::Float->Float->Float->String
pierwiastki a b c
 |b*b-4*a*c<0 ="brak pierw"
 |b*b-4*a*c>0 ="dwa pierw"
 |otherwise ="jeden pierw"

----------------------------------listy----------------------------------

-- (3+4*5:4:[6,[2],3])!!length [2,3,4] = 
-- (3+20:4[6,[2],3])!!length [2,3,4] =
-- (23:4:[6,[2],3])!!length [2,3,4] =
-- (23:[4,6,[2],3])!!length [2,3,4] =
-- ([23,4,6,[2],3])!!length [2,3,4] =
-- ([23,4,6,[2],3])!!length 3 =
-- [2] - zwraca element o indeksie 3 z listy (lista złożona z 2)

-- (reverse[5,2,1,7]++tail[2,3])!! head[1,1,3] = 
-- ([7,1,2,5]++tail[2,3])!! head[1,1,3] = 
-- ([7,1,2,5]++[3])!! head[1,1,3] = 
-- ([7,1,2,5,3])!! head[1,1,3] = 
-- ([7,1,2,5,3])!! 1 = 
-- 1 - zwraca element o indeksie 1 z listy (1)

-- (head[2,3,5]:[5,6,[7,8]])!! 3 =
-- ([2]:[5,6,[7,8]])!! 3 =
-- ([2,5,6,[7,8]])!! 3 =
-- [7,8] - zwraca element o indeksie 3 z listy (lista z 7,8)

-- (1:tail[2,3,7]++reverse[3,4,6]) =
-- (1:[7]++reverse[3,4,6]) =
-- (1:[7]++[6,4,3]) =
-- ([1,7]++[6,4,3]) =
-- [1,7,6,4,3] - zwraca listę

-- (2*5-3:6:[2,[4,5]])!! head [3] = 
-- (10-3:6:[2,[4,5]])!! head [3] = 
-- (7:6:[2,[4,5]])!! head [3] = 
-- (7:[6,2,[4,5]])!! head [3] = 
-- ([7,6,2,[4,5]])!! head [3] = 
-- ([7,6,2,[4,5]])!! [3] = 
-- [4,5]

-- (reverse[3,4,5]++head[[3],4,8])!! 1 =
-- (reverse[3,4,5]++[3])!! 1 =
-- (reverse[3,4,5,3])!! 1 =
-- 4

--kwadrat_lista rekurencyjna
kwadrat x=x*x
kwadrat_lista::[Int]->[Int]
kwadrat_lista []=[]
kwadrat_lista (x:xs)=(kwadrat x):(kwadrat_lista xs)

mn_o1 x=x-1
lista_mniejsza_o1::[Int]->[Int]
lista_mniejsza_o1 []=[]
lista_mniejsza_o1 (x:xs)=(mn_o1 x):(lista_mniejsza_o1 xs)

pom3 x=x*3
pomnozo3::[Int]->[Int]
pomnozo3 []=[]
pomnozo3 (x:xs)=(pom3 x):(pomnozo3 xs)


dlg::[Int]->Int
dlg []=0
dlg (h:t)= 1+(dlg t)


