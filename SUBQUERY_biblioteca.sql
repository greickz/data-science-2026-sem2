USE db_biblioteca;

-- Exercicio 1

-- Passo 1
SELECT AVG(ano_publicacao) from tb_livros;

-- Passo 2
SELECT id_autorForeign FROM tb_livros WHERE ano_publicacao > '1989.6000';

-- Passo 3
SELECT A.nome FRom tb_livros AS L
INNER JOIN tb_autores as A
on L.id_autorForeign = A.id_autor
-- Resultado
WHERE ano_publicacao > (SELECT AVG(ano_publicacao) from tb_livros);

-- Exercicio 2

-- passo 1

SELECT * FROM tb_livros;

-- passo 2

SELECT * FROM tb_emprestimo;

-- resultado

SELECT * FROM tb_livros WHERE id_livro IN (SELECT id_livro FROM tb_emprestimo);

INSERT INTO tb_livros(id_livro, titulo ,ano_publicacao, id_autorForeign) VALUES(
'6',
'O Espertcular Homem-Aranha',
'1962',
'2'
);

-- exercicio 3

-- passo 1

SELECT * FROM tb_livros;

-- passo 2

SELECT id_livroForeign FROM tb_emprestimo;

-- RESULTADO
SELECT * FROM tb_livros WHERE id_livro NOT IN (SELECT id_livroForeign FROM tb_emprestimo);



SELECT * FROM tb_autores;
SELECT * FROM tb_livros;
SELECT * FROM tb_membros;
SELECT * FROM tb_emprestimo;