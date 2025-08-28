USE db_biblioteca;

-- 1. Crie uma função que recebe o id_autor e retorna a idade do autor com base na data de nascimento.
DELIMITER $$
CREATE FUNCTION IdadeAutor(
p_id_autor INT
)
RETURNS INT
READS SQL DATA
BEGIN
	DECLARE idadeAutor INT;
    SELECT timestampdiff(YEAR, data_nascimento, CURDATE()) into idadeAutor from tb_autores where p_id_autor = id_autor;
    RETURN idadeAutor;
END $$
DELIMITER ;
SELECT IdadeAutor(3);
SELECT * FROM tb_autores;
drop function IdadeAutor;

-- 2. Crie uma função que recebe o id_autor e retorna a quantidade de livros escritos por esse autor.

DELIMITER $$
CREATE FUNCTION QuantidadeLivrosAutor(
p_id_autor INT
)
RETURNS INT
READS SQL DATA
BEGIN
	DECLARE quantidade INT;
    SELECT count(id_livro) into quantidade from tb_livros where p_id_autor = id_autorForeign;
    RETURN quantidade;
END $$
DELIMITER ;
SELECT QuantidadeLivrosAutor(2);
SELECT * from tb_livros;

-- 3. Crie uma função que recebe duas datas e retorna o total de empréstimos realizados nesse período.

DELIMITER $$
CREATE FUNCTION EmprestimoPeriodo(
p_data_emprestimo DATE,
p_data_devolucao DATE
)
RETURNS INT
READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(id_emprestimo) INTO total from tb_emprestimo where data_emprestimo between p_data_emprestimo AND p_data_devolucao;
RETURN total;
END $$

DELIMITER ;
SELECT EmprestimoPeriodo('2000-09-30', '2025-11-22');
SELECT * from tb_emprestimo;
DROP FUNCTION EmprestimoPeriodo;

-- 4. Crie uma função que retorna a média de dias em que os livros foram emprestados.
DELIMITER $$
CREATE FUNCTION MediaEmprestimo (
p_id_livro INT
)
RETURNS INT
READS SQL DATA
BEGIN
	DECLARE media INT;
    SELECT AVG(timestampdiff(DAY, data_emprestimo, data_devolucao)) into media from tb_emprestimo where p_id_livro = id_livroForeign;
    RETURN media;
END $$
DELIMITER ;
SELECT MediaEmprestimo(5);
DROP function MediaEmprestimo;
SELECT * from tb_emprestimo;





