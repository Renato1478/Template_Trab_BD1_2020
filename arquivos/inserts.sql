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

INSERT INTO CASA_ADOCAO (id_bairro, email, senha, nome, numero, desc_logradouro, logradouro) VALUES
(3, 'petfelizao@email.com', 'm3ad0ta', 'Pet Feliz', 167, 'Laranjeiras', 'Avenida'),
(1, 'prondogadocao@email.com', 'An1m4l', 'PronDog', 342, 'Amenófis de Assis', 'Rua'),
(7, 'casalvorada@email.com', 'casalvoradapet12', 'Casa Alvorada', 121, 'Netuno', 'Rua'),
(5, 'geretrizpet234@email.com', 'gegepet19', 'Geretriz', 301, 'Três Rios', 'Rua'),
(10, 'cadabrapet@email.com', 'Alakapet1', 'AbraCadabra', 296, 'Galvão Bueno', 'Rua'),
(4, 'petrural97@email.com', 'Queijominas', 'Pet Rural', 62, 'Olegário Maciel', 'Avenida'),
(9, 'parisadocao@email.com', 'Torrepets90', 'La Paris', 347, 'Álvaro Chaves', 'Rua'),
(6, 'kinoplexcasa@email.com', 'Casadospetsrj171', 'Kinoplex Pets', 100, 'Seu Madruga', 'Avenida'),
(8, 'chimarraodospets@email.com', 'ervamate97', 'Chimarrao dos Pets', 766, 'Lupo Gonçalves', 'Rua'),
(2, 'juscelinodospets@email.com', 'pentefino', 'Casa do Juju', 543, 'Hebreus lapide', 'Avenida');

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
('Olá, Gostaria de adotar o Garfield.', 1, '2021-02-08', null, 5, 4, 3),
('Olá, Gostaria de adotar o Piu-piu', 1, '2021-02-07', null, 2, 1, 2),
('Olá, Gostaria de adotar o Pernalonga', 3, '2017-02-16', '2017-02-23', 8, 9, 10),
('Olá, Gostaria de adotar o Marlin', 2, '2020-09-10', '2020-09-11', 9, 7, 4),
('Olá, Gostaria de adotar o Marlin', 3, '2020-10-01', '2020-10-03', 1, 2, 4),
('Olá, Gostaria de adotar o Python', 2, '2019-04-03', '2019-04-06', 3, 10, 9),
('Olá, Gostaria de adotar o Oogway', 1, '2020-12-25', null, 7, 3, 5),
('Olá, Gostaria de adotar o Garfield', 1, '2021-02-08', null, 6, 8, 3),
('Olá, Gostaria de adotar o Malaquias', 3, '2019-12-02', '2019-12-02', 10, 5, 7),
('Olá, Gostaria de adotar o Pernalonga', 2, '2020-10-10', '2020-11-01', 4, 6, 10);