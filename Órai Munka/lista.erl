-module(lista).
-export([hossz/1,hossz/2,hossza/1,idojaras/1]).

%{
%    {bp,20},
%    {eger,9},
%    {debrecem,12}
%}

idojaras(DB, [{V,C} | Varosok]) ->
        io:format("~w városban ~w fok van jelenleg~n", [V,C]),
        idojaras(Varosok);
idojaras(DB, []) ->
    io:form("A jelentés feldolgozása lefutott mind a ~w városra", [3]),
    end_of_process.

hossz([_ | V]) ->
    1 + hossz(V);
hossz([[]]) ->
    0.
hossza(L) when is_list(L) ->
    hossz(0,L);
hossza(_) ->
    bad__arg.
hossz(DB, [_ | Vege]) ->
    hossz(DB + 1,Vege);
hossz(DB, []) ->
    DB.