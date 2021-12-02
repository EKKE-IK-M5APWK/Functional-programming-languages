-module (example08_feltetel).
-export ([feltetel/2]).
feltetel (X, Y) ->
    if
       X < Y ->
           Y;
        %else ágként működik
        true ->
            X
end.