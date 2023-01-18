CREATE DATABASE escola;

USE escola;

CREATE TABLE alunos(
id BIGINT auto_increment primary key,
nome VARCHAR(255),
sobrenome VARCHAR(255),
sexo VARCHAR(255),
idade INT,
mediaFinal DECIMAL(4,2)
);

INSERT INTO alunos(nome,sobrenome, sexo, idade, mediafinal)
VALUES("Donatello","Tartaruga","Masculino",20,9.8);

INSERT INTO alunos(nome,sobrenome, sexo, idade, mediafinal)
VALUES("Raphael","Tartaruga","Masculino",20,6.6);

INSERT INTO alunos(nome,sobrenome, sexo, idade, mediafinal)
VALUES("Michelangelo","Tartaruga","Masculino",20,3.5);

INSERT INTO alunos(nome,sobrenome, sexo, idade, mediafinal)
VALUES("Leonardo","Tartaruga","Masculino",20,7.5);

INSERT INTO alunos(nome,sobrenome, sexo, idade, mediafinal)
VALUES("April","O'neil","Feminino",25,8.5);

INSERT INTO alunos(nome,sobrenome, sexo, idade, mediafinal)
VALUES("Mestre","Splinter","Masculino",16,10.0);

INSERT INTO alunos(nome,sobrenome, sexo, idade, mediafinal)
VALUES("Casey","Jones","Masculino",24,2.2);

INSERT INTO alunos(nome,sobrenome, sexo, idade, mediafinal)
VALUES("Destruidor","Oku Saki","Masculino",30,9.4);

SELECT * FROM alunos;

SELECT * FROM alunos Where mediafinal > 7;

SELECT * FROM alunos Where mediafinal < 7;