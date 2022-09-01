-- Criando Banco de dados para e-commerce Ativ 2
CREATE DATABASE db_ecommerce;

-- Selecionando banco de dados
USE db_ecommerce;

-- Criando tabela de produtos
CREATE TABLE tb_produtos (
id bigint auto_increment,
descricao varchar(250),
marca varchar(250),
especificacoes varchar(250),
valor decimal(10,2),
qtde int,
primary key (id)
);

-- Inserindo dados dos produtos na tabela
INSERT INTO tb_produtos (descricao, marca, especificacoes, valor, qtde)
VALUES ("iPhone 13", "Apple", "(128GB) Estelar, Tela de 6,1, Branco", 5099, 3);

INSERT INTO tb_produtos (descricao, marca, especificacoes, valor, qtde)
VALUES ("Smartphone", "Motorola", " Moto G22 128GB, Preto", 2569 , 2);

INSERT INTO tb_produtos (descricao, marca, especificacoes, valor, qtde)
VALUES ("Tablet", "Samsung", " Octa-Core, Tela 10.4, Cinza", 1169.10 , 4);

INSERT INTO tb_produtos (descricao, marca, especificacoes, valor, qtde)
VALUES ("Notebook", "Acer", "Aspire 5 Intel, 8GB RAM, Prata", 6999.99 , 2);

INSERT INTO tb_produtos (descricao, marca, especificacoes, valor, qtde)
VALUES ("Notebook", "Dell", "Inspiron 15 3000, Branco", 3352 , 1);

INSERT INTO tb_produtos (descricao, marca, especificacoes, valor, qtde)
VALUES ("Headset", "Acer", "Microfone Omnidirecional, Preto", 199.99 , 6);

INSERT INTO tb_produtos (descricao, marca, especificacoes, valor, qtde)
VALUES ("Headset", "JBL", "Tune 510BT Pure Bass, Preto", 229 , 3);

INSERT INTO tb_produtos (descricao, marca, especificacoes, valor, qtde)
VALUES ("Headset", "Microsoft", "Modern Wireless, Vermelho", 459.99 , 1);

-- Consultando dados
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

-- Atualizando dados 
UPDATE tb_produtos SET valor = 3799.99 WHERE id = 4;
