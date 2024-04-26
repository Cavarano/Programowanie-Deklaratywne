--komentarz czcionka consolas!
{-dlugi komentarz
char w apostrofie np 'a'
napisy w cudzyslowiebp;
bool - false 0 true 1
ordering: lt - lessthan
typ dowolny - Num, Eq, Show, Enum
-}
kwadrat::Float->Float
kwadrat x=x*x

razy_dwa:: Num a => a -> a
razy_dwa x = 2*x

sum_kw x y = kwadrat x
	   + kwadrat y

ob_kuli r=let a=4/3
	      sz=r*r*r
	   in a*pi*sz

--pole_kola::Float->Float
--pole_kola r = pi*r^2
--pole_kola r = pi*(K r)
--	    where K r=r*r
--pole_kola r = let kw = r*r
--	      in pi*kr


pole_p::Float->Float->Float->Float
--pole_p a b h= (2*a*b)+(2*a*h)+(2*b*h)
--pole_p a b h= pp+pb
--	   where pp = (2*a*b)
--		 pb = (2*a*h)+(2*b*h)
pole_p a b h=
	    let pp = (2*a*b)
		pb = (2*a*h)+(2*b*h)
	    in pp+pb