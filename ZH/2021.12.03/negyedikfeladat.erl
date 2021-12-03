-module(negyedikfeladat).
-export([contains/2,listconcat/2]).

contains([E|V], N) ->
    case E == N of
        true -> true;
        false -> contains(V, N)
    end;
contains([], _) -> false.

listconcat(L, []) -> L;
listconcat(L, [E|V]) ->
    case contains(L, E) of
        false -> listconcat(L ++ [E], V);
        true -> listconcat(L, V)
    end.
