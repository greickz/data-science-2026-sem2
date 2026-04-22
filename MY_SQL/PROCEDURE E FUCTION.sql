USE db_carro;

-- STORED PROCEDURE 
-- Quando é necessario armazenar um bloco de código que pode envolver múltiplas operações (INSERT, UPDATE, DELETE)

-- CRIAR UMA PROCEDURE QUE INSIRA UM NOVO CARRO NA TABELA
-- IN --> Paramêtro de ENTRADA
-- OUT --> Paramêtros de SAÍDA
DELIMITER $$ -- Mudando o delimitador para encerrar o código ao invés do ; para previnir erros
CREATE PROCEDURE InserirCarro(
IN p_id_carro INT, -- O p_ é apenas para indentificar que é um paramêtro
IN p_marca VARCHAR(100),
IN p_modelo VARCHAR(100),
IN p_ano INT,
IN p_valor DECIMAL(10,2),
IN p_cor VARCHAR(100),
IN p_numero_vendas INT
)
BEGIN
	INSERT INTO tb_carro (id_carro, marca, modelo, ano, valor, cor, numero_vendas) 
	VALUES (p_id_carro, p_marca, p_modelo, p_ano, p_valor, p_cor,p_numero_vendas);
END $$

DELIMITER ; -- Voltando o delimitador para ;

CALL InserirCarro('7', 'McLareen', 'Senna', '2025', '98000000', 'Vermelho e Dourado', '327'); -- Usando o procedure para inserir dados

SELECT * from tb_carro;





