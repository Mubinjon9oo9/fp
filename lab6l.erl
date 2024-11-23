-module(lab6l).
-export([reduce2/3]).


reduce2(_, [], A) -> 
    A;
reduce2(G, [H | T], A) -> 
    NewA = G(A, H),
    reduce2(G, T, NewA).