-- Criando Banco de dados para escola Ativ 3
CREATE DATABASE db_escola;

-- Selecionando banco de dados
USE db_escola;

-- Criando tabela de alunes
CREATE TABLE tb_alunes (
id bigint auto_increment,
nome varchar(100),
turma varchar(255),
periodo varchar (100),
notaf decimal(4,2),
situacao varchar(255),
primary key (id)
);

-- Inserindo dados dos alunes na tabela
INSERT INTO tb_alunes (nome, turma, periodo, notaf, situacao)
VALUES ("Natali Santos", "ES4", "Matutino", 10, "Aprovada");

INSERT INTO tb_alunes (nome, turma, periodo, notaf, situacao)
VALUES ("Miguel Henrique Gomes", "ES4", "Matutino", 7.5, "Recuperação");

INSERT INTO tb_alunes (nome, turma, periodo, notaf, situacao)
VALUES ("Andre Gomes", "ES4", "Matutino", 8.5, "Aprovado");

INSERT INTO tb_alunes (nome, turma, periodo, notaf, situacao)
VALUES ("Giovanni Martins", "AR2", "Noturno", 10, "Aprovado");

INSERT INTO tb_alunes (nome, turma, periodo, notaf, situacao)
VALUES ("Carol Menezes", "AR7", "Noturno", 5, "Reprovada");

INSERT INTO tb_alunes (nome, turma, periodo, notaf, situacao)
VALUES ("Luiz Gonçalves", "AR2", "Noturno", 3, "Reprovado");

INSERT INTO tb_alunes (nome, turma, periodo, notaf, situacao)
VALUES ("Julia Lima", "EF4", "Matutino", 0, "Reprovada");

INSERT INTO tb_alunes (nome, turma, periodo, notaf, situacao)
VALUES ("Caio Andrade", "AN8", "Noturno", 7, "Recuperação");

-- Consultando dados
SELECT * FROM tb_alunes;
SELECT * FROM tb_alunes WHERE notaf > 7;
SELECT * FROM tb_alunes WHERE notaf < 7;

-- Atualizando dados 
UPDATE tb_alunes SET notaf = 2 WHERE id = 7;
