USE db_biblioteca;

INSERT INTO tb_autores(id_autor, nome, data_nascimento) VALUES(
'1',
'Akira Toryama',
'1955/04/05'
);

INSERT INTO tb_autores(id_autor, nome, data_nascimento) VALUES(
'2',
'Jerry Siegel ',
'1914/10/17'
);

INSERT INTO tb_autores(id_autor, nome, data_nascimento) VALUES(
'3',
'Masashi Kishimoto',
'1974/11/08'
);


INSERT INTO tb_autores(id_autor, nome, data_nascimento) VALUES(
'4',
'Makoto Yukimura',
'1986/05/08'
);

INSERT INTO tb_autores(id_autor, nome, data_nascimento) VALUES(
'5',
'Scott Snyder',
'1976/01/15'
);

SELECT * FROM tb_autores;


INSERT INTO tb_livros(id_livro, titulo ,ano_publicacao, id_autorForeign) VALUES(
'1',
'Dragon Ball ',
'1984',
'1'
);

INSERT INTO tb_livros(id_livro, titulo ,ano_publicacao, id_autorForeign) VALUES(
'2',
'Vinland Saga ',
'2005',
'4'
);

INSERT INTO tb_livros(id_livro, titulo ,ano_publicacao, id_autorForeign) VALUES(
'3',
'Batman Absolute',
'2024',
'5'
);

INSERT INTO tb_livros(id_livro, titulo ,ano_publicacao, id_autorForeign) VALUES(
'4',
'Naruto',
'1997',
'3'
);

INSERT INTO tb_livros(id_livro, titulo ,ano_publicacao, id_autorForeign) VALUES(
'5',
'O Reinado do Super-Homem',
'1938',
'2'
);

SELECT * FROM tb_livros;


INSERT INTO tb_membros(id_membro, nome ,data_adesao) VALUES(
'1',
'Lucas',
'2020/10/24'
);

INSERT INTO tb_membros(id_membro, nome ,data_adesao) VALUES(
'2',
'Miguel',
'2025/06/13'
);

INSERT INTO tb_membros(id_membro, nome ,data_adesao) VALUES(
'3',
'Gabriel',
'2025/04/05'
);

INSERT INTO tb_membros(id_membro, nome ,data_adesao) VALUES(
'4',
'Lucas',
'2018/08/12'
);

INSERT INTO tb_membros(id_membro, nome ,data_adesao) VALUES(
'5',
'Thiago',
'2007/12/27'
);

SELECT * FROM tb_membros;


INSERT INTO tb_emprestimo(id_emprestimo, id_membroForeign ,id_livroForeign, data_emprestimo,data_devolucao) VALUES(
'1',
'5',
'5',
'2008/02/25',
'2008/05/05'
);

INSERT INTO tb_emprestimo(id_emprestimo, id_membroForeign ,id_livroForeign, data_emprestimo,data_devolucao) VALUES(
'2',
'1',
'3',
'2024/07/15',
'2024/11/30'
);

INSERT INTO tb_emprestimo(id_emprestimo, id_membroForeign ,id_livroForeign, data_emprestimo,data_devolucao) VALUES(
'3',
'4',
'1',
'2025/01/04',
'2025/08/20'
);

INSERT INTO tb_emprestimo(id_emprestimo, id_membroForeign ,id_livroForeign, data_emprestimo,data_devolucao) VALUES(
'4',
'2',
'4',
'2025/05/26',
'2025/10/12'
);

INSERT INTO tb_emprestimo(id_emprestimo, id_membroForeign ,id_livroForeign, data_emprestimo,data_devolucao) VALUES(
'5',
'3',
'2',
'2025/03/03',
'2025/06/16'
);

SELECT * FROM tb_emprestimo;

UPDATE tb_emprestimo  SET data_devolucao = '2010/04/12' WHERE id_emprestimo = '1';
SELECT * FROM tb_emprestimo;

UPDATE tb_emprestimo  SET data_devolucao = '2025/04/12' WHERE id_emprestimo = '2';
SELECT * FROM tb_emprestimo;

UPDATE tb_emprestimo  SET data_devolucao = '2025/11/20' WHERE id_emprestimo = '3';
SELECT * FROM tb_emprestimo;

UPDATE tb_emprestimo  SET data_devolucao = '2026/02/15' WHERE id_emprestimo = '4';
SELECT * FROM tb_emprestimo;

UPDATE tb_emprestimo  SET data_devolucao = '2025/09/05' WHERE id_emprestimo = '5';
SELECT * FROM tb_emprestimo;