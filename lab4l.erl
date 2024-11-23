-module(lab4l).
-export([zad1/4, pr1/2, compress1/1, sum/2]).

zad1(A,B,C,D) ->
	List = [A, B, C, D],
	
	L1 = lists:nth(1,List),
	L2 = lists:nth(2,List),
	L3 = lists:nth(3,List),
	L4 = lists:nth(4,List),
	
	List1 = [L2,L3],
	List2 = [[L1],List1],
	List3 = [List2,L4],
	List3.

pr1(N, M) when N > M, N > 0, M > 0 ->
	print_stars(N),
	pr1(N-1, M-1);
pr1(_, _) ->
	ok.

print_stars(0) ->
	io:format("~n");
print_stars(N) when N > 0 ->
	io:format("~s", ["*"]),
	print_stars(N-1).


compress1(X) when is_list(X) ->
	compress_helper(X, []).


compress_helper([], Acc) ->
	lists:reverse(Acc); 
compress_helper([H | T], Acc) ->
	case Acc of
		[] -> 
			compress_helper(T, [H | Acc]); 
		[Last | _] when Last == H -> 
			compress_helper(T, Acc);
		_ -> 
			compress_helper(T, [H | Acc])
	end.

sum(N, X) when N > 0 ->
	X2 = sum(N - 1, X),
	Sum = lists:nth(N, X) + X2,
	Sum;
sum(0, _) -> 
	0.