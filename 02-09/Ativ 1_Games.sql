-- Criando Banco de dados para um serviço de game Ativ 1
CREATE DATABASE db_generation_game_online;

-- Selecionando banco de dados
USE db_generation_game_online;

-- Criando tabela de classes
CREATE TABLE tb_classes (
id bigint auto_increment,
classe varchar(255) not null,
velocidade varchar(255) not null,
primary key (id)
);

-- Inserindo dados das classes na tabela
INSERT INTO tb_classes (classe, velocidade)
VALUES ("Atirador", "Rapido");

INSERT INTO tb_classes (classe, velocidade)
VALUES ("Suporte", "Lento");

INSERT INTO tb_classes (classe, velocidade)
VALUES ("Caçador", "Rapido");

INSERT INTO tb_classes (classe, velocidade)
VALUES ("Mago", "Médio");

INSERT INTO tb_classes (classe, velocidade)
VALUES ("Guerreiro", "Médio");


-- Criando tabela de personagens
CREATE TABLE tb_personagens (
id bigint auto_increment,
nome varchar(255) not null,
poder_ataque int not null,
poder_defesa int not null,
combate varchar(255) not null,
genero varchar(255) not null,
arma varchar(255) not null,
classes_id bigint,
primary key (id),
foreign key (classes_id) references tb_classes (id)
);

-- Inserindo dados dos personagens na tabela
INSERT INTO tb_personagens (nome,  genero, classes_id, combate, arma, poder_ataque, poder_defesa)
VALUES ("Jack", "Feminino", 5, "Corporal", "Espada", 1900, 2100);

INSERT INTO tb_personagens (nome,  genero, classes_id, combate, arma, poder_ataque, poder_defesa)
VALUES ("Cronos", "Masculino", 2, "Corporal", "Machado", 1200, 2300);

INSERT INTO tb_personagens (nome,  genero, classes_id, combate, arma, poder_ataque, poder_defesa)
VALUES ("Nick", "Feminino", 1, "A Distancia", "Arco e Flecha", 2400, 1000);

INSERT INTO tb_personagens (nome,  genero, classes_id, combate, arma, poder_ataque, poder_defesa)
VALUES ("Louis", "Feminino", 1, "A Distancia", "Canhão", 2500, 1200);

INSERT INTO tb_personagens (nome,  genero, classes_id, combate, arma, poder_ataque, poder_defesa)
VALUES ("Claus", "Masculino", 3, "Corporal", "Adagas", 2500, 1500);

INSERT INTO tb_personagens (nome,  genero, classes_id, combate, arma, poder_ataque, poder_defesa)
VALUES ("Anny", "Feminino", 4, "A Distancia", "Magias", 2200, 1000);

INSERT INTO tb_personagens (nome,  genero, classes_id, combate, arma, poder_ataque, poder_defesa)
VALUES ("Gab", "Masculino", 3, "Corporal", "Garras", 2300, 1500);

INSERT INTO tb_personagens (nome,  genero, classes_id, combate, arma, poder_ataque, poder_defesa)
VALUES ("Joel", "Masculino", 2, "Corporal", "Espadas", 1400, 2500);


-- Consultando dados
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000 ORDER BY poder_defesa;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome,  genero, tb_classes.classe, combate, arma, tb_classes.velocidade, poder_ataque, poder_defesa 
FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id ORDER BY tb_classes.classe;

SELECT nome,  genero, tb_classes.classe, combate, arma, tb_classes.velocidade, poder_ataque, poder_defesa 
FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id 
WHERE tb_classes.classe LIKE "%Atirador%" ORDER BY nome;


