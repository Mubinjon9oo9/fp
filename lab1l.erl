-module(lab1l).
-export([zad1/0, zad2/0, zad3/0]).

zad1() ->
    hd(hd(tl(hd(hd(tl([1, [[2, ['*']], 3, 4, 5]])))))).


zad2() ->
	[tl(hd(tl(tl([[d], e, [a, b], c])))), 
    hd(hd(tl(tl([[d], e, [a, b], c])))),
	hd(tl(hd(tl(tl([[d], e, [a, b], c])))))].
	

zad3() ->
	[1 | [[[2|[3|[4|[]]]]|[]] | [5|[]]]].
