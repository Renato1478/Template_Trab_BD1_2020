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

> Os dados dos animais serão, obrigatoriamente, nome, raça, data de nascimento e tipo (gato, cão, pássaro, entre outros...). Os usuários serão cadastrados por, obrigatóriamente, cpf, nome, um email, apenas um telefone, endereço e senha do sistema. As casas de adoção serão cadastradas, de forma obrigatória, por um email, nome, apenas um telefone, endereço e senha do sistema. Cada animal pertence a uma casa de adoção, e uma casa de adoção pode ter vários animais. Os animais poderão ser adotados por um pedido de adoção às casas, que serão aceitos ou recusados. Cada pedido de adoção terá o seu código, uma mensagem, um status de aceito, pendente ou não aceito, a data de solicitação e a data de conclusão. Um usuário pode fazer vários ou nenhum pedido de adoção.

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
> O aplicativo AchaPatas precisa inicialmente dos seguintes relatórios:
* Relatório que mostre o nome de cada casa de adoção e a quantidade de pedidos que cada casa no sistema possui.
* Relatório relativo aos tipos de animais e sua demanda (número de pedidos) pelos usuários do sistema.
* Relatório que mostre para cada linha obtida a UF (nome) do estado e a quantidade de usuários naquele estado.
* Relatório que mostre a quantidade de pedidos de adoção por status. Serão apresentados os dados apenas as descrições dos status e a quantidade de pedidos com o mesmo.
* Relatório que mostre a distribuição de pedidos entre todos os animais do sistema. As linhas resultantes devem conter todas as informações sobre o animal, além da quantidade de pedidos que existem relacionados ao mesmo.
>> ##### Observações: <br>perceba que este relatório pode conter linhas com alguns dados repetidos (mas não todos).. 
 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:

    
![Exemplo de Tabela de dados do sistema AchaPatas](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/arquivos/item_4.3_tabela.xlsx?raw=true "Tabela - AchaPatas")
    
    
### 5.MODELO CONCEITUAL<br>       
![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/mapa_conceitual_corrigido.png?raw=true "Modelo Conceitual")
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: Matheus de Souza, Thaís de Souza e Rodrigo Raider
    [Grupo02]: Graziene Martins, Rubens Júnior e Lorhan de Souza

#### 5.2 Descrição dos dados 
	TABELA USUARIO: Armazena informções relarivas ao usuário (pessoa física) do sistema.
		id: Campo que identifica o usuário na tabela (chave primária).
		id_bairro: Campo que identifica a cidade que o usuário pertence (chave estrangeira da tabela CIDADE).
		nome: Campo que contém o nome do usuário.
		telefone: Campo que armazena um telefone de contato do usuário.
		email: Campo que armazena um email para o login do usuário.
		senha: Campo que contém a senha para o login do usuário.
		cpf: Campo que armazena o número de Cadastro de Pessoa Física do usuário.
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
    
    TABELA BAIRRO: Armazena as informações relativas aos bairros inseridos no banco de dados.
		id: Campo que idetifica a bairro (chave primária).
		id_cidade: Campo que identifica a cidade a que o bairro pertence (chave estrangeira da tabela CIDADE).
		nome: Campo que contém o nome do bairro.
	
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
		id_bairro: Campo que identifica a cidade que a casa de adoção pertence (chave estrangeira da tabela CIDADE).
		email: Campo que armazena um email para o login da casa de adoção.
		senha: Campo que contém a senha para o login da casa de adoção.
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
![Alt text](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/images/mapa_logico.png?raw=true "Modelo Lógico")

