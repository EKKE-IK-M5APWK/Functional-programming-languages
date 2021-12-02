-module(elements).
-export([double/1,convert/1,convertX/2, lista/2, lista/1]).

%%(1, 2, 3, 4, 5]
%%[{capetown, {f, 20}}, {Moscow, {c, 23}}]
lista(L) ->
   lista(0, L).
lista(Osszeg, [Elem | TheRest]) ->
   lista(Osszeg + Elem, TheRest);
lista(Osszeg, []) ->
   Osszeg;
lista(Osszeg , _) ->
   Osszeg.

%% Taple {1, 2} pl. {A , B} = {', 2}.
%% f(A) - felszabadítja az A válotzót a kapcsolattól és új értéket kaphat.
%% Atomok csak saját magukra illeszkednek.

convertX(A,B) ->
    {A * 2, B * 2}.

double(X) ->
    X * 2.

%%convert(D::integer(), atom()) -> real() | error::error()
convert({D, inch}) -> 
    D / 2.54;
convert({D, cm}) ->
    D * 2.54;
%%HF átváltás km és miles között
convert({D, km}) ->
    D / 0.62137;
convert({D, mi}) ->
    D * 0.62137;
convert({D, _}) ->
    D;
convert(_) ->
    bad_parameter.



