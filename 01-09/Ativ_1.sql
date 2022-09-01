-- Criando Banco de dados para serviços de RH Ativ 1
CREATE DATABASE db_rhdoamor;

-- Selecionando banco de dados
USE db_rhdoamor;

-- Criando tabela de colaboradores
CREATE TABLE tb_colaboradores (
id bigint auto_increment,
nome varchar(100),
idade int,
cpf varchar(100),
cargo varchar(255),
salario decimal(10,2),
primary key (id)
);

-- Inserindo dados dos colaboradores na tabela
INSERT INTO tb_colaboradores (nome, idade, cpf, cargo, salario)
VALUES ("Ana Luiza Santos", 22, "123.321.123-02", "auxiliar administrativa", 2500);

INSERT INTO tb_colaboradores (nome, idade, cpf, cargo, salario)
VALUES ("Bruno Oliveira", 35, "234.321.622-07", "contador", 3500);

INSERT INTO tb_colaboradores (nome, idade, cpf, cargo, salario)
VALUES ("Carla Guimarães", 45, "545.123.221-02", "projetista", 7500);

INSERT INTO tb_colaboradores (nome, idade, cpf, cargo, salario)
VALUES ("Diego Rocha", 18, "875.458.639-10", "estagiario", 1800);

INSERT INTO tb_colaboradores (nome, idade, cpf, cargo, salario)
VALUES ("Elena", 30, "989.336.484-26", "projetista", 7500);

-- Consultando dados
SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Atualizando dados 
UPDATE tb_colaboradores SET nome = "Ana Luiza dos Santos" WHERE id = 1;
