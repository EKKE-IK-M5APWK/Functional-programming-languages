-module(ora).
-export ([test/1]).
-export([convert_length/1, test2/1]).

test2(A) -> 
    case A of
        1 -> egy;
        2 -> ketto;
        _ -> egyeb
    end.

convert_length(Length) ->
    case Length of
        {centimeter, X} ->
            {inch, X / 2.54};
        {inch, Y} ->
            {cenitmeter, Y * 2.54}
    end.

test (A) ->
    B =
    if
        A == 1 ->
            10;
        A > 1 ->
            20
    end,
B + 2.