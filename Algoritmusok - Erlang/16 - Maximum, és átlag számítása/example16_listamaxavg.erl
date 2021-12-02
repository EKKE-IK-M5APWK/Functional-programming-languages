-module(example16_listamaxavg).
-export([max/1, avg/1]).

max(List) ->
    lists:max(List).

avg(List) ->
    LList = [Num || Num <- List,
        is_integer(Num), Num =/= 0],
        NData = lists:foldl(
            fun(X,Sum) -> X + Sum end, 0, List),
        NData / length(LList).