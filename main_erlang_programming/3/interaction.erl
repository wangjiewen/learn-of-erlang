-module(interaction).
-export([sum/1]).

sum(Boundary) -> sum_acc(1, Boundary, 0).

sum_acc(Index, Boundary, Sum) when Index =< Boundary -> 
	sum_acc(Index + 1, Boundary, Sum  + Index);
sum_acc(_I, _B, Sum) -> Sum.