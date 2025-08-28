USE db_clinicavetbd;

-- Exercicio 1 - Crie um trigger que, sempre que um novo pet for inserido na tabela,
-- calcule automaticamente a idade do pet com base em sua data de nascimento e
-- armazene esse valor na coluna idade.

SELECT * from tb_pets;
SELECT * from tb_clientes;
ALTER TABLE tb_pets
ADD idade int;

INSERT INTO tb_pets(id_pet, nome, tipo, raca, data_nascimento, id_cliente, idade) VALUES(
'6',
'marquin',
'Gato',
'Vira-Lata',
'2023/10/17',
'4',
NULL
);


USE db_biblioteca;
SELECT * from tb_autores;
-- Exercicio 1. Criar uma trigger que impeça a inserção de autores com menos de 18 anos.
ALTER TABLE tb_autores
ADD idade int;

INSERT INTO tb_autores(id_autor, nome, data_nascimento, idade) VALUES(
'7',
'Lucas',
'2008/10/17',
NULL
);

-- Exercicio 2. Criar uma trigger que atualize automaticamente a data de devolução para 15 dias após a data de empréstimo.
SELECT * from tb_emprestimo;