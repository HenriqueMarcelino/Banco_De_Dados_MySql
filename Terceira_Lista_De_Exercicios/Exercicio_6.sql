CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
	`Id categoria` int not null,
    `Informacao do curso` varchar(255),
    `Modo` varchar(255),
    `Valor do curso` decimal (10,2),
    primary key (`Id categoria`)
);

CREATE TABLE tb_curso(
	`Nome do curso` varchar(255),
	`Turma` int(255),
    `Periodo` varchar (255),
    `Id categoria` int,
constraint fk_categoria foreign key (`Id categoria`) references tb_categoria(`id categoria`));

	INSERT INTO tb_categoria 
    VALUES 
    (1,'PROGRAMAÇAO','BASICO',49.50),
    (2,'PROGRAMAÇAO','AVANÇADO',600.00),
    (3,'PROGRAMAÇAO JAVA','BASICO',700.000),
    (4,'PROGRAMAÇAO BANCO DE DADOS','AVANÇADO',900.00),
    (5,'PROGRAMAÇAO ','AVANCADO',900.50);
    
    	INSERT INTO tb_curso
    VALUES
    ('JAVASCRIPT','1','MANHA',1),
    ('PHYTON','5','TARDE',2),
    ('C++','6','NOITE',3),
    ('BANCO DE DADOS MYSQL','8','NOITE',4),
    ('JAVA OOP','8','NOITE',5);
    
    
    SELECT *FROM tb_categoria;
    
    SELECT *FROM tb_curso;
    
    SELECT *FROM tb_categoria WHERE `Valor do curso` > 50.00;
    
    SELECT *FROM tb_categoria WHERE `Valor do curso` BETWEEN 3.00 AND 60.00;
    
    SELECT *FROM tb_curso WHERE `Nome do curso` LIKE '%J%';
    
    SELECT *FROM tb_categoria INNER JOIN tb_curso on tb_categoria.`id categoria` = tb_curso.`id categoria`;
    
    SELECT *FROM tb_curso WHERE `Nome do curso` LIKE '%JAVA%';
    
    #drop database db_cursoDaMinhaVida
    
    