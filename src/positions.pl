:- use_module(library(csv)).
:- use_module(library(apply)).
:

:- dynamic position/3.


listPositionsHierarchy:-
        findall([Position, SeniorPosition], position(_, Position, SeniorPosition), PositionsList),
        printPositionsList(PositionsList), nl, nl.

printPositionsList([]).	
printPositionsList([H|T]):- printItem(H), write_ln(';'), printList(T).

printPositionsItem([]).
printPositionsItem([T]):- write(T).
printPositionsItem([H|T]):- write(H), write(" responde a "), printPositionsItem(T).