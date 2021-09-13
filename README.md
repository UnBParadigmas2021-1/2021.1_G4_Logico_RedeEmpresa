# Rede Empresarial

**Disciplina**: FGA0210 - PARADIGMAS DE PROGRAMAÇÃO - T01 <br>
**Nro do Grupo**: 04<br>
**Paradigma**: Lógico<br>

## Alunos

| Matrícula  | Aluno                          |
| ---------- | ------------------------------ |
| 17/0103200 | Gabriel Alves Hussein          |
| 17/0011119 | Geraldo Victor Alves Barbosa   |
| 18/0102613 | Ítalo Fernandes Sales de Serra |
| 18/0103431 | João Victor Valadão de Brito   |
| 18/0020251 | João VItor Lopes de Farias     |

## Sobre

Consiste em um software desenvolvido em Prolog, para armazenar e gerenciar funcionários de uma empresa. A aplicação levou em consideração os cargos mais comuns no ramo empresarial, que podem ser encontradas no arquivo "positions.csv", localizado na pasta "db" (Database). Algumas das funcionalidades incluem:

- Listar hierarquia de cargos
- Listar funcionários empregados
- Listar funcionários empregados em um cargo
- Buscar um funcionário
- Cadastrar um novo funcionário
- Promover um funcionário
- Demitir um funcionário

## Screenshots

Adicione 2 ou mais screenshots do projeto em termos de interface e/ou funcionamento.

## Instalação

**Linguagens**: Prolog<br>
**Tecnologias**: SWI Prolog<br>


Para instalar a plataforma no Linux é recomendado o procedimento via terminal, seguindo as linhas de comando abaixo:

```sudo apt-get install software-properties-common```

```sudo apt-add-repository ppa:swi-prolog/stable```

Recomenda-se utilizar o comando abaixo para atualizar os pacotes (opcional):

```sudo apt-get update```

Em seguida para instalar o ```SWI Prolog``` rode o comando:

```sudo apt-get install swi-prolog```

Essa instalação permite o uso das linhas de comando do SWI Prolog para auxiliar no desenvolvimento e entendimento do código. 

Foi disponibilizado ao final deste documento, os links para instalação do Prolog e do SWI Prolog para o Sistema Operacional Windows.

## Execução

Após as instalações necessárias para rodar o projeto e clonado o repositório, abra o terminal na raiz do projeto. Navegue até a pasta "src", com o comando:

```cd src```

Então execute o seguinte comando para iniciar a aplicação:

```swipl main.pl```

## Uso

Com o SWI Prolog em execução, execute o comando:

```main.```

A partir desse ponto, uma interface de "Menu" apresentará disponível no terminal e o usuário é livre para escolher como deseja prosseguir.

Observação: sempre após qualquer linha de comando em prolog, deve ser finalizada com "." (ponto final).

## Vídeo

Adicione 1 ou mais vídeos com a execução do projeto.

## Outros

O programa não funcionará corretamente caso o nome dos arquivos e/ou o local deles sejam alterados, ou caso as instruções de instalação não sejam seguidas. Caso novos cargos desejem ser adicionados, ou retirados, basta modificar o arquivo "positions.csv", localizado na pasta "db" (Database).

## Fontes

[WIN PROLOG](https://winprolog.software.informer.com/5.0/) - Para instalação do prolog no Sistema Operacional Windows. </br>
[SWI PROLOG](https://www.swi-prolog.org/download/devel) - Para instalação do SWI prolog de acordo com o sistema operacional do seu computador. </br>
[Prologfy](https://github.com/UnBParadigmas2020-2/2020.2_G1_Logico_Prologfy) - Para a realização deste projeto, usamos este trabalho do semeste passado como base. </br>