# TRABALHO 01:  AchaPatas
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Renato Peres de Souza: renatoperesdesouza@hotmail.com<br>
Thiago Correa: thiagocsdossantos@gmail.com<br>
Eduardo Alves: eduardomatanob@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto do banco de dados <AchaPatas> 
<br>e motivação da escolha realizada. <br>

> O sistema "AchaPatas" tem como objetivo ajudar pessoas que querem adotar animais a encontrarem casas de adoção cadastradas, com os usuários entrando com pedidos de adoção.
 

### 3.MINI-MUNDO<br>

> Os dados dos animais serão nome, raça, data de nascimento e tipo (gato, cão, pássaro, entre outros...). Os usuários serão cadastrados por cpf, nome, email, telefone, endereço e senha do sistema. As casas de adoção serão cadastradas por email, nome, telefone, endereço e senha do sistema. Cada animal pertence a uma casa de adoção, e uma casa de adoção pode ter vários animais. Os animais poderão ser adotados por um pedido de adoção às casas, que serão aceitos ou recusados. Cada pedido de adoção terá o seu código, uma mensagem, um status de aceito/não aceito, a data de solicitação e a data de conclusão. Um usuário pode fazer vários ou nenhum pedido de adoção.

### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

Login de Usuário

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/Login%20usu%C3%A1rio.png?raw=true "Title")

Login de Casa de Adoção

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/Login%20Casa%20de%20Ado%C3%A7%C3%A3o.png?raw=true "Title")

Cadastro de Animal

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/cadastro%20de%20animal.png?raw=true "Title")

Cadastro de Casa de adoção

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/cadastro%20de%20casa%20de%20ado%C3%A7%C3%A3o.png?raw=true "Title")

Cadastro de usuário

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/cadastro%20de%20usu%C3%A1rio.png?raw=true "Title")

Animais disponíveis ao usuário

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/Animais%20dispon%C3%ADveis%20ao%20usu%C3%A1rio.png?raw=true "Title")

Pedido de adoção para uma casa

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/pedido%20de%20ado%C3%A7%C3%A3o%20para%20uma%20casa.png?raw=true "Title")

Pedidos feito por um usuário

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/pedidos%20feitos%20por%20um%20usu%C3%A1rio.png?raw=true "Title")
<br>

![Arquivo PDF do Protótipo Balsamiq feito para o sistema de adoção de animais - AchaPatas](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/Prot%C3%B3tipo%20-%20AchaPatas.pdf?raw=true "AchaPatas")
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A Empresa DevCom precisa inicialmente dos seguintes relatórios:
* Relatório que mostre o nome de cada supervisor(a) e a quantidade de empregados supervisionados.
* Relatório relativo aos os supervisores e supervisionados. O resultado deve conter o nome do supervisor e nome do supervisionado além da quantidade total de horas que cada supervisionado tem alocada aos projetos existentes na empresa.
* Relatorio que mostre para cada linha obtida o nome do departamento, o valor individual de cada salario existente no  departamento e a média geral de salarios dentre todos os empregados. Os resultados devem ser apresentados ordenados por departamento.
* Relatório que mostre as informações relacionadas a todos empregados de empresa (sem excluir ninguém). As linhas resultantes devem conter informações sobre: rg, nome, salario do empregado, data de início do salario atual, nomes dos projetos que participa, quantidade de horas e localização nos referidos projetos, numero e nome dos departamentos aos quais está alocado, informações do historico de salário como inicio, fim, e valores de salarios antigos que foram inclusos na referida tabela (caso possuam informações na mesma), além de todas informações relativas aos dependentes. 
>> ##### Observações: <br> a) perceba que este relatório pode conter linhas com alguns dados repetidos (mas não todos). <br>  b) para os empregados que não possuirem alguma destas informações o valor no registro deve aparecer sem informação/nulo. 
* Relatório que obtenha a frequencia absoluta e frequencia relativa da quantidade de cpfs únicos no relatório anterior. Apresente os resultados ordenados de forma decrescente pela frequencia relativa.

 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
    
