-module(lab7l).
-export([find_root/4, horda_worker/5, horda_step/5]).

find_root(F, A, B, Eps) ->
    spawn(fun() -> horda_worker(F, A, B, Eps, self()) end) andalso
    receive_result().

receive_result() ->
    receive
        {result, Root} -> Root
    end.

horda_worker(F, A, B, Eps, Parent) ->
    horda_step(F, A, B, Eps, Parent).

horda_step(F, X0, X1, Eps, Parent) ->
    abs((X1 - F(X1) * (X1 - X0) / (F(X1) - F(X0))) - X1) < Eps andalso
    Parent ! {result, (X1 - F(X1) * (X1 - X0) / (F(X1) - F(X0)))} orelse
    horda_step(F, X1, (X1 - F(X1) * (X1 - X0) / (F(X1) - F(X0))), Eps, Parent).
