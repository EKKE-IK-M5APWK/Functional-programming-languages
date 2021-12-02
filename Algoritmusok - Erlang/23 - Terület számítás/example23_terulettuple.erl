-module (example23_terulettuple).
-export ([terulet/1]).
terulet ({negyzet, X}) ->
        X * X;
terulet ({teglalap, X, Y}) ->
       X * Y;
terulet ({kor, R}) ->
        3.14159 * R * R.