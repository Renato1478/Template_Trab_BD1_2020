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
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>


![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para o sistema de adoção de animais - AchaPatas](https://github.com/Renato1478/Template_Trab_BD1_2020/blob/master/Prot%C3%B3tipo%20-%20AchaPatas.pdf "Acha Patas")
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
        
![Alt text](https://github.com/discipbd1/trab01/blob/master/images/concept_sample.png?raw=true "Modelo Conceitual")
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 

        CREATE TABLE USUARIO (
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
       alter table usuario add constraint fk_id_cidade foreign key(id_cidade) references cidade(id);

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
        nome varchar(50),
        primary key(id),
        foreign key(id_estado) references estado(id)
       );

       CREATE TABLE CASA_ADOCAO(
        id serial,
        id_cidade int,
        email varchar(100),
        senha varchar(25),
        nome varchar(50),
        bairro varchar(100),
        numero int,
        logradouro varchar(100),
        desc_logradouro varchar(100),
        primary key(id),
        foreign key(id_cidade) references cidade(id)
       );

       CREATE TABLE ANIMAL(
        id serial,
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

       CREATE TABLE RACA
       (
        id int,
        nome varchar(50),
        primary key(id)
       );

       CREATE TABLE TIPO
       (
        id int,
        descricao varchar(25),
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

       CREATE TABLE STATUS
       (
        id int,
        descricao varchar(25),
        primary key(id)
       );



        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
        
        Inserts da tabela Usuário:
        INSERT INTO USUARIO (cidade, estado, nome, telefone, email, senha, cpf, bairro, numero, desc_logradouro, logradouro) VALUES
        ('Serra', 'ES', 'Eduardo', 27994321, 'duduzinhodoserrao@email.com', 'dudu921', 11111, 'Jardim Carapina', 197, 'Conceição do Castelo', 'Rua'),
        ('Vilha Velha', 'ES', 'Thiago', 27998029, 'thithisabetudo@email.com', 'rbdforever', 22222, 'São Torquato', 191, 'Américo Buaiz', 'Avenida'),
        ('Vitória', 'ES', 'Renato', 27980251, 'renatinlanches@email.com', 'merendagratis', 55555, 'Maria Ortiz', 293, '24 de maio', 'Rua'),
        ('Domingos Martins', 'ES', 'Wildemberg', 27995328, 'evoluwildejesus@email.com', 'evoluiudemais', 88888, 'Arace', 912, 'Afrânio Peixoto', 'Avenida'),
        ('São Mateus', 'ES', 'Patricia', 27993426, 'patricinhadointerior@email.com', 'dinheiro982', 77777, 'Vintem', 561, ' das Espatodias', 'Alameda'),
        ('Muniz Freire', 'ES', 'Ana', 28990298, 'aninhagameplays@email.com', 'gameboy17', 99999, 'Menino Jesus', 831, 'Fernando Ferrari', 'Avenida'),
        ('São Paulo','SP', 'Bruna', 11989325, 'brunadalapa@email.com', 'neymarzete02', 66666, 'Água Rasa', 341, '9 de Julho', 'Avenida'),
        ('Belo Horizonte', 'MG', 'Fernanda', 31992435, 'fefe22silveira@email.com', 'fernandinhatop21', 33333, 'Buritis', 455, 'Olegario Maciel', 'Avenida'),
        ('Rio de Janeiro', 'RJ', 'José', 21992430, 'zezedosertao@email.com', 'zezeelulu', 44444, 'Botafogo', 555, 'Alvaro Chaves', 'Rua'),
        ('Porto Alegre', 'RS', 'Leonardo', 55992142, 'tartaruganinja12@email.com', 'splinter72', 00000, 'Aberta dos Morros', 980, 'Lopo Gonçalves', 'Rua');
        
        Inserts da tabela Casa_Adocao:
        INSERT INTO CASA_ADOCAO (estado, email, senha, nome, cidade, bairro, numero, desc_logradouro, logradouro) VALUES
        ('ES', 'petfelizao@email.com', 'm3ad0ta', 'Pet Feliz', 'Serra', 'America', 167, 'Laranjeiras', 'Avenida'), 
        ('ES', 'prondogadocao@email.com', 'An1m4l', 'PronDog', 'Vitória', 'Bento Ferreira', 342, 'Amenófis de Assis', 'Rua'),
        ('ES', 'casalvorada@email.com', 'casalvoradapet12', 'Casa Alvorada', 'Vila Velha', 'Alvorada', 121, 'Netuno', 'Rua'),
        ('SP', 'geretrizpet234@email.com', 'gegepet19', 'Geretriz', 'São Paulo', 'Água Rasa', 301, 'Três Rios', 'Rua'),
        ('SP', 'cadabrapet@email.com', 'Alakapet1', 'AbraCadabra', 'São Paulo', 'Sé Bela Vista', 296, 'Galvão Bueno', 'Rua'),
        ('MG', 'petrural97@email.com', 'Queijominas', 'Pet Rural', 'Belo Horizonte', 'Buritis', 62, 'Olegário Maciel', 'Avenida'),
        ('RJ', 'parisadocao@email.com', 'Torrepets90', 'La Paris', 'Rio de Janeiro', 'Botafogo', 347, 'Álvaro Chaves', 'Rua'),
        ('RJ', 'kinoplexcasa@email.com', 'Casadospetsrj171', 'Kinoplex Pets', 'Rio de Janeiro', 'Barra da Tijuca', 100, 'Seu Madruga', 'Avenida'),
        ('RS', 'chimarraodospets@email.com', 'ervamate97', 'Chimarrao dos Pets', 'Porto Alegre', 'Aberta dos Morros', 766, 'Lupo Gonçalves', 'Rua');
        
        Inserts da tabela Animal:
        INSERT INTO ANIMAL (tipo, raca, data_nascimento, nome, id_casa_adocao) VALUES
        ('Cachorro', 'Pinscher', '2020-11-22', 'Zequinha', 1),
        ('Pássaro', 'Canário', '2020-09-28', 'Piu-piu', 2),
        ('Gato', 'Persa', '2018-12-13', 'Garfield', 3),
        ('Peixe', 'Palhaço', '2020-06-07', 'Marlin', 3),
        ('Jabuti', 'Piranga', '2014-09-22', 'Oogway', 5),
        ('Cachorro', 'Yorkshire', '2017-03-17', 'Snoopy', 9),
        ('Porquinho-da-Índia', 'Rex', '2019-10-12', 'Malaquias', 1),
        ('Gato', 'Pelo Curto Inglês', '2016-04-02', 'Tea-Lord', 8),
        ('Cobra', 'Milho', '2018-05-29', 'Python', 6),
        ('Coelho', 'Anão Holandês', '2015-11-16', 'Pernalonga', 2),
        ('Cachorro', 'Dogue Alemão', '2012-02-19', 'Scooby-Doo', 5);
        
        Inserts da tabela Pedido_Adocao:
        INSERT INTO PEDIDO_ADOCAO (mensagem, status, data_solicitacao, data_conclusao, id_usuario, id_casa_adocao, id_animal) VALUES
        ('Olá, Gostaria de adotar o Garfield.', 'Pendente', '2021-02-08', null, 1, 3, 3),
        ('Olá, Gostaria de adotar o Piu-piu', 'Pendente', '2021-02-07', null, 2, 2, 2),
        ('Olá, Gostaria de adotar o Pernalonga', 'Aceito', '2017-02-16', '2017-02-23', 8, 2, 10),
        ('Olá, Gostaria de adotar o Marlin', 'Recusado', '2020-09-10', '2020-09-11', 9, 3, 4),
        ('Olá, Gostaria de adotar o Marlin', 'Aceito', '2020-10-01', '2020-10-03', 1, 3, 4),
        ('Olá, Gostaria de adotar o Python', 'Recusado', '2019-04-03', '2019-04-06', 3, 6, 9),
        ('Olá, Gostaria de adotar o Oogway', 'Pendente', '2020-12-25', null, 7, 5, 5),
        ('Olá, Gostaria de adotar o Garfield', 'Pendente', '2021-02-08', null, 6, 3, 3),
        ('Olá, Gostaria de adotar o Malaquias', 'Aceito', '2019-12-02', '2019-12-02', 10, 1, 7);






### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

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


