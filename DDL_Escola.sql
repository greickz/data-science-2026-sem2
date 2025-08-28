CREATE DATABASE db_ensino_superior;

USE db_ensino_superior;

CREATE TABLE tb_cursos(
id_curso INT Auto_increment NOT NULL UNIQUE,
nome_curso VARCHAR(100),
duracao_anos INT,
Primary Key(id_curso)
);

SELECT * FROM tb_cursos;

CREATE TABLE tb_professores(
id_professor INT Auto_increment NOT NULL UNIQUE,
nome_professor VARCHAR(100),
departamento VARCHAR(100),
ano_admissao DATE,
Primary Key(id_professor)
);

SELECT * FROM tb_professores;

CREATE TABLE tb_disciplinas(
id_disciplina INT Auto_increment NOT NULL UNIQUE,
nome_disciplina VARCHAR(100),
duracao_anos INT,
id_curso INT NOT NULL UNIQUE,
id_professor INT NOT NULL UNIQUE,
Primary Key(id_disciplina),
Foreign KEY(id_curso) REFERENCES tb_cursos(id_curso),
Foreign KEY(id_professor) REFERENCES tb_professores(id_professor)
);

SELECT * FROM tb_disciplinas;

CREATE TABLE tb_estudantes(
id_estudante INT Auto_increment NOT NULL UNIQUE,
nome_estudante VARCHAR(100),
data_nascimento DATE,
email_estudante VARCHAR(100),
id_curso INT NOT NULL UNIQUE,
Primary Key(id_estudante),
data_matricula DATE,
FOREIGN KEY(id_curso) REFERENCES tb_cursos(id_curso)
);

SELECT * FROM tb_estudantes;

CREATE TABLE tb_matriculas(
id_matricula INT Auto_increment NOT NULL UNIQUE,
id_estudante INT NOT NULL UNIQUE,
id_disciplina INT NOT NULL UNIQUE,
data_matricula DATE,
Primary Key(id_matricula),
FOREIGN KEY(id_estudante) REFERENCES tb_estudantes(id_estudante),
FOREIGN KEY(id_disciplina) REFERENCES tb_disciplinas(id_disciplina)
);

SELECT * FROM tb_matriculas;

CREATE TABLE tb_notas(
id_nota INT Auto_increment NOT NULL UNIQUE,
id_matricula INT NOT NULL UNIQUE,
nota DECIMAL(5,2),
Primary Key(id_nota),
FOREIGN KEY(id_matricula) REFERENCES tb_matriculas(id_matricula)
);

SELECT * FROM tb_notas;