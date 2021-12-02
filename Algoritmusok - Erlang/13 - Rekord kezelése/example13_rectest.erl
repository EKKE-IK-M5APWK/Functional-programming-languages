-module (example13_rectest).
-export ([rec1/0, rec2/0, rec3/3]).
-record (ingatlan, {ar = 120000, megye, hely="Eger"}).
rec1 () ->
    #ingatlan{}.
rec2 () ->
    #ingatlan{ar = 110000, megye="Heves"}.
rec3 (Ar, Megye, Hely) ->
    #ingatlan{ar = Ar, megye = Megye, hely = Hely}.