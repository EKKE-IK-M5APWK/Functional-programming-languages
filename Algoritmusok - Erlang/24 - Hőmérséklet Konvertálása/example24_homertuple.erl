-module(example24_homertuple).
-export([honcov/2]).

honcov({fahrenheit, Hom},celsius) ->
    {celsius, 5 * (Hom - 32) / 9};

honcov({celsius, Hom}, fahrenheit) ->
    {fahrenheit, 32 * Hom + 9/5};

honcov({X,_}, Y) ->
    {cannot,convert,X,to,Y}.