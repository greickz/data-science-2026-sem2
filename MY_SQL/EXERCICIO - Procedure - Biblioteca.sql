USE db_biblioteca;

-- 1. Crie uma stored procedure que insira um novo autor na tabela Autores.
SELECT * from tb_autores;
SELECT * from tb_emprestimo;
SELECT * FROM tb_membros;
SELECT * FROM tb_livros;
DELIMITER $$
CREATE PROCEDURE InserirAutor(
IN p_id_autor INT,
IN p_nome VARCHAR(100),
IN p_data_nascimento DATE,
IN p_idade INT
)
BEGIN
	INSERT INTO tb_autores(id_autor, nome, data_nascimento, idade)
    VALUES (p_id_autor, p_nome, p_data_nascimento, p_idade);
END $$

DELIMITER ;

CALL InserirAutor('7','Stephen King','1947-09-21','77');

-- 2. Crie uma stored procedure para atualizar a data de devolução de um empréstimo já registrado.

DELIMITER $$
CREATE PROCEDURE AtualizarDevolucao(
IN p_id_emprestimo INT,
IN p_data_devolucao DATE
)
BEGIN
	UPDATE tb_emprestimo SET data_devolucao = p_data_devolucao
    WHERE id_emprestimo = p_id_emprestimo;
END $$
DELIMITER ;

DROP PROCEDURE AtualizarDevolucao; 

CALL AtualizarDevolucao('1','2025-11-22');

-- 3. Crie uma stored procedure que consulte todos os livros emprestados por um determinado membro, retornando os títulos 
-- dos livros e as datas de empréstimo.

DELIMITER $$

CREATE PROCEDURE ConsultaEmprestimosMembro(
    IN p_id_membro INT
)
BEGIN
    SELECT L.titulo, E.data_emprestimo, id_membroForeign FROM tb_emprestimo AS E
    INNER JOIN tb_livros AS L
	ON L.id_livro = E.id_livroForeign WHERE E.id_membroForeign = p_id_membro;
END $$

DELIMITER ;
DROP PROCEDURE ConsultaEmprestimosMembro;

CALL ConsultaEmprestimosMembro(1);