-module(lister).
-export([double/1]).

% public functions

% given a list of numbers, it returns a list with each number doubled.
double([]) -> [];
double(List) -> d(List, []).

% internal functions

d([], Result) -> lists:reverse(Result);
d([H|T], Result) -> d(T, [ 2*H | Result]).