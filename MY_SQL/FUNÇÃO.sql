USe db_carro;

-- Função - Realizar consultas e caso precise, realizar calculos.
-- Calculo de desconto

DELIMITER $$
CREATE FUNCTION calcularDesconto(
valor DECIMAL(10,2),
desconto DECIMAL(5,2)
)
RETURNS DECIMAL(10,2) -- Aonde sera exibido a função
READS SQL DATA -- Esta informando que a função apenas ira ler(consultar) e não alterar a tabela
BEGIN
	RETURN valor - (valor * desconto/100);
END $$

DELIMITER ;

SELECT marca, modelo, valor, calcularDesconto(valor, 20) as 'Valor com 20% de Desconto', calcularDesconto(valor, 30) as 'Valor com 30% de Desconto' from tb_carro; -- os parametros dentro da function = o valor não precisa inserir um valor em especifico pois ja existe na tabela já o segundo como não existe na tabela tem que inserir os 20% de desconto

-- Exemplo
-- Calculo de vendas gerais por marca

DELIMITER $$
CREATE FUNCTION valorPorMarca(p_marca VARCHAR(255))
RETURNS DECIMAL(50,2)
READS SQL DATA
BEGIN
	DECLARE valorTotal DECIMAL(50,2);
	SELECT SUM(valor * numero_Vendas) INTO valorTotal FROM tb_carro WHERE marca = p_marca;
    RETURN valorTotal;
END $$

DELIMITER ;
DROP FUNCTION valorPorMarca;
SELECT valorPorMarca('BMW');
SELECT * from tb_carro;