-- CRIANDO O BANCO DE DADOS RESILIA E POPULANDO ELE (que foi a atividade de primeira sprint)
-- COMPLEMENTANDO O BANCO COM AS REQUISIÇÕES DA SEGUNDA SPRINT: Criar uma nova entidade chamada 
-- “entregas”, essa entidade vai receber um link com o repositório da entrega, o módulo do projeto,
-- quem é o aluno e qual o conceito daquele projeto (Ainda não está pronto, Chegando lá, Pronto ou Mais que Pronto)
-- O cadastro de alunos deve permitir vários e-mails (quantos forem necessários adicionar, sem limite).


CREATE DATABASE RESILIA;

USE RESILIA;

CREATE TABLE CURSO (
ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
FRENTE VARCHAR(255)
);

CREATE TABLE TURMA (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    CURSO INT,
    FOREIGN KEY (CURSO)
        REFERENCES CURSO (ID)
);
    
CREATE TABLE ALUNO (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    NOME VARCHAR(255),
    CPF VARCHAR(11),
    EMAIL TEXT,
    ID_TURMA INT,
    FOREIGN KEY (ID_TURMA)
        REFERENCES TURMA (ID)
);

CREATE TABLE FACILITADOR (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    NOME VARCHAR(255),
    FRENTE VARCHAR(255),
    ID_TURMA INT,
    FOREIGN KEY (ID_TURMA)
        REFERENCES TURMA (ID)
);

CREATE TABLE entregas (
    ID_ENTREGA INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    link VARCHAR(500),
    modulo_projeto INT NOT NULL,
    id_aluno INT,
    FOREIGN KEY (id_aluno)
        REFERENCES aluno (ID),
    conceito VARCHAR(255)
);

-- POPULANDO A COLUNA EMAIL NA TABELA ALUNOS

UPDATE aluno 
SET 
    email = 'pedromalabares@hotmail.com'
WHERE
    ID = 1;
UPDATE aluno 
SET 
    email = ('carolsouza@bol.com.br', 'carolinasz@gmail.com')
WHERE
    ID = 2;
UPDATE aluno 
SET 
    email = 'karinasilva@uol.com'
WHERE
    ID = 3;
UPDATE aluno 
SET 
    email = 'mirnaramos@outlook.com'
WHERE
    ID = 4;
UPDATE aluno 
SET 
    email = 'larrissalira@gmail.com'
WHERE
    ID = 5;
UPDATE aluno 
SET 
    email = 'larrissa@msn.com'
WHERE
    ID = 6;
    
-- POPULANDO A TABELA ENTREGAS:

SELECT 
    *
FROM
    resilia.entregas;
INSERT INTO entregas (link, modulo_projeto, id_aluno, conceito, id_turma) VALUES ('https://www.devmedia.com.br/responsive-design-dicas-para-tornar-seu-site-acessivel-em-qualquer-resolucao/28316', 1, 1, 'pronto', 1);
INSERT INTO entregas (link, modulo_projeto, id_aluno, conceito, id_turma) VALUES ('https://regexcrossword.com/howtoplay', 1, 2, 'mais que pronto', 1);
INSERT INTO entregas (link, modulo_projeto, id_aluno, conceito, id_turma) VALUES ('https://www.youtube.com/watch?v=RhDrRLdcvjs&t=144s', 3, 3, 'pronto', 2);
INSERT INTO entregas (link, modulo_projeto, id_aluno, conceito, id_turma) VALUES ('https://www.youtube.com/watch?v=cjkHhPDCYLs', 1, 4, 'ainda não está pronto', 2);
INSERT INTO entregas (link, modulo_projeto, id_aluno, conceito, id_turma) VALUES ('https://www.youtube.com/watch?v=vOQDTM8cbR0', 1, 5, 'pronto', 1);
INSERT INTO entregas (link, modulo_projeto, id_aluno, conceito, id_turma) VALUES ('https://www.youtube.com/watch?v=tSAuUxnJlcA', 1, 6, 'chegando lá', 2);

