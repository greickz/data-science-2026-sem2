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



