:- ['positions'].

main:-
        csv_read_file('../db/positions.csv', PositionsRows, [functor(position), arity(3)]),
            maplist(assert, PositionsRows),
        csv_read_file('../db/employees.csv', EmployeesRows, [functor(employee), arity(4)]),
            maplist(assert, EmployeesRows),
        menu().


menu :- 
    write_ln("\n\n"),
    write_ln('====================== Empresa Ficticia ======================'),
    nl,
    write_ln('1 - Listar hierarquia de cargos'),
    write_ln('2 - Gerenciar funcionario'),
    % listar todos funcionarios e pedir um nome, ir para um novo menu com o nome do funcionario e listar opcoes de editar(promover)/demitir(remover) o funcionario
    write_ln('0 - Sair'),
    write_ln(''),
    read(Option),
    write_ln("\n"),
    execute(Option).


execute(Option) :-  Option == 1, listPositionsHierarchy, menu;
                    Option == 2, menuEmployee;
                    Option == 0, exitProgram.


menuEmployee:-
    write_ln("\n\n"),
    write_ln('====================== Menu Funcionario ======================'),
    nl,
    write_ln('1 - Listar funcionarios'),
    write_ln('2 - Buscar por funcionario'),
    write_ln('3 - Promover funcionario'),
    write_ln('4 - Demitir funcionario'),
    write_ln('0 - Voltar ao menu principal'),
    write_ln(''),
    read(OptionEmployee),
    write_ln("\n"),
    executeEmployee(OptionEmployee).


executeEmployee(OptionEmployee) :-  
    OptionEmployee == 1, menuEmployee;
    OptionEmployee == 2, menuEmployee;
    OptionEmployee == 3, menuEmployee;
    OptionEmployee == 4, menuEmployee;
    OptionEmployee == 0, menu.

exitProgram:-  
%    delete_file('../db/positions.csv'),
%    delete_file('../db/employees.csv'),
%    findall(row(Music, Gen, Ano), music(Music,Gen, Ano) ,MusicList), 
%        csv_write_file('db/musics.csv', MusicList),
%    findall(row(Nome, Art, Ano), album(Nome, Art, Ano) ,AlbumList), 
%        csv_write_file('db/albuns.csv', AlbumList),
    write_ln('Encerrando programa...'),
    halt(0).