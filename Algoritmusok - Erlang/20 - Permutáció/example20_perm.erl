-module (example20_perm).
-export ([perm/1]).
perm ( []) ->
        [[]];
perm (Lista) ->
        [[H|T] || H <- Lista, T <- perm (Lista-- [H])].