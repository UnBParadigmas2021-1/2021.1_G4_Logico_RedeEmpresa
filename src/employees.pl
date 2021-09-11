:- use_module(library(csv)).
:- use_module(library(apply)).
:- [api].
:- dynamic employee/4.


listEmployees:-
        findall([Name, Phone, Position], employee(_, Name, Phone, Position), EmployeesList),
        (length(EmployeesList, 0)
                -> write('Nao ha funcionarios atualmente empregados na empresa'),
                   write('Os funcionarios que estao atualmente empregados na empresa sao '),
                   nl,
                   write_ln('Matricula   -   Nome   -   Telefone'),
                   printEmployeeList(EmployeesList)),
        write_ln("\n").


listEmployeesByPosition:-
        write_ln("Insira o cargo: "),
        read(EmployeesPosition),
        findall([Id, Name, Phone], employee(Id, Name, Phone, EmployeesPosition), EmployeesPositionList),
        (length(EmployeesPositionList, 0)
                -> write('Nao ha funcionarios atualmente empregados no cargo '),
                   write(EmployeesPosition);
                   write('Os funcionarios que estao atualmente empregados no cargo '),
                   write(EmployeesPosition),
                   write_ln(' sao: '),
                   nl,
                   write_ln('Matricula   -   Nome   -   Telefone'),
                   printEmployeeList(EmployeesPositionList)),
        write_ln("\n").


lookForEmployee:-
        write_ln("Insira o nome do funcionario: "),
        read(NameEmployee),
        findall([Id, NameEmployee, Phone, Position], employee(Id, NameEmployee, Phone, Position), EmployeeData),
        (length(EmployeeData, 0)
                -> write('Nao ha funcionarios atualmente empregados com o nome '),
                   write(NameEmployee);
                   write_ln('O(s) funcionario(s) atualmente empregado(s) com o nome informado e/sao'),
                   nl,
                   write_ln('Matricula   -   Nome   -   Telefone   -   Cargo'),
                   printEmployeeList(EmployeeData)),
        write_ln("\n").


printEmployeeList([]).	
printEmployeeList([H|T]):- printEmployeeItem(H), write_ln(';'), printEmployeeList(T).


printEmployeeItem([]).
printEmployeeItem([T]):- write(T).
printEmployeeItem([H|T]):- write(H), write("   -   "), printEmployeeItem(T).