USE db_biblioteca;

/* EXERCICIO 1*/

SELECT  titulo , A.nome  as 'Autor' FROM tb_livros as L
INNER JOIN tb_autores AS A
on L.id_autorForeign = A.id_autor;

/* EXERCICIO 2*/

SELECT titulo, A.nome, ano_publicacao from tb_livros as L
INNER JOIN tb_autores as A
on L.id_autorForeign = A.id_autor;

/* EXERCICIO 3*/

SELECT  M.nome as 'Membro', titulo, data_emprestimo from tb_emprestimo as E
INNER JOIN tb_membros as M
on E.id_membroForeign = M.id_membro
INNER JOIN tb_livros as L
on L.id_livro = E.id_livroForeign;

/* EXERCICIO 4*/

SELECT  id_emprestimo, M.nome as 'Nome do Membro', titulo, A.nome as 'Autor', data_devolucao from tb_emprestimo as E
INNER JOIN tb_membros as M
ON E.id_membroForeign = M.id_membro
INNER JOIN tb_livros as L
ON L.id_livro = E.id_livroForeign
INNER JOIN tb_autores as A
ON A.id_autor = L.id_autorForeign;

/* Exercicio 5 */

SELECT M.nome as 'Membro', titulo  FROM tb_emprestimo AS E 
LEFT JOIN tb_livros AS L
ON L.id_livro = E.id_livroForeign
LEFT JOIN tb_membros AS M
ON M.id_membro = E.id_membroForeign;

/* Exercicio 6 */


SELECT titulo , A.nome  FROM tb_livros AS L 
LEFT JOIN tb_autores AS A
ON L.id_autorForeign = A.id_autor;

/* Exercicio 7 */

INSERT INTO tb_autores(id_autor, nome, data_nascimento) VALUES(
'6',
'John Jonnes',
'1985/07/23'
);

SELECT A.nome , titulo  FROM tb_livros AS L 
RIGHT JOIN tb_autores AS A
ON L.id_autorForeign = A.id_autor;

/* Exercicio 8 */

SELECT titulo as 'Livro emprestado' , M.nome as 'Membro' FROM tb_emprestimo AS E 
RIGHT JOIN tb_membros AS M
ON E.id_membroForeign = M.id_membro
RIGHT JOIN tb_livros AS L
ON E.id_livroForeign = L.id_livro;

SELECT * FROM tb_autores;
SELECT * FROM tb_livros;
SELECT * FROM tb_membros;
SELECT * FROM tb_emprestimo;