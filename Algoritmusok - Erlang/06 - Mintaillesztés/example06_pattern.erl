-module (example06_pattern).
-export ( [patterns/1]).
patterns (A) ->
       case A of
            {add, B, C} -> B + C;
            {mul, B, C} -> B * C;
            {inc, B} -> B + 1;
            {dec, B} -> B - 1;
            _ -> {error, A}
       end.