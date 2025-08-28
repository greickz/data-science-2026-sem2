SELECT * FROM tb_carro;
UPDATE tb_carro set valor = 2 where id_carro = 2;
SELECT * FROM tb_historico;

ALTER TABLE tb_historico
MODIFY id INT AUTO_INCREMENT; -- não precisei utilizar, apenas anotei caso precise futuramente

UPDATE tb_carro set valor = 500 where id_carro = 1;

ALTER TABLE tb_proprietario
ADD data_nascimento date;

SELECT * FROM tb_proprietario;
INSERT INTO tb_proprietario(id_proprietario, nome, id_carroForeign, idade, data_nascimento) VALUES(
'5',
'Isaque',
'4',
null, -- mesmo nulo o resultado final 
'2007/06/13'
);
INSERT INTO tb_proprietario(id_proprietario, nome, id_carroForeign, idade, data_nascimento) VALUES(
'6',
'MArcos',
'4',
null, -- mesmo nulo o resultado final 
'2007/10/13'
);
DELETE from tb_carro where id_carro = 1; -- Deletar uma linham

