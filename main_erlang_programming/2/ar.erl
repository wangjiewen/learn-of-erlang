-module(ar).
-export([area/1]).
-import(math,[sqrt/1]).
-import(math,[pi/0]).

area({square, Side}) ->
	Side * Side;
area({circle, Radius}) ->
	math:pi() * Radius * Radius;
area({triangle, A, B, C}) ->
	S = (A + B + C) / 2,
	math:sqrt(S*(S-A)*(S-B)*(S-C));
area(_Other) ->
	{error, invalid_object}.
