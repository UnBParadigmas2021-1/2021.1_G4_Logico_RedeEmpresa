:- use_module(library(csv)).
:- use_module(library(apply)).
:- [api].
:- dynamic employee/4.


listEmployees:-
        findall([Name, Phone, Position], employee(_, Name, Phone, Position ), EmployeesList),
        printList(EmployeesList), nl, nl.


% listEmployeesByPosition:-
%         write("Insira o cargo: "),
%         read(EmployeesPosition),
%         findall([Name, Phone, Position], employee(_, Name, Phone, Position ), EmployeesList),
%         printList(EmployeesList), nl, nl.


printList([]).	
printList([H|T]):- printItem(H), write_ln(';'), printList(T).


printItem([]).
printItem([T]):- write(T).
printItem([H|T]):- write(H), write(" - "), printItem(T).