-- Quantos projetos no total (entre todas as turmas) foram entregues com conceito
-- "Ainda não está pronto" e "Chegando lá".

SELECT 
    entregas.id_turma,
    entregas.conceito,
    COUNT(entregas.conceito) AS quantidade_conceito
FROM
    entregas
        INNER JOIN
    turma
WHERE
    turma.ID = entregas.id_turma
        AND entregas.conceito = 'ainda não está pronto'
        OR entregas.conceito = 'chegando lá'
GROUP BY entregas.id_turma , entregas.conceito
ORDER BY quantidade_conceito;



