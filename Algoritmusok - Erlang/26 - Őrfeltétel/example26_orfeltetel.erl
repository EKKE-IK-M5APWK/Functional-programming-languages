-module (example26_orfeltetel).
-export ([orfeltetel/1]).

orfeltetel (X) when (X == 0) or (1/X > 2) ->
        X;
orfeltetel (X) when (X == 0) orelse (1/X < 1) ->
        X - 1.