/* Exercicio 1 */

USE db_ClinicaVetBD;

SELECT  P.nome as 'nome Pet', C.nome, telefone  FROM tb_clientes as C
INNER JOIN tb_pets AS P
on P.id_cliente = C.id_cliente;

/* Exercicio 2 */

SELECT data_atendimento, descricao, P.nome as 'nome pet', V.nome as 'nome veterinario' from tb_atendimentos as A
INNER JOIN tb_pets as P
ON A.id_pet = P.id_pet
INNER JOIN tb_veterinarios as V
ON A.id_veterinario = V.id_veterinario;

/* Exercicio 3 */

SELECT A.id_veterinario, V.nome 'nome veterinario',A.id_pet, P.nome as 'pet atendido' from tb_atendimentos as A
INNER JOIN tb_pets as P
ON A.id_pet = P.id_pet
INNER JOIN tb_veterinarios as V
on A.id_veterinario = V.id_veterinario; 

/* Exercicio 4  */

SELECT * FROM tb_atendimentos;
-- 
SELECT  C.nome as 'NOME CLIENTE', P.nome as 'NOME PET', V.especialidade from tb_pets as P
INNER JOIN tb_clientes as C
ON P.id_cliente = C.id_cliente
INNER JOIN tb_atendimentos as A
ON A.id_pet = P.id_pet
INNER JOIN tb_veterinarios as V
ON A.id_veterinario = V.id_veterinario
;

/* EXERCICIO 5 */

INSERT INTO tb_clientes(id_cliente, nome, endereco, telefone) VALUES(
'4',
'Mario',
'rua doutor manuel',
'+55 (11) 81064-9891'
);

SELECT C.nome as 'Nome do Cliente', P.nome as 'Nome do Pet' FROM tb_clientes AS C 
LEFT JOIN tb_pets AS P
ON P.id_cliente = C.id_cliente;

/* EXERCICIO 6 */

SELECT V.nome as 'Nome do Veterinario', A.data_atendimento From tb_veterinarios AS V
LEFT JOIN tb_atendimentos AS A
ON A.id_veterinario = V.id_veterinario
;

/* EXERCICIO 7 */

INSERT INTO tb_pets(id_pet, nome, tipo, raca, data_nascimento) VALUES (

'4',
'Nemo',
'Peixe',
'Peixe Dourado',
'2014/08/22'
);

SELECT P.nome, C.nome FROM tb_clientes AS C
RIGHT JOIN tb_pets AS P
ON C.id_cliente = P.id_cliente;

/* EXERCICIO 8 */

INSERT INTO tb_veterinarios(id_veterinario, nome, especialidade, telefone) VALUES(
'4',
'Fernando',
'Peixes',
'+55 (11) 98243-2731'
);

SELECT A.id_atendimento,V.nome,A.data_atendimento from tb_atendimentos AS A
RIGHT JOIN tb_veterinarios AS V
ON V.id_veterinario = A.id_veterinario
;

SELECT * FROM tb_atendimentos;
SELECT * FROM tb_veterinarios;
SELECT * FROM tb_clientes;
SELECT * FROM tb_pets;