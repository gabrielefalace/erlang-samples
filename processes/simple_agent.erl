-module(simple_agent).
-export([respond/1]).

respond(Count) ->
    NewCount = receive X -> io:format("At iteration: ~p Received Message: ~p~n", [Count,X]),
    	Count + 1
    end,
    respond(NewCount).