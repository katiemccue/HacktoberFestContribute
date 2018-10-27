-module(quicksort).
-export([qs/1]).
 
qs([]) -> [];
qs([H|T]) ->
   qs([ Y || Y <- T, Y < H]) ++ [H] ++ qs([ Y || Y <- T, Y >= H]).
