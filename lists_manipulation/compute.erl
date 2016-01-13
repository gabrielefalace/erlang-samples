-module(compute).
-export([prod/1]).

% Computing the product of elements of a list.

prod([]) -> 0;
prod(L) -> product(L, 1).

% reads the result
product([], Acc) -> Acc;
product([H|T], Acc) -> product(T, H*Acc).