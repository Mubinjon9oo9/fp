-module(lab5l).
-export([max1/1]).

max1(X) ->
    max1_helper(X, 1).

max1_helper([], Max) ->
    Max;
max1_helper([H | T], Max) when is_list(H) ->
    max1_helper(T, max1_helper(H, Max + 1));
max1_helper([_ | T], Max) ->
    max1_helper(T, Max).