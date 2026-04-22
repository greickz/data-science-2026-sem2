USE db_clinicavetbd;

-- 1. Crie uma função que receba o id_cliente e retorne a quantidade de pets que esse cliente possui.

DELIMITER $$
CREATE FUNCTION QuantidadePetsPorCliente(
p_id_cliente iNT
)
RETURNS INT
READS SQL DATA
BEGIN
	DECLARE consulta INT;
	SELECT count(id_pet) into consulta from tb_pets where id_cliente = p_id_cliente;
    RETURN consulta;
END $$

DELIMITER ;
DROP FUNCTION QuantidadePetsPorCliente;
SELECT QuantidadePetsPorCliente(3);
SELECT * from tb_pets;

-- 2. Crie uma função que recebe o id_pet e retorna a data da última consulta do pet.

DELIMITER $$
CREATE FUNCTION UltimaConsulta(
p_id_pet INT
)
RETURNS DATE
READS SQL DATA
BEGIN
DECLARE consulta DATE;
	SELECT MAX(data_atendimento) into consulta from tb_atendimentos WHERE id_pet = p_id_pet;
    RETURN consulta;
END $$
DELIMITER ;
SELECT UltimaConsulta(1);
SELECT * from tb_atendimentos;
DROP FUNCTION UltimaConsulta;

-- 3. Crie uma função que receba o id_veterinario e retorne o número total de atendimentos feitos por ele.

DELIMITER $$

CREATE FUNCTION NumeroAtendimentoVet(
p_id_veterinario INT
)
RETURNS INT
READS SQL DATA
BEGIN
	DECLARE total INT;
	SELECT count(id_atendimento) into total from tb_atendimentos where p_id_veterinario = id_veterinario;
    RETURN total;
END $$
DELIMITER ;
SELECT NumeroAtendimentoVet(1);
SELECT * from tb_atendimentos;
