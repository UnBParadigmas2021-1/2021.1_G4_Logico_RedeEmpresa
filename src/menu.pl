
menu :- consult(cargos), nl, nl,
        write(' *** Selecione uma opcao ***'), nl, nl,
        write('1 - Listar hierarquia de cargos'), nl,
        write('2 - Listar funcionarios'), nl,
        write('3 - Promover funcionario'), nl,
        write('0 - Sair'), nl,
        write(''),read(Option),
        nl, executar(Option).

executar(Option) :- Option == 1, getDescricaoCursos, menu;
                    Option == 2, funcionario, menu;
                    Option == 3, promover, menu;
                    Option == 0, true.

getDescricaoCursos() :-
  listaCargos(PB),
  getDescListaCargos(PB).

getDescListaCargos([]).
getDescListaCargos([X|Y]) :-
  cargo(X, R),
  atomic_list_concat([X, R], ' - ', RD), nl,
  write(RD),
  getDescListaCargos(Y).

hierarquia :- write('Listando cargos...'), nl, nl.

funcionario :- write('Listando funcionarios...'), nl, nl.

promover :- write('Promovendo funcionario...'), nl, nl.