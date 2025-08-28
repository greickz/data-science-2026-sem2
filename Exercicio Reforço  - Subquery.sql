USE db_carro;

-- 1. Liste o nome dos proprietários que possuem carros com valor acima da média de todos os carros.


SELECT avg(valor) from tb_carro;

SELECT P.nome, C.modelo, C.valor  from tb_proprietario as P
INNER JOIN tb_carro as C
ON C.id_carro = P.id_carroForeign where C.valor > (SELECT avg(valor) from tb_carro);


-- 2.Liste os modelos de carro cujo numero_vendas seja maior que a média de vendas de todos os carros.
SELECT modelo, numero_vendas, valor from tb_carro;
SELECT avg(numero_vendas) from tb_carro;
SELECT modelo, numero_vendas from tb_carro where numero_vendas > (SELECT avg(numero_vendas) from tb_carro);

-- 3. Mostre os carros cujo valor já foi maior que a média de todos os valores registrados no histórico.

INSERT INTO tb_historico(id_historico, data_modificacao, id_carroForeignHistorico, valor_anterior, valor_novo) values(
'1',
'2025-02-14 10:12:46',
'4',
'65000.00',
'5.00'
);

INSERT INTO tb_historico(id_historico, data_modificacao, id_carroForeignHistorico, valor_anterior, valor_novo) values(
'2',
'2024-11-07 20:02:23',
'5',
'100001',
'10.00'
);


INSERT INTO tb_historico(id_historico, data_modificacao, id_carroForeignHistorico, valor_anterior, valor_novo) values(
'4',
'2025-06-18 20:02:23',
'1',
'80000.00',
'08.50'
);

SELECT modelo from tb_historico ;

-- 3. Mostre os carros cujo valor já foi maior que a média de todos os valores registrados no histórico.

SELECT * FROM tb_carro where id_carro in (SELECT avg(valor_anterior) from tb_historico);
SELECT avg(valor_anterior) from tb_historico;

-- 4. Liste os modelos de carros que não aparecem na tabela historico_preco.

INSERT INTO tb_carro (id_carro, marca, modelo, ano, valor, cor, numero_vendas) VAlues(
'6',
'Fiat',
'Uno',
'1998',
'90.00',
'Branco',
'1000'
);

SELECT modelo from tb_carro  where id_carro not in (SELECT id_carroForeignHistorico from tb_historico) ;

select * from tb_carro;
select * from tb_proprietario;
select * from tb_historico;