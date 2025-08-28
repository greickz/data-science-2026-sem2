USE db_carro;

SELECT * FROM tb_carro;

/*Inserir os Dados*/
INSERT INTO tb_carro(id_carro, marca, modelo, ano, valor, cor, numero_vendas) VALUES (
'1',
'Renault',
'KWID',
'2023',
'80000',
'branco',
'150000'
);

INSERT INTO tb_carro(id_carro, marca, modelo, ano, valor, cor, numero_vendas) VALUES (
'2',
'Ford',
'Maverik',
'1975',
'45000',
'azul marinho',
'60000'
);

INSERT INTO tb_carro(id_carro, marca, modelo, ano, valor, cor, numero_vendas) VALUES (
'3',
'Chevrolet',
'Opala',
'1970',
'40000',
'preto',
'70000'
);

INSERT INTO tb_carro(id_carro, marca, modelo, ano, valor, cor, numero_vendas) VALUES (
'4',
'BMW',
'M3 coupé',
'1999',
'65000',
'prata',
'70000'
);

INSERT INTO tb_carro(id_carro, marca, modelo, ano, valor, cor, numero_vendas) VALUES (
'5',
'Mitsubishi',
'Lancer',
'1997',
'65000',
'roxo metalico',
'100000'
);

SELECT * FROM tb_carro;

SELECT * FROM tb_proprietario;

INSERT INTO tb_proprietario(id_proprietario, nome, idade, id_carroForeign) VALUES (
'1',
'Marcio',
'55',
'4'
);

INSERT INTO tb_proprietario(id_proprietario, nome,idade, id_carroForeign) VALUES (
'2',
'Gabriel',
'24',
'1'
);

INSERT tb_proprietario(id_proprietario, nome, idade, id_carroForeign) VALUES(
'3',
'Jonas',
'14',
'5'
);

INSERT tb_proprietario(id_proprietario, nome, idade, id_carroForeign) VALUES(
'4',
'Monica',
'50',
'2'
);

INSERT tb_proprietario(id_proprietario, nome, id_carroForeign, idade) VALUES(
'5',
'Vinícius',
'3',
'18'
);


SELECT * FROM tb_proprietario;

UPDATE tb_proprietario SET idade = '10' WHERE id_proprietario = '5'; /*ALTERAÇÃO - UPDATE*/
SELECT * FROM tb_proprietario WHERE id_proprietario = '5'; /*Antes de rodar o update para verificar se a alteração vai no cmapo certo*/


UPDATE tb_carro SET modelo = 'Logan' WHERE id_carro = '1';
SELECT * FROM tb_carro WHERE id_carro = '1';

UPDATE tb_proprietario SET id_carroForeign = '4' WHERE id_proprietario = '5';
SELECT * FROM tb_proprietario WHERE id_proprietario = '5';

UPDATE tb_carro SET  numero_Vendas = '70001' WHERE id_carro = '4';
SELECT * FROM tb_carro WHERE id_carro = '4';

UPDATE tb_proprietario SET id_carroForeign = '5' WHERE id_proprietario = '1';
SELECT * FROM tb_proprietario WHERE id_proprietario = '1';

UPDATE tb_carro SET  numero_Vendas = '100001' WHERE id_carro = '5';
SELECT * FROM tb_carro WHERE id_carro = '5';

DELETE FROM tb_proprietario WHERE id_proprietario ='5'; /*Deletar a linha*/

DELETE FROM tb_carro WHERE id_carro ='3'; /*Foi possível deletar a linha pois não estava sendo usada como chave estrangeira em outras tabelas como as outras*/
