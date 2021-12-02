-module (example15_listasum2).
-export ([lista/2]).
lista (Acc, [H|T]) ->
    Acc0 = Acc + H,
    lista (Acc0, T);
lista (Acc, []) ->
    Acc.