:- use_module(library(csv)).
:- use_module(library(apply)).
:

:- dynamic position/3.


listPositionsHierarchy:-
        findall([Position, SeniorPosition], position(_, Position, SeniorPosition), PositionsList),
        printList(PositionsList), nl, nl.

printList([]).	
printList([H|T]):- printItem(H), write_ln(';'), printList(T).

printItem([]).
printItem([T]):- write(T).
printItem([H|T]):- write(H), write(" responde a "), printItem(T).