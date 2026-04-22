USE db_biblioteca;

SELECT * FROM tb_livros;
SELECT * FROM tb_membros;
SELECT * FROM tb_emprestimo;
SELECT * FROM tb_autores;

/*Exercício 1*/

SELECT MIN(ano_publicacao) AS 'LIVRO MAIS VELHO' FROM tb_livros ;

select titulo, ano_publicacao from tb_livros order by ano_publicacao ASC limit 1; /*Forma que o professor ensinou para inserir o titulo junto, não é o resultado final*/

/*Exercício 2*/

SELECT MAX(ano_publicacao) FROM tb_livros;

/*Exercício 3*/

SELECT COUNT(id_livro) AS 'QUANTIDADE DE LIVROS REGISTRADOS' FROM tb_livros;

/*Exercício 4*/

SELECT * FROM tb_emprestimo  WHERE data_devolucao = '2025-04-12';

/*EXERCICIO 5*/

SELECT * FROM tb_autores ORDER BY nome ASC;

/*EXERCICIO 6*/

SELECT * FROM tb_livros ORDER BY titulo DESC;