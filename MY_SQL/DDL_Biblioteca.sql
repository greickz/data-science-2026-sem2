CREATE DATABASE db_biblioteca;

USE db_biblioteca;

CREATE TABLE tb_autores(
id_autor INT(10) NOT NULL UNIQUE, /* UNIQUE IMPEDE DUPLICADAS*/
nome VARCHAR(100),
data_nascimento DATE,
PRIMARY KEY(id_autor)
);
SELECT * FROM tb_autores;

CREATE TABLE tb_livros(
id_livro INT(10) NOT NULL,
titulo VARCHAR(50),
ano_publicacao YEAR,
id_autorForeign INT(10) NOT NULL UNIQUE,
PRIMARY KEY (id_livro),
FOREIGN KEY (id_autorForeign) REFERENCES tb_autores(id_autor)
);

SELECT * FROM tb_livros;

CREATE TABLE tb_membros(
id_membro INT(10) NOT NULL,
nome VARCHAR(100),
data_adesao Date,
PRIMARY KEY(id_membro)
);

SELECT * FROM tb_membros;

CREATE TABLE tb_emprestimo(
id_emprestimo INT(10) NOT NULL,
id_membroForeign INT(10) NOT NULL,
id_livroForeign INT(10) NOT NULL,
data_emprestimo Date,
data_devolucao Date,
PRIMARY KEY(id_emprestimo),
FOREIGN KEY (id_membroForeign) REFERENCES tb_membros(id_membro),
FOREIGN KEY (id_livroForeign) REFERENCES tb_livros(id_livro)
);

SELECT * FROM tb_emprestimo;
