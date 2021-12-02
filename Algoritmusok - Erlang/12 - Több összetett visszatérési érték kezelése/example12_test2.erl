-module (example12_test2).
-export ([teszt/0]).
osszeg ({A, B}) ->
        A + B;
osszeg ( [A, B]) ->
        A + B;
osszeg (_) ->
        0.
teszt () ->
    io:format ("~w~n~w~n", [osszeg ({10,20}), osszeg ([10, 20]) ]).