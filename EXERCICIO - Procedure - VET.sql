USE db_clinicavetbd;

SELECT * from tb_atendimentos;
SELECT * from tb_clientes;
SELECT * FROM tb_pets;
SELECT * FROM tb_veterinarios;

-- 1 Crie uma stored procedure que adicione um novo veterinário na tabela Veterinarios.
DELIMITER $$
CREATE PROCEDURE InserirVet(
IN p_id_veterinario INT,
IN p_nome VARCHAR(100),
IN p_especialidade VARCHAR(50),
IN p_telefone VARCHAR(20)
)
BEGIN
	INSERT INTO tb_veterinarios(id_veterinario, nome, especialidade, telefone)
    VALUES (p_id_veterinario, p_nome, p_especialidade, p_telefone);
END $$

DELIMITER ;

CALL InserirVet('7','Caio','Peixes','+55 (11) 74822-2599');

-- 2. Crie uma stored procedure para atualizar os dados de um cliente, como nome, endereço e telefone.

DELIMITER $$
CREATE PROCEDURE AtualizarCliente(
IN p_id_cliente INT,
IN p_nome VARCHAR(100),
IN p_endereco VARCHAR(200),
IN p_telefone VARCHAR(20)
)
BEGIN
	UPDATE tb_clientes SET nome = p_nome
    WHERE id_cliente = p_id_cliente;
	UPDATE tb_clientes SET endereco = p_endereco
    WHERE id_cliente = p_id_cliente;
	UPDATE tb_clientes SET  telefone = p_telefone
    WHERE id_cliente = p_id_cliente;
END $$
DELIMITER ;

CALL AtualizarCliente('4', 'Lucas', 'Conplexo Amaral 12', '+55 (11) 93550-4872');


-- 3. Crie uma stored procedure que registre um novo atendimento de um pet, verificando se o veterinário e o pet existem.

DELIMITER $$
CREATE PROCEDURE RegistroAtendimento (
IN p_id_atendimento INT,
IN p_id_pet INT,
IN p_id_veterinario INT,
IN p_data_atendimento DATE,
In p_descricao VARCHAR(200)
)
BEGIN
	IF NOT EXISTS (SELECT id_pet, id_veterinario FROM tb_atendimentos WHERE id_atendimento = p_id_atendimento) THEN
	INSERT INTO tb_atendimentos (id_atendimento, id_pet, id_veterinario, data_atendimento, descricao)
	VALUES (p_id_atendimento, p_id_pet, p_id_veterinario, p_data_atendimento, p_descricao);
    END IF;
END $$

SELECT * from tb_atendimentos;
CALL RegistroAtendimento('6', '1', '1', '2025-08-25', 'Check-up');
CALL RegistroAtendimento('8', '1', '8', '2025-08-25', 'Check-up');