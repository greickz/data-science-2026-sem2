USE db_clinicavetbd;

-- JOIN

SELECT * FROM tb_atendimentos AS A
RIGHT JOIN tb_veterinarios AS V
ON A.id_veterinario = V.id_veterinario;

SELECT * FROM tb_veterinarios AS V
LEFT JOIN tb_atendimentos AS A
ON A.id_veterinario = V.id_veterinario;

-- 1

SELECT P.nome as 'Nome Pet', C.nome as 'Nome Cliente', telefone from tb_clientes as C
INNER JOIN tb_pets as P
ON C.id_cliente = P.id_cliente;

-- 2

SELECT C.nome as 'Nome do Cliente', P.nome as  'Nome do Pet' from tb_pets as P
RIGHT JOIN tb_clientes as C
on C.id_cliente = P.id_cliente;

-- 3

SELECT V.nome as 'Nome do veterinario', id_atendimento, id_pet,data_atendimento from tb_atendimentos as A
RIGHT JOIN tb_veterinarios as V
ON V.id_veterinario = A.id_veterinario
;

INSERT INTO tb_veterinarios(id_veterinario, nome, especialidade, telefone) VALUES(
'6',
'Rogério',
'Aves',
'+55 (11) 26009-7743');

select * from tb_pets;
select * from tb_veterinarios;
select * from tb_clientes;
select * from tb_atendimentos;
-- SUBQUERY

USE db_carro;

-- EXEMPLO 1

SELECT AVG(valor) from tb_carro; -- Primeiro passo descobrir a média
SELECT * FROM tb_carro WHERE valor > (SELECT AVG(valor) from tb_carro); -- Segundo passo achar quem ta acima da média

-- EXEMPLO 2

SELECT * FROM tb_carro where marca = 'BMW'; -- informações só da marca da marca
SELECT * FROM tb_proprietario where id_carroForeign in (SELECT id_carro FROM tb_carro where marca = 'BMW');  -- Clinetes que tem esse carro

select * from tb_carro;
select * from tb_historico;
select * from tb_proprietario;

-- EXEMPLO 3

USE db_biblioteca;

SELECT AVG(ano_publicacao) FROM tb_livros; -- Média dos livros
SELECT * FROM tb_livros where ano_publicacao > (SELECT AVG(ano_publicacao) FROM tb_livros); -- Livros acima da média do ano


SELECT * FROM tb_livros;

-- EXEMPLOS EXERCICIOS

USE db_clinicavetbd;

-- 4

SELECT * FROM tb_clientes; -- 1. Selecionar informações do cliente
SELECT id_cliente FROM tb_pets group by id_cliente having count(*) > 1; -- 2. Selecionar clientes que tem mais de um pet
SELECT * FROM tb_clientes where id_cliente in (SELECT id_cliente FROM tb_pets group by id_cliente having count(*) > 1); -- Resultado com a subquery


-- 5

SELECT * FROM tb_pets;
select * from tb_atendimentos;
SELECT * FROM tb_pets where id_pet not in (select id_pet from tb_atendimentos);


-- 9

SELECT * FROM tb_clientes;

SELECT id_cliente FROM tb_pets as P
INNER JOIN tb_atendimentos as A
On P.id_pet =  A.id_pet
GROUP BY P.id_cliente HAVING COUNT(distinct A.id_veterinario) > 1;

SELECT * FROM tb_clientes where id_cliente IN 
(SELECT id_cliente FROM tb_pets as P
INNER JOIN tb_atendimentos as A
On P.id_pet =  A.id_pet
GROUP BY P.id_cliente HAVING COUNT(distinct A.id_veterinario) > 1);

-- 10.

USE db_clinicavetbd;

SELECT * FROM tb_pets as P
INNER JOIN tb_atendimentos as A
ON P.id_pet = A.id_pet WHERE A.id_veterinario = (SELECT id_veterinario
FROM tb_atendimentos GROUP BY id_veterinario ORDER BY COUNT(*) ASC LIMIT 1);