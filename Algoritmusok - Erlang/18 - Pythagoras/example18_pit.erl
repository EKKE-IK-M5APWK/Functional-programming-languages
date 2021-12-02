-module (example18_pit) .
-export ([pit/1]).
pit (N) ->
         [ {A,B,C} ||
              A <- lists:seq (1,N),
              B <- lists:seq (1, N),
              C <- lists:seq (1, N),
            A+B+C =< N,
            A*A+B*B == C*C
         ].