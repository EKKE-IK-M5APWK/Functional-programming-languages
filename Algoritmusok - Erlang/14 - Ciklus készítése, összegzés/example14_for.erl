-module (example14_for).
-export ([for/3]).
for (I, MAX, SUM)
    when I < MAX + 1 ->
        for (I + 1, MAX, SUM + I);
for (I, MAX, SUM) ->
    SUM.