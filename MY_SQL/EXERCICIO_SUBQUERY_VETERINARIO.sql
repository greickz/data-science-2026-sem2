USE db_ClinicaVetBD;

-- Exercicio 1 - Liste o nome e a data de nascimento do pet mais antigo da clínica usando uma subquery.

SELECT nome, tipo,data_nascimento from tb_pets;
SELECT MIN(data_nascimento) from tb_pets;
SELECT nome, tipo ,data_nascimento from tb_pets WHERE data_nascimento = (SELECT MIN(data_nascimento) FROM tb_pets);

-- Exercicio 2 - Liste o nome e a data de nascimento do pet mais novo usando uma subquery.

SELECT nome, tipo, data_nascimento from tb_pets;
SELECT MAX(data_nascimento) from tb_pets;
SELECT nome, tipo, data_nascimento from tb_pets WHERE data_nascimento = (SELECT MAX(data_nascimento) FROM tb_pets);

-- Exercicio 3 - Liste o nome de todos os veterinários que realizaram atendimentos na data mais recente registrada.

SELECT MAX(data_atendimento) FROM tb_atendimentos;

SELECT V.nome as 'Nome do Veterinário', data_atendimento from tb_atendimentos as A
INNER JOIN tb_veterinarios as V
ON V.id_veterinario = A.id_veterinario 
WHERE data_atendimento = (SELECT MAX(data_atendimento) FROM tb_atendimentos);

-- Exercicio 4 - Liste os nomes dos clientes que possuem mais de um pet, utilizando uma subquery para contar a quantidade.

INSERT INTO tb_pets(id_pet, nome, tipo, raca, data_nascimento, id_cliente) VALUES (

'5',
'Geraldinho',
'Cachorro',
'Caramelo',
'2019/08/24',
'3'
);

SELECT 
count(P.id_cliente), 
C.nome as 'Cliente que mais tem Pets' from tb_pets as P
INNER JOIN tb_clientes as C
ON C.id_cliente = P.id_cliente
WHERE  (SELECT count(id_cliente) from tb_pets WHERE P.id_cliente = id_cliente) > 1 
group by(P.id_cliente)
;

SELECT count(P.id_cliente) from tb_pets as P WHERE P.id_cliente group by(P.id_cliente) having count(P.id_cliente) ;

-- Exercicio 5 - Liste o nome de todos os pets que ainda não passaram por atendimento, utilizando uma subquery para verificar.

SELECT P.nome, tipo  from tb_pets as P
LEFT JOIN tb_atendimentos as A
ON A.id_pet = P.id_pet
WHERE P.id_pet not in (SELECT id_pet from tb_atendimentos);


-- Exercicio 6 - Para cada cliente, mostre o nome e a quantidade de pets cadastrados,utilizando uma subquery no SELECT.

SELECT nome, (SELECT count(id_pet) from tb_pets as P where id_cliente = C.id_cliente) as 'QTD PETS' from tb_clientes as C;

-- Eexercicio 7 - Liste todos os atendimentos realizados pelo veterinário mais recentemente cadastrado no sistema.

INSERT INTO tb_veterinarios(id_veterinario, nome, especialidade, telefone) VALUES(
'5',
'Marcelo',
'Cachorros',
'+55 (11) 72188-9785'
); 

INSERT INTO tb_atendimentos(id_atendimento, id_pet, id_veterinario, data_atendimento, descricao) VALUES(
'4',
'5',
'5',
'2025/08/07',
'Vacinação'
);



SELECT * from tb_atendimentos as A
inner join tb_pets as P
on A.id_pet = P.id_pet
inner join tb_veterinarios as V
on A.id_veterinario = V.id_veterinario
where a.id_veterinario = (SELECT max(id_veterinario) from tb_veterinarios);

-- Exercicio 8 - Liste todas as informações do atendimento mais antigo registrado, usando uma subquery para identificar a data.

SELECT * from tb_atendimentos
where data_atendimento = (SELECT min(data_atendimento) from tb_atendimentos);

-- Exercicio 9 - Liste os nomes dos clientes que já tiveram atendimentos com pelo menos dois veterinários distintos, usando subquery.

SELECT C.nome from tb_clientes as C
WHERE C.id_cliente in (SELECT P.id_cliente from tb_pets as P 
inner join tb_atendimentos as A 
on P.id_pet = A.id_pet
inner join tb_veterinarios as V
on V.id_veterinario = A.id_veterinario
group by P.id_cliente  having count(distinct A.id_veterinario) >= 2);

-- Exercicio 10 - Liste os nomes dos pets que foram atendidos pelo veterinário que mais realizou atendimentos na clínica, usando subquery para identificar esse veterinário.

INSERT INTO tb_atendimentos(id_atendimento, id_pet, id_veterinario, data_atendimento, descricao) VALUES(
'5',
'5',
'1',
'2025/08/14',
'Check-up'
);

SELECT P.nome, V.nome from tb_atendimentos AS A
inner join tb_pets AS P
on P.id_pet = A.id_pet
inner join tb_veterinarios as V
on V.id_veterinario = A.id_veterinario
where A.id_veterinario = (SELECT id_veterinario from tb_atendimentos group by(id_veterinario) order by count(*) DESC limit 1);


SELECT * FROM tb_atendimentos;
SELECT * FROM tb_veterinarios;
SELECT * FROM tb_clientes;
SELECT * FROM tb_pets;