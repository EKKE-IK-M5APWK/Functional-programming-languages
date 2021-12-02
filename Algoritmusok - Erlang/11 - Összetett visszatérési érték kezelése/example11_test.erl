-module (example11_test).
-export ([osszeg/2, teszt/0]).
osszeg (A, B) ->
        {A, B, A + B}.
teszt () ->
    io:format ("~w~n", [osszeg (10,20)]).