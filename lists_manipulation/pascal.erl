-module(pascal).
-export([triangle/1]).


% public

triangle(NumRows) -> triangle([[0,1,0]], 1, NumRows).

% internals
generateRow(OldLine) -> generateRow(OldLine, 0, []).
generateRow([], 0, Result) -> [0 | Result];
generateRow([H|T], LastProcessed, Result) -> generateRow(T, H, [H+LastProcessed | Result]).

triangle(List, Count, NumRows) when Count > NumRows -> lists:reverse(List);
triangle(List, Count, NumRows) ->
	[PreviousRow|_] = List,
	triangle([generateRow(PreviousRow)| List] , Count+1, NumRows).