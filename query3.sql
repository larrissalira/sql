-- Consultar quantos alunos temos em cada turma. --

SELECT 
    id_turma, COUNT(id_turma) AS quantidade_de_alunos
FROM
    aluno
GROUP BY id_turma;


