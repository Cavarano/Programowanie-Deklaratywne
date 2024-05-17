abs::Float->Float
abs x=if x<0 then (-x) else x

min::Float->Float->Float
min x y= if x<y then x else y


abs2 x
 |x<0 =(-x)
 |otherwise =x

min2 x y
 |x<y =x
 |otherwise =y
{-
sgn:Float->Float
sgn x= if x>0 then 1 else if x==0 then 0 else (-1)
-}
sgn2 x
 |x<0 =(-1)
 |x==0 =0
 |otherwise =1

albo_albo::(Bool,Bool)->Bool
case (p,q) of (True,Truke)->False
              (True,False)-> True
              (False,Truke)-> True
              (False,False)-> False

albo_albo2::(Bool,Bool)->Bool
albo_albo2(p,q)=if p==q then False else True

albo_albo3(p,q)
 |n==g =False
 |otherwise =True

albo_albo4::(Bool,Bool)->Bool
albo_albo4 (not P&&Q) || (p0&&not q)

row::(Bool,Bool)->Bool
row(p,q)=if p==q then True else False

row1::(Bool,Bool)->Bool
case (p,q) of (True,Truke)->True
              (True,False)-> False
              (False,Truke)-> False
              (False,False)-> True

row2::(Bool,Bool)->Bool
row2(p,q) p&&q || (not p&&not q)

row3(p,q)
 |n==g =True
 |otherwise =False



--rozmiar::Integer --Haskell
rozmiar = 5

--f(x)=2*x
razy_dwa::Num a=>a->a
razy_dwa x = 2*x

--g(x)=x*x
--kwadrat :: Num a=>a->a --Haskell
--kwadrat :: Integer -> Integer --mój typ
kwadrat x = x*x

Ord - klasa typów dla których zdefiniowane jest porównywanie
compare - porównuje a argumenty i zwraca wartość LT,GT,EQ przy pomocy strażników

compare::Ord a=>a->a->Ordering
compare x y
 |x<y =LT
 |x==y =EQ
 |otherwise =GT

compare::Ord a=>a->a->Ordering
compare x y =if x>y then GT else if x==y then EQ else LT
