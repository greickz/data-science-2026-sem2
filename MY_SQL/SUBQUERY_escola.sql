-- SUBQUERY

-- 1. Liste os cursos que possuem mais de 5 disciplinas associadas.

SELECT nome_curso
FROM tb_cursos C
WHERE (SELECT COUNT(*) FROM tb_disciplinas as D WHERE id_curso = id_curso) > 5;

-- 2. Liste os estudantes que estão matriculados em mais disciplinas do que a média de disciplinas por estudante.

SELECT nome_estudante from tb_estudantes ;

SELECT * from tb_estudantes;
SELECT * FROM tb_notas;
select * from tb_matriculas;
SELECT * FROM tb_cursos;
SELECT * FROM tb_disciplinas;
SELECT * FROM tb_professores;