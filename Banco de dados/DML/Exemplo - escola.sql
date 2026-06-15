INSERT INTO curso_disciplina (id_curso, iddisciplina)
VALUES

-- Curso 1 (Técnico em informatica)
-- Possui disciplina 1 (banco de dados)
(2, 1),

--Curso 1 (Técnico em informatica)
--Possui disciplina 1 (Matemática)
 (2, 2),

 -- Curso 1(Técnico em informatica)
--Possui disciplina 1 (Química)
(2, 3),

 -- Curso 1 (Técnico em informatica)
 -- Possui disciplina 1 (Português)
(2, 4),

-- curso 1 (Técnico em informatica)
-- Possui disciplina 1 (fisica)
(2, 5);


INSERT INTO curso_disciplina (id_curso, iddisciplina)
VALUES

-- Curso 2 (Técnico em Agricultura)
-- Possui disciplina 2 (História)
(2, 10),

--Curso 2 (Técnico em Agricultura)
--Possui disciplina 3 (Matemática)
 (2, 11),

 -- Curso 2 (Técnico em Agricultura)
--Possui disciplina 4 (Química)
(2, 12),

 -- Curso 2 (Técnico em Agricultura)
 -- Possui disciplina 5 (Português)
(2, 13);


 INSERT INTO turmas(id_curso, id_professor, ano, serie)
 VALUES
 -- turma do curso técnico em informatica
 -- professor responsável: mateus
 -- ano letivo: 2026
 -- serie: 2º ano
 (1, 3, 2026, 2);

 INSERT INTO alunos(nome, data_nascimento, cpf, email, telefone,
data_nascimento, id_turma)

VALUES 
(
 -- Aluno matriculado na turma 2 (2º ano)
 'arthur simões',
 '2008-20-11',
 '909.273.552-65',
 'arthur@mail.com',
 '(63)99999-3333', 
 '2025-10-16', 
 1
);curso

INSERT INTO notas(id_aluno, id_disciplina, nota)
VALUES
-- mateus tirou 10.0 em banco de dados 
(2, 1, 10.0);

SELECT *
FROM Aluno
WHERE nota > 8;

UPDATE professor
SET telefone ='(63)98888-1111'
WHERE id_professor = 1;

UPDATE professor
SET especialidade ='matemática'
WHERE id_professor = 4;

UPDATE cursos
SET carga_horaria = 1400
WHERE id_curso = 1;

DELETE FROM disciplina
WHERE id_disciplina = 4;

DELETE FROM alunos
WHERE id_aluno = 1;

