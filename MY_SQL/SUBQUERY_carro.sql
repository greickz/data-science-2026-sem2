-- Sub query - Carro
USE db_carro;
-- 1. Carros acima da média
-- Primeiro calcular a média
 SELECT AVG(valor) from tb_carro;
 
 -- 2.  Verficar carros
  SELECT * FROM tb_carro WHERE valor > '63750.000000';
 
 -- A subquery é trazer uma query dentro de outra
 -- Resultado
 SELECT * FROM tb_carro WHERE valor > (SELECT AVG(valor) from tb_carro);