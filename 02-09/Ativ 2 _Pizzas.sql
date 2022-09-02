-- Criando Banco de dados para um serviço de pizzaria Ativ 2
CREATE DATABASE db_pizzaria_legal;

-- Selecionando banco de dados
USE db_pizzaria_legal;

-- Criando tabela de categorias
CREATE TABLE tb_categorias (
id bigint auto_increment,
tamanho varchar(255) not null,
tipo varchar(255) not null,
primary key (id)
);

-- Inserindo dados das categorias na tabela
INSERT INTO tb_categorias (tamanho, tipo)
VALUES ("Brotinho", "Doce");

INSERT INTO tb_categorias (tamanho, tipo)
VALUES ("Brotinho", "Tradicional");

INSERT INTO tb_categorias (tamanho, tipo)
VALUES ("Média", "Doce");

INSERT INTO tb_categorias (tamanho, tipo)
VALUES ("Média", "Tradicional");

INSERT INTO tb_categorias (tamanho, tipo)
VALUES ("Grande", "Doce");

INSERT INTO tb_categorias (tamanho, tipo)
VALUES ("Grande", "Tradicional");


-- Criando tabela de pizzas
CREATE TABLE tb_pizzas (
id bigint auto_increment,
sabor varchar(255) not null,
ingredientes varchar(255) not null,
sabor_borda varchar(255) not null,
valor decimal (10, 2) not null,
categorias_id bigint,
primary key (id),
foreign key (categorias_id) references tb_categorias (id)
);

-- Inserindo dados das pizzas na tabela
INSERT INTO tb_pizzas (categorias_id, sabor, ingredientes, sabor_borda, valor)
VALUES (1, "Prestigio", "Chocolate ao Leite, Coco e Granulado", "Chocolate", 32.00);

INSERT INTO tb_pizzas (categorias_id, sabor, ingredientes, sabor_borda, valor)
VALUES (1, "Romeu e Julieta", "Goiabada e Mussarela", "Sem Recheio", 24.00);

INSERT INTO tb_pizzas (categorias_id, sabor, ingredientes, sabor_borda, valor)
VALUES (2, "Bacon", "Bacon e Mussarela", "Catupiry", 28.00);

INSERT INTO tb_pizzas (categorias_id, sabor, ingredientes, sabor_borda, valor)
VALUES (3, "Uvas", "Chocolate ao Leite e Uvas", "Chocolate", 47.00);

INSERT INTO tb_pizzas (categorias_id, sabor, ingredientes, sabor_borda, valor)
VALUES (4, "Siciliana", "Bacon, Mussarela e Champignon", "Catupiry", 52.00);

INSERT INTO tb_pizzas (categorias_id, sabor, ingredientes, sabor_borda, valor)
VALUES (4, "Atum", "Atum, Mussarela e Tomates", "Mussarela", 61.50);

INSERT INTO tb_pizzas (categorias_id, sabor, ingredientes, sabor_borda, valor)
VALUES (5, "Fondue", "Chocolate ao Leite, Morango e Uvas", "Chocolate", 84.90);

INSERT INTO tb_pizzas (categorias_id, sabor, ingredientes, sabor_borda, valor)
VALUES (6, "Quatro Queijos", "Mussarela, Provolone, Parmesão e Gorgonzola", "Cheddar", 105.50);

INSERT INTO tb_pizzas (categorias_id, sabor, ingredientes, sabor_borda, valor)
VALUES (6, "Franqueijo", "Frango, Mussarela, Provolone, Parmesão e Gorgonzola", "Mussarela", 129.00);


-- Consultando dados
SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100 ORDER BY sabor;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT  tb_categorias.tamanho, tb_categorias.tipo, sabor, ingredientes, sabor_borda, valor 
FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id ORDER BY tb_categorias.tamanho;

SELECT tb_categorias.tamanho, tb_categorias.tipo, sabor, ingredientes, sabor_borda, valor 
FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id
WHERE tb_categorias.tipo LIKE "%Doce%" ORDER BY sabor;
