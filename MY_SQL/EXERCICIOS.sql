/* EXERCICIO 1 */
CREATE DATABASE db_ClinicaVetBD;

USE db_ClinicaVetBD;

/* EXERCICIO 2 */

CREATE TABLE tb_veterinarios(
id_veterinario int(10) not null,
nome varchar(100),
especialidade varchar(50),
telefone varchar(20),
PRIMARY KEY(id_veterinario)
);

SELECT * FROM tb_veterinarios;

CREATE TABLE tb_clientes(
id_cliente int(10) not null,
nome varchar(100),
endereco varchar(200),
telefone varchar(20),
PRIMARY KEY(id_cliente) 
);

SELECT * FROM tb_clientes;

CREATE TABLE tb_pets(
id_pet int(10) not null,
nome varchar(50),
tipo varchar(50),
raca varchar(50),
data_nascimento DATE,
id_cliente int(10),
PRIMARY KEY(id_pet),
FOREIGN KEY(id_cliente) REFERENCES tb_clientes(id_cliente)
);

SELECT * FROM tb_pets;

CREATE TABLE tb_atendimentos(
id_atendimento int(10) not null,
id_pet int(10),
id_vetrinario int(10),
data_atendimento date,
descricao varchar(200),
PRIMARY KEY(id_atendimento),
FOREIGN KEY(id_pet) REFERENCES tb_pets(id_pet),
FOREIGN KEY(id_vetrinario) REFERENCES tb_veterinarios(id_veterinario)
);

SELECT * FROM tb_atendimentos;

/* EXERCICIO 3 */

INSERT INTO tb_veterinarios(id_veterinario, nome, especialidade, telefone) VALUES(
'1',
'Thiago',
'Cachorros',
'+55 (11) 98461-6210'
);

INSERT INTO tb_veterinarios(id_veterinario, nome, especialidade, telefone) VALUES(
'2',
'Mateus',
'Gatos',
'+55 (92) 27930-4755'
);

INSERT INTO tb_veterinarios(id_veterinario, nome, especialidade, telefone) VALUES(
'3',
'Ana',
'Aves',
'+55 (44) 16372-4009'
);

SELECT * FROM tb_veterinarios;

INSERT INTO tb_clientes(id_cliente, nome, endereco, telefone) VALUES(
'1',
'Marta',
'Rua Leonidas Amaral 142 Apartamento 12A',
'+55 (16) 05912-3384'
);

INSERT INTO tb_clientes(id_cliente, nome, endereco, telefone) VALUES(
'2',
'Lucas',
'Rua Tarcisio Brasileiro 94 Casa 3C',
'+55 (11) 81064-9253'
);

INSERT INTO tb_clientes(id_cliente, nome, endereco, telefone) VALUES(
'3',
'Rute',
'AV Maria Nascimento da Silva 472 Apartamento 18',
'+55 (11) 81064-9253'
);

SELECT * FROM tb_clientes;


INSERT INTO tb_pets(id_pet, nome, tipo, raca, data_nascimento, id_cliente) VALUES (

'1',
'Dolár',
'Papagaio',
'Papagaio-verdadeiro',
'2006/04/02',
'3'
);

INSERT INTO tb_pets(id_pet, nome, tipo, raca, data_nascimento, id_cliente) VALUES (
'2',
'Mika',
'Cachorro',
'Vira-Lata',
'2015/06/12',
'1'
);

INSERT INTO tb_pets(id_pet, nome, tipo, raca, data_nascimento, id_cliente) VALUES (
'3',
'Nina',
'Gato',
'Vira-Lata',
'2018/08/30',
'2'
);


SELECT * FROM tb_pets;

ALTER TABLE tb_atendimentos RENAME COLUMN id_vetrinario TO id_veterinario;

INSERT INTO tb_atendimentos(id_atendimento, id_pet, id_veterinario, data_atendimento, descricao) VALUES(
'1',
'3',
'3',
'2025/05/11',
'Consulta Check-up'
);

DROP TABLE tb_atendimentos;

INSERT INTO tb_atendimentos(id_atendimento, id_pet, id_veterinario, data_atendimento, descricao) VALUES(
'2',
'1',
'1',
'2025/02/24',
'Urgência'
);

INSERT INTO tb_atendimentos(id_atendimento, id_pet, id_veterinario, data_atendimento, descricao) VALUES(
'3',
'2',
'2',
'2024/10/19',
'Vacinação'
);

SELECT * FROM tb_atendimentos;

/** EXERCICIO 4 **/

UPDATE tb_clientes telefone SET  telefone = '+55 (11) 94175-2263' WHERE id_cliente = '1';
SELECT * FROM tb_clientes WHERE id_cliente = '1';

UPDATE tb_atendimentos data_atendimento SET data_atendimento = '2025/05/12' WHERE id_atendimento = '1';
SELECT * FROM tb_atendimentos WHERE id_atendimento = '1';

UPDATE tb_pets data_nascimento SET data_nascimento = '2025/11/26' WHERE id_pet = '3';
SELECT * FROM tb_pets WHERE id_pet = '3';

UPDATE tb_veterinarios nome SET nome = 'Matheus' WHERE id_veterinario = '2';
SELECT * FROM tb_veterinarios WHERE id_veterinario = '2';

UPDATE tb_veterinarios telefone SET telefone = '+55 (11) 981425-8261' WHERE id_veterinario = '2';
SELECT * FROM tb_veterinarios WHERE id_veterinario = '2';

/** EXERCICIO 5 **/

/** a. O pet com a data de nascimento mais antigo **/
SELECT MIN(data_nascimento) FROM tb_pets;
SELECT data_nascimento, nome from tb_pets order by data_nascimento ASC limit 1;

/** b. O pet com a data de nascimento mais recente **/

SELECT MAX(data_nascimento) FROM tb_pets;

/** c. A quantidade de pets cadastrados no banco de dados **/

SELECT COUNT(id_pet) as 'TOTAL PETS' FROM tb_pets;

/** d. Ordene o nome dos pets em ordem crescente **/

SELECT nome FROM tb_pets order by nome ASC;

/** e. Ordene o nome dos pets em ordem decrescente **/

SELECT nome FROM tb_pets order by nome DESC;

/** f. Ordene o nome dos veterinários em ordem crescente **/

SELECT nome FROM tb_veterinarios order by nome ASC;

/** g. Ordene o nome dos veterinários em ordem decrescente **/

SELECT nome FROM tb_veterinarios order by nome DESC;

/** h. A data de atendimento mais antiga **/

SELECT MIN(data_atendimento) FROM tb_atendimentos; 
SELECT data_atendimento, id_atendimento from tb_atendimentos order by data_atendimento ASC limit 1;
/** i. A data de atendimento mais recente **/

SELECT MAX(data_atendimento) FROM tb_atendimentos; 


