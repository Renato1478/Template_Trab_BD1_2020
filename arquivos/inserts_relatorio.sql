INSERT INTO pedido_adocao(mensagem, id_status, data_solicitacao, data_conclusao, id_usuario, id_casa_adocao, id_animal) VALUES
('Olá, gostaria de adotar o Totó', 1, '2020-02-03', null, 20, 3, 16),
('Olá, gostaria de adotar o Orlando', 2, '2021-01-01', '2021-02-20', 14, 18, 13),
('Olá, gostaria de adotar o Pipoca', 3, '2021-02-24', '2021-03-20', 16, 20, 17),
('Olá, gostaria de adotar o Nemo', 2, '2021-04-01', '2021-04-02', 3, 14, 20),
('Olá, gostaria de adotar o Lasanha', 3, '2018-02-13', '2018-02-20', 19, 18, 19),
('Olá, gostaria de adotar o Orlando', 1, '2021-03-20', null, 5, 18, 13),
('Olá, gostaria de adotar o Tom', 3, '2017-12-20', '2018-01-03', 17, 4, 14),
('Olá, gostaria de adotar o Python', 1, '2019-05-12', null, 9, 10, 9),
('Olá, gostaria de adotar o Python', 1, '2019-05-15', null, 13, 10, 9),
('Olá, gostaria de adotar o Zézinho', 2, '2020-06-19', '2020-07-18', 1, 6, 12),
('Olá, gostaria de adotar o Zézinho', 2, '2018-10-07', '2018-11-01', 12, 6, 12),
('Olá, gostaria de adotar o Zézinho', 3, '2020-09-16', '2020-11-09', 15, 6, 12),
('Olá, gostaria de adotar o Oogway', 1, '2020-11-08', null, 8, 3, 5),
('Olá, gostaria de adotar o Totó', 1, '2020-01-20', null, 5, 3, 16),
('Olá, gostaria de adotar o Pernalonga', 2, '2017-01-14', '2017-02-01', 4, 2, 10),
('Olá, gostaria de adotar o Scooby-Doo', 3, '2015-03-28', '2015-04-05', 17, 5, 11),
('Olá, gostaria de adotar o Malaquias', 2, '2018-01-30', '2018-02-10', 11, 1, 7),
('Olá, gostaria de adotar o Snoopy', 1, '2017-08-29', null, 18, 9, 6),
('Olá, gostaria de adotar o Snoopy', 1, '2017-09-03', null, 3, 9, 6),
('Olá, gostaria de adotar o Tea-Lord', 3, '2021-01-09', '2021-02-03', 6, 8, 8),
('Olá, gostaria de adotar o Tea-Lord', 2, '2021-01-09', '2021-01-20', 7, 8, 8),
('Olá, gostaria de adotar o Piu-piu', 1, '2021-02-16', null, 10, 2, 2),
('Olá, gostaria de adotar o Tom', 2, '2017-12-31', '2018-01-03', 9, 4, 14),
('Olá, gostaria de adotar o Garfield', 2, '2019-05-18', '2019-06-01', 1, 3, 3),
('Olá, gostaria de adotar o Baixinho', 1, '2021-02-05', null, 12, 3, 15),
('Olá, gostaria de adotar o Baixinho', 1, '2021-02-14', null, 13, 3, 15),
('Olá, gostaria de adotar o Piu-piu', 2, '2020-12-24', '2021-01-09', 6, 2, 2),
('Olá, gostaria de adotar o Ipiranga', 2, '2013-02-18', '2013-03-20', 8, 20, 18),
('Olá, gostaria de adotar o Ipiranga', 2, '2012-10-10', '2012-11-11', 4, 20, 18),
('Olá, gostaria de adotar o Ipiranga', 3, '2013-07-12', '2013-08-04', 11, 20, 18),
('Olá, gostaria de adotar o Zequinha', 1, '2021-04-01', null, 6, 1, 1),
('Olá, gostaria de adotar o Pipoca', 2, '2020-12-26', '2021-01-05', 2, 20, 17),
('Olá, gostaria de adotar o Totó', 1, '2019-03-27', null, 17, 3, 16),
('Olá, gostaria de adotar o Lasanha', 2, '2017-12-25', '2018-01-21', 20, 18, 19),
('Olá, gostaria de adotar o Zequinha', 2, '2021-01-01', '2021-01-05', 7, 1, 1),
('Olá, gostaria de adotar o Zequinha', 1, '2021-02-15', null, 15, 1, 1),
('Olá, gostaria de adotar o Scooby-Doo', 2, '2014-08-26', '2014-10-01', 2, 5, 11),
('Olá, gostaria de adotar o Baixinho', 2, '2016-11-11', '2016-11-03', 19, 3, 15),
('Olá, gostaria de adotar o Nemo', 1, '2021-02-04', null, 10, 14, 20),
('Olá, gostaria de adotar o Scooby-Doo', 2, '2013-10-04', '2013-11-15', 8, 5, 11)

update pedido_adocao set mensagem='Olá, Gostaria de adotar o Scooby-Doo', id_casa_adocao=5, id_animal=11 where id=44;

update pedido_adocao set mensagem='Olá, Gostaria de adotar o Ipiranga', id_casa_adocao=20, id_animal=18 where id=31;

update pedido_adocao set mensagem='Olá, Gostaria de adotar o Zequinha', id_casa_adocao=1, id_animal=1 where id=27;

update pedido_adocao set mensagem='Olá, Gostaria de adotar o Garfield', id_casa_adocao=4, id_animal=3 where id=42;

update pedido_adocao set mensagem='Olá, Gostaria de adotar o Pernalonga', id_casa_adocao=9, id_animal=10 where id=28;

update pedido_adocao set mensagem='Olá, Gostaria de adotar o Zequinha', id_casa_adocao=1, id_animal=1 where id=49