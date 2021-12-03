-module(masodikfeladat).
-export([listamin/1,listamin/2,listamin/3,interface/1]).

listamin([Head|Tail])  ->
        listamin(Head, Tail).

listamin(Min, [Head|Tail], {Nulla,Nullatolkolonbozo}) when is_integer(Min)  ->
        case Head of
            0 -> Nulla = Nulla + 1;
            Head -> Nullatolkolonbozo = Nullatolkolonbozo + 1
        end;
        case Min < Head of
                true -> listamin(Min, Tail, {Nulla,Nullatolkolonbozo});
                false -> listamin(Head, Tail {Nulla,Nullatolkolonbozo})
        end;

listamin(Min, []) -> 
    Min.

interface([]) ->
    case of !is_list([]) ->
        io:format("hibas_adat").