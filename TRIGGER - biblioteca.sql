USE db_biblioteca;

INSERT INTO tb_emprestimo(id_emprestimo, id_membroForeign ,id_livroForeign, data_emprestimo,data_devolucao) VALUES(
'7',
'2',
'1',
'2025/05/15',
'2025/09/30'
);

INSERT INTO tb_emprestimo(id_emprestimo, id_membroForeign ,id_livroForeign, data_emprestimo,data_devolucao) VALUES(
'9',
'2',
'3',
'2025/05/15',
'2025/09/30'
);

INSERT INTO tb_emprestimo(id_emprestimo, id_membroForeign ,id_livroForeign, data_emprestimo,data_devolucao) VALUES(
'10',
'1',
'3',
'2025/05/15',
'2025/09/30'
);

INSERT INTO tb_emprestimo(id_emprestimo, id_membroForeign ,id_livroForeign, data_emprestimo,data_devolucao) VALUES(
'11',
'1',
'5',
'2025/05/15',
'2025/09/30'
);

INSERT INTO tb_emprestimo(id_emprestimo, id_membroForeign ,id_livroForeign, data_emprestimo,data_devolucao) VALUES(
'12',
'1',
'1',
'2025/05/15',
'2025/09/30'
);

INSERT INTO tb_emprestimo(id_emprestimo, id_membroForeign ,id_livroForeign, data_emprestimo,data_devolucao) VALUES(
'13',
'1',
'2',
'2025/05/15',
'2025/09/30'
);

select * from tb_emprestimo;

INSERT INTO tb_autores(id_autor, nome, data_nascimento) VALUES(
'6',
'Scott Snyder',
'1976/01/15'
);