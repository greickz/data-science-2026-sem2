USE db_biblioteca;
SELECT * from tb_autores;

-- Exercicio 1. Criar uma trigger que impeça a inserção de autores com menos de 18 anos.
ALTER TABLE tb_autores
ADD idade int;

INSERT INTO tb_autores(id_autor, nome, data_nascimento, idade) VALUES(
'12',
'Luca',
'2009/07/23',
'16'
);


-- Exercicio 2. Criar uma trigger que atualize automaticamente a data de devolução para 15 dias após a data de empréstimo.
SELECT * from tb_emprestimo;
UPDATE tb_emprestimo
SET 
    id_membroForeign = 4,
    id_livroForeign = 5,
    data_emprestimo = '2025-08-26',
    data_devolucao = '2025-12-18' WHERE id_emprestimo = 1;
-- 3. Criar uma trigger que impeça que um membro faça mais de 3 empréstimos ao mesmo tempo.

SELECT * from tb_emprestimo;

INSERT INTO tb_emprestimo (id_membroForeign, id_livroForeign, data_emprestimo, data_devolucao)
VALUES (1, 10, CURDATE(), NULL);


-- 4. Trigger de Atualização Automática da Data de Adesão

UPDATE tb_membros SET nome = 'Jãozin do Grau' WHERE id_membro = 1;

SELECT * FROM tb_membros WHERE id_membro = 1;

-- 5. Criar uma trigger que impeça a inserção de autores com nomes duplicados.
select * from tb_autores;
INSERT INTO tb_autores(id_autor, nome, data_nascimento, idade) VALUES(
'8',
'Marquin',
'1999/02/08',
NULL
);
INSERT INTO tb_autores(id_autor, nome, data_nascimento, idade) VALUES(
'9',
'Marquin',
'2009/12/18',
NULL
);