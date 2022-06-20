-- Qual a turma com a maior quantidade de projetos no "Mais que pronto"?

SELECT 
    id_turma, COUNT(id_turma) AS quantidade_maisq_pronto
FROM
    entregas
WHERE
    conceito = 'mais que pronto'
GROUP BY id_turma
ORDER BY quantidade_maisq_pronto;

