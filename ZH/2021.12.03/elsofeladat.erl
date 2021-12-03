-module(elsofeladat).
-export([listamin/1,listamin/2]).

listamin([Head|Tail])  ->
        listamin(Head, Tail).

listamin(Min, [Head|Tail]) when is_integer(Min) and Head =/= 0  ->
        case Min < Head of
                true -> listamin(Min, Tail);
                false -> listamin(Head, Tail)
        end;

listamin(Min, []) -> 
    Min.