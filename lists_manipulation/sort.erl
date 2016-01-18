-module(sort).
-export([quicksort/1]).

quicksort([]) -> [];
quicksort([H|T]) ->
	Left = [Y || Y <- T, Y<H],
	Right = [Z || Z<-T, Z>H],
	quicksort(Left) ++ [H] ++ quicksort(Right).