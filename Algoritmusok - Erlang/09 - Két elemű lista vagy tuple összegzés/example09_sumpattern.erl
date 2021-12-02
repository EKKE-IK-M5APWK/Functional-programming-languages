-module (example09_sumpattern).
-export ([osszeg/1]).
osszeg ({A, B}) ->
        A + B;
osszeg ( [A, B]) ->
        A + B;
osszeg (_) ->
        0.