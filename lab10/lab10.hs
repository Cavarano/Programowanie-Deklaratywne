--GENERATORY

--[2*x|x<-[1..5]] = [2,4,6,8,10]
--[y'mod'3|y<-[5..10] = [2,0,1,2,0]
--[a*b|(a,b)<-[(1,2),(2,3),(3,4)]] = [2,6,12]
--[(x,y)|x<-[1,2],y<-[3,4]] = [(1,3),(1,4),(2,3),(2,4)
--[x|x<-[1..12],y<-[1..12],x*y==12]
--[x|x<-[-5,2,3,-2],x>0]

--KOLEJNY GENERATOR MOZE ZALEZEC OD POPRZEDNIEGO
--[(x,y)|x<-[1..3],y<-[x..3]] = [(1,1),(1,2),(1,3),(2,2),(2,3),(3,3)] TAKI PRZYKLAD NA KOLOSIE!
--[x*y|x<-[1,3..6],y<-[x..5]] = [1,2,3,4,5,9,12,15,25]
--[x+y|x<-[5,3..0],y<-[1..x]] = [6,7,8,9,10,4,5,6,2]
--[(x,y)|x<-[1,5..10],y<-[x..9]] = [(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(5,5),(5,6),(5,7),(5,8),(5,9),(9,9)]\

--DEFINICJA Z KWALIFIKATOREM
kwadrat_lista::[Int]->[Int]
kwadrat_lista xs=[x*x|x<-xs]
--x<-xs podstawiamy kolejne elementy liczby xs [x:t] to samo co [x:xs]


lista_mniejszao2::[Int]->[Int]
lista_mniejszao2 xs=[x-2|x<-xs]

lista_razy5::[Int]->[Int]
lista_razy5 xs=[x*5|x<-xs]

--MAP - FUNKCJA MAPUJACA (aplikuje funkcję do każdego elem. listy)
--funkcja mnożąca kazdy eem listy przez 2
timestwo x=2*x
listtimestwo::[Int]->[Int]
listtimestwo xs = map timestwo xs

mno2 x=x-2
limno2::[Int]->[Int]
limno2 xs = map mno2 xs

kw x=x*x
kwl::[Int]->[Int]
kwl xs = map kw xs

--Utrwalenie do kolosa funkcja na 3 sposoby !!!!
--lista_wiekszao1
--a. def rekurencyjna
lista_wiekszao1a::[Int]->[Int]
lista_wiekszao1a []=[]
lista_wiekszao1a (x:xs)=(x+1):(lista_wiekszao1a xs)

--b. z kwantyfikatorem
lista_wiekszao1b::[Int]->[Int]
lista_wiekszao1b xs=[x+1|x<-xs]

--c. z map
wiekszao1 x = x+1
lista_wiekszao1c xs = map wiekszao1 xs

--alternatywa przy pomocy if then else
alternatywa::(Bool,Bool)->Bool
alternatywa(p,q)=if p==False && q==False else True

alternat(p,q)
  |p==False && q==False = False
  |otherwise = True




