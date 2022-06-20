-- Saber quem são os alunos que entregaram o projeto do módulo 1, 
-- e estão com o conceito em "Pronto" ou "Mais que pronto" 

SELECT 
    *
FROM
    entregas
WHERE
    modulo_projeto = '1'
        AND conceito = 'pronto'
        OR conceito = 'mais que pronto';
