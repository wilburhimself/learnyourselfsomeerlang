-module(functions).
-export([greet/2, head/1, second/1, same/2, right_age/1, insert/2, beach/1]).

greet(male, Name) ->
  io:format("Hello, Mr. ~s!~n", [Name]);
greet(female, Name) ->
  io:format("Hello, Mrs. ~s!~n", [Name]);
greet(_, Name) ->
  io:format("Hello, ~s~n", [Name]).

head([H|_]) -> H.

second([_,X|_]) -> X.

same(X,X)  ->
  true;
same(_,_) ->
  false.

right_age(X)
  when X >= 16, X =< 104 ->
    true;
right_age(_) ->
  false.

insert(X,[]) ->
  [X];
insert(X,Set) ->
  case lists:member(X,Set) of
    true -> Set;
    false -> [X|Set]
  end.

beach(Temperature) ->
  case Temperature of
    {celsius, N} when N >= 20, N =< 45 ->
      'favorable';
    {kelvin, N} when N >= 293, N =< 318 ->
      'scientifically favorable';
    {farenheit, N} when N >= 68, N =< 113 ->
      'favorable in america';
    _ ->
      'avoid the beach'
  end.
