-module (example27_write).
-export ([say_something/2]).

say_something (What, 0) ->
       done;
    
say_something (What, Times) ->
        io:format ("~p~n", [What]),
       say_something (What, Times - 1).