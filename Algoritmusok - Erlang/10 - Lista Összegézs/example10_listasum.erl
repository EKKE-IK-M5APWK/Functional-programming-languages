-module (example10_listasum).
-export ([sum/2]).
sum (Sum, [Head|Tail]) ->
    case Head of
       {A, _} when is_integer (A) ->
            sum (Sum + A, Tail);
        B when is_integer (B) ->
            sum (Sum + B, Tail);
        __ ->
            sum (Sum, Tail)
    end;
sum (Sum, 0) ->
    Sum.