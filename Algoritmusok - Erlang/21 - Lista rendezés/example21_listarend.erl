-module (example21_listarend).
-export ([rend/1]).
rend ([Head|T]) ->
        rend ( [X || X <- T, x < Head]) ++
        [Head] ++
        rend ([X || X <- T, x >= Head]);
rend ([]) ->
        [].