-- Consulta de Dados

-- 1. Liste todos os estudantes cadastrados na tabela estudantes que pertencem ao curso de Ciência de Dados e foram matriculados em 2024.

SELECT nome_estudante, timestampdiff(YEAR, data_matricula, curdate()) from tb_estudantes where id_curso = '1' and data_matricula = 2024;


-- 2. Liste todos os professores que pertencem ao departamento de Ciência da Computação e possuem mais de 5 anos de experiência.

SELECT nome_professor from tb_professores where departamento = 'Ciência da Computação' and ano_admissao <= NOW() - INTERVAL 5 YEAR;

-- 3. Liste os nomes dos estudantes e suas notas nas disciplinas, ordenados pela nota em ordem decrescente e, em caso de empate,
-- pelo nome do estudante em ordem alfabética.

SELECT nome_estudante, nota from tb_estudantes as E
INNER JOIN tb_matriculas as M
ON M.id_estudante = E.id_estudante
INNER JOIN tb_notas as N
ON M.id_matricula = N.id_matricula
order by nota DESC;


-- 4. Encontre a média das notas dos estudantes no curso de Engenharia de Software.

SELECT AVG(nota) from tb_notas as N 
INNER JOIN tb_matriculas As M
ON N.id_matricula = M.id_matricula
INNER JOIN tb_estudantes As E
ON E.id_estudante = M.id_estudante where id_curso = 3;

-- 5. Liste os cursos que possuem mais de 5 estudantes matriculados. Exiba o nome do curso e o total de estudantes matriculados.

SELECT nome_estudante, nome_curso, count(E.id_curso) from tb_estudantes as E
inner join tb_matriculas as M
ON M.id_estudante = E.id_estudante
INNER JOIN tb_cursos as C
ON C.id_curso = E.id_curso WHERE E.id_curso > 5 group by E.id_curso ;


SELECT count(id_curso) from tb_estudantes group by(id_curso);

SELECT * FROM tb_estudantes;
select * from tb_matriculas;
SELECT * FROM tb_cursos;
SELECT * FROM tb_disciplinas;
SELECT * FROM tb_professores;