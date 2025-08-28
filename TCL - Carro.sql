USE db_carro;

SELECT @@autocommit;  -- @@ variavel de ambiente

SET @@autocommit = OFF; -- desativa o 'salvar automaticamente', o autocommit ja vem por padrão no MYSQL

SELECT * FROM tb_proprietario;

INSERT INTO tb_proprietario(id_proprietario, nome, id_carroForeign, idade) VALUES(
'5',
'Moisés',
'2',
'67');

INSERT INTO tb_proprietario(id_proprietario, nome, id_carroForeign, idade) VALUES(
'6',
'Talia',
'1',
'32');

ROLLBACK; -- Apaga todas a alterações após o commit, depois do último salvamento

START TRANSACTION; -- Começar uma transação de dados
INSERT INTO tb_proprietario(id_proprietario, nome, id_carroForeign, idade) VALUES(
'5',
'Moisés',
'2',
'67');
COMMIT; -- Salvar

DELETE from tb_proprietario where id_proprietario = 5; -- Deletar uma linham



SELECT * from tb_carro;
SELECT * from tb_historico;
INSERT INTO tb_historico(id_historico, data_modificacao, id_carroForeignHistorico, valor_anterior, valor_novo) VALUES(
'1',
'2024-11-15',
'4',
'65000.00',
'84000.00');
INSERT INTO tb_historico(id_historico, data_modificacao, id_carroForeignHistorico, valor_anterior, valor_novo) VALUES(
'2',
'2025-04-25',
'1',
'60000',
'102000.00');

INSERT INTO tb_historico(id_historico, data_modificacao, id_carroForeignHistorico, valor_anterior, valor_novo) VALUES(
'3',
'2024-07-05',
'5',
'65000.00',
'102000.00');
