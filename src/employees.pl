:- use_module(library(csv)).
:- use_module(library(apply)).
:- use_module(library(lists)).
:- [api].
:-[positions].

:- dynamic employee/4.


listEmployees:-
        findall([Name, Phone, Position], employee(_, Name, Phone, Position), EmployeesList),
        (length(EmployeesList, 0)
                -> write('Nao ha funcionarios atualmente empregados na empresa');
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

insertIntoEmployee:-
        write_ln('================= Cadastro novo funcionario ================='),
        nl,
        write_ln("Insira a matricula do funcionario: "),
        read(EmployeeId),
        write_ln("Insira o nome do funcionario: "),
        read(EmployeeName),
        write_ln("Insira o telefone do funcionario: "),
        read(EmployeePhone),
        write_ln("Insira o cargo do funcionario: "),
        read(EmployeePosition),
        insertInto('employee', [EmployeeId, EmployeeName, EmployeePhone, EmployeePosition], _),
        write_ln("Funcionario cadastrado com sucesso.").


updateEmployee:-
        write_ln("Insira a matricula do funcionario:"),
        read(UpdateEmployeeID),
        findall([UpdateEmployeeID, Name, Phone, Position], employee(UpdateEmployeeID, Name, Phone, Position), EmployeeInfo),
        nth0(3, EmployeeInfo, OldPosition),
        write(OldPosition),
        (length(EmployeeInfo, 0)
            -> write('O funcionario não esta cadastrado.'));
            findall(SeniorPosition, position(_, OldPosition, SeniorPosition), _),
                retract(employee(UpdateEmployeeID, Name, Phone, OldPosition)),
                assert(employee(UpdateEmployeeID, Name, Phone, SeniorPosition)),
            write_ln('O funcionario foi promovido com sucesso.').
        


fireEmployee:- 
        write_ln("Insira a matricula do funcionario:"),
        read(FireEmployeeID),
        write_ln("Insira o nome do funcionario:"),
        read(FireEmployeeName),
        (removeFrom('employee', [FireEmployeeID, FireEmployeeName, _, _], _)
            -> write('O funcionario "'), write(FireEmployeeName), write_ln('" foi demitido.');
            write('O funcionario "'), write(FireEmployeeName), write_ln('" não esta cadastrado.')).


printEmployeeList([]).	
printEmployeeList([H|T]):- printEmployeeItem(H), write_ln(';'), printEmployeeList(T).


printEmployeeItem([]).
printEmployeeItem([T]):- write(T).
printEmployeeItem([H|T]):- write(H), write("   -   "), printEmployeeItem(T).