### 7	MODELO FÍSICO<br>
       CREATE TABLE USUARIO 
       (
        id serial,
        id_bairro int,
        nome varchar(100),
        telefone int,
        email varchar(100),
        senha varchar(25),
        cpf int,
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
      
      CREATE TABLE BAIRRO
      (
       id serial,
       id_cidade int,
       nome varchar(45),
       primary key(id),
       foreign key(id_cidade) references cidade(id)
      );
      alter table usuario add constraint fk_id_bairro foreign key(id_bairro) references bairro(id);
      
      CREATE TABLE CASA_ADOCAO(
       id serial,
       id_bairro int,
       email varchar(100),
       senha varchar(25),
       nome varchar(100),
       telefone int,
       numero int,
       logradouro varchar(100),
       desc_logradouro varchar(100),
       primary key(id),
       foreign key(id_bairro) references bairro(id)
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

![Arquivo SQL de recuperação com drop + create + inserts das tabelas](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/arquivos/inserts.sql?raw=true "Tabela - AchaPatas")

	   DROP table if exists pedido_adocao;
	   DROP table if exists status;
	   DROP table if exists animal;
	   DROP table if exists tipo;
	   DROP table if exists raca;
	   DROP table if exists usuario;
	   DROP table if exists casa_adocao;
	   DROP table if exists bairro;
	   DROP table if exists cidade;
	   DROP table if exists estado;

	   CREATE TABLE USUARIO 
	   (
	    id serial,
	    id_bairro int,
	    nome varchar(100),
	    telefone int,
	    email varchar(100),
	    senha varchar(25),
	    cpf int,
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

	  CREATE TABLE BAIRRO
	  (
	   id serial,
	   id_cidade int,
	   nome varchar(45),
	   primary key(id),
	   foreign key(id_cidade) references cidade(id)
	  );
	  alter table usuario add constraint fk_id_bairro foreign key(id_bairro) references bairro(id);

	  CREATE TABLE CASA_ADOCAO(
	   id serial,
	   id_bairro int,
	   email varchar(100),
	   senha varchar(25),
	   nome varchar(100),
	   telefone int,
	   numero int,
	   logradouro varchar(100),
	   desc_logradouro varchar(100),
	   primary key(id),
	   foreign key(id_bairro) references bairro(id)
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

	INSERT INTO BAIRRO (id_cidade, nome) VALUES
	(1, 'Jardim Carapina'),
	(3, 'São Torquato'),
	(2, 'Maria Ortiz'),
	(4, 'Arace'),
	(5, 'Vintem'),
	(6, 'Menino Jesus'),
	(7, 'Água Rasa'),
	(8, 'Buritis'),
	(9, 'Botafogo'),
	(10, 'Aberta dos Morros');

	INSERT INTO USUARIO (id_bairro, nome, telefone, email, senha, cpf, numero, logradouro, desc_logradouro) VALUES
	(1, 'Eduardo', 27994321, 'duduzinhodoserrao@email.com', 'dudu921', 11111, 197, 'Conceição do Castelo', 'Rua'),
	(2, 'Thiago', 27998029, 'thithisabetudo@email.com', 'rbdforever', 22222, 191, 'Américo Buaiz', 'Avenida'),
	(3, 'Renato', 27980251, 'renatinlanches@email.com', 'merendagratis', 55555, 293, '24 de maio', 'Rua'),
	(4, 'Wildemberg', 27995328, 'evoluwildejesus@email.com', 'evoluiudemais', 88888, 912, 'Afrânio Peixoto', 'Avenida'),
	(5, 'Patricia', 27993426, 'patricinhadointerior@email.com', 'dinheiro982', 77777, 561, ' das Espatodias', 'Alameda'),
	(6, 'Ana', 28990298, 'aninhagameplays@email.com', 'gameboy17', 99999, 831, 'Fernando Ferrari', 'Avenida'),
	(7, 'Bruna', 11989325, 'brunadalapa@email.com', 'neymarzete02', 66666, 341, '9 de Julho', 'Avenida'),
	(8, 'Fernanda', 31992435, 'fefe22silveira@email.com', 'fernandinhatop21', 33333, 455, 'Olegario Maciel', 'Avenida'),
	(9, 'José', 21992430, 'zezedosertao@email.com', 'zezeelulu', 44444, 555, 'Alvaro Chaves', 'Rua'),
	(10, 'Leonardo', 55992142, 'tartaruganinja12@email.com', 'splinter72', 00000, 980, 'Lopo Gonçalves', 'Rua');

	INSERT INTO CASA_ADOCAO (id_bairro, email, senha, nome, telefone, numero, logradouro, desc_logradouro) VALUES
	(3, 'petfelizao@email.com', 'm3ad0ta', 'Pet Feliz', 27925142, 167, 'Laranjeiras', 'Avenida'),
	(1, 'prondogadocao@email.com', 'An1m4l', 'PronDog', 27982012, 342, 'Amenófis de Assis', 'Rua'),
	(7, 'casalvorada@email.com', 'casalvoradapet12', 'Casa Alvorada', 11923021, 121, 'Netuno', 'Rua'),
	(5, 'geretrizpet234@email.com', 'gegepet19', 'Geretriz', 28902912, 301, 'Três Rios', 'Rua'),
	(10, 'cadabrapet@email.com', 'Alakapet1', 'AbraCadabra', 51928319, 296, 'Galvão Bueno', 'Rua'),
	(4, 'petrural97@email.com', 'Queijominas', 'Pet Rural', 28938219, 62, 'Olegário Maciel', 'Avenida'),
	(9, 'parisadocao@email.com', 'Torrepets90', 'La Paris', 21928321, 347, 'Álvaro Chaves', 'Rua'),
	(6, 'kinoplexcasa@email.com', 'Casadospetsrj171', 'Kinoplex Pets', 28983742, 100, 'Seu Madruga', 'Avenida'),
	(8, 'chimarraodospets@email.com', 'ervamate97', 'Chimarrao dos Pets', 31992039, 766, 'Lupo Gonçalves', 'Rua'),
	(2, 'juscelinodospets@email.com', 'pentefino', 'Casa do Juju', 27990290, 543, 'Hebreus lapide', 'Avenida');

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
	(10, 'Dogue Alemão'),
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
	('Olá, Gostaria de adotar o Garfield.', 1, '2021-02-08', null, 5, 3, 3),
	('Olá, Gostaria de adotar o Piu-piu', 1, '2021-02-07', null, 2, 2, 2),
	('Olá, Gostaria de adotar o Pernalonga', 3, '2017-02-16', '2017-02-23', 8, 2, 10),
	('Olá, Gostaria de adotar o Marlin', 2, '2020-09-10', '2020-09-11', 9, 3, 4),
	('Olá, Gostaria de adotar o Marlin', 3, '2020-10-01', '2020-10-03', 1, 3, 4),
	('Olá, Gostaria de adotar o Python', 2, '2019-04-03', '2019-04-06', 3, 6, 9),
	('Olá, Gostaria de adotar o Oogway', 1, '2020-12-25', null, 7, 5, 5),
	('Olá, Gostaria de adotar o Garfield', 1, '2021-02-08', null, 6, 3, 3),
	('Olá, Gostaria de adotar o Malaquias', 3, '2019-12-02', '2019-12-02', 10, 1, 7),
	('Olá, Gostaria de adotar o Pernalonga', 2, '2020-10-10', '2020-11-01', 4, 2, 10);


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
link do colab: https://colab.research.google.com/drive/1q_oXa70RP1VA8llf1MLy4vZFh8Zr5c4X#scrollTo=daOmwH-OHToF

># Marco de Entrega 01: Do item 1 até o item 9.1<br>
link do colab para os itens 9.2 ao 9.10: https://colab.research.google.com/drive/1YoVYd-lg0j3WwMA01alPnHR1arMIywwf?usp=sharing
<br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)<br>

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    
#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
   
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

link do colab: https://colab.research.google.com/drive/110YxqezUhvkwnELDaqlHONvEMqiHHKCx?usp=sharing
![Arquivo SQL de inserts para o relatório](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/arquivos/inserts_relatorio.sql?raw=true "Tabela - AchaPatas")

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

link para o vídeo de apresentação: https://youtu.be/fh2uGnrifqk
link para o slides: https://docs.google.com/presentation/d/1tvQq5PCBshUTlMtoG1WjSUZ5BlXuIUjM3VapSpzRlWI/edit?usp=sharing

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


