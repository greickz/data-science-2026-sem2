USE db_carro;

/**JOIN CONSULTA ENTRE TABELAS**/

-- INNER JOIN
SELECT * FROM tb_proprietario AS P
INNER JOIN tb_carro AS C
ON P.id_carroForeign = C.id_carro; -- Mostra apenas o vinculo entre a tabela ou seja se a tabela carro tivesse mais registros não apareceriam

SELECT * FROM tb_proprietario AS P-- Depois do FROM é a tabela mãe a prioridade
RIGHT JOIN tb_carro AS C -- Já aqui vem o que complementa
ON P.id_carroForeign = C.id_carro; -- em resumo vem todos da tabela a esquerda mais os cruzamentos da segunda

SELECT * FROM tb_carro AS C -- O right serve para dar prioridade para a segunda tabela a que vem depois
LEFT JOIN tb_proprietario AS P 
ON P.id_carroForeign = C.id_carro;

SELECT * FROM tb_proprietario AS P
INNER JOIN tb_carro AS C
ON P.id_carroForeign = C.id_carro
WHERE ano > 2000;

