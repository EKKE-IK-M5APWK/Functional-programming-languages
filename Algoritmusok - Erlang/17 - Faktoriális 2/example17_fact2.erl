-module (example17_fact2).
-export ([fact/1]).
fact (N) ->
        factr (N, 1).
factr (0, X) ->
       X;
factr (N, X) ->
        factr (N-1,N*X).