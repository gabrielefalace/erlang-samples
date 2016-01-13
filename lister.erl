-module(lister).
-export([double/1]).

% public functions

double([]) -> [];
double(List) -> d(List, []).

% internal functions

d([], Result) -> lists:reverse(Result);
d([H|T], Result) -> d(T, [ 2*H | Result]).