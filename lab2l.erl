-module(lab2l).
-export([zad1/2, zad2/2]).


zad1(X, B) ->
	if
		abs(X) > B ->
			Y = math:pow(2, X-B) - math:pow(3, B),
			Y;
		abs(X) < B ->
			Y = math:pow(2, X) + math:pow(3, B),
			Y;
		abs(X) == B ->
			Y = 1,
			Y
	end.
	
zad2(X,A) ->
	X1 = lists:nth(1,X),
	X2 = lists:nth(2,X),
	X3 = lists:nth(3,X),
	if
		X1 == A ->
			X=[X1-1,X2-1,X3-1],
			X;
		X2 == A ->
			X=[X1-1,X2-1,X3-1],
			X;
		X3 == A ->
			X=[X1-1,X2-1,X3-1],
			X;
	
		true ->
			X
	end.
	