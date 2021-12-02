-module (example19_pit2).
-export ([pit/1]).
pit (N) ->
         [ {A, B,C} ||
            A <- lists:seq (1, N-2),
            B <- lists:seq (A+1,N-1),
            C <- lists:seq (B+1, N),
           A+B+C =< N,
           A*A+B*B == C*C
        ].