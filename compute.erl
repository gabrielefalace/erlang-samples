-module(compute).
-export([prod/1]).

prod([]) -> 0;
prod(L) -> product(L, 1).

product([], Acc) -> Acc;
product([H|T], Acc) -> product(T, H*Acc).