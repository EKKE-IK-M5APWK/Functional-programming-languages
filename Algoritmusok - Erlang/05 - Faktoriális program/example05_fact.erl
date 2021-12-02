-module (example05_fact).
-export ([factorial/1]).
factorial (0) ->
        1;
factorial (N) ->
            factorial (N - 1).