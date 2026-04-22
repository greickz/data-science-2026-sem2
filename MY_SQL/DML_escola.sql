INSERT INTO tb_cursos(id_curso,nome_curso, duracao_anos) VALUES (
'1',
'Ciência De Dados',
'2'
);

INSERT INTO tb_cursos(id_curso,nome_curso, duracao_anos) VALUES (
'2',
'Ciência da Computação',
'4'
);

INSERT INTO tb_cursos(id_curso,nome_curso, duracao_anos) VALUES (
'3',
'Engenharia de Software',
'6'
);

INSERT INTO tb_cursos(id_curso,nome_curso, duracao_anos) VALUES (
'4',
'Desenvolvimento de Sistemas',
'4'
);

INSERT INTO tb_cursos(id_curso,nome_curso, duracao_anos) VALUES (
'5',
'Cyber Security',
'2'
);

SELECT * FROM tb_cursos;


INSERT INTO tb_professores( nome_professor, departamento, ano_admissao) VALUES(
'Rafael',
'Tecnologia',
'2022-01-05'
);

INSERT INTO tb_professores(nome_professor, departamento, ano_admissao) VALUES(
'Seu Sidney',
'Matemática',
'2018-07-14'
);

INSERT INTO tb_professores(id_professor, nome_professor, departamento, ano_admissao) VALUES(
'3',
'Jéssica',
'Tecologia',
'2021-01-23'
);

INSERT INTO tb_professores(id_professor, nome_professor, departamento, ano_admissao) VALUES(
'4',
'Caique',
'Tecologia',
'2020-08-17'
);

INSERT INTO tb_professores(id_professor, nome_professor, departamento, ano_admissao) VALUES(
'5',
'Dona Mimosa',
'Legislação',
'2020-08-17'
);

SELECT * FROM tb_professores;
UPDATE tb_professores SET departamento = 'Ciência da Computação' where id_professor = 1;

INSERT INTO tb_disciplinas(nome_disciplina, duracao_anos, id_curso, id_professor) VALUES(
'HTML, CSS, JAVASCRIPT',
'1',
'4',
'3'
);



INSERT INTO tb_disciplinas(nome_disciplina, duracao_anos, id_curso, id_professor) VALUES(
'Matemática',
'2',
'2',
'2'
);

INSERT INTO tb_disciplinas(nome_disciplina, duracao_anos, id_curso, id_professor) VALUES(
'Banco de Dados',
'1',
'1',
'4'
);

INSERT INTO tb_disciplinas(id_disciplina, nome_disciplina, duracao_anos, id_curso, id_professor) VALUES(
'3',
'Banco de Dados',
'1',
'1',
'4'
);

INSERT INTO tb_disciplinas(id_disciplina, nome_disciplina, duracao_anos, id_curso, id_professor) VALUES(
'4',
'Legislação cibernética',
'1',
'5',
'5'
);

INSERT INTO tb_disciplinas(id_disciplina, nome_disciplina, duracao_anos, id_curso, id_professor) VALUES(
'5',
'Redes e trafégo cibernético',
'3',
'3',
'1'
);

SELECT * FROM tb_disciplinas;



INSERT INTO tb_estudantes(nome_estudante, data_nascimento, email_estudante, id_curso, data_matricula) VALUES(
'Thiaguinho',
'2004-08-24',
'thiagoreidelas22@gmail.com',
'5',
'2024-01-10'
);

INSERT INTO tb_estudantes(nome_estudante, data_nascimento, email_estudante, id_curso, data_matricula) VALUES(
'Ana',
'2001-03-06',
'ana80pereira@hotmail.com',
'3',
'2024-01-10'
);

INSERT INTO tb_estudantes(nome_estudante, data_nascimento, email_estudante, id_curso, data_matricula) VALUES(
'Gabriel',
'1998-10-31',
'gabreilgomez_gg@yahoo.com',
'4',
'2024-12-27'
);

INSERT INTO tb_estudantes(nome_estudante, data_nascimento, email_estudante, id_curso, data_matricula) VALUES(
'Mariana',
'2006-09-07',
'jones_marianasoffa@outlook.com',
'1',
'2025-01-23'
);

INSERT INTO tb_estudantes(nome_estudante, data_nascimento, email_estudante, id_curso, data_matricula) VALUES(
'Cláudio',
'1982-01-22',
'claudioalessandro892@terra.com.br',
'2',
'2023-12-08'
);

UPDATE tb_estudantes SET nome_estudante= 'Tiago' where id_estudante = 1;

SELECT * FROM tb_estudantes;


INSERT INTO tb_matriculas(id_matricula, id_estudante, id_disciplina, data_matricula) VALUES(
'1',
'3',
'1',
'2024-03-15'
);

INSERT INTO tb_matriculas(id_matricula, id_estudante, id_disciplina, data_matricula) VALUES(
'2',
'5',
'2',
'2024-01-25'
);

INSERT INTO tb_matriculas(id_matricula, id_estudante, id_disciplina, data_matricula) VALUES(
'3',
'1',
'4',
'2025-08-04'
);

INSERT INTO tb_matriculas(id_matricula, id_estudante, id_disciplina, data_matricula) VALUES(
'5',
'4',
'3',
'2025-09-02'
);

INSERT INTO tb_matriculas(id_matricula,id_estudante, id_disciplina, data_matricula) VALUES(
'4',
'2',
'5',
'2025-09-02'
);

SELECT * FROM tb_matriculas;
UPDATE tb_matriculas SET data_matricula = '2023-12-08' where id_estudante = 5;
SELECT * FROM tb_estudantes;


INSERT INTO tb_notas( id_matricula, nota) VALUES(
'2',
'8.5'
);

INSERT INTO tb_notas( id_matricula, nota) VALUES(
'1',
'5.0'
);

INSERT INTO tb_notas( id_matricula, nota) VALUES(
'5',
'10'
);

INSERT INTO tb_notas( id_matricula, nota) VALUES(
'4',
'3.4'
);

INSERT INTO tb_notas( id_matricula, nota) VALUES(
'3',
'7.8'
);

SELECT * FROM tb_matriculas;
SELECT * FROM tb_notas;