-- Criando Banco de dados para um serviço de farmacia Ativ 3
CREATE DATABASE db_farmacia_bem_estar;

-- Selecionando banco de dados
USE db_farmacia_bem_estar;

-- Criando tabela de categorias
CREATE TABLE tb_categorias (
id bigint auto_increment,
produto varchar(255) not null,
classe varchar(255) not null,
primary key (id)
);

-- Inserindo dados das categorias na tabela
INSERT INTO tb_categorias (produto, classe)
VALUES ("Remédio", "Adulto");

INSERT INTO tb_categorias (produto, classe)
VALUES ("Remédio", "Infantil");

INSERT INTO tb_categorias (produto, classe)
VALUES ("Higiene", "Adulto");

INSERT INTO tb_categorias (produto, classe)
VALUES ("Higiene", "Infantil");

INSERT INTO tb_categorias (produto, classe)
VALUES ("Cosmético", "Adulto");


-- Criando tabela de produtos
CREATE TABLE tb_produtos (
id bigint auto_increment,
descricao varchar(255) not null,
marca varchar(255) not null,
quantidade int,
valor decimal (10, 2) not null,
categorias_id bigint,
primary key (id),
foreign key (categorias_id) references tb_categorias (id)
);

-- Inserindo dados dos produtos na tabela
INSERT INTO tb_produtos (categorias_id, descricao, marca, valor, quantidade)
VALUES (1, "Remédio para Dor Muscular", "Dorflex", 5.49, 5);

INSERT INTO tb_produtos (categorias_id, descricao, marca, valor, quantidade)
VALUES (1, "Remédio para Dor Muscular", "Dipirona", 14.90, 8);

INSERT INTO tb_produtos (categorias_id, descricao, marca, valor, quantidade)
VALUES (2, "Xarope Pediatrico", "Vick", 26.90, 2);

INSERT INTO tb_produtos (categorias_id, descricao, marca, valor, quantidade)
VALUES (3, "Sabonete Liquido", "Nivea", 29.90, 5);

INSERT INTO tb_produtos (categorias_id, descricao, marca, valor, quantidade)
VALUES (3, "Escovas de Dentes", "Colgate", 27.50, 4);

INSERT INTO tb_produtos (categorias_id, descricao, marca, valor, quantidade)
VALUES (4, "Sabonete Liquido", "Johnson's baby", 18.90, 2);

INSERT INTO tb_produtos (categorias_id, descricao, marca, valor, quantidade)
VALUES (4, "Fraldas", "Pampers", 92.99, 10);

INSERT INTO tb_produtos (categorias_id, descricao, marca, valor, quantidade)
VALUES (5, "Mascara Capilar", "Haskell", 45.30, 4);


-- Consultando dados
SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60 ORDER BY descricao;

SELECT * FROM tb_produtos WHERE descricao LIKE "%c%";

SELECT  tb_categorias.classe, tb_categorias.produto, descricao, marca, valor, quantidade 
FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categorias_id ORDER BY tb_categorias.classe;

SELECT tb_categorias.classe, tb_categorias.produto, descricao, marca, valor, quantidade 
FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categorias_id
WHERE tb_categorias.classe LIKE "%Infantil%" ORDER BY tb_categorias.classe;
