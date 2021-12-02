-module (example04_random).
-export ([sum/2]).
sum (A, B) ->
        io:format("szerintem w-n", [rand:uniform(100)]),
        A + B.
%% az eredeti random fügvény már decripted az általam használt verzióba
