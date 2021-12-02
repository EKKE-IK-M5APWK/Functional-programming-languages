-module (example22_beagyazottrec).
-export ( [demo/0]).
-record (name, {first = "Adam", last = "Erlang"}).
-record (person, {name = #name { }, phone}).
demo () ->
  P = #person {name= #name {first="Roland",last="Erlang"}, phone=693},
  (P#person.name) #name.first.