### 5.MODELO CONCEITUAL<br>
    A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 3 e o Máximo 5.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)       
    C) Principais fluxos de informação/entidades do sistema (mínimo 3). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados 
    D) Qualidade e Clareza
        Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas (Aplicar os conceitos de normalização abordados).   
        
![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/mapa_conceitual.png?raw=true "Modelo Conceitual")
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
	TABELA USUARIO: Armazena informções relarivas ao usuário (pessoa física) do sistema.
		id: Campo que identifica o usuário na tabela (chave primária).
		id_cidade: Campo que identifica a cidade que o usuário pertence (chave estrangeira da tabela CIDADE).
		nome: Campo que contém o nome do usuário.
		telefone: Campo que armazena um telefone de contato do usuário.
		email: Campo que armazena um email para o login do usuário.
		senha: Campo que contém a senha para o login do usuário.
		cpf: Campo que armazena o número de Cadastro de Pessoa Física do usuário.
		bairro: Campo que armazena o bairro onde reside o usuário.
		numero: Campo que contém o número da casa do usuário.
		desc_logradouro: Campo que armazena o nome do logradouro.
		logradouro: Campo que guarda o tipo do logradouro.
	
	TABELA ESTADO: Armazena os estados que estão inseridos no banco de dados.
		id: Campo que idetifica o estado (chave primária).
		nome: Campo que armazena a UF do estado.
		
	TABELA CIDADE: Armazena as informações relativas as cidades inseridas no banco de dados.
		id: Campo que idetifica a cidade (chave primária).
		id_estado: Campo que identifica o estado a que a cidade pertence (chave estrangeira da tabela ESTADO).
		nome: Campo que contém o nome da cidade.
	
	TABELA PEDIDO_ADOCAO: Armazena as informações dos pedidos de adoção feitos pelo usuário a casa de adoção.
		id: Campo que identifica o pedido (chave primária).
		id_status: Campo que identifica a situação do pedido (chave estrangeira da tabela STATUS).
		id_usuario: Campo que identifica a quem é o usuário que fez o pedido (chave estrangeira da tabela USUARIO).
		id_casa_adocao: Campo que identifica a qual casa de adoção o pedido foi feito (chave estrangeira da tabela CASA_ADOCAO).
		id_animal: Campo que identifica qual animal foi pedido pelo usuário (chave estrangeira da tabela ANIMAL).
		mensagem: Campo que contém a mensagem do usuário para a casa de adoção pedindo algum animal.
		data_solicitacao: Campo que possui a data de solicitação do pedido de adoção.
		data_conclusao: Campo que possui a data de conclusão do pedido de adoção.
	
	TABELA STATUS: Armazena a situação de um pedido de adoção.
		id: Campo que identifica a situação de um pedido (chave primária).
		descrição: Campo que contém a situação de um pedido de adoção.
	
	TABELA CASA_ADOCAO: Armazena as informações referentes a casa de adoção.
		id: Campo que identifica a casa de adoção (chave primária).
		id_cidade: Campo que identifica a cidade que a casa de adoção pertence (chave estrangeira da tabela CIDADE).
		email: Campo que armazena um email para o login da casa de adoção.
		senha: Campo que contém a senha para o login da casa de adoção.
		bairro: Campo que armazena o bairro onde fica a casa de adoção.
		numero: Campo que contém o número da casa de adoção.
		desc_logradouro: Campo que armazena o nome do logradouro da casa de adoção.
		logradouro: Campo que guarda o tipo do logradouro da casa de adoção.
		
	TABELA ANIMAL: Armazena as informações referentes aos animais cadastrados pela casa de adoção.
		id: Campo que identifica o animal (chave primária).
		id_casa_adocao: Campo que identifica a casa de adoção (chave estrangeira da tabela CASA_ADOCAO).
		id_raca: Campo que identifica a raça do animal (chave estrangeira da tabela RACA).
		id_raca: Campo que identifica o tipo de animal (chave estrangeira da tabela TIPO).
		nome: Campo que contém o nome do animal.
		
	TABELA RACA: Armazena informações referentes a raça do animal.
		id: Campo que identifica a raça de um animal (chave primária).
		nome: Campo com o nome da raça.
		
	TABELA TIPO: Armazena informações referentes ao tipo do animal.
		id: Campo que identifica o tipo de um animal (chave primária).
		descricao: Campo que contém qual o tipo do animal (ex:cachorro, gato, pássaro, etc).


### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/modelo_logico.png?raw=true "Modelo Lógico")

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 

       CREATE TABLE USUARIO 
       (
        id serial,
        id_cidade int,
        nome varchar(100),
        telefone int,
        email varchar(100),
        senha varchar(25),
        cpf int,
        bairro varchar(50),
        numero int,
        logradouro varchar(100),
        desc_logradouro varchar(100),
        primary key(id)
      );

      CREATE TABLE ESTADO
      (
       id serial,
       nome char(2),
       primary key(id)
      );

      CREATE TABLE CIDADE
      (
       id serial,
       id_estado int,
       nome varchar(100),
       primary key(id),
       foreign key(id_estado) references estado(id)
      );
      alter table usuario add constraint fk_id_cidade foreign key(id_cidade) references cidade(id);

      CREATE TABLE CASA_ADOCAO(
       id serial,
       id_cidade int,
       email varchar(100),
       senha varchar(25),
       nome varchar(100),
       bairro varchar(100),
       numero int,
       logradouro varchar(100),
       desc_logradouro varchar(100),
       primary key(id),
       foreign key(id_cidade) references cidade(id)
      );

      CREATE TABLE RACA
      (
       id int,
       nome varchar(100),
       primary key(id)
      );

      CREATE TABLE TIPO
      (
       id int,
       descricao varchar(25),
       primary key(id)
      );

      CREATE TABLE STATUS
      (
       id int,
       descricao varchar(10),
       primary key(id)
      );

      CREATE TABLE ANIMAL(
       id serial,
       nome varchar(100),
      data_nascimento date,
       id_casa_adocao int,
       id_raca int,
       id_tipo int,
       CONSTRAINT fk_id_casa_adocao
       FOREIGN KEY(id_casa_adocao) 
       REFERENCES CASA_ADOCAO(id),
       CONSTRAINT fk_id_raca
       FOREIGN KEY(id_raca) 
       REFERENCES RACA(id),
       CONSTRAINT fk_id_tipo
       FOREIGN KEY(id_tipo) 
       REFERENCES TIPO(id),
       primary key(id)
      );

      CREATE TABLE PEDIDO_ADOCAO(
       id serial,
       mensagem varchar(255),
       data_solicitacao date,
       data_conclusao date,
       id_status int,
       id_usuario int,
       id_casa_adocao int,
       id_animal int,
       PRIMARY KEY (id),
       CONSTRAINT fk_pedido_usuario
       FOREIGN KEY(id_usuario) 
       REFERENCES USUARIO(id),
       CONSTRAINT fk_pedido_casa_adocao
       FOREIGN KEY(id_casa_adocao)
       REFERENCES CASA_ADOCAO(id),
       CONSTRAINT fk_pedido_animal
       FOREIGN KEY(id_animal)
       REFERENCES ANIMAL(id),
       CONSTRAINT fk_status
       FOREIGN KEY(id_status)
       REFERENCES STATUS(id)
      );




        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
       
    INSERT INTO ESTADO (nome) VALUES
    ('ES'),
    ('SP'),
    ('MG'),
    ('RJ'),
    ('RS');

    INSERT INTO CIDADE (id_estado, nome) VALUES
    (1, 'Serra'),
    (1, 'Vitória'),
    (1, 'Vila Velha'),
    (1, 'Domingos Martins'),
    (1, 'São Mateus'),
    (1, 'Muniz Freire'),
    (2, 'São Paulo'),
    (3, 'Belo Horizonte'),
    (4, 'Rio de Janeiro'),
    (5, 'Porto Alegre');

    INSERT INTO USUARIO (id_cidade, nome, telefone, email, senha, cpf, bairro, numero, logradouro, desc_logradouro) VALUES
    (1, 'Eduardo', 27994321, 'duduzinhodoserrao@email.com', 'dudu921', 11111, 'Jardim Carapina', 197, 'Conceição do Castelo', 'Rua'),
    (3, 'Thiago', 27998029, 'thithisabetudo@email.com', 'rbdforever', 22222, 'São Torquato', 191, 'Américo Buaiz', 'Avenida'),
    (2, 'Renato', 27980251, 'renatinlanches@email.com', 'merendagratis', 55555, 'Maria Ortiz', 293, '24 de maio', 'Rua'),
    (4, 'Wildemberg', 27995328, 'evoluwildejesus@email.com', 'evoluiudemais', 88888, 'Arace', 912, 'Afrânio Peixoto', 'Avenida'),
    (5, 'Patricia', 27993426, 'patricinhadointerior@email.com', 'dinheiro982', 77777, 'Vintem', 561, ' das Espatodias', 'Alameda'),
    (6, 'Ana', 28990298, 'aninhagameplays@email.com', 'gameboy17', 99999, 'Menino Jesus', 831, 'Fernando Ferrari', 'Avenida'),
    (7, 'Bruna', 11989325, 'brunadalapa@email.com', 'neymarzete02', 66666, 'Água Rasa', 341, '9 de Julho', 'Avenida'),
    (8, 'Fernanda', 31992435, 'fefe22silveira@email.com', 'fernandinhatop21', 33333, 'Buritis', 455, 'Olegario Maciel', 'Avenida'),
    (9, 'José', 21992430, 'zezedosertao@email.com', 'zezeelulu', 44444, 'Botafogo', 555, 'Alvaro Chaves', 'Rua'),
    (10, 'Leonardo', 55992142, 'tartaruganinja12@email.com', 'splinter72', 00000, 'Aberta dos Morros', 980, 'Lopo Gonçalves', 'Rua');

    INSERT INTO CASA_ADOCAO (id_cidade, email, senha, nome, bairro, numero, desc_logradouro, logradouro) VALUES
    (1, 'petfelizao@email.com', 'm3ad0ta', 'Pet Feliz', 'America', 167, 'Laranjeiras', 'Avenida'),
    (2, 'prondogadocao@email.com', 'An1m4l', 'PronDog', 'Bento Ferreira', 342, 'Amenófis de Assis', 'Rua'),
    (3, 'casalvorada@email.com', 'casalvoradapet12', 'Casa Alvorada', 'Alvorada', 121, 'Netuno', 'Rua'),
    (7, 'geretrizpet234@email.com', 'gegepet19', 'Geretriz', 'Água Rasa', 301, 'Três Rios', 'Rua'),
    (7, 'cadabrapet@email.com', 'Alakapet1', 'AbraCadabra', 'Sé Bela Vista', 296, 'Galvão Bueno', 'Rua'),
    (8, 'petrural97@email.com', 'Queijominas', 'Pet Rural', 'Buritis', 62, 'Olegário Maciel', 'Avenida'),
    (9, 'parisadocao@email.com', 'Torrepets90', 'La Paris', 'Botafogo', 347, 'Álvaro Chaves', 'Rua'),
    (9, 'kinoplexcasa@email.com', 'Casadospetsrj171', 'Kinoplex Pets', 'Barra da Tijuca', 100, 'Seu Madruga', 'Avenida'),
    (10, 'chimarraodospets@email.com', 'ervamate97', 'Chimarrao dos Pets', 'Aberta dos Morros', 766, 'Lupo Gonçalves', 'Rua');

    INSERT INTO TIPO (id, descricao) VALUES
    (1, 'Cachorro'),
    (2, 'Gato'),
    (3, 'Pássaro'),
    (4, 'Peixe'),
    (5, 'Jabuti'),
    (6, 'Porquinho-da-Índia'),
    (7, 'Cobra'),
    (8, 'Coelho');

    INSERT INTO RACA (id, nome) VALUES
    (1, 'Pinscher'),
    (2, 'Canário'),
    (3, 'Persa'),
    (4, 'Piranga'),
    (5, 'Yorkshire'),
    (6, 'Rex'),
    (7, 'Pelo Curto Inglês'),
    (8, 'Milho'),
    (9, 'Anão Holandês'),
    (10, 'Dogue Alemão')
    (11, 'Palhaço');

    INSERT INTO ANIMAL (id_raca, id_tipo, data_nascimento, nome, id_casa_adocao) VALUES
    (1, 1, '2020-11-22', 'Zequinha', 1),
    (2, 3, '2020-09-28', 'Piu-piu', 2),
    (3, 2, '2018-12-13', 'Garfield', 3),
    (11, 4, '2020-06-07', 'Marlin', 3),
    (4, 5, '2014-09-22', 'Oogway', 5),
    (5, 1, '2017-03-17', 'Snoopy', 9),
    (6, 6, '2019-10-12', 'Malaquias', 1),
    (7, 2, '2016-04-02', 'Tea-Lord', 8),
    (8, 7, '2018-05-29', 'Python', 6),
    (9, 8, '2015-11-16', 'Pernalonga', 2),
    (10, 1, '2012-02-19', 'Scooby-Doo', 5);

    INSERT INTO STATUS (id, descricao) VALUES
    (1, 'Pendente'),
    (2, 'Recusado'),
    (3, 'Aceito');

    INSERT INTO PEDIDO_ADOCAO (mensagem, id_status, data_solicitacao, data_conclusao, id_usuario, id_casa_adocao, id_animal) VALUES
    ('Olá, Gostaria de adotar o Garfield.', 1, '2021-02-08', null, 1, 3, 3),
    ('Olá, Gostaria de adotar o Piu-piu', 1, '2021-02-07', null, 2, 2, 2),
    ('Olá, Gostaria de adotar o Pernalonga', 3, '2017-02-16', '2017-02-23', 8, 2, 10),
    ('Olá, Gostaria de adotar o Marlin', 2, '2020-09-10', '2020-09-11', 9, 3, 4),
    ('Olá, Gostaria de adotar o Marlin', 3, '2020-10-01', '2020-10-03', 1, 3, 4),
    ('Olá, Gostaria de adotar o Python', 2, '2019-04-03', '2019-04-06', 3, 6, 9),
    ('Olá, Gostaria de adotar o Oogway', 1, '2020-12-25', null, 7, 5, 5),
    ('Olá, Gostaria de adotar o Garfield', 1, '2021-02-08', null, 6, 3, 3),
    ('Olá, Gostaria de adotar o Malaquias', 3, '2019-12-02', '2019-12-02', 10, 1, 7);





### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

SELECT * FROM USUARIO;

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/SELECT_USUARIO1.png?raw=true "Select usuario Parte 1")

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/SELECT_USUARIO2.png?raw=true "Select usuario Parte 2")

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/SELECT_USUARIO3.png?raw=true "Select usuario Parte 3")

SELECT * FROM ANIMAL;

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/SELECT_ANIMAL.png?raw=true "Select animal")

SELECT * FROM CASA_ADOCAO;

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/SELECT_CASA_ADOCAO.png?raw=true "Select casa_adocao")

SELECT * FROM CIDADE;

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/SELECT_CIDADE.png?raw=true "Select cidade")

SELECT * FROM ESTADO;

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/SELECT_ESTADO.png?raw=true "Select estado")

SELECT * FROM PEDIDO_ADOCAO;

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/SELECT_PEDIDO_ADOCAO.png?raw=true "Select pedido_adocao")

SELECT * FROM RACA;

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/SELECT_RACA.png?raw=true "Select raca")

SELECT * FROM TIPO;

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/SELECT_TIPO.png?raw=true "Select tipo")

SELECT * FROM STATUS;

![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/SELECT_STATUS.png?raw=true "Select status")

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


