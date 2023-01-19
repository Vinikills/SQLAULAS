CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT auto_increment primary key,
nomeClasse VARCHAR(255),
subClasse VARCHAR(255),
PoderDeAtaque BIGINT,
Defesa BiGINT
);


CREATE TABLE tb_personagens(
id BIGINT auto_increment primary key,
nome VARCHAR(255),
idade int,
sexo VARCHAR(255),
montaria VARCHAR(255),
idClasse BIGINT,
FOREIGN KEY (idClasse) REFERENCES tb_classes (id)
);


INSERT INTO tb_classes(nomeClasse, subClasse, PoderDeAtaque, Defesa)
VALUES ("Guerreiro", "LongSword",2500,1500);

INSERT INTO tb_classes(nomeClasse, subClasse, PoderDeAtaque, Defesa)
VALUES ("Guerreiro", "Espada & Escudo",2000,2000); 

INSERT INTO tb_classes(nomeClasse, subClasse, PoderDeAtaque, Defesa)
VALUES ("Guerreiro", "Esgrima",3000,1000); 

INSERT INTO tb_classes(nomeClasse, subClasse, PoderDeAtaque, Defesa)
VALUES ("Shooter",  "Arco",2800,1200);

INSERT INTO tb_classes(nomeClasse, subClasse, PoderDeAtaque, Defesa)
VALUES ("Shooter", "Besta",2400,1600); 

INSERT INTO tb_classes(nomeClasse, subClasse, PoderDeAtaque, Defesa)
VALUES ("Shooter", "dose com cano serrado",1900,2100); 

INSERT INTO tb_classes(nomeClasse, subClasse, PoderDeAtaque, Defesa)
VALUES ("Mago","Healer",1500,2500); 

INSERT INTO tb_classes(nomeClasse, subClasse, PoderDeAtaque, Defesa)
VALUES ("Mago","Cipriano livro branco",1400,2600); 

INSERT INTO tb_classes(nomeClasse, subClasse, PoderDeAtaque, Defesa)
VALUES ("Mago","Cipriano capa preta",6666,6666); 




INSERT INTO tb_personagens(nome, idade, sexo, montaria, idClasse)
VALUES ("SYPHER123", 13,"Masculino", "cavalo", 1);

INSERT INTO tb_personagens(nome, idade, sexo, montaria, idClasse)
VALUES ("PEGASUS", 43,"Masculino", "Coelho Gigante", 2);

INSERT INTO tb_personagens(nome, idade, sexo, montaria, idClasse)
VALUES ("XAOLIN MATADOR DE PORCO", 22,"Masculino", "PORCO", 6);

INSERT INTO tb_personagens(nome, idade, sexo, montaria, idClasse)
VALUES ("STELLA ARTOIS", 13,"Feminino", "cavalo", 4);

INSERT INTO tb_personagens(nome, idade, sexo, montaria, idClasse)
VALUES ("Tio Pedro", 41,"Masculino", "Dragão", 9);

INSERT INTO tb_personagens(nome, idade, sexo, montaria, idClasse)
VALUES ("Morgana", 19,"Feminino", "Coruja", 7);

INSERT INTO tb_personagens(nome, idade, sexo, montaria, idClasse)
VALUES ("Ja acabou Jessica", 21,"Feminino", "Ovelha", 8);

INSERT INTO tb_personagens(nome, idade, sexo, montaria, idClasse)
VALUES ("Capitão Padrão", 55,"Masculino", "Ornintorrinco", 5);

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.idClasse
WHERE PoderDeAtaque > 2000;

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.idClasse
WHERE Defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens
WHERE nome LIKE "%c%"


