-module(main_parallel).
-export([start/0, run_lab6l/0, run_lab7l/0]).

start() ->
    spawn(main_parallel, run_lab6l, []) andalso
    spawn(main_parallel, run_lab7l, []).

run_lab6l() ->
    io:format("Работа 6: ~p~n", [lab6l:reduce2(fun(Y, Z) -> 10 * Y + Z end, [1,2,3], 0)]).

run_lab7l() ->
    io:format("Работа 7: ~p~n", [lab7l:find_root(fun(X) -> X * X - 4 end, 1, 3, 0.0001)]).