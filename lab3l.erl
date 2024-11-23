-module(lab3l).
-export([zad1/2, zad2/2]).

zad1(X, B) ->
    case abs(X) of
        AbsX when AbsX > B ->
            math:pow(2, X - B) - math:pow(3, B);
        AbsX when AbsX < B ->
            math:pow(2, X) + math:pow(3, B);
        _ ->
            1
    end.

zad2(X, A) ->

    case lists:member(A, X) of
        true -> 
            [Element - 1 || Element <- X]; 
        false -> 
            X
    end.
