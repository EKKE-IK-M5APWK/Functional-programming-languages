-module (example07_orfeltetel).
-export ( [max/2]).
max (X, Y) when X > Y ->
       X;
max (X, Y) when Y > X ->
       Y